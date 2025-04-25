-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2025 pada 12.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripsummit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_items`
--

CREATE TABLE `about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `featured_status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_items`
--

INSERT INTO `about_items` (`id`, `featured_status`, `created_at`, `updated_at`) VALUES
(1, 'Hide', '2024-12-14 19:46:06', '2025-04-25 02:56:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `accommodations`
--

CREATE TABLE `accommodations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `tour_id` bigint(20) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `accommodations`
--

INSERT INTO `accommodations` (`id`, `package_id`, `tour_id`, `photo`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 7, 6, 'australia-1.jpg', 'Penginapan 1', 'Ciwidey', NULL, NULL),
(2, 7, 6, 'australia-2.jpg', 'Penginapan 2', 'Ciwidey', NULL, NULL),
(3, 7, 6, 'australia-3.jpg', 'Penginapan 3', 'Ciwidey', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(2, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-18 19:25:18', '2025-02-18 19:25:18'),
(3, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-19 06:47:23', '2025-02-19 06:47:23'),
(4, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-19 08:54:26', '2025-02-19 08:54:26'),
(5, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-19 19:09:28', '2025-02-19 19:09:28'),
(6, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-19 21:58:21', '2025-02-19 21:58:21'),
(7, 'default', 'Admin admin-1 Menambahkan Slider Trip to Nice Cities', 'App\\Models\\Slider', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"photo\":\"slider1740027867.jpg\",\"heading\":\"Trip to Nice Cities\",\"text\":\"qwertyuil;kjhgfdsawtfyjkkjhgfswawdefrtyjklmjhgfdesaWERTKLMJHGFDSAsdefryhujkjhgfdsaQWEFTGGFDSaqswdefrgfhgjhgfaswfrdtytuyktfreertyukuytrewqwertyuiuytrerwdfgfdffdfgfhbxdrfgfrdnrbgbdefbvgffghfcvwvesfdxcrdfgcvrgfvcndtbfgvgsedfgdbgv\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"updated_at\":\"2025-02-20 05:04:27\",\"created_at\":\"2025-02-20 05:04:27\",\"id\":8},\"old\":\"Null\"}', NULL, '2025-02-19 22:04:27', '2025-02-19 22:04:27'),
(8, 'default', 'Admin admin-1 Menghapus Slider Trip to Nice Cities', 'App\\Models\\Slider', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"heading\":\"Trip to Nice Cities\",\"text\":\"qwertyuil;kjhgfdsawtfyjkkjhgfswawdefrtyjklmjhgfdesaWERTKLMJHGFDSAsdefryhujkjhgfdsaQWEFTGGFDSaqswdefrgfhgjhgfaswfrdtytuyktfreertyukuytrewqwertyuiuytrerwdfgfdffdfgfhbxdrfgfrdnrbgbdefbvgffghfcvwvesfdxcrdfgcvrgfvcndtbfgvgsedfgdbgv\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider1740027867.jpg\",\"created_at\":\"2025-02-20 05:04:27\",\"updated_at\":\"2025-02-20 05:04:27\",\"deleted_at\":null}}', NULL, '2025-02-19 22:04:54', '2025-02-19 22:04:54'),
(9, 'default', 'Admin admin-1 Menghapus Slider Trip to Nice Cities', 'App\\Models\\Slider', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"heading\":\"Trip to Nice Cities\",\"text\":\"qwertyuil;kjhgfdsawtfyjkkjhgfswawdefrtyjklmjhgfdesaWERTKLMJHGFDSAsdefryhujkjhgfdsaQWEFTGGFDSaqswdefrgfhgjhgfaswfrdtytuyktfreertyukuytrewqwertyuiuytrerwdfgfdffdfgfhbxdrfgfrdnrbgbdefbvgffghfcvwvesfdxcrdfgcvrgfvcndtbfgvgsedfgdbgv\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider1740027867.jpg\",\"created_at\":\"2025-02-20 05:04:27\",\"updated_at\":\"2025-02-20 05:05:04\",\"deleted_at\":null}}', NULL, '2025-02-19 22:06:26', '2025-02-19 22:06:26'),
(10, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-20 20:15:34', '2025-02-20 20:15:34'),
(11, 'default', 'Admin admin-1 Mengirim email ke semua subscriber ', 'App\\Models\\Subscriber', 'send email', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":\"Null\"}', NULL, '2025-02-20 20:47:02', '2025-02-20 20:47:02'),
(12, 'default', 'Admin admin-1 Mengirim email ke semua subscriber ', 'App\\Models\\Subscriber', 'send email', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":\"Null\"}', NULL, '2025-02-20 20:47:04', '2025-02-20 20:47:04'),
(13, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-21 01:11:00', '2025-02-21 01:11:00'),
(14, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-22 19:17:49', '2025-02-22 19:17:49'),
(15, 'default', 'deleted', 'App\\Models\\Wishlist', 'deleted', 1, 'App\\Models\\User', 1, '{\"old\":{\"id\":1,\"user_id\":1,\"package_id\":4,\"created_at\":\"2024-12-12T02:46:16.000000Z\",\"updated_at\":\"2024-12-12T02:46:16.000000Z\"}}', NULL, '2025-02-22 19:20:42', '2025-02-22 19:20:42'),
(16, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-22 19:23:58', '2025-02-22 19:23:58'),
(17, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-22 19:29:27', '2025-02-22 19:29:27'),
(18, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-22 19:29:56', '2025-02-22 19:29:56'),
(19, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-23 06:07:18', '2025-02-23 06:07:18'),
(20, 'default', 'Admin admin-1 Menambahkan Slider qwertyui', 'App\\Models\\Slider', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"photo\":\"slider1740316107.jpg\",\"heading\":\"qwertyui\",\"text\":\"12345678790uyiutrrd\",\"button_text\":\"qwere\",\"button_link\":\"#\",\"updated_at\":\"2025-02-23 13:08:27\",\"created_at\":\"2025-02-23 13:08:27\",\"id\":9},\"old\":\"Null\"}', NULL, '2025-02-23 06:08:27', '2025-02-23 06:08:27'),
(21, 'default', 'Admin admin-1 Menghapus Slider qwertyui', 'App\\Models\\Slider', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"heading\":\"qwertyui\",\"text\":\"12345678790uyiutrrd\",\"button_text\":\"qwere\",\"button_link\":\"#\",\"photo\":\"slider1740316107.jpg\",\"created_at\":\"2025-02-23 13:08:27\",\"updated_at\":\"2025-02-23 13:08:27\",\"deleted_at\":null}}', NULL, '2025-02-23 06:08:33', '2025-02-23 06:08:33'),
(22, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 00:54:37', '2025-02-26 00:54:37'),
(23, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 00:54:52', '2025-02-26 00:54:52'),
(24, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"946ce31747561dfe1b1f688e8a15166a0b970792215091dd3fd394c2bb098632\",\"updated_at\":\"2025-02-26T07:56:18.000000Z\"},\"old\":{\"token\":\"\",\"updated_at\":\"2025-02-18T08:02:49.000000Z\"}}', NULL, '2025-02-26 00:56:18', '2025-02-26 00:56:18'),
(25, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"password\":\"$2y$12$D5.YERZ.bIWACOeH35PDWOuyzGuQwCVbfpuiBNQOtPBkLCdH2LNfe\",\"token\":\"\",\"updated_at\":\"2025-02-26T07:57:01.000000Z\"},\"old\":{\"password\":\"$2y$12$qXd4J3aiS\\/IacXIwiIdJv.pyit6C5dWgR5D4TS\\/COEKQC.zO9C5na\",\"token\":\"946ce31747561dfe1b1f688e8a15166a0b970792215091dd3fd394c2bb098632\",\"updated_at\":\"2025-02-26T07:56:18.000000Z\"}}', NULL, '2025-02-26 00:57:01', '2025-02-26 00:57:01'),
(26, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 00:58:05', '2025-02-26 00:58:05'),
(27, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 00:58:18', '2025-02-26 00:58:18'),
(28, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 00:58:39', '2025-02-26 00:58:39'),
(29, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:10:55', '2025-02-26 01:10:55'),
(30, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:13:15', '2025-02-26 01:13:15'),
(31, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:13:38', '2025-02-26 01:13:38'),
(32, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:20:56', '2025-02-26 01:20:56'),
(33, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:27:56', '2025-02-26 01:27:56'),
(34, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:28:32', '2025-02-26 01:28:32'),
(35, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:30:34', '2025-02-26 01:30:34'),
(36, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:31:08', '2025-02-26 01:31:08'),
(37, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-26 01:32:12', '2025-02-26 01:32:12'),
(38, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-26 01:59:06', '2025-02-26 01:59:06'),
(39, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-28 06:17:47', '2025-02-28 06:17:47'),
(40, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:29:41', '2025-02-28 06:29:41'),
(41, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:29:49', '2025-02-28 06:29:49'),
(42, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-28 06:30:02', '2025-02-28 06:30:02'),
(43, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-02-28 06:30:17', '2025-02-28 06:30:17'),
(44, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:31:17', '2025-02-28 06:31:17'),
(45, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:32:30', '2025-02-28 06:32:30'),
(46, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:32:58', '2025-02-28 06:32:58'),
(47, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$0lWhzpkIPlPlZZd3DAl5b.5MH\\/eTNtsmGZciEW49WLUAvBAY6hyyq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-02-07 12:16:07\"}}', NULL, '2025-02-28 06:37:10', '2025-02-28 06:37:10'),
(48, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-02-28 06:40:45', '2025-02-28 06:40:45'),
(49, 'default', 'Admin admin-1 Mengedit Setting.', 'App\\Models\\Setting', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"logo\":\"logo_1738592301.png\",\"favicon\":\"favicon_1738592301.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, TripSummit. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-02-17 14:22:40\"},\"old\":{\"id\":1,\"logo\":\"logo_1738592301.png\",\"favicon\":\"favicon_1738592301.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, TripSummit. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-02-17 14:22:40\"}}', NULL, '2025-02-28 07:12:52', '2025-02-28 07:12:52'),
(50, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-01 02:00:28', '2025-03-01 02:00:28'),
(51, 'default', 'Admin admin-1 Mengedit Slider Perjalanan ke Kota-Kota Bagus1', 'App\\Models\\Slider', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.1\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#1\",\"photo\":\"slider_1732463153.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:14:02\",\"deleted_at\":null},\"old\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider_1732463153.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-02-17 13:42:49\",\"deleted_at\":null}}', NULL, '2025-03-01 02:14:02', '2025-03-01 02:14:02'),
(52, 'default', 'Admin admin-1 Mengedit Slider Perjalanan ke Kota-Kota Bagus1', 'App\\Models\\Slider', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider_1740820564.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:04\",\"deleted_at\":null},\"old\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.1\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#1\",\"photo\":\"slider_1732463153.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:14:02\",\"deleted_at\":null}}', NULL, '2025-03-01 02:16:04', '2025-03-01 02:16:04'),
(53, 'default', 'Admin admin-1 Mengedit Slider Perjalanan ke Kota-Kota Bagus', 'App\\Models\\Slider', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#1\",\"photo\":\"slider_1740820593.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:33\",\"deleted_at\":null},\"old\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider_1740820564.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:04\",\"deleted_at\":null}}', NULL, '2025-03-01 02:16:33', '2025-03-01 02:16:33'),
(54, 'default', 'Admin admin-1 Mengedit Slider Perjalanan ke Kota-Kota Bagus1', 'App\\Models\\Slider', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.1\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#\",\"photo\":\"slider_1740820618.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:58\",\"deleted_at\":null},\"old\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#1\",\"photo\":\"slider_1740820593.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:33\",\"deleted_at\":null}}', NULL, '2025-03-01 02:16:58', '2025-03-01 02:16:58'),
(55, 'default', 'Admin admin-1 Mengedit Slider Perjalanan ke Kota-Kota Bagus', 'App\\Models\\Slider', 'updated', 2, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"slider_1740820647.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:17:27\",\"deleted_at\":null},\"old\":{\"id\":2,\"heading\":\"Perjalanan ke Kota-Kota Bagus1\",\"text\":\"Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.1\",\"button_text\":\"Baca selengkapnya1\",\"button_link\":\"#\",\"photo\":\"slider_1740820618.jpg\",\"created_at\":\"2024-11-24 15:16:30\",\"updated_at\":\"2025-03-01 09:16:58\",\"deleted_at\":null}}', NULL, '2025-03-01 02:17:27', '2025-03-01 02:17:27'),
(56, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-01 07:57:27', '2025-03-01 07:57:27'),
(57, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-03 07:58:29', '2025-03-03 07:58:29'),
(58, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-04 06:23:57', '2025-03-04 06:23:57'),
(59, 'default', 'Admin admin-1 Mengedit Tour di Package Situ Patenggang', 'App\\Models\\Tour', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"package_id\":\"7\",\"total_seat\":\"100\",\"tour_start_date\":\"2025-03-07\",\"tour_end_date\":\"2025-03-09\",\"booking_end_date\":\"2025-03-06\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-03-04 13:24:43\",\"deleted_at\":null},\"old\":{\"id\":6,\"package_id\":7,\"total_seat\":\"100\",\"tour_start_date\":\"2024-12-30\",\"tour_end_date\":\"2025-01-01\",\"booking_end_date\":\"2025-02-23\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-02-18 02:25:07\",\"deleted_at\":null}}', NULL, '2025-03-04 06:24:43', '2025-03-04 06:24:43'),
(60, 'default', 'created', 'App\\Models\\User', 'created', 6, NULL, NULL, '{\"attributes\":{\"id\":6,\"name\":\"suparman\",\"email\":\"suparman123@gmail.com\",\"photo\":null,\"password\":\"$2y$12$pZ7H6Rheph6fH\\/SZ5tuEVuvWqM1crSIhWiMOMfrjt0W4S7iBJGUca\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"31803c2b5bd93950b9cbe820e2416d4c05f038e94360ab6d5d84e3d9cd2b62b0\",\"status\":\"0\",\"created_at\":\"2025-03-04T13:43:57.000000Z\",\"updated_at\":\"2025-03-04T13:43:57.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-04 06:43:57', '2025-03-04 06:43:57'),
(61, 'default', 'updated', 'App\\Models\\User', 'updated', 6, NULL, NULL, '{\"attributes\":{\"token\":\"\",\"status\":\"1\",\"updated_at\":\"2025-03-04T13:47:30.000000Z\"},\"old\":{\"token\":\"31803c2b5bd93950b9cbe820e2416d4c05f038e94360ab6d5d84e3d9cd2b62b0\",\"status\":\"0\",\"updated_at\":\"2025-03-04T13:43:57.000000Z\"}}', NULL, '2025-03-04 06:47:30', '2025-03-04 06:47:30'),
(62, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-04 07:01:05', '2025-03-04 07:01:05'),
(63, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-05 07:03:17', '2025-03-05 07:03:17'),
(64, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-05 07:27:54', '2025-03-05 07:27:54'),
(65, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-05 07:28:09', '2025-03-05 07:28:09'),
(66, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-05 19:00:49', '2025-03-05 19:00:49'),
(67, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-06 00:39:21', '2025-03-06 00:39:21'),
(68, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-06 00:47:35', '2025-03-06 00:47:35'),
(69, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"f3d17becfedb173cc9b162d0a6e72e5f7696e57c735d25199458dca292e101a2\",\"updated_at\":\"2025-03-06T07:50:48.000000Z\"},\"old\":{\"token\":\"\",\"updated_at\":\"2025-02-26T07:57:01.000000Z\"}}', NULL, '2025-03-06 00:50:48', '2025-03-06 00:50:48'),
(70, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"password\":\"$2y$12$RHxlCqrgu.CYXuM1fF7p5OJAGKDLeAd\\/zRp0m9O85hUYq102\\/Ftnq\",\"token\":\"\",\"updated_at\":\"2025-03-06T07:54:30.000000Z\"},\"old\":{\"password\":\"$2y$12$D5.YERZ.bIWACOeH35PDWOuyzGuQwCVbfpuiBNQOtPBkLCdH2LNfe\",\"token\":\"f3d17becfedb173cc9b162d0a6e72e5f7696e57c735d25199458dca292e101a2\",\"updated_at\":\"2025-03-06T07:50:48.000000Z\"}}', NULL, '2025-03-06 00:54:30', '2025-03-06 00:54:30'),
(71, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-06 00:58:08', '2025-03-06 00:58:08'),
(72, 'default', 'Admin Mengedit Profile.', 'App\\Models\\Admin', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$ytS5BdXL6MLHRjIgfv.qse8ihHOdc45bCkaAeWSeDOqM89fnLJ6Uq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-03-06 08:00:55\"},\"old\":{\"id\":1,\"name\":\"admin-1\",\"email\":\"admin@gmail.com\",\"photo\":\"admin_1735390234.jpg\",\"password\":\"$2y$12$ytS5BdXL6MLHRjIgfv.qse8ihHOdc45bCkaAeWSeDOqM89fnLJ6Uq\",\"token\":\"\",\"created_at\":\"2024-11-20 10:13:16\",\"updated_at\":\"2025-03-06 08:00:55\"}}', NULL, '2025-03-06 01:00:55', '2025-03-06 01:00:55'),
(73, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-06 01:01:32', '2025-03-06 01:01:32'),
(74, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-06 01:03:21', '2025-03-06 01:03:21'),
(75, 'default', 'created', 'App\\Models\\User', 'created', 7, NULL, NULL, '{\"attributes\":{\"id\":7,\"name\":\"Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$2NR\\/DcCbb69qb2xhGm\\/on.X869nOtc07YYWZVUfWpT.XD.anXAUZS\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"823498972650d5e3f616b4217e487f26aaa8a62aaf3cdc2ad1d96d2215893fd3\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:14:12.000000Z\",\"updated_at\":\"2025-03-06T08:14:12.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:14:12', '2025-03-06 01:14:12'),
(76, 'default', 'created', 'App\\Models\\User', 'created', 8, NULL, NULL, '{\"attributes\":{\"id\":8,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$IODMEBmnsq.WvmtXgjdLDONq385ZsZS1TX6L46UEog3WVvi1vMFyy\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"e62b5f68ee88f7525825203b3590a8cf8b379f5d21548e1caac7f8f0c76f6ab4\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:19:56.000000Z\",\"updated_at\":\"2025-03-06T08:19:56.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:19:56', '2025-03-06 01:19:56'),
(77, 'default', 'created', 'App\\Models\\User', 'created', 9, NULL, NULL, '{\"attributes\":{\"id\":9,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$YPValBeulFBPUADFv8VzPuk6sjzO4cR.rGJYehEcXadhBAxvfDUMO\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"110fc9ebed04c326852b8ff23f63774dfd740e7c260a8815a8a09cd1be52f251\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:24:09.000000Z\",\"updated_at\":\"2025-03-06T08:24:09.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:24:09', '2025-03-06 01:24:09'),
(78, 'default', 'created', 'App\\Models\\User', 'created', 10, NULL, NULL, '{\"attributes\":{\"id\":10,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$A5XTz0NEt7Gn3Aap1oVsmeq5p5z9u8QMooudqhX7LvpySm8ing8lu\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"1168f816886f44cf21cc34a3b9bb1be18ad4d8890f58691d271668d154e270bb\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:30:16.000000Z\",\"updated_at\":\"2025-03-06T08:30:16.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:30:16', '2025-03-06 01:30:16'),
(79, 'default', 'created', 'App\\Models\\User', 'created', 11, NULL, NULL, '{\"attributes\":{\"id\":11,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$SmeteVf0XuzaIh17G.DaUec\\/QUAemlXWkPDqN.ANmW2rcVbPI5dFW\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"834c72a1a7adcd12cc145b9daa81b6e25db84fa8d6c481a3b01e3f98456641f9\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:32:00.000000Z\",\"updated_at\":\"2025-03-06T08:32:00.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:32:00', '2025-03-06 01:32:00'),
(80, 'default', 'created', 'App\\Models\\User', 'created', 12, NULL, NULL, '{\"attributes\":{\"id\":12,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$jCTVW1RUBM8xpSl4MGsyg.jLJtKsalOZrqTjbMY1yzeepoH3\\/nEN2\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"a3aa88a6f21c3526f146a6abe3cccbdf25cea9708c4a64f18700dd2d0788f95f\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:36:13.000000Z\",\"updated_at\":\"2025-03-06T08:36:13.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:36:13', '2025-03-06 01:36:13'),
(81, 'default', 'created', 'App\\Models\\User', 'created', 13, NULL, NULL, '{\"attributes\":{\"id\":13,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$5QhLxT4.SymTv5Z8ZB3M4uL\\/YLIKUFUho3JzLmTA2hcTaPB48bEAe\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"8164079ef56d23a7e957b64b8c8611ad0ae1050bdb88964dbb0716cfd146dce2\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:41:27.000000Z\",\"updated_at\":\"2025-03-06T08:41:27.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:41:27', '2025-03-06 01:41:27'),
(82, 'default', 'created', 'App\\Models\\User', 'created', 14, NULL, NULL, '{\"attributes\":{\"id\":14,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$d\\/wQ9cf3sumNEbRatJINAObWkMVgyNKwo5oL91gPaWoO9OkeyYkRa\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"ba6c5f62518adcbe40dfdc5beac024a590ad295198cf018ac6182feef4962c5b\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:42:06.000000Z\",\"updated_at\":\"2025-03-06T08:42:06.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:42:06', '2025-03-06 01:42:06'),
(83, 'default', 'created', 'App\\Models\\User', 'created', 15, NULL, NULL, '{\"attributes\":{\"id\":15,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$RTTnlyAkQtRyg.5fcw.N3.aowRd4Xpk4CUn5tJmhiU.aFEv7ZO8dO\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"76f01e9c3a5f1053764fdfc89e497e64e36eda6ff3bed4f98f360f35a78116b3\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:44:28.000000Z\",\"updated_at\":\"2025-03-06T08:44:28.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:44:28', '2025-03-06 01:44:28'),
(84, 'default', 'created', 'App\\Models\\User', 'created', 16, NULL, NULL, '{\"attributes\":{\"id\":16,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$CvfLgrwnnYkpI9yaLFEf4OM81.yuJQ\\/Jb8EFFuspVmgS1Xre95a..\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"2cc5a941da4f7fcb65ca34ea8b918183152de155141010232be37d4069cc0593\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:45:13.000000Z\",\"updated_at\":\"2025-03-06T08:45:13.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:45:13', '2025-03-06 01:45:13'),
(85, 'default', 'created', 'App\\Models\\User', 'created', 17, NULL, NULL, '{\"attributes\":{\"id\":17,\"name\":\"Muhammad Abyan\",\"email\":\"abyandev657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$GSk6f6AtL42SSB9R.uDSSuC67Wma3gOcZsz5cxmFrtLJTqfO3s4m2\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"cc4863b0c43399487920b25d1cbb8ec3b4ce4ceae081933476533f8edc170a40\",\"status\":\"0\",\"created_at\":\"2025-03-06T08:47:15.000000Z\",\"updated_at\":\"2025-03-06T08:47:15.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 01:47:15', '2025-03-06 01:47:15'),
(86, 'default', 'created', 'App\\Models\\User', 'created', 18, NULL, NULL, '{\"attributes\":{\"id\":18,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$MjQNJJpmwUBG2sn4fQJaWOr8thxamgFbTSYiBS9Il35qAwgP5QKZe\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"85195d87922cdacef9f662518b6f288972aa83043d7c3cf3693a3649584256bd\",\"status\":\"0\",\"created_at\":\"2025-03-06T10:34:41.000000Z\",\"updated_at\":\"2025-03-06T10:34:41.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 03:34:41', '2025-03-06 03:34:41'),
(87, 'default', 'created', 'App\\Models\\User', 'created', 19, NULL, NULL, '{\"attributes\":{\"id\":19,\"name\":\"Muhammad Abyan\",\"email\":\"abyanm657@gmail.com\",\"photo\":null,\"password\":\"$2y$12$68rWA2qWDAC1A4M06kVWwem8iPM9UPnwj4Anj2NYkFmqdnMT5Wi\\/.\",\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"token\":\"b0d73d376986c3afc133022a7efadceabaced20ff5a3270667765cf61cd94320\",\"status\":\"0\",\"created_at\":\"2025-03-06T10:37:44.000000Z\",\"updated_at\":\"2025-03-06T10:37:44.000000Z\",\"deleted_at\":null}}', NULL, '2025-03-06 03:37:44', '2025-03-06 03:37:44'),
(88, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"4aafc185df396f2ac2c658dda29bdb5763720d26ea141d901ee695c2c35c0e73\",\"updated_at\":\"2025-03-07T14:31:43.000000Z\"},\"old\":{\"token\":\"\",\"updated_at\":\"2025-03-06T07:54:30.000000Z\"}}', NULL, '2025-03-07 07:31:43', '2025-03-07 07:31:43'),
(89, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"daa6afa59fd115054cb4df4d667c26f8b65bc6c2973160403ce23066acfef8f0\",\"updated_at\":\"2025-03-07T14:35:33.000000Z\"},\"old\":{\"token\":\"4aafc185df396f2ac2c658dda29bdb5763720d26ea141d901ee695c2c35c0e73\",\"updated_at\":\"2025-03-07T14:31:43.000000Z\"}}', NULL, '2025-03-07 07:35:33', '2025-03-07 07:35:33'),
(90, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"0cfcf14303105a1981e79f40bc4cbf6822c8fa7b56fa52032865f5da78068bdf\",\"updated_at\":\"2025-03-08T01:37:34.000000Z\"},\"old\":{\"token\":\"daa6afa59fd115054cb4df4d667c26f8b65bc6c2973160403ce23066acfef8f0\",\"updated_at\":\"2025-03-07T14:35:33.000000Z\"}}', NULL, '2025-03-07 18:37:34', '2025-03-07 18:37:34'),
(91, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"fbb3ed8c775211933be2d740b1136a34e505eda1f6aceb5b66a809aaac0bb403\",\"updated_at\":\"2025-03-08T01:40:29.000000Z\"},\"old\":{\"token\":\"0cfcf14303105a1981e79f40bc4cbf6822c8fa7b56fa52032865f5da78068bdf\",\"updated_at\":\"2025-03-08T01:37:34.000000Z\"}}', NULL, '2025-03-07 18:40:29', '2025-03-07 18:40:29'),
(92, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"617f2c6fa6aedd263985bde6b701dd81723c46698e1e96d83a4b935b80e123d0\",\"updated_at\":\"2025-03-08T01:50:25.000000Z\"},\"old\":{\"token\":\"fbb3ed8c775211933be2d740b1136a34e505eda1f6aceb5b66a809aaac0bb403\",\"updated_at\":\"2025-03-08T01:40:29.000000Z\"}}', NULL, '2025-03-07 18:50:25', '2025-03-07 18:50:25'),
(93, 'default', 'updated', 'App\\Models\\User', 'updated', 1, NULL, NULL, '{\"attributes\":{\"token\":\"8465280810e04c26570fb7f977a26d6f44739e042bcc1298ff8074dbcbba0ec2\",\"updated_at\":\"2025-03-08T01:52:20.000000Z\"},\"old\":{\"token\":\"617f2c6fa6aedd263985bde6b701dd81723c46698e1e96d83a4b935b80e123d0\",\"updated_at\":\"2025-03-08T01:50:25.000000Z\"}}', NULL, '2025-03-07 18:52:20', '2025-03-07 18:52:20'),
(94, 'default', 'updated', 'App\\Models\\User', 'updated', 17, NULL, NULL, '{\"attributes\":{\"token\":\"a3ef37fe541c2b5e77459abf1177e32803a452fb630304ce66fca7375ae4d2b0\",\"updated_at\":\"2025-03-08T01:53:32.000000Z\"},\"old\":{\"token\":\"cc4863b0c43399487920b25d1cbb8ec3b4ce4ceae081933476533f8edc170a40\",\"updated_at\":\"2025-03-06T08:47:15.000000Z\"}}', NULL, '2025-03-07 18:53:32', '2025-03-07 18:53:32'),
(95, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-07 23:01:46', '2025-03-07 23:01:46'),
(96, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-11 01:46:45', '2025-03-11 01:46:45'),
(97, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-12 20:26:41', '2025-03-12 20:26:41'),
(98, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-12 20:48:51', '2025-03-12 20:48:51'),
(99, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-14 01:46:31', '2025-03-14 01:46:31'),
(100, 'default', 'Admin admin-1 Mengedit Tour di Package Situ Patenggang', 'App\\Models\\Tour', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"package_id\":\"7\",\"total_seat\":\"100\",\"tour_start_date\":\"2025-03-18\",\"tour_end_date\":\"2025-03-20\",\"booking_end_date\":\"2025-03-17\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-03-14 08:48:44\",\"deleted_at\":null},\"old\":{\"id\":6,\"package_id\":7,\"total_seat\":\"100\",\"tour_start_date\":\"2025-03-07\",\"tour_end_date\":\"2025-03-09\",\"booking_end_date\":\"2025-03-06\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-03-04 13:24:43\",\"deleted_at\":null}}', NULL, '2025-03-14 01:48:44', '2025-03-14 01:48:44'),
(101, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-14 01:54:32', '2025-03-14 01:54:32'),
(102, 'default', 'Admin admin-1 Menyetujui Booking dengan invoice 1737012520', 'App\\Models\\Booking', 'updated', 116, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":116,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":1,\"total_person\":5,\"paid_amount\":\"300000\",\"payment_method\":\"Cash\",\"payment_status\":\"Completed\",\"invoice_no\":\"1737012520\",\"checkout_url\":null,\"created_at\":\"2025-01-16 07:28:40\",\"updated_at\":\"2025-03-14 08:59:41\",\"deleted_at\":null},\"old\":{\"id\":116,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":1,\"total_person\":5,\"paid_amount\":\"300000\",\"payment_method\":\"Cash\",\"payment_status\":\"Pending\",\"invoice_no\":\"1737012520\",\"checkout_url\":null,\"created_at\":\"2025-01-16 07:28:40\",\"updated_at\":\"2025-01-16 07:29:33\",\"deleted_at\":null}}', NULL, '2025-03-14 01:59:41', '2025-03-14 01:59:41'),
(103, 'default', 'Admin admin-1 Menyetujui Booking dengan invoice 1739846013', 'App\\Models\\Booking', 'updated', 137, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":137,\"order_id\":\"1311e97f-3e8c-48f6-8143-1db0147d66c6\",\"package_id\":7,\"tour_id\":6,\"user_id\":1,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Completed\",\"invoice_no\":\"1739846013\",\"checkout_url\":null,\"created_at\":\"2025-02-18 02:33:33\",\"updated_at\":\"2025-03-14 08:59:44\",\"deleted_at\":null},\"old\":{\"id\":137,\"order_id\":\"1311e97f-3e8c-48f6-8143-1db0147d66c6\",\"package_id\":7,\"tour_id\":6,\"user_id\":1,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1739846013\",\"checkout_url\":null,\"created_at\":\"2025-02-18 02:33:33\",\"updated_at\":\"2025-02-18 02:33:33\",\"deleted_at\":null}}', NULL, '2025-03-14 01:59:44', '2025-03-14 01:59:44'),
(104, 'default', 'Admin admin-1 Menyetujui Booking dengan invoice 1741942486', 'App\\Models\\Booking', 'updated', 139, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":139,\"order_id\":\"25ba74e7-f672-4892-a7ea-4bac7b2d03f8\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Completed\",\"invoice_no\":\"1741942486\",\"checkout_url\":null,\"created_at\":\"2025-03-14 08:54:46\",\"updated_at\":\"2025-03-14 08:59:46\",\"deleted_at\":null},\"old\":{\"id\":139,\"order_id\":\"25ba74e7-f672-4892-a7ea-4bac7b2d03f8\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1741942486\",\"checkout_url\":null,\"created_at\":\"2025-03-14 08:54:46\",\"updated_at\":\"2025-03-14 08:54:46\",\"deleted_at\":null}}', NULL, '2025-03-14 01:59:46', '2025-03-14 01:59:46'),
(105, 'default', 'Admin admin-1 Menyetujui Booking dengan invoice 1741942746', 'App\\Models\\Booking', 'updated', 140, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":140,\"order_id\":\"96c9e2ca-1e73-41cf-bed5-2fb893f144ec\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Completed\",\"invoice_no\":\"1741942746\",\"checkout_url\":null,\"created_at\":\"2025-03-14 08:59:06\",\"updated_at\":\"2025-03-14 08:59:49\",\"deleted_at\":null},\"old\":{\"id\":140,\"order_id\":\"96c9e2ca-1e73-41cf-bed5-2fb893f144ec\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1741942746\",\"checkout_url\":null,\"created_at\":\"2025-03-14 08:59:06\",\"updated_at\":\"2025-03-14 08:59:06\",\"deleted_at\":null}}', NULL, '2025-03-14 01:59:49', '2025-03-14 01:59:49'),
(106, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-14 20:13:27', '2025-03-14 20:13:27'),
(107, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-14 23:02:40', '2025-03-14 23:02:40'),
(108, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-15 02:50:09', '2025-03-15 02:50:09'),
(109, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"package_id\":3,\"amenity_id\":8,\"type\":\"include\",\"created_at\":\"2024-12-03 12:33:43\",\"updated_at\":\"2025-02-14 08:23:49\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:14', '2025-03-15 02:51:14'),
(110, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"package_id\":3,\"amenity_id\":6,\"type\":\"include\",\"created_at\":\"2024-12-03 12:45:21\",\"updated_at\":\"2024-12-03 12:45:21\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:16', '2025-03-15 02:51:16'),
(111, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"package_id\":3,\"amenity_id\":4,\"type\":\"include\",\"created_at\":\"2024-12-03 12:54:49\",\"updated_at\":\"2024-12-03 12:54:49\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:18', '2025-03-15 02:51:18'),
(112, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"package_id\":3,\"amenity_id\":3,\"type\":\"include\",\"created_at\":\"2024-12-03 12:55:09\",\"updated_at\":\"2024-12-03 12:55:09\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:19', '2025-03-15 02:51:19'),
(113, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"package_id\":3,\"amenity_id\":2,\"type\":\"include\",\"created_at\":\"2024-12-03 12:55:12\",\"updated_at\":\"2024-12-03 12:55:12\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:20', '2025-03-15 02:51:20'),
(114, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 10, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":10,\"package_id\":3,\"amenity_id\":5,\"type\":\"include\",\"created_at\":\"2024-12-03 12:55:16\",\"updated_at\":\"2025-02-14 08:22:25\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:22', '2025-03-15 02:51:22'),
(115, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"package_id\":3,\"amenity_id\":1,\"type\":\"include\",\"created_at\":\"2024-12-03 12:55:19\",\"updated_at\":\"2025-02-14 10:56:55\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:24', '2025-03-15 02:51:24'),
(116, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 6, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":6,\"package_id\":3,\"amenity_id\":9,\"type\":\"exclude\",\"created_at\":\"2024-12-03 12:55:00\",\"updated_at\":\"2024-12-03 12:55:00\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:25', '2025-03-15 02:51:25'),
(117, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 12, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":12,\"package_id\":3,\"amenity_id\":11,\"type\":\"exclude\",\"created_at\":\"2024-12-03 12:55:59\",\"updated_at\":\"2024-12-03 12:55:59\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:26', '2025-03-15 02:51:26'),
(118, 'default', 'Admin admin-1 Menghapus Amenity di Package Great Barrier Reef', 'App\\Models\\PackageAmenity', 'deleted', 13, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":13,\"package_id\":3,\"amenity_id\":12,\"type\":\"exclude\",\"created_at\":\"2024-12-03 12:56:04\",\"updated_at\":\"2025-02-13 13:39:42\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:28', '2025-03-15 02:51:28');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(119, 'default', 'Admin admin-1 Menghapus Itinerary Package Great Barrier Reef', 'App\\Models\\PackageItinerary', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"package_id\":3,\"name\":\"Day 1\",\"description\":\"<p><span style=\\\"box-sizing: border-box; font-weight: bolder; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Morning:<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">1. Arrive at Cairns or Port Douglas and check into your hotel.<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">2. Welcome meeting with the tour guide and fellow travelers.<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; font-weight: bolder; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Afternoon<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">1. Lunch at a local restaurant.<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">2. Visit the Cairns Aquarium to get an introduction to the marine life of the Great Barrier Reef.<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; font-weight: bolder; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Evening<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">1. Free time to explore the local area.<\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">2. Welcome dinner at the hotel, with an overview of the tour itinerary and reef conservation briefing.<\\/span><\\/p>\",\"created_at\":\"2024-12-04 08:30:08\",\"updated_at\":\"2024-12-04 08:30:08\",\"deleted_at\":null}}', NULL, '2025-03-15 02:51:50', '2025-03-15 02:51:50'),
(120, 'default', 'Admin admin-1 Menghapus FAQ di Package Great Barrier Reef', 'App\\Models\\PackageFaq', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"package_id\":3,\"question\":\"What activities are included in the tour?\",\"answer\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">We recommend bringing swimwear, sunscreen, a hat, sunglasses, and a reusable water bottle. If you plan to snorkel or dive, bring your own gear if you prefer, although equipment is provided. Don&rsquo;t forget a camera to capture the incredible underwater scenery!<\\/span><\\/p>\",\"created_at\":\"2024-12-04 12:27:19\",\"updated_at\":\"2024-12-04 12:27:19\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:04', '2025-03-15 02:52:04'),
(121, 'default', 'Admin admin-1 Menghapus FAQ di Package Great Barrier Reef', 'App\\Models\\PackageFaq', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"package_id\":3,\"question\":\"Is the tour suitable for beginners?\",\"answer\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Yes, the tour is designed for all experience levels. Our guides provide comprehensive instructions and safety briefings for snorkeling and diving. Beginners can enjoy glass-bottom boat tours and shallow water snorkeling, while experienced divers can explore deeper parts of the reef.<\\/span><\\/p>\",\"created_at\":\"2024-12-04 12:39:50\",\"updated_at\":\"2024-12-04 12:39:50\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:05', '2025-03-15 02:52:05'),
(122, 'default', 'Admin admin-1 Menghapus FAQ di Package Great Barrier Reef', 'App\\Models\\PackageFaq', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"package_id\":3,\"question\":\"What activities are included in the tour?\",\"answer\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef tour includes snorkeling, diving, and glass-bottom boat tours, allowing you to explore the vibrant marine life and coral formations. Additionally, the package offers guided reef tours, informative presentations by marine biologists, and leisure time on stunning beaches.<\\/span><\\/p>\",\"created_at\":\"2024-12-04 12:45:55\",\"updated_at\":\"2024-12-04 12:45:55\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:08', '2025-03-15 02:52:08'),
(123, 'default', 'Admin admin-1 Menghapus FAQ di Package Great Barrier Reef', 'App\\Models\\PackageFaq', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"package_id\":3,\"question\":\"What measures are in place for reef conservation?\",\"answer\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Our tours adhere to strict environmental guidelines to protect the reef. We use eco-friendly boats, limit visitor numbers, and provide education on reef conservation. Our guides also ensure that all activities are conducted responsibly, minimizing impact on the marine ecosystem.<\\/span><\\/p>\",\"created_at\":\"2024-12-04 12:46:32\",\"updated_at\":\"2024-12-04 12:46:32\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:10', '2025-03-15 02:52:10'),
(124, 'default', 'Admin admin-1 Menghapus FAQ di Package Great Barrier Reef', 'App\\Models\\PackageFaq', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"package_id\":3,\"question\":\"How long is the tour and what\\u2019s the schedule?\",\"answer\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef tour typically lasts a full day, starting early in the morning and returning by late afternoon. The schedule includes transportation to and from the reef, several hours of water activities, lunch, and free time for relaxation and exploration.<\\/span><\\/p>\",\"created_at\":\"2024-12-04 12:46:53\",\"updated_at\":\"2024-12-04 12:46:53\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:12', '2025-03-15 02:52:12'),
(125, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"package_id\":3,\"photo\":\"package_1733306077.jpg\",\"created_at\":\"2024-12-04 09:54:37\",\"updated_at\":\"2024-12-04 09:54:37\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:29', '2025-03-15 02:52:29'),
(126, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"package_id\":3,\"photo\":\"package_1733306095.jpg\",\"created_at\":\"2024-12-04 09:54:55\",\"updated_at\":\"2024-12-04 09:54:55\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:30', '2025-03-15 02:52:30'),
(127, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"package_id\":3,\"photo\":\"package_1733306103.jpg\",\"created_at\":\"2024-12-04 09:55:03\",\"updated_at\":\"2024-12-04 09:55:03\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:30', '2025-03-15 02:52:30'),
(128, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 7, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":7,\"package_id\":3,\"photo\":\"package_1733306117.jpg\",\"created_at\":\"2024-12-04 09:55:17\",\"updated_at\":\"2024-12-04 09:55:17\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:31', '2025-03-15 02:52:31'),
(129, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"package_id\":3,\"photo\":\"package_1733306125.jpg\",\"created_at\":\"2024-12-04 09:55:25\",\"updated_at\":\"2024-12-04 09:55:25\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:32', '2025-03-15 02:52:32'),
(130, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"package_id\":3,\"photo\":\"package_1733306171.jpg\",\"created_at\":\"2024-12-04 09:56:11\",\"updated_at\":\"2024-12-04 09:56:11\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:33', '2025-03-15 02:52:33'),
(131, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 10, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":10,\"package_id\":3,\"photo\":\"package_1733306177.jpg\",\"created_at\":\"2024-12-04 09:56:17\",\"updated_at\":\"2024-12-04 09:56:17\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:34', '2025-03-15 02:52:34'),
(132, 'default', 'Admin admin-1 Menghapus Photo di Package Great Barrier Reef', 'App\\Models\\PackagePhoto', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"package_id\":3,\"photo\":\"package_1733306202.jpg\",\"created_at\":\"2024-12-04 09:56:42\",\"updated_at\":\"2024-12-04 09:56:42\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:35', '2025-03-15 02:52:35'),
(133, 'default', 'Admin admin-1 Menghapus Video di Package Great Barrier Reef', 'App\\Models\\PackageVideo', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"package_id\":3,\"video\":\"HRg1gJi6yqc\",\"created_at\":\"2024-12-04 11:52:45\",\"updated_at\":\"2024-12-04 11:52:45\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:47', '2025-03-15 02:52:47'),
(134, 'default', 'Admin admin-1 Menghapus Video di Package Great Barrier Reef', 'App\\Models\\PackageVideo', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"package_id\":3,\"video\":\"2QVwEWIKMI8\",\"created_at\":\"2024-12-04 11:53:40\",\"updated_at\":\"2024-12-04 11:53:40\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:48', '2025-03-15 02:52:48'),
(135, 'default', 'Admin admin-1 Menghapus Video di Package Great Barrier Reef', 'App\\Models\\PackageVideo', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"package_id\":3,\"video\":\"GTRQsa3jpXU\",\"created_at\":\"2024-12-04 12:05:34\",\"updated_at\":\"2024-12-04 12:05:34\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:49', '2025-03-15 02:52:49'),
(136, 'default', 'Admin admin-1 Menghapus Video di Package Great Barrier Reef', 'App\\Models\\PackageVideo', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"package_id\":3,\"video\":\"PdVLk_dPmtc\",\"created_at\":\"2024-12-04 12:05:54\",\"updated_at\":\"2024-12-04 12:05:54\",\"deleted_at\":null}}', NULL, '2025-03-15 02:52:49', '2025-03-15 02:52:49'),
(137, 'default', 'Admin admin-1 Menghapus Tour di Package Great Barrier Reef', 'App\\Models\\Tour', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"package_id\":3,\"total_seat\":\"50\",\"tour_start_date\":\"2025-01-06\",\"tour_end_date\":\"2025-01-12\",\"booking_end_date\":\"2025-02-28\",\"created_at\":\"2024-12-04 14:25:21\",\"updated_at\":\"2025-03-15 09:53:05\",\"deleted_at\":\"2025-03-15 09:53:05\"}}', NULL, '2025-03-15 02:53:05', '2025-03-15 02:53:05'),
(138, 'default', 'Admin admin-1 Menghapus Tour di Package Venice Grand Canal', 'App\\Models\\Tour', 'deleted', 7, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":7,\"package_id\":6,\"total_seat\":\"100\",\"tour_start_date\":\"2025-02-28\",\"tour_end_date\":\"2025-03-01\",\"booking_end_date\":\"2025-02-10\",\"created_at\":\"2025-01-26 04:16:57\",\"updated_at\":\"2025-03-15 09:53:08\",\"deleted_at\":\"2025-03-15 09:53:08\"}}', NULL, '2025-03-15 02:53:08', '2025-03-15 02:53:08'),
(139, 'default', 'Admin admin-1 Menghapus Package Great Barrier Reef', 'App\\Models\\Package', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"destination_id\":1,\"name\":\"Great Barrier Reef\",\"slug\":\"great-barrier-reef\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.<\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.<\\/p>\",\"featured_photo\":\"featured_package_1733152566.jpg\",\"banner\":\"banner_package_1733666393.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d29727389.296015263!2d111.80237967433143!3d-24.560477348708336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sid!2sid!4v1733031925173!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":300,\"old_price\":\"350\",\"total_rating\":0,\"total_score\":0,\"created_at\":\"2024-12-02 15:16:06\",\"updated_at\":\"2025-02-12 08:47:38\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:11', '2025-03-15 02:53:11'),
(140, 'default', 'Admin admin-1 Menghapus Amenity di Package Royal Ontario Museum', 'App\\Models\\PackageAmenity', 'deleted', 33, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":33,\"package_id\":4,\"amenity_id\":8,\"type\":\"include\",\"created_at\":\"2025-02-14 10:59:27\",\"updated_at\":\"2025-02-14 10:59:27\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:18', '2025-03-15 02:53:18'),
(141, 'default', 'Admin admin-1 Menghapus Amenity di Package Royal Ontario Museum', 'App\\Models\\PackageAmenity', 'deleted', 34, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":34,\"package_id\":4,\"amenity_id\":6,\"type\":\"include\",\"created_at\":\"2025-02-14 10:59:35\",\"updated_at\":\"2025-02-14 10:59:35\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:18', '2025-03-15 02:53:18'),
(142, 'default', 'Admin admin-1 Menghapus Amenity di Package Royal Ontario Museum', 'App\\Models\\PackageAmenity', 'deleted', 35, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":35,\"package_id\":4,\"amenity_id\":4,\"type\":\"include\",\"created_at\":\"2025-02-14 10:59:38\",\"updated_at\":\"2025-02-14 10:59:47\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:19', '2025-03-15 02:53:19'),
(143, 'default', 'Admin admin-1 Menghapus Package Royal Ontario Museum', 'App\\Models\\Package', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"destination_id\":3,\"name\":\"Royal Ontario Museum\",\"slug\":\"royal-ontario-museum\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.<\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.<\\/p>\",\"featured_photo\":\"featured_package_1733471096.jpg\",\"banner\":\"banner_package_1733471096.jpg\",\"map\":null,\"price\":50,\"old_price\":\"150\",\"total_rating\":0,\"total_score\":0,\"created_at\":\"2024-12-06 07:44:56\",\"updated_at\":\"2025-02-14 08:21:14\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:34', '2025-03-15 02:53:34'),
(144, 'default', 'Admin admin-1 Menghapus Package Similan Islands, Andaman Sea', 'App\\Models\\Package', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"destination_id\":2,\"name\":\"Similan Islands, Andaman Sea\",\"slug\":\"similan-islands\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.<\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.<\\/p>\",\"featured_photo\":\"featured_package_1734357051.jpg\",\"banner\":\"banner_package_1734357052.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d34842.636595734206!2d97.62461786772579!3d8.648734497177111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x305a71a2bdeee5fd%3A0xe8d3e2bd15fe3719!2sSimilan%20Islands!5e1!3m2!1sid!2sid!4v1734357031818!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":230,\"old_price\":\"500\",\"total_rating\":0,\"total_score\":0,\"created_at\":\"2024-12-16 13:50:52\",\"updated_at\":\"2024-12-16 13:50:52\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:37', '2025-03-15 02:53:37'),
(145, 'default', 'Admin admin-1 Menghapus Package Venice Grand Canal', 'App\\Models\\Package', 'deleted', 6, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":6,\"destination_id\":3,\"name\":\"Venice Grand Canal\",\"slug\":\"venice-grand-canal\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.<\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.<\\/p>\",\"featured_photo\":\"featured_package_1734357650.jpg\",\"banner\":\"banner_package_1734357650.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d12364.954508978293!2d12.315310615153587!3d45.43731533524304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x477eb1cf9b80b6c1%3A0x7bc9f4c104616008!2sKanal%20Besar%20Venesia!5e1!3m2!1sid!2sid!4v1734357630537!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":10000000,\"old_price\":\"1000\",\"total_rating\":0,\"total_score\":0,\"created_at\":\"2024-12-16 14:00:50\",\"updated_at\":\"2025-02-06 02:39:24\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:40', '2025-03-15 02:53:40'),
(146, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"destination_id\":1,\"photo\":\"destination_1733053603.jpg\",\"created_at\":\"2024-12-01 11:46:43\",\"updated_at\":\"2024-12-01 11:46:43\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:48', '2025-03-15 02:53:48'),
(147, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"destination_id\":1,\"photo\":\"destination_1733053608.jpg\",\"created_at\":\"2024-12-01 11:46:48\",\"updated_at\":\"2024-12-01 11:46:48\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:49', '2025-03-15 02:53:49'),
(148, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"destination_id\":1,\"photo\":\"destination_1733053614.jpg\",\"created_at\":\"2024-12-01 11:46:54\",\"updated_at\":\"2024-12-01 11:46:54\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:50', '2025-03-15 02:53:50'),
(149, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"destination_id\":1,\"photo\":\"destination_1733053619.jpg\",\"created_at\":\"2024-12-01 11:46:59\",\"updated_at\":\"2024-12-01 11:46:59\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:50', '2025-03-15 02:53:50'),
(150, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 6, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":6,\"destination_id\":1,\"photo\":\"destination_1733053631.jpg\",\"created_at\":\"2024-12-01 11:47:11\",\"updated_at\":\"2024-12-01 11:47:11\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:51', '2025-03-15 02:53:51'),
(151, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 7, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":7,\"destination_id\":1,\"photo\":\"destination_1733053639.jpg\",\"created_at\":\"2024-12-01 11:47:19\",\"updated_at\":\"2024-12-01 11:47:19\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:52', '2025-03-15 02:53:52'),
(152, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"destination_id\":1,\"photo\":\"destination_1733053645.jpg\",\"created_at\":\"2024-12-01 11:47:25\",\"updated_at\":\"2024-12-01 11:47:25\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:53', '2025-03-15 02:53:53'),
(153, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"destination_id\":1,\"photo\":\"destination_1733053650.jpg\",\"created_at\":\"2024-12-01 11:47:30\",\"updated_at\":\"2024-12-01 11:47:30\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:53', '2025-03-15 02:53:53'),
(154, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 27, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":27,\"destination_id\":1,\"photo\":\"destination_1736912610.png\",\"created_at\":\"2025-01-15 03:43:30\",\"updated_at\":\"2025-01-15 03:43:30\",\"deleted_at\":null}}', NULL, '2025-03-15 02:53:54', '2025-03-15 02:53:54'),
(155, 'default', 'Admin Menghapus Destination Video ', 'App\\Models\\DestinationVideo', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"destination_id\":1,\"video\":\"GTRQsa3jpXU\",\"created_at\":\"2024-12-02 13:17:00\",\"updated_at\":\"2024-12-02 13:17:00\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:07', '2025-03-15 02:54:07'),
(156, 'default', 'Admin Menghapus Destination Video ', 'App\\Models\\DestinationVideo', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"destination_id\":1,\"video\":\"3QDole5dUh8\",\"created_at\":\"2024-12-02 13:18:58\",\"updated_at\":\"2024-12-02 13:18:58\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:08', '2025-03-15 02:54:08'),
(157, 'default', 'Admin admin-1 Menghapus Destination Sydney', 'App\\Models\\Destination', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"name\":\"Sydney\",\"slug\":\"sydney\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Australia\",\"language\":\"Australia, Bahasa Inggris, Bahasa Spanyol\",\"currency\":\"AUD\",\"area\":\"120039 sqft\",\"timezone\":\"GMT-6\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p><span style=\\\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\">Berselancar, Menyelam, Mendaki, Berkemah, Terjun Payung, Safari Satwa Liar<\\/span><\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d29727389.296015263!2d111.80237967433143!3d-24.560477348708336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sid!2sid!4v1733031925173!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1733030190.jpg\",\"view_count\":42,\"created_at\":\"2024-11-29 16:44:40\",\"updated_at\":\"2025-02-26 07:54:38\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:16', '2025-03-15 02:54:16'),
(158, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 10, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":10,\"destination_id\":2,\"photo\":\"destination_1733054682.jpg\",\"created_at\":\"2024-12-01 12:04:42\",\"updated_at\":\"2024-12-01 12:04:42\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:21', '2025-03-15 02:54:21'),
(159, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"destination_id\":2,\"photo\":\"destination_1733054688.jpg\",\"created_at\":\"2024-12-01 12:04:48\",\"updated_at\":\"2024-12-01 12:04:48\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:22', '2025-03-15 02:54:22'),
(160, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 12, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":12,\"destination_id\":2,\"photo\":\"destination_1733054693.jpg\",\"created_at\":\"2024-12-01 12:04:53\",\"updated_at\":\"2024-12-01 12:04:53\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:23', '2025-03-15 02:54:23'),
(161, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 13, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":13,\"destination_id\":2,\"photo\":\"destination_1733054698.jpg\",\"created_at\":\"2024-12-01 12:04:58\",\"updated_at\":\"2024-12-01 12:04:58\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:24', '2025-03-15 02:54:24'),
(162, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 14, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":14,\"destination_id\":2,\"photo\":\"destination_1733054703.jpg\",\"created_at\":\"2024-12-01 12:05:03\",\"updated_at\":\"2024-12-01 12:05:03\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:25', '2025-03-15 02:54:25'),
(163, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 15, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":15,\"destination_id\":2,\"photo\":\"destination_1733054708.jpg\",\"created_at\":\"2024-12-01 12:05:08\",\"updated_at\":\"2024-12-01 12:05:08\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:25', '2025-03-15 02:54:25'),
(164, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 16, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":16,\"destination_id\":2,\"photo\":\"destination_1733054713.jpg\",\"created_at\":\"2024-12-01 12:05:13\",\"updated_at\":\"2024-12-01 12:05:13\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:26', '2025-03-15 02:54:26'),
(165, 'default', 'Admin admin-1 Menghapus Destination Phuket', 'App\\Models\\Destination', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"name\":\"Phuket\",\"slug\":\"phuket\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Thailand\",\"language\":\"Thai, English\",\"currency\":\"Baht\",\"area\":\"100000 sq miles\",\"timezone\":\"GMT+3\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Surfing, Scuba Diving, Hiking, Camping, Skydiving, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d7962202.943951995!2d96.18288712085554!3d12.984997724362604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304d8df747424db1%3A0x9ed72c880757e802!2sThailand!5e0!3m2!1sid!2sid!4v1733032885866!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1732899388.jpg\",\"view_count\":9,\"created_at\":\"2024-11-29 16:56:28\",\"updated_at\":\"2024-12-02 13:36:05\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:40', '2025-03-15 02:54:40'),
(166, 'default', 'Admin admin-1 Menghapus Destination Lisbon', 'App\\Models\\Destination', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"name\":\"Lisbon\",\"slug\":\"lisbon\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Lisbon\",\"language\":null,\"currency\":null,\"area\":null,\"timezone\":null,\"best_time\":null,\"health_safety\":null,\"visa_requirement\":null,\"activity\":null,\"map\":null,\"featured_photo\":\"feaatured_destination_1732899573.jpg\",\"view_count\":16,\"created_at\":\"2024-11-29 16:59:33\",\"updated_at\":\"2025-02-05 07:54:15\",\"deleted_at\":null}}', NULL, '2025-03-15 02:54:42', '2025-03-15 02:54:42'),
(167, 'default', 'Admin admin-1 Mengedit Destination Bandung', 'App\\Models\\Destination', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"view_count\":7,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-03-15 09:55:23\",\"deleted_at\":null},\"old\":{\"id\":5,\"name\":\"Rancabali\",\"slug\":\"rancabali\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"view_count\":7,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-03-04 14:16:33\",\"deleted_at\":null}}', NULL, '2025-03-15 02:55:23', '2025-03-15 02:55:23'),
(168, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-16 20:56:20', '2025-03-16 20:56:20'),
(169, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-16 23:10:24', '2025-03-16 23:10:24'),
(170, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742189028', 'App\\Models\\Booking', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"order_id\":\"0efc3049-c289-4f66-959e-ffa08d054bb3\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742189028\",\"checkout_url\":null,\"created_at\":\"2025-03-17 05:23:48\",\"updated_at\":\"2025-03-17 05:23:48\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:31', '2025-03-16 23:38:31'),
(171, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742183826', 'App\\Models\\Booking', 'deleted', 1, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":1,\"order_id\":\"3efbbe00-a838-418a-9c7a-0e9648685dce\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742183826\",\"checkout_url\":null,\"created_at\":\"2025-03-17 03:57:06\",\"updated_at\":\"2025-03-17 03:57:06\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:35', '2025-03-16 23:38:35');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(172, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742183874', 'App\\Models\\Booking', 'deleted', 2, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":2,\"order_id\":\"0fe000b7-a5cc-433e-867d-b90be67e505d\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742183874\",\"checkout_url\":null,\"created_at\":\"2025-03-17 03:57:54\",\"updated_at\":\"2025-03-17 03:57:54\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:36', '2025-03-16 23:38:36'),
(173, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742184114', 'App\\Models\\Booking', 'deleted', 3, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":3,\"order_id\":\"3cfcfb9c-7241-4d92-89db-c0a2570fbce2\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742184114\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:01:54\",\"updated_at\":\"2025-03-17 04:01:54\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:37', '2025-03-16 23:38:37'),
(174, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742184676', 'App\\Models\\Booking', 'deleted', 4, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":4,\"order_id\":\"120871d7-3715-4a1e-9bf9-2a5f9aa606b7\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742184676\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:11:16\",\"updated_at\":\"2025-03-17 04:11:16\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:38', '2025-03-16 23:38:38'),
(175, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742184702', 'App\\Models\\Booking', 'deleted', 5, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":5,\"order_id\":\"6b681376-a821-409e-8710-be32fe5dc780\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742184702\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:11:42\",\"updated_at\":\"2025-03-17 04:11:42\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:39', '2025-03-16 23:38:39'),
(176, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742186212', 'App\\Models\\Booking', 'deleted', 6, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":6,\"order_id\":\"772f2914-6cf0-499b-9905-a770db65df34\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742186212\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:36:52\",\"updated_at\":\"2025-03-17 04:36:52\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:40', '2025-03-16 23:38:40'),
(177, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742186288', 'App\\Models\\Booking', 'deleted', 7, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":7,\"order_id\":\"ec328b5e-829b-4cf8-81c9-b7a4232ebafc\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742186288\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:38:08\",\"updated_at\":\"2025-03-17 04:38:08\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:41', '2025-03-16 23:38:41'),
(178, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742186378', 'App\\Models\\Booking', 'deleted', 8, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":8,\"order_id\":\"9e01c72d-b0ab-4050-b572-07a8d1a0836e\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742186378\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:39:38\",\"updated_at\":\"2025-03-17 04:39:38\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:42', '2025-03-16 23:38:42'),
(179, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742186553', 'App\\Models\\Booking', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"order_id\":\"40ff7cac-26f8-49e6-9051-ccd4a89b642d\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742186553\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:42:33\",\"updated_at\":\"2025-03-17 04:42:33\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:43', '2025-03-16 23:38:43'),
(180, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742187357', 'App\\Models\\Booking', 'deleted', 10, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":10,\"order_id\":\"0470ecf0-ab68-4c53-9b52-d88f08286e32\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742187357\",\"checkout_url\":null,\"created_at\":\"2025-03-17 04:55:57\",\"updated_at\":\"2025-03-17 04:55:57\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:43', '2025-03-16 23:38:43'),
(181, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742189231', 'App\\Models\\Booking', 'deleted', 12, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":12,\"order_id\":\"ebd5d84d-9f90-441c-a969-10cf3f0be765\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742189231\",\"checkout_url\":null,\"created_at\":\"2025-03-17 05:27:11\",\"updated_at\":\"2025-03-17 05:27:11\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:44', '2025-03-16 23:38:44'),
(182, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742189492', 'App\\Models\\Booking', 'deleted', 13, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":13,\"order_id\":\"df26c2dd-732e-4fb9-b2f1-f7fb3c45521a\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742189492\",\"checkout_url\":null,\"created_at\":\"2025-03-17 05:31:32\",\"updated_at\":\"2025-03-17 05:31:32\",\"deleted_at\":null}}', NULL, '2025-03-16 23:38:45', '2025-03-16 23:38:45'),
(183, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1742194229', 'App\\Models\\Booking', 'deleted', 17, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":17,\"order_id\":\"04f64b68-6c98-4ef4-aabc-61fe513ba731\",\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1742194229\",\"checkout_url\":null,\"created_at\":\"2025-03-17 06:50:29\",\"updated_at\":\"2025-03-17 06:50:29\",\"deleted_at\":null}}', NULL, '2025-03-16 23:50:46', '2025-03-16 23:50:46'),
(184, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-21 21:05:19', '2025-03-21 21:05:19'),
(185, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 01:08:11', '2025-03-26 01:08:11'),
(186, 'default', 'User suparman Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 01:16:20', '2025-03-26 01:16:20'),
(187, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 01:17:35', '2025-03-26 01:17:35'),
(188, 'default', 'User suparman Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 02:07:59', '2025-03-26 02:07:59'),
(189, 'default', 'User Asep Tarya Cahyadi Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-26 02:10:09', '2025-03-26 02:10:09'),
(190, 'default', 'User Asep Tarya Cahyadi Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\User', 1, '[]', NULL, '2025-03-26 02:57:24', '2025-03-26 02:57:24'),
(191, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 02:57:40', '2025-03-26 02:57:40'),
(192, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-26 05:37:38', '2025-03-26 05:37:38'),
(193, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-26 05:41:07', '2025-03-26 05:41:07'),
(194, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-03-27 05:24:03', '2025-03-27 05:24:03'),
(195, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-03-27 05:49:25', '2025-03-27 05:49:25'),
(196, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-09 23:33:12', '2025-04-09 23:33:12'),
(197, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-09 23:34:01', '2025-04-09 23:34:01'),
(198, 'default', 'Admin admin-1 Mengedit Tour di Package Situ Patenggang', 'App\\Models\\Tour', 'updated', 6, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":6,\"package_id\":\"7\",\"total_seat\":\"100\",\"tour_start_date\":\"2025-03-18\",\"tour_end_date\":\"2025-03-20\",\"booking_end_date\":\"2025-04-30\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-04-10 06:34:13\",\"deleted_at\":null},\"old\":{\"id\":6,\"package_id\":7,\"total_seat\":\"100\",\"tour_start_date\":\"2025-03-18\",\"tour_end_date\":\"2025-03-20\",\"booking_end_date\":\"2025-03-17\",\"created_at\":\"2024-12-23 08:47:54\",\"updated_at\":\"2025-03-14 08:48:44\",\"deleted_at\":null}}', NULL, '2025-04-09 23:34:13', '2025-04-09 23:34:13'),
(199, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267732', 'App\\Models\\Booking', 'deleted', 28, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":28,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267732\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:48:52\",\"updated_at\":\"2025-04-10 06:48:52\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:41', '2025-04-09 23:58:41'),
(200, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267797', 'App\\Models\\Booking', 'deleted', 29, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":29,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267797\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:49:57\",\"updated_at\":\"2025-04-10 06:49:57\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:43', '2025-04-09 23:58:43'),
(201, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267802', 'App\\Models\\Booking', 'deleted', 30, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":30,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267802\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:50:02\",\"updated_at\":\"2025-04-10 06:50:02\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:44', '2025-04-09 23:58:44'),
(202, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267861', 'App\\Models\\Booking', 'deleted', 31, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":31,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267861\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:51:01\",\"updated_at\":\"2025-04-10 06:51:01\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:45', '2025-04-09 23:58:45'),
(203, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267871', 'App\\Models\\Booking', 'deleted', 32, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":32,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267871\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:51:11\",\"updated_at\":\"2025-04-10 06:51:11\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:46', '2025-04-09 23:58:46'),
(204, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267944', 'App\\Models\\Booking', 'deleted', 33, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":33,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267944\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:52:24\",\"updated_at\":\"2025-04-10 06:52:24\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:46', '2025-04-09 23:58:46'),
(205, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744267994', 'App\\Models\\Booking', 'deleted', 34, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":34,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744267994\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:53:14\",\"updated_at\":\"2025-04-10 06:53:14\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:47', '2025-04-09 23:58:47'),
(206, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744268019', 'App\\Models\\Booking', 'deleted', 35, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":35,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744268019\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:53:39\",\"updated_at\":\"2025-04-10 06:53:39\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:48', '2025-04-09 23:58:48'),
(207, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744268044', 'App\\Models\\Booking', 'deleted', 36, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":36,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744268044\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:54:04\",\"updated_at\":\"2025-04-10 06:54:04\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:49', '2025-04-09 23:58:49'),
(208, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744268072', 'App\\Models\\Booking', 'deleted', 37, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":37,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744268072\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:54:32\",\"updated_at\":\"2025-04-10 06:54:32\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:49', '2025-04-09 23:58:49'),
(209, 'default', 'Admin admin-1 Menghapus Booking dengan invoice 1744268113', 'App\\Models\\Booking', 'deleted', 38, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":38,\"order_id\":null,\"package_id\":7,\"tour_id\":6,\"user_id\":6,\"total_person\":1,\"paid_amount\":\"60000\",\"payment_method\":\"Midtrans\",\"payment_status\":\"Pending\",\"invoice_no\":\"1744268113\",\"checkout_url\":null,\"created_at\":\"2025-04-10 06:55:13\",\"updated_at\":\"2025-04-10 06:55:13\",\"deleted_at\":null}}', NULL, '2025-04-09 23:58:50', '2025-04-09 23:58:50'),
(210, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-11 03:44:54', '2025-04-11 03:44:54'),
(211, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-13 18:47:41', '2025-04-13 18:47:41'),
(212, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-15 22:12:08', '2025-04-15 22:12:08'),
(213, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-16 00:12:20', '2025-04-16 00:12:20'),
(214, 'default', 'Admin admin-1 Menambahkan Package safsdasdf', 'App\\Models\\Package', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"destination_id\":\"5\",\"name\":\"safsdasdf\",\"slug\":\"afasdfasdfasdf\",\"description\":\"<p>sadfasdfsdfasdfas<\\/p>\",\"price\":\"123423421\",\"old_price\":\"1234134\",\"map\":\"asdfasdfsdfsdfsdf\",\"total_rating\":0,\"total_score\":0,\"updated_at\":\"2025-04-16 07:15:03\",\"created_at\":\"2025-04-16 07:15:03\",\"id\":11},\"old\":\"Null\"}', NULL, '2025-04-16 00:15:03', '2025-04-16 00:15:03'),
(215, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-16 18:59:44', '2025-04-16 18:59:44'),
(216, 'default', 'Admin admin-1 Menambahkan Tour untuk Package Situ Patenggang', 'App\\Models\\Tour', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"tour_start_date\":\"2025-04-19\",\"tour_end_date\":\"2025-04-20\",\"booking_end_date\":\"2025-04-18\",\"total_seat\":\"32\",\"updated_at\":\"2025-04-17 02:01:06\",\"created_at\":\"2025-04-17 02:01:06\",\"id\":11},\"old\":\"Null\"}', NULL, '2025-04-16 19:01:06', '2025-04-16 19:01:06'),
(217, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-17 02:37:54', '2025-04-17 02:37:54'),
(218, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-17 03:28:53', '2025-04-17 03:28:53'),
(219, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-17 19:17:44', '2025-04-17 19:17:44'),
(220, 'default', 'Admin admin-1 Mengedit Tour di Package Situ Patenggang', 'App\\Models\\Tour', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"package_id\":\"7\",\"total_seat\":\"32\",\"tour_start_date\":\"2025-05-19\",\"tour_end_date\":\"2025-05-20\",\"booking_end_date\":\"2025-04-27\",\"created_at\":\"2025-04-17 02:01:06\",\"updated_at\":\"2025-04-18 02:18:12\",\"deleted_at\":null},\"old\":{\"id\":11,\"package_id\":7,\"total_seat\":\"32\",\"tour_start_date\":\"2025-05-19\",\"tour_end_date\":\"2025-05-20\",\"booking_end_date\":\"2025-04-18\",\"created_at\":\"2025-04-17 02:01:06\",\"updated_at\":\"2025-04-17 02:01:06\",\"deleted_at\":null}}', NULL, '2025-04-17 19:18:12', '2025-04-17 19:18:12'),
(221, 'default', 'Admin admin-1 Menghapus Tour di Package Situ Patenggang', 'App\\Models\\Tour', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"package_id\":7,\"total_seat\":\"32\",\"tour_start_date\":\"2025-05-19\",\"tour_end_date\":\"2025-05-20\",\"booking_end_date\":\"2025-04-27\",\"created_at\":\"2025-04-17 02:01:06\",\"updated_at\":\"2025-04-18 02:18:25\",\"deleted_at\":\"2025-04-18 02:18:25\"}}', NULL, '2025-04-17 19:18:25', '2025-04-17 19:18:25'),
(222, 'default', 'Admin admin-1 Menambahkan Tour untuk Package safsdasdf', 'App\\Models\\Tour', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"tour_start_date\":\"2025-04-18\",\"tour_end_date\":\"2025-04-20\",\"booking_end_date\":\"2025-04-20\",\"total_seat\":\"23\",\"updated_at\":\"2025-04-18 02:18:40\",\"created_at\":\"2025-04-18 02:18:40\",\"id\":12},\"old\":\"Null\"}', NULL, '2025-04-17 19:18:40', '2025-04-17 19:18:40'),
(223, 'default', 'Admin admin-1 Mengedit Package Kawah Putih', 'App\\Models\\Package', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"destination_id\":\"5\",\"name\":\"Kawah Putih\",\"slug\":\"kawah-putih\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.<\\/p>\\r\\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\\r\\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.\\r\\n\\r\\nNullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.\\r\\n\\r\\nSuspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.\\r\\n\\r\\nPhasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.\\r\\n\\r\\nIn hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.\",\"price\":\"123423000\",\"old_price\":\"1234134\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-18 02:20:04\",\"deleted_at\":null},\"old\":{\"id\":11,\"destination_id\":5,\"name\":\"safsdasdf\",\"slug\":\"afasdfasdfasdf\",\"description\":\"<p>sadfasdfsdfasdfas<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"asdfasdfsdfsdfsdf\",\"price\":123423000,\"old_price\":\"1234134\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-16 07:15:03\",\"deleted_at\":null}}', NULL, '2025-04-17 19:20:04', '2025-04-17 19:20:04'),
(224, 'default', 'Admin admin-1 Mengedit Package Kawah Putih', 'App\\Models\\Package', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"destination_id\":\"5\",\"name\":\"Kawah Putih\",\"slug\":\"kawah-putih\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.<\\/p>\\r\\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\\r\\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2435.4988745216574!2d107.3997041983116!3d-7.166151382329763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688c1383dc510f%3A0xfab41bb8e4a3a83e!2sKawah%20Putih!5e1!3m2!1sid!2sid!4v1744942822875!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":\"123423000\",\"old_price\":\"1234134\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-18 02:20:33\",\"deleted_at\":null},\"old\":{\"id\":11,\"destination_id\":5,\"name\":\"Kawah Putih\",\"slug\":\"kawah-putih\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.<\\/p>\\r\\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\\r\\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.\\r\\n\\r\\nNullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.\\r\\n\\r\\nSuspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.\\r\\n\\r\\nPhasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.\\r\\n\\r\\nIn hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.\",\"price\":123423000,\"old_price\":\"1234134\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-18 02:20:04\",\"deleted_at\":null}}', NULL, '2025-04-17 19:20:33', '2025-04-17 19:20:33'),
(225, 'default', 'Admin admin-1 Menambahkan Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"amenity_id\":\"8\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:20:40\",\"created_at\":\"2025-04-18 02:20:40\",\"id\":36},\"old\":\"Null\"}', NULL, '2025-04-17 19:20:40', '2025-04-17 19:20:40'),
(226, 'default', 'Admin admin-1 Menambahkan Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"amenity_id\":\"4\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:20:43\",\"created_at\":\"2025-04-18 02:20:43\",\"id\":37},\"old\":\"Null\"}', NULL, '2025-04-17 19:20:43', '2025-04-17 19:20:43'),
(227, 'default', 'Admin admin-1 Menambahkan Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"amenity_id\":\"1\",\"type\":\"exclude\",\"updated_at\":\"2025-04-18 02:21:07\",\"created_at\":\"2025-04-18 02:21:07\",\"id\":38},\"old\":\"Null\"}', NULL, '2025-04-17 19:21:07', '2025-04-17 19:21:07'),
(228, 'default', 'Admin admin-1 Menambahkan Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"amenity_id\":\"2\",\"type\":\"exclude\",\"updated_at\":\"2025-04-18 02:21:10\",\"created_at\":\"2025-04-18 02:21:10\",\"id\":39},\"old\":\"Null\"}', NULL, '2025-04-17 19:21:10', '2025-04-17 19:21:10'),
(229, 'default', 'Admin admin-1 Mengedit Package Situ Patenggang', 'App\\Models\\Package', 'updated', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":7,\"destination_id\":\"5\",\"name\":\"Situ Patenggang\",\"slug\":\"situ-patenggang\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Situ Patenggang, yang terletak di lepas pantai Rancabali, Indonesia, merupakan sistem terumbu karang terbesar di dunia, membentang sepanjang 2.300 kilometer dan terdiri dari lebih dari 2.900 terumbu karang dan 900 pulau. Terkenal karena keanekaragaman hayatinya yang menakjubkan, terumbu karang ini merupakan rumah bagi berbagai macam kehidupan laut yang luar biasa, termasuk lebih dari 1.500 spesies ikan dan 400 jenis karang. Formasi karangnya yang berwarna-warni dan airnya yang sebening kristal menjadikannya tujuan utama bagi penggemar snorkeling dan menyelam.<\\/span><\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Selain keindahan alamnya, Great Barrier Reef memiliki kepentingan ekologis dan ekonomi yang signifikan. Terumbu karang ini mendukung berbagai macam kehidupan laut dan berkontribusi terhadap mata pencaharian banyak masyarakat lokal melalui pariwisata dan penangkapan ikan. Namun, terumbu karang ini menghadapi berbagai ancaman, termasuk perubahan iklim dan pemutihan karang, sehingga upaya konservasi menjadi sangat penting bagi masa depannya.<\\/span><\\/p>\",\"featured_photo\":\"featured_package_1734942366.jpg\",\"banner\":\"banner_package_1734942366.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d6999.786802009336!2d107.3525230889993!3d-7.167282176306749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bc0fb5ad637%3A0x2585812940b0a366!2sSitu%20Patengan!5e1!3m2!1sid!2sid!4v1734943559677!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":\"2815000\",\"old_price\":\"3000000\",\"total_rating\":4,\"total_score\":20,\"include_hostel\":1,\"created_at\":\"2024-12-23 08:26:06\",\"updated_at\":\"2025-04-18 02:31:34\",\"deleted_at\":null},\"old\":{\"id\":7,\"destination_id\":5,\"name\":\"Situ Patenggang\",\"slug\":\"situ-patenggang\",\"description\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Situ Patenggang, yang terletak di lepas pantai Rancabali, Indonesia, merupakan sistem terumbu karang terbesar di dunia, membentang sepanjang 2.300 kilometer dan terdiri dari lebih dari 2.900 terumbu karang dan 900 pulau. Terkenal karena keanekaragaman hayatinya yang menakjubkan, terumbu karang ini merupakan rumah bagi berbagai macam kehidupan laut yang luar biasa, termasuk lebih dari 1.500 spesies ikan dan 400 jenis karang. Formasi karangnya yang berwarna-warni dan airnya yang sebening kristal menjadikannya tujuan utama bagi penggemar snorkeling dan menyelam.<\\/span><\\/p>\\r\\n<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Selain keindahan alamnya, Great Barrier Reef memiliki kepentingan ekologis dan ekonomi yang signifikan. Terumbu karang ini mendukung berbagai macam kehidupan laut dan berkontribusi terhadap mata pencaharian banyak masyarakat lokal melalui pariwisata dan penangkapan ikan. Namun, terumbu karang ini menghadapi berbagai ancaman, termasuk perubahan iklim dan pemutihan karang, sehingga upaya konservasi menjadi sangat penting bagi masa depannya.<\\/span><\\/p>\",\"featured_photo\":\"featured_package_1734942366.jpg\",\"banner\":\"banner_package_1734942366.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d6999.786802009336!2d107.3525230889993!3d-7.167282176306749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bc0fb5ad637%3A0x2585812940b0a366!2sSitu%20Patengan!5e1!3m2!1sid!2sid!4v1734943559677!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":60000,\"old_price\":\"120000\",\"total_rating\":4,\"total_score\":20,\"include_hostel\":1,\"created_at\":\"2024-12-23 08:26:06\",\"updated_at\":\"2025-04-11 10:45:42\",\"deleted_at\":null}}', NULL, '2025-04-17 19:31:34', '2025-04-17 19:31:34'),
(230, 'default', 'Admin admin-1 Manambahkan Amenity tiket', 'App\\Models\\Amenity', 'created', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"tiket\",\"updated_at\":\"2025-04-18 02:32:00\",\"created_at\":\"2025-04-18 02:32:00\",\"id\":20},\"old\":\"Null\"}', NULL, '2025-04-17 19:32:00', '2025-04-17 19:32:00'),
(231, 'default', 'Admin admin-1 Mengedit Amenity Tiket', 'App\\Models\\Amenity', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"name\":\"Tiket\",\"created_at\":\"2025-04-18 02:32:00\",\"updated_at\":\"2025-04-18 02:32:08\",\"deleted_at\":null},\"old\":{\"id\":20,\"name\":\"tiket\",\"created_at\":\"2025-04-18 02:32:00\",\"updated_at\":\"2025-04-18 02:32:00\",\"deleted_at\":null}}', NULL, '2025-04-17 19:32:08', '2025-04-17 19:32:08'),
(232, 'default', 'Admin admin-1 Mengedit Amenity Tiket Masuk Patengan', 'App\\Models\\Amenity', 'updated', 20, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":20,\"name\":\"Tiket Masuk Patengan\",\"created_at\":\"2025-04-18 02:32:00\",\"updated_at\":\"2025-04-18 02:32:23\",\"deleted_at\":null},\"old\":{\"id\":20,\"name\":\"Tiket\",\"created_at\":\"2025-04-18 02:32:00\",\"updated_at\":\"2025-04-18 02:32:08\",\"deleted_at\":null}}', NULL, '2025-04-17 19:32:23', '2025-04-17 19:32:23'),
(233, 'default', 'Admin admin-1 Manambahkan Amenity Makan Pagi dan Sore', 'App\\Models\\Amenity', 'created', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"Makan Pagi dan Sore\",\"updated_at\":\"2025-04-18 02:32:42\",\"created_at\":\"2025-04-18 02:32:42\",\"id\":21},\"old\":\"Null\"}', NULL, '2025-04-17 19:32:42', '2025-04-17 19:32:42'),
(234, 'default', 'Admin admin-1 Mengedit Amenity Makan Pagi dan Sore', 'App\\Models\\Amenity', 'updated', 21, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":21,\"name\":\"Makan Pagi dan Sore\",\"created_at\":\"2025-04-18 02:32:42\",\"updated_at\":\"2025-04-18 02:32:42\",\"deleted_at\":null},\"old\":{\"id\":21,\"name\":\"Makan Pagi dan Sore\",\"created_at\":\"2025-04-18 02:32:42\",\"updated_at\":\"2025-04-18 02:32:42\",\"deleted_at\":null}}', NULL, '2025-04-17 19:32:59', '2025-04-17 19:32:59'),
(235, 'default', 'Admin admin-1 Manambahkan Amenity Kamar Hotel Bintang 5', 'App\\Models\\Amenity', 'created', 22, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"Kamar Hotel Bintang 5\",\"updated_at\":\"2025-04-18 02:33:15\",\"created_at\":\"2025-04-18 02:33:15\",\"id\":22},\"old\":\"Null\"}', NULL, '2025-04-17 19:33:15', '2025-04-17 19:33:15'),
(236, 'default', 'Admin admin-1 Manambahkan Amenity Wisata Perahu', 'App\\Models\\Amenity', 'created', 23, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"Wisata Perahu\",\"updated_at\":\"2025-04-18 02:33:26\",\"created_at\":\"2025-04-18 02:33:26\",\"id\":23},\"old\":\"Null\"}', NULL, '2025-04-17 19:33:26', '2025-04-17 19:33:26'),
(237, 'default', 'Admin admin-1 Manambahkan Amenity ATV', 'App\\Models\\Amenity', 'created', 24, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"ATV\",\"updated_at\":\"2025-04-18 02:33:34\",\"created_at\":\"2025-04-18 02:33:34\",\"id\":24},\"old\":\"Null\"}', NULL, '2025-04-17 19:33:34', '2025-04-17 19:33:34'),
(238, 'default', 'Admin admin-1 Manambahkan Amenity Live Music', 'App\\Models\\Amenity', 'created', 25, 'App\\Models\\Admin', 1, '{\"attributes\":{\"name\":\"Live Music\",\"updated_at\":\"2025-04-18 02:33:47\",\"created_at\":\"2025-04-18 02:33:47\",\"id\":25},\"old\":\"Null\"}', NULL, '2025-04-17 19:33:47', '2025-04-17 19:33:47'),
(239, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"24\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:33:57\",\"created_at\":\"2025-04-18 02:33:57\",\"id\":40},\"old\":\"Null\"}', NULL, '2025-04-17 19:33:57', '2025-04-17 19:33:57'),
(240, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"22\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:34:00\",\"created_at\":\"2025-04-18 02:34:00\",\"id\":41},\"old\":\"Null\"}', NULL, '2025-04-17 19:34:00', '2025-04-17 19:34:00'),
(241, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"25\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:34:03\",\"created_at\":\"2025-04-18 02:34:03\",\"id\":42},\"old\":\"Null\"}', NULL, '2025-04-17 19:34:03', '2025-04-17 19:34:03'),
(242, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"21\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:34:05\",\"created_at\":\"2025-04-18 02:34:05\",\"id\":43},\"old\":\"Null\"}', NULL, '2025-04-17 19:34:05', '2025-04-17 19:34:05'),
(243, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"20\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:34:12\",\"created_at\":\"2025-04-18 02:34:12\",\"id\":44},\"old\":\"Null\"}', NULL, '2025-04-17 19:34:12', '2025-04-17 19:34:12'),
(244, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 15, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":15,\"package_id\":7,\"amenity_id\":12,\"type\":\"include\",\"created_at\":\"2024-12-23 08:27:08\",\"updated_at\":\"2024-12-23 08:27:08\",\"deleted_at\":null}}', NULL, '2025-04-17 19:34:56', '2025-04-17 19:34:56'),
(245, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 16, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":16,\"package_id\":7,\"amenity_id\":3,\"type\":\"include\",\"created_at\":\"2024-12-23 08:27:12\",\"updated_at\":\"2024-12-23 08:27:12\",\"deleted_at\":null}}', NULL, '2025-04-17 19:34:58', '2025-04-17 19:34:58'),
(246, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 18, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":18,\"package_id\":7,\"amenity_id\":4,\"type\":\"include\",\"created_at\":\"2024-12-23 08:27:30\",\"updated_at\":\"2024-12-23 08:27:30\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:00', '2025-04-17 19:35:00'),
(247, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 24, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":24,\"package_id\":7,\"amenity_id\":5,\"type\":\"include\",\"created_at\":\"2024-12-23 08:28:19\",\"updated_at\":\"2024-12-23 08:28:19\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:02', '2025-04-17 19:35:02'),
(248, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 19, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":19,\"package_id\":7,\"amenity_id\":6,\"type\":\"exclude\",\"created_at\":\"2024-12-23 08:27:37\",\"updated_at\":\"2024-12-23 08:27:37\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:09', '2025-04-17 19:35:09'),
(249, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 21, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":21,\"package_id\":7,\"amenity_id\":9,\"type\":\"exclude\",\"created_at\":\"2024-12-23 08:27:52\",\"updated_at\":\"2024-12-23 08:27:52\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:13', '2025-04-17 19:35:13'),
(250, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 23, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":23,\"package_id\":7,\"amenity_id\":2,\"type\":\"exclude\",\"created_at\":\"2024-12-23 08:28:14\",\"updated_at\":\"2024-12-23 08:28:14\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:18', '2025-04-17 19:35:18'),
(251, 'default', 'Admin admin-1 Menghapus Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'deleted', 25, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":25,\"package_id\":7,\"amenity_id\":1,\"type\":\"exclude\",\"created_at\":\"2024-12-23 08:28:25\",\"updated_at\":\"2024-12-23 08:28:25\",\"deleted_at\":null}}', NULL, '2025-04-17 19:35:20', '2025-04-17 19:35:20'),
(252, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"23\",\"type\":\"include\",\"updated_at\":\"2025-04-18 02:35:29\",\"created_at\":\"2025-04-18 02:35:29\",\"id\":45},\"old\":\"Null\"}', NULL, '2025-04-17 19:35:29', '2025-04-17 19:35:29'),
(253, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenity_id\":\"3\",\"type\":\"exclude\",\"updated_at\":\"2025-04-18 02:35:52\",\"created_at\":\"2025-04-18 02:35:52\",\"id\":46},\"old\":\"Null\"}', NULL, '2025-04-17 19:35:52', '2025-04-17 19:35:52'),
(254, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-17 19:57:15', '2025-04-17 19:57:15'),
(255, 'default', 'updated', 'App\\Models\\User', 'updated', 6, 'App\\Models\\User', 6, '{\"attributes\":{\"phone\":\"089525907023\",\"country\":\"#\",\"address\":\"#\",\"state\":\"#\",\"city\":\"#\",\"zip\":\"#\",\"updated_at\":\"2025-04-18T03:00:35.000000Z\"},\"old\":{\"phone\":null,\"country\":null,\"address\":null,\"state\":null,\"city\":null,\"zip\":null,\"updated_at\":\"2025-03-04T13:47:30.000000Z\"}}', NULL, '2025-04-17 20:00:35', '2025-04-17 20:00:35'),
(256, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-17 23:55:22', '2025-04-17 23:55:22'),
(257, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-18 00:18:34', '2025-04-18 00:18:34');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(258, 'default', 'Admin admin-1 Mengedit Destination Bandung', 'App\\Models\\Destination', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Bandung\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":11,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:20:47\",\"deleted_at\":null},\"old\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":11,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:19:38\",\"deleted_at\":null}}', NULL, '2025-04-18 00:20:47', '2025-04-18 00:20:47'),
(259, 'default', 'Admin admin-1 Mengedit Destination Bandung', 'App\\Models\\Destination', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia - Bandung Selatan\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":13,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:23:20\",\"deleted_at\":null},\"old\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Bandung\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":13,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:22:01\",\"deleted_at\":null}}', NULL, '2025-04-18 00:23:20', '2025-04-18 00:23:20'),
(260, 'default', 'Admin admin-1 Menambahkan Destination Bandung Barat', 'App\\Models\\Destination', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"featured_photo\":\"feaatured_destination_1744961276.jpg\",\"name\":\"Bandung Barat\",\"slug\":\"bandung-barat\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"country\":\"Indonesia - Bandung Barat\",\"language\":\"Indonesia, Sunda\",\"currency\":\"Rp\",\"area\":\"1.287 km\\u00b2\",\"best_time\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"health_safety\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"timezone\":\"GMT\",\"visa_requirement\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"activity\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.32098643546!2d107.1424182909513!3d-6.904083574726247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20barat!5e1!3m2!1sid!2sid!4v1744961179550!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"view_count\":1,\"updated_at\":\"2025-04-18 07:27:56\",\"created_at\":\"2025-04-18 07:27:56\",\"id\":10},\"old\":\"Null\"}', NULL, '2025-04-18 00:27:56', '2025-04-18 00:27:56'),
(261, 'default', 'Admin admin-1 Mengedit Destination Bandung Selatan', 'App\\Models\\Destination', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"name\":\"Bandung Selatan\",\"slug\":\"bandung-selatan\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia - Bandung Selatan\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.9291643734!2d107.14241790591959!3d-6.903345291968417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20selatan!5e1!3m2!1sid!2sid!4v1744961345326!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":16,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:29:30\",\"deleted_at\":null},\"old\":{\"id\":5,\"name\":\"Bandung\",\"slug\":\"bandung\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia - Bandung Selatan\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d111995.04350530596!2d107.2627304720415!3d-7.173566280085935!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bce5daa2ed1%3A0xecea28a66077c75e!2sKec.%20Rancabali%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1734942091230!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":16,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:28:50\",\"deleted_at\":null}}', NULL, '2025-04-18 00:29:30', '2025-04-18 00:29:30'),
(262, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-18 00:37:59', '2025-04-18 00:37:59'),
(263, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-18 07:32:58', '2025-04-18 07:32:58'),
(264, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Akomodasi\",\"type\":\"include\",\"updated_at\":\"2025-04-18 14:34:41\",\"created_at\":\"2025-04-18 14:34:41\",\"id\":1},\"old\":\"Null\"}', NULL, '2025-04-18 07:34:41', '2025-04-18 07:34:41'),
(265, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Renang\",\"type\":\"include\",\"updated_at\":\"2025-04-18 15:42:20\",\"created_at\":\"2025-04-18 15:42:20\",\"id\":2},\"old\":\"Null\"}', NULL, '2025-04-18 08:42:20', '2025-04-18 08:42:20'),
(266, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Kamar\",\"type\":\"include\",\"updated_at\":\"2025-04-18 15:57:14\",\"created_at\":\"2025-04-18 15:57:14\",\"id\":3},\"old\":\"Null\"}', NULL, '2025-04-18 08:57:14', '2025-04-18 08:57:14'),
(267, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Penginapan\",\"type\":\"include\",\"updated_at\":\"2025-04-18 15:57:22\",\"created_at\":\"2025-04-18 15:57:22\",\"id\":4},\"old\":\"Null\"}', NULL, '2025-04-18 08:57:22', '2025-04-18 08:57:22'),
(268, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Live Music\",\"type\":\"include\",\"updated_at\":\"2025-04-18 15:57:41\",\"created_at\":\"2025-04-18 15:57:41\",\"id\":5},\"old\":\"Null\"}', NULL, '2025-04-18 08:57:41', '2025-04-18 08:57:41'),
(269, 'default', 'Admin admin-1 Menambahkan Amenity di Package Situ Patenggang', 'App\\Models\\PackageAmenity', 'created', 7, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"7\",\"amenities_name\":\"Tiket Masuk\",\"type\":\"include\",\"updated_at\":\"2025-04-18 15:57:55\",\"created_at\":\"2025-04-18 15:57:55\",\"id\":6},\"old\":\"Null\"}', NULL, '2025-04-18 08:57:55', '2025-04-18 08:57:55'),
(270, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-18 23:28:01', '2025-04-18 23:28:01'),
(271, 'default', 'Admin admin-1 Menambahkan Destination Rancabali', 'App\\Models\\Destination', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"featured_photo\":\"feaatured_destination_1745044436.jpg\",\"name\":\"Rancabali\",\"slug\":\"rancabali\",\"description\":\"<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.<\\/p>\\r\\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.<\\/p>\\r\\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.<\\/p>\\r\\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.<\\/p>\",\"country\":\"Rancabali - Indonesia\",\"language\":\"Indonesia, Sunda\",\"currency\":\"Rp\",\"area\":\"148,37 km2\",\"best_time\":\"<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.<\\/p>\\r\\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.<\\/p>\\r\\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.<\\/p>\\r\\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.<\\/p>\",\"health_safety\":\"<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.<\\/p>\\r\\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.<\\/p>\\r\\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.<\\/p>\\r\\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.<\\/p>\",\"timezone\":\"UTC\",\"visa_requirement\":\"<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.<\\/p>\\r\\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.<\\/p>\\r\\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.<\\/p>\\r\\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.<\\/p>\",\"activity\":\"<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.<\\/p>\\r\\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.<\\/p>\\r\\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.<\\/p>\\r\\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d3043.741647484783!2d107.35707799997648!3d-7.164299673881348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20rancabali!5e1!3m2!1sid!2sid!4v1745044303220!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"view_count\":1,\"updated_at\":\"2025-04-19 06:33:56\",\"created_at\":\"2025-04-19 06:33:56\",\"id\":11},\"old\":\"Null\"}', NULL, '2025-04-18 23:33:56', '2025-04-18 23:33:56');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(272, 'default', 'Admin admin-1 Mengedit Destination Bandung Barat', 'App\\Models\\Destination', 'updated', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":10,\"name\":\"Bandung Barat\",\"slug\":\"bandung-barat\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"country\":\"Bandung Barat - Indonesia\",\"language\":\"Indonesia, Sunda\",\"currency\":\"Rp\",\"area\":\"1.287 km\\u00b2\",\"timezone\":\"GMT\",\"best_time\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"health_safety\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"visa_requirement\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"activity\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.32098643546!2d107.1424182909513!3d-6.904083574726247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20barat!5e1!3m2!1sid!2sid!4v1744961179550!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1744961276.jpg\",\"country_code\":null,\"package_count\":null,\"is_visible_on_map\":null,\"view_count\":2,\"created_at\":\"2025-04-18 07:27:56\",\"updated_at\":\"2025-04-19 06:34:34\",\"deleted_at\":null},\"old\":{\"id\":10,\"name\":\"Bandung Barat\",\"slug\":\"bandung-barat\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"country\":\"Indonesia - Bandung Barat\",\"language\":\"Indonesia, Sunda\",\"currency\":\"Rp\",\"area\":\"1.287 km\\u00b2\",\"timezone\":\"GMT\",\"best_time\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"health_safety\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"visa_requirement\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"activity\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.32098643546!2d107.1424182909513!3d-6.904083574726247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20barat!5e1!3m2!1sid!2sid!4v1744961179550!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1744961276.jpg\",\"country_code\":null,\"package_count\":null,\"is_visible_on_map\":null,\"view_count\":2,\"created_at\":\"2025-04-18 07:27:56\",\"updated_at\":\"2025-04-18 07:28:07\",\"deleted_at\":null}}', NULL, '2025-04-18 23:34:34', '2025-04-18 23:34:34'),
(273, 'default', 'Admin admin-1 Mengedit Destination Bandung Selatan', 'App\\Models\\Destination', 'updated', 5, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":5,\"name\":\"Bandung Selatan\",\"slug\":\"bandung-selatan\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Bandung Selatan - Indonesia\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.9291643734!2d107.14241790591959!3d-6.903345291968417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20selatan!5e1!3m2!1sid!2sid!4v1744961345326!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":23,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-19 06:35:12\",\"deleted_at\":null},\"old\":{\"id\":5,\"name\":\"Bandung Selatan\",\"slug\":\"bandung-selatan\",\"description\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"country\":\"Indonesia - Bandung Selatan\",\"language\":\"Indonesia, Sunda, English\",\"currency\":\"RP\",\"area\":\"20000 sq miles\",\"timezone\":\"GMT +7\",\"best_time\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"health_safety\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"visa_requirement\":\"<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.<\\/p>\\r\\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"activity\":\"<p>Hiking, Camping, Wildlife Safari<\\/p>\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m16!1m12!1m3!1d389817.9291643734!2d107.14241790591959!3d-6.903345291968417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20selatan!5e1!3m2!1sid!2sid!4v1744961345326!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"featured_photo\":\"feaatured_destination_1734942101.jpg\",\"country_code\":\"ID\",\"package_count\":2,\"is_visible_on_map\":1,\"view_count\":23,\"created_at\":\"2024-12-23 08:21:41\",\"updated_at\":\"2025-04-18 07:42:33\",\"deleted_at\":null}}', NULL, '2025-04-18 23:35:12', '2025-04-18 23:35:12'),
(274, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-18 23:38:05', '2025-04-18 23:38:05'),
(275, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 29, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":29,\"destination_id\":11,\"photo\":\"destination_1745044565.jpg\",\"created_at\":\"2025-04-19 06:36:05\",\"updated_at\":\"2025-04-19 06:36:05\",\"deleted_at\":null}}', NULL, '2025-04-18 23:39:41', '2025-04-18 23:39:41'),
(276, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 30, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":30,\"destination_id\":11,\"photo\":\"destination_1745044574.jpg\",\"created_at\":\"2025-04-19 06:36:14\",\"updated_at\":\"2025-04-19 06:36:14\",\"deleted_at\":null}}', NULL, '2025-04-18 23:39:44', '2025-04-18 23:39:44'),
(277, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 31, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":31,\"destination_id\":11,\"photo\":\"destination_1745044584.jpg\",\"created_at\":\"2025-04-19 06:36:24\",\"updated_at\":\"2025-04-19 06:36:24\",\"deleted_at\":null}}', NULL, '2025-04-18 23:39:46', '2025-04-18 23:39:46'),
(278, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 32, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":32,\"destination_id\":11,\"photo\":\"destination_1745044626.jpg\",\"created_at\":\"2025-04-19 06:37:06\",\"updated_at\":\"2025-04-19 06:37:06\",\"deleted_at\":null}}', NULL, '2025-04-18 23:39:48', '2025-04-18 23:39:48'),
(279, 'default', 'Admin Menghapus Destination Photo', 'App\\Models\\DestinationPhoto', 'deleted', 33, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":33,\"destination_id\":11,\"photo\":\"destination_1745044628.jpg\",\"created_at\":\"2025-04-19 06:37:08\",\"updated_at\":\"2025-04-19 06:37:08\",\"deleted_at\":null}}', NULL, '2025-04-18 23:39:50', '2025-04-18 23:39:50'),
(280, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 34, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044963.jpg\",\"updated_at\":\"2025-04-19 06:42:43\",\"created_at\":\"2025-04-19 06:42:43\",\"id\":34},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:43', '2025-04-18 23:42:43'),
(281, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 35, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044966.jpg\",\"updated_at\":\"2025-04-19 06:42:46\",\"created_at\":\"2025-04-19 06:42:46\",\"id\":35},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:46', '2025-04-18 23:42:46'),
(282, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 36, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044970.jpg\",\"updated_at\":\"2025-04-19 06:42:50\",\"created_at\":\"2025-04-19 06:42:50\",\"id\":36},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:50', '2025-04-18 23:42:50'),
(283, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 37, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044973.jpg\",\"updated_at\":\"2025-04-19 06:42:53\",\"created_at\":\"2025-04-19 06:42:53\",\"id\":37},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:53', '2025-04-18 23:42:53'),
(284, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 38, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044976.jpg\",\"updated_at\":\"2025-04-19 06:42:56\",\"created_at\":\"2025-04-19 06:42:56\",\"id\":38},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:56', '2025-04-18 23:42:56'),
(285, 'default', 'Admin Menambahkan Destination Photo di ', 'App\\Models\\DestinationPhoto', 'created', 39, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"5\",\"photo\":\"destination_1745044978.jpg\",\"updated_at\":\"2025-04-19 06:42:58\",\"created_at\":\"2025-04-19 06:42:58\",\"id\":39},\"old\":\"Null\"}', NULL, '2025-04-18 23:42:59', '2025-04-18 23:42:59'),
(286, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 8, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"jSBPBf1TPU8\",\"updated_at\":\"2025-04-19 06:45:20\",\"created_at\":\"2025-04-19 06:45:20\",\"id\":8},\"old\":\"Null\"}', NULL, '2025-04-18 23:45:20', '2025-04-18 23:45:20'),
(287, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 9, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"SXVVRlHvgls\",\"updated_at\":\"2025-04-19 06:45:39\",\"created_at\":\"2025-04-19 06:45:39\",\"id\":9},\"old\":\"Null\"}', NULL, '2025-04-18 23:45:39', '2025-04-18 23:45:39'),
(288, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 10, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"eeMz5Q0aWTc&t=395s\",\"updated_at\":\"2025-04-19 06:45:56\",\"created_at\":\"2025-04-19 06:45:56\",\"id\":10},\"old\":\"Null\"}', NULL, '2025-04-18 23:45:56', '2025-04-18 23:45:56'),
(289, 'default', 'Admin Menghapus Destination Video ', 'App\\Models\\DestinationVideo', 'deleted', 10, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":10,\"destination_id\":11,\"video\":\"eeMz5Q0aWTc&t=395s\",\"created_at\":\"2025-04-19 06:45:56\",\"updated_at\":\"2025-04-19 06:45:56\",\"deleted_at\":null}}', NULL, '2025-04-18 23:46:02', '2025-04-18 23:46:02'),
(290, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"eeMz5Q0aWTc&t\",\"updated_at\":\"2025-04-19 06:46:10\",\"created_at\":\"2025-04-19 06:46:10\",\"id\":11},\"old\":\"Null\"}', NULL, '2025-04-18 23:46:10', '2025-04-18 23:46:10'),
(291, 'default', 'Admin Menghapus Destination Video ', 'App\\Models\\DestinationVideo', 'deleted', 11, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":11,\"destination_id\":11,\"video\":\"eeMz5Q0aWTc&t\",\"created_at\":\"2025-04-19 06:46:10\",\"updated_at\":\"2025-04-19 06:46:10\",\"deleted_at\":null}}', NULL, '2025-04-18 23:46:13', '2025-04-18 23:46:13'),
(292, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"395s\",\"updated_at\":\"2025-04-19 06:46:19\",\"created_at\":\"2025-04-19 06:46:19\",\"id\":12},\"old\":\"Null\"}', NULL, '2025-04-18 23:46:19', '2025-04-18 23:46:19'),
(293, 'default', 'Admin Menghapus Destination Video ', 'App\\Models\\DestinationVideo', 'deleted', 12, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":12,\"destination_id\":11,\"video\":\"395s\",\"created_at\":\"2025-04-19 06:46:19\",\"updated_at\":\"2025-04-19 06:46:19\",\"deleted_at\":null}}', NULL, '2025-04-18 23:46:26', '2025-04-18 23:46:26'),
(294, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"yWdtfpZsfj8\",\"updated_at\":\"2025-04-19 06:46:40\",\"created_at\":\"2025-04-19 06:46:40\",\"id\":13},\"old\":\"Null\"}', NULL, '2025-04-18 23:46:40', '2025-04-18 23:46:40'),
(295, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 14, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"11\",\"video\":\"LJ9_uJ62C0w\",\"updated_at\":\"2025-04-19 06:46:55\",\"created_at\":\"2025-04-19 06:46:55\",\"id\":14},\"old\":\"Null\"}', NULL, '2025-04-18 23:46:55', '2025-04-18 23:46:55'),
(296, 'default', 'Admin admin-1 Menambahkan Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'created', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"11\",\"amenities_name\":\"Akomodasi\",\"type\":\"include\",\"updated_at\":\"2025-04-19 06:47:28\",\"created_at\":\"2025-04-19 06:47:28\",\"id\":7},\"old\":\"Null\"}', NULL, '2025-04-18 23:47:28', '2025-04-18 23:47:28'),
(297, 'default', 'Admin admin-1 Menghapus Amenity di Package Kawah Putih', 'App\\Models\\PackageAmenity', 'deleted', 7, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":7,\"package_id\":11,\"amenities_name\":\"Akomodasi\",\"type\":\"include\",\"created_at\":\"2025-04-19 06:47:28\",\"updated_at\":\"2025-04-19 06:47:28\",\"deleted_at\":null}}', NULL, '2025-04-18 23:49:25', '2025-04-18 23:49:25'),
(298, 'default', 'Admin admin-1 Menambahkan Package Glamping VIP', 'App\\Models\\Package', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"featured_photo\":\"featured_package_1745046196.jpg\",\"banner\":\"banner_package_1745046196.jpg\",\"destination_id\":\"11\",\"name\":\"Glamping VIP\",\"slug\":\"glamping-vip\",\"description\":\"<p>Praesent placerat, magna in vehicula vestibulum, felis urna cursus lorem, sed vestibulum quam eros vel libero. Vivamus commodo, odio sed fringilla pretium, sem nulla feugiat odio, in cursus elit dolor et ex.<\\/p>\\r\\n<p>Fusce at nisi arcu. Quisque sed dolor nec dui scelerisque dapibus. Sed at purus at sem aliquet luctus. Sed non massa sit amet sapien porttitor ornare. Vivamus pretium, tortor at tempus ullamcorper, diam ligula lobortis quam, at scelerisque libero lectus ut risus.<\\/p>\\r\\n<p>Mauris vtae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Etiam accumsan urna a mauris dapibus, nec aliquet nunc convallis. Phasellus eget justo et libero ultrices posuere. Cras euismod, arcu nec congue convallis, ipsum nunc cursus nibh, vel condimentum sapien orci non libero. Integer ullamcorper felis sit amet felis placerat, eu convallis lorem iaculis.<\\/p>\\r\\n<p>Nam tempor finibus lorem, nec varius arcu convallis sed. Nunc id orci a neque vehicula malesuada. Donec vehicula libero vel leo convallis, nec tincidunt felis tincidunt. Maecenas euismod tristique leo, vel malesuada ligula malesuada sed. Donec eget libero id leo congue venenatis.<\\/p>\",\"price\":\"100000\",\"old_price\":\"200000\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d6087.446563591594!2d107.35150347660205!3d-7.167049570328272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688b96c30c7869%3A0xcc3d65320d369aa7!2sGlamping%20Lakeside%20Rancabali!5e1!3m2!1sid!2sid!4v1745045976108!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"total_rating\":0,\"total_score\":0,\"updated_at\":\"2025-04-19 07:03:16\",\"created_at\":\"2025-04-19 07:03:16\",\"id\":12},\"old\":\"Null\"}', NULL, '2025-04-19 00:03:16', '2025-04-19 00:03:16'),
(299, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Jembatan Rengganis ( arah Timur & Barat )\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:03:54\",\"created_at\":\"2025-04-19 07:03:54\",\"id\":8},\"old\":\"Null\"}', NULL, '2025-04-19 00:03:54', '2025-04-19 00:03:54'),
(300, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Kerajaan Sultan\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:04:04\",\"created_at\":\"2025-04-19 07:04:04\",\"id\":9},\"old\":\"Null\"}', NULL, '2025-04-19 00:04:04', '2025-04-19 00:04:04'),
(301, 'default', 'Admin admin-1 Menghapus Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'deleted', 9, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":9,\"package_id\":12,\"amenities_name\":\"Kerajaan Sultan\",\"type\":\"include\",\"created_at\":\"2025-04-19 07:04:04\",\"updated_at\":\"2025-04-19 07:04:04\",\"deleted_at\":null}}', NULL, '2025-04-19 00:04:10', '2025-04-19 00:04:10'),
(302, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Keranjang Sultan\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:04:19\",\"created_at\":\"2025-04-19 07:04:19\",\"id\":10},\"old\":\"Null\"}', NULL, '2025-04-19 00:04:19', '2025-04-19 00:04:19'),
(303, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Kawah Rengganis\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:04:31\",\"created_at\":\"2025-04-19 07:04:31\",\"id\":11},\"old\":\"Null\"}', NULL, '2025-04-19 00:04:31', '2025-04-19 00:04:31'),
(304, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Kinara Resto\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:04:40\",\"created_at\":\"2025-04-19 07:04:40\",\"id\":12},\"old\":\"Null\"}', NULL, '2025-04-19 00:04:40', '2025-04-19 00:04:40'),
(305, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Welcome Drink\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:04:48\",\"created_at\":\"2025-04-19 07:04:48\",\"id\":13},\"old\":\"Null\"}', NULL, '2025-04-19 00:04:48', '2025-04-19 00:04:48'),
(306, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Danau Patenggang\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:03\",\"created_at\":\"2025-04-19 07:05:03\",\"id\":14},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:03', '2025-04-19 00:05:03'),
(307, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Hutan Pinus\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:18\",\"created_at\":\"2025-04-19 07:05:18\",\"id\":15},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:18', '2025-04-19 00:05:18'),
(308, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Golesat\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:19\",\"created_at\":\"2025-04-19 07:05:19\",\"id\":16},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:19', '2025-04-19 00:05:19'),
(309, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Pinisi Resto\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:35\",\"created_at\":\"2025-04-19 07:05:35\",\"id\":17},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:35', '2025-04-19 00:05:35'),
(310, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Balkon Spider\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:40\",\"created_at\":\"2025-04-19 07:05:40\",\"id\":18},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:40', '2025-04-19 00:05:40'),
(311, 'default', 'Admin admin-1 Menghapus Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'deleted', 18, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":18,\"package_id\":12,\"amenities_name\":\"Balkon Spider\",\"type\":\"include\",\"created_at\":\"2025-04-19 07:05:40\",\"updated_at\":\"2025-04-19 07:05:40\",\"deleted_at\":null}}', NULL, '2025-04-19 00:05:46', '2025-04-19 00:05:46'),
(312, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Balcone Spider\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:51\",\"created_at\":\"2025-04-19 07:05:51\",\"id\":19},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:51', '2025-04-19 00:05:51'),
(313, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Taman Kelinci\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:05:59\",\"created_at\":\"2025-04-19 07:05:59\",\"id\":20},\"old\":\"Null\"}', NULL, '2025-04-19 00:05:59', '2025-04-19 00:05:59'),
(314, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Jembatan Pinisi Tea Walk\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:06:13\",\"created_at\":\"2025-04-19 07:06:13\",\"id\":21},\"old\":\"Null\"}', NULL, '2025-04-19 00:06:13', '2025-04-19 00:06:13'),
(315, 'default', 'Admin admin-1 Menghapus Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'deleted', 21, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":21,\"package_id\":12,\"amenities_name\":\"Jembatan Pinisi Tea Walk\",\"type\":\"include\",\"created_at\":\"2025-04-19 07:06:13\",\"updated_at\":\"2025-04-19 07:06:13\",\"deleted_at\":null}}', NULL, '2025-04-19 00:06:27', '2025-04-19 00:06:27'),
(316, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Jembatan Pinisi\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:06:29\",\"created_at\":\"2025-04-19 07:06:29\",\"id\":22},\"old\":\"Null\"}', NULL, '2025-04-19 00:06:29', '2025-04-19 00:06:29'),
(317, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Tea Walk\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:06:33\",\"created_at\":\"2025-04-19 07:06:33\",\"id\":23},\"old\":\"Null\"}', NULL, '2025-04-19 00:06:33', '2025-04-19 00:06:33'),
(318, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"transportasi\",\"type\":\"include\",\"updated_at\":\"2025-04-19 07:07:26\",\"created_at\":\"2025-04-19 07:07:26\",\"id\":24},\"old\":\"Null\"}', NULL, '2025-04-19 00:07:26', '2025-04-19 00:07:26'),
(319, 'default', 'Admin admin-1 Menghapus Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'deleted', 24, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":24,\"package_id\":12,\"amenities_name\":\"transportasi\",\"type\":\"include\",\"created_at\":\"2025-04-19 07:07:26\",\"updated_at\":\"2025-04-19 07:07:26\",\"deleted_at\":null}}', NULL, '2025-04-19 00:07:36', '2025-04-19 00:07:36'),
(320, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"transportasi\",\"type\":\"exclude\",\"updated_at\":\"2025-04-19 07:07:38\",\"created_at\":\"2025-04-19 07:07:38\",\"id\":25},\"old\":\"Null\"}', NULL, '2025-04-19 00:07:38', '2025-04-19 00:07:38'),
(321, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Makan Malam\",\"type\":\"exclude\",\"updated_at\":\"2025-04-19 07:09:11\",\"created_at\":\"2025-04-19 07:09:11\",\"id\":26},\"old\":\"Null\"}', NULL, '2025-04-19 00:09:11', '2025-04-19 00:09:11'),
(322, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Kegiatan lainnya\",\"type\":\"exclude\",\"updated_at\":\"2025-04-19 07:09:59\",\"created_at\":\"2025-04-19 07:09:59\",\"id\":27},\"old\":\"Null\"}', NULL, '2025-04-19 00:09:59', '2025-04-19 00:09:59'),
(323, 'default', 'Admin admin-1 Menghapus Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'deleted', 27, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":27,\"package_id\":12,\"amenities_name\":\"Kegiatan lainnya\",\"type\":\"exclude\",\"created_at\":\"2025-04-19 07:09:59\",\"updated_at\":\"2025-04-19 07:09:59\",\"deleted_at\":null}}', NULL, '2025-04-19 00:10:04', '2025-04-19 00:10:04'),
(324, 'default', 'Admin admin-1 Menambahkan Amenity di Package Glamping VIP', 'App\\Models\\PackageAmenity', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"amenities_name\":\"Kegiatan Lainnya\",\"type\":\"exclude\",\"updated_at\":\"2025-04-19 07:10:11\",\"created_at\":\"2025-04-19 07:10:11\",\"id\":28},\"old\":\"Null\"}', NULL, '2025-04-19 00:10:11', '2025-04-19 00:10:11'),
(325, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-19 23:22:19', '2025-04-19 23:22:19'),
(326, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-20 00:21:06', '2025-04-20 00:21:06'),
(327, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-20 00:34:13', '2025-04-20 00:34:13');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(328, 'default', 'Admin admin-1 Mengedit Tour di Package Kawah Putih', 'App\\Models\\Tour', 'updated', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":12,\"package_id\":\"11\",\"total_seat\":\"23\",\"tour_start_date\":\"2025-04-18\",\"tour_end_date\":\"2025-04-20\",\"booking_end_date\":\"2025-04-21\",\"created_at\":\"2025-04-18 02:18:40\",\"updated_at\":\"2025-04-20 09:29:44\",\"deleted_at\":null},\"old\":{\"id\":12,\"package_id\":11,\"total_seat\":\"23\",\"tour_start_date\":\"2025-04-18\",\"tour_end_date\":\"2025-04-20\",\"booking_end_date\":\"2025-04-20\",\"created_at\":\"2025-04-18 02:18:40\",\"updated_at\":\"2025-04-18 02:18:40\",\"deleted_at\":null}}', NULL, '2025-04-20 02:29:44', '2025-04-20 02:29:44'),
(329, 'default', 'Admin admin-1 Mengedit Package Kawah Putih', 'App\\Models\\Package', 'updated', 11, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":11,\"destination_id\":\"5\",\"name\":\"Kawah Putih\",\"slug\":\"kawah-putih\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.<\\/p>\\r\\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\\r\\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2435.4988745216574!2d107.3997041983116!3d-7.166151382329763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688c1383dc510f%3A0xfab41bb8e4a3a83e!2sKawah%20Putih!5e1!3m2!1sid!2sid!4v1744942822875!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":\"100000000\",\"old_price\":\"150000000\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-20 09:31:08\",\"deleted_at\":null},\"old\":{\"id\":11,\"destination_id\":5,\"name\":\"Kawah Putih\",\"slug\":\"kawah-putih\",\"description\":\"<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.<\\/p>\\r\\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.<\\/p>\\r\\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.<\\/p>\\r\\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.<\\/p>\",\"featured_photo\":\"featured_package_1744787703.jpg\",\"banner\":\"banner_package_1744787703.jpg\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2435.4988745216574!2d107.3997041983116!3d-7.166151382329763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688c1383dc510f%3A0xfab41bb8e4a3a83e!2sKawah%20Putih!5e1!3m2!1sid!2sid!4v1744942822875!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"price\":123423000,\"old_price\":\"1234134\",\"total_rating\":0,\"total_score\":0,\"include_hostel\":1,\"created_at\":\"2025-04-16 07:15:03\",\"updated_at\":\"2025-04-18 02:20:33\",\"deleted_at\":null}}', NULL, '2025-04-20 02:31:08', '2025-04-20 02:31:08'),
(330, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-20 02:32:07', '2025-04-20 02:32:07'),
(331, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Glamping VIP', 'App\\Models\\PackageItinerary', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"name\":\"Hari ke 1\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Sore<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Makan siang di restoran lokal.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Malam<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Waktu luang untuk menjelajahi daerah setempat.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 10:35:20\",\"created_at\":\"2025-04-20 10:35:20\",\"id\":14},\"old\":\"Null\"}', NULL, '2025-04-20 03:35:20', '2025-04-20 03:35:20'),
(332, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Glamping VIP', 'App\\Models\\PackageItinerary', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"name\":\"Hari ke 2\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Sore<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Makan siang di restoran lokal.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Malam<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Waktu luang untuk menjelajahi daerah setempat.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 10:35:36\",\"created_at\":\"2025-04-20 10:35:36\",\"id\":15},\"old\":\"Null\"}', NULL, '2025-04-20 03:35:36', '2025-04-20 03:35:36'),
(333, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Glamping VIP', 'App\\Models\\PackageItinerary', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"name\":\"Hari ke 3\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Sarapan pagi di hotel.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Berangkat menuju Situ Patenggang dengan perahu katamaran yang nyaman.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">3. Pengarahan keselamatan dan pemasangan perlengkapan untuk snorkeling dan menyelam.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 10:35:52\",\"created_at\":\"2025-04-20 10:35:52\",\"id\":16},\"old\":\"Null\"}', NULL, '2025-04-20 03:35:52', '2025-04-20 03:35:52'),
(334, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Glamping VIP', 'App\\Models\\PackageItinerary', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"name\":\"Hari ke 4\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Sarapan pagi di hotel.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Berangkat menuju Situ Patenggang dengan perahu katamaran yang nyaman.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">3. Pengarahan keselamatan dan pemasangan perlengkapan untuk snorkeling dan menyelam.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 10:36:04\",\"created_at\":\"2025-04-20 10:36:04\",\"id\":17},\"old\":\"Null\"}', NULL, '2025-04-20 03:36:04', '2025-04-20 03:36:04'),
(335, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145445.jpg\",\"updated_at\":\"2025-04-20 10:37:25\",\"created_at\":\"2025-04-20 10:37:25\",\"id\":21},\"old\":\"Null\"}', NULL, '2025-04-20 03:37:25', '2025-04-20 03:37:25'),
(336, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145461.jpg\",\"updated_at\":\"2025-04-20 10:37:41\",\"created_at\":\"2025-04-20 10:37:41\",\"id\":22},\"old\":\"Null\"}', NULL, '2025-04-20 03:37:41', '2025-04-20 03:37:41'),
(337, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145483.jpg\",\"updated_at\":\"2025-04-20 10:38:03\",\"created_at\":\"2025-04-20 10:38:03\",\"id\":23},\"old\":\"Null\"}', NULL, '2025-04-20 03:38:03', '2025-04-20 03:38:03'),
(338, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145497.jpg\",\"updated_at\":\"2025-04-20 10:38:17\",\"created_at\":\"2025-04-20 10:38:17\",\"id\":24},\"old\":\"Null\"}', NULL, '2025-04-20 03:38:17', '2025-04-20 03:38:17'),
(339, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145524.jpg\",\"updated_at\":\"2025-04-20 10:38:44\",\"created_at\":\"2025-04-20 10:38:44\",\"id\":25},\"old\":\"Null\"}', NULL, '2025-04-20 03:38:44', '2025-04-20 03:38:44'),
(340, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145548.jpg\",\"updated_at\":\"2025-04-20 10:39:08\",\"created_at\":\"2025-04-20 10:39:08\",\"id\":26},\"old\":\"Null\"}', NULL, '2025-04-20 03:39:08', '2025-04-20 03:39:08'),
(341, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145561.jpg\",\"updated_at\":\"2025-04-20 10:39:21\",\"created_at\":\"2025-04-20 10:39:21\",\"id\":27},\"old\":\"Null\"}', NULL, '2025-04-20 03:39:21', '2025-04-20 03:39:21'),
(342, 'default', 'Admin admin-1 Menambahkan Photo di Package Glamping VIP', 'App\\Models\\PackagePhoto', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"photo\":\"package_1745145588.jpg\",\"updated_at\":\"2025-04-20 10:39:48\",\"created_at\":\"2025-04-20 10:39:48\",\"id\":28},\"old\":\"Null\"}', NULL, '2025-04-20 03:39:48', '2025-04-20 03:39:48'),
(343, 'default', 'Admin admin-1 Menambahkan Video di Package Glamping VIP', 'App\\Models\\PackageVideo', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"video\":\"SZNIKIetUBQ\",\"updated_at\":\"2025-04-20 10:41:46\",\"created_at\":\"2025-04-20 10:41:46\",\"id\":12},\"old\":\"Null\"}', NULL, '2025-04-20 03:41:47', '2025-04-20 03:41:47'),
(344, 'default', 'Admin admin-1 Menambahkan Video di Package Glamping VIP', 'App\\Models\\PackageVideo', 'created', 12, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"12\",\"video\":\"4VKS90iGG1Q\",\"updated_at\":\"2025-04-20 10:42:10\",\"created_at\":\"2025-04-20 10:42:10\",\"id\":13},\"old\":\"Null\"}', NULL, '2025-04-20 03:42:10', '2025-04-20 03:42:10'),
(345, 'default', 'Admin admin-1 Menambahkan Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\Package', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"featured_photo\":\"featured_package_1745151488.jpg\",\"banner\":\"banner_package_1745151488.jpg\",\"destination_id\":\"5\",\"name\":\"Outing Regular A (2 Day 1 Night In The Villa)\",\"slug\":\"outing-regular-A-2-day-1-night-in-the-villa\",\"description\":\"<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.<\\/p>\\r\\n<p>Curabitur tincidunt, felis a elementum tincidunt, ex felis fermentum dui, eget pulvinar arcu eros eu eros. Vestibulum sollicitudin pretium velit, eget volutpat justo fermentum sit amet. Pellentesque in nulla in nisi dictum interdum.<\\/p>\\r\\n<p>Aliquam erat volutpat. Nullam scelerisque auctor libero, id volutpat est dignissim vitae. Aliquam erat volutpat. Integer laoreet, nisi a tincidunt tincidunt, odio nisl commodo libero, id ultricies sapien purus non odio. Phasellus ac ultricies ex, vel scelerisque libero.<\\/p>\\r\\n<p>Vivamus lacinia lacus vel neque egestas, vitae volutpat purus dapibus. Nullam nec ultricies erat. Etiam ac urna metus. Sed cursus libero id ullamcorper interdum. Donec non urna et erat vehicula porttitor. Vivamus a sagittis dolor. Nulla facilisi. Cras euismod orci at felis cursus, vel vulputate sapien suscipit.<\\/p>\\r\\n<p>Nullam nec turpis et arcu egestas commodo. Integer sit amet metus non tortor tincidunt interdum. Donec et metus mollis, ultricies est at, ultricies nulla. Morbi non libero magna. Praesent imperdiet magna ac ipsum cursus, ut fermentum turpis tincidunt.<\\/p>\",\"price\":\"450000\",\"old_price\":\"500000\",\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d13999.268454482612!2d107.5604137385902!3d-7.177206845539057!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e689156f0a45e35%3A0x401e8f1fc28c690!2sPangalengan%2C%20Kec.%20Pangalengan%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1745151317794!5m2!1sid!2sid\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"total_rating\":0,\"total_score\":0,\"total_person\":\"10\",\"updated_at\":\"2025-04-20 12:18:08\",\"created_at\":\"2025-04-20 12:18:08\",\"id\":13},\"old\":\"Null\"}', NULL, '2025-04-20 05:18:08', '2025-04-20 05:18:08'),
(346, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Akomodasi Penginapan Villa Regular (2D1N)\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:18:42\",\"created_at\":\"2025-04-20 12:18:42\",\"id\":29},\"old\":\"Null\"}', NULL, '2025-04-20 05:18:42', '2025-04-20 05:18:42'),
(347, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Arung jeram\\/Rafting selama +\\/- 2 jam\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:18:57\",\"created_at\":\"2025-04-20 12:18:57\",\"id\":30},\"old\":\"Null\"}', NULL, '2025-04-20 05:18:57', '2025-04-20 05:18:57'),
(348, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Paintball War Games\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:19:55\",\"created_at\":\"2025-04-20 12:19:55\",\"id\":31},\"old\":\"Null\"}', NULL, '2025-04-20 05:19:55', '2025-04-20 05:19:55'),
(349, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Flying Fox\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:03\",\"created_at\":\"2025-04-20 12:20:03\",\"id\":32},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:03', '2025-04-20 05:20:03'),
(350, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"3X Makan\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:10\",\"created_at\":\"2025-04-20 12:20:10\",\"id\":33},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:10', '2025-04-20 05:20:10'),
(351, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Pemandu Wisata \\/ Tour Leader\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:20\",\"created_at\":\"2025-04-20 12:20:20\",\"id\":34},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:20', '2025-04-20 05:20:20'),
(352, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"P3K\\/Safety Equipment & Rescue team\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:27\",\"created_at\":\"2025-04-20 12:20:27\",\"id\":35},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:27', '2025-04-20 05:20:27'),
(353, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Local Transport\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:40\",\"created_at\":\"2025-04-20 12:20:40\",\"id\":36},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:40', '2025-04-20 05:20:40'),
(354, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Asuransi (Personal Accident)\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:47\",\"created_at\":\"2025-04-20 12:20:47\",\"id\":37},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:47', '2025-04-20 05:20:47'),
(355, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Free Dokumentasi\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:20:54\",\"created_at\":\"2025-04-20 12:20:54\",\"id\":38},\"old\":\"Null\"}', NULL, '2025-04-20 05:20:54', '2025-04-20 05:20:54'),
(356, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Transportasi\",\"type\":\"exclude\",\"updated_at\":\"2025-04-20 12:21:12\",\"created_at\":\"2025-04-20 12:21:12\",\"id\":39},\"old\":\"Null\"}', NULL, '2025-04-20 05:21:12', '2025-04-20 05:21:12'),
(357, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Pajak\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:21:27\",\"created_at\":\"2025-04-20 12:21:27\",\"id\":40},\"old\":\"Null\"}', NULL, '2025-04-20 05:21:27', '2025-04-20 05:21:27'),
(358, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Live Music\",\"type\":\"include\",\"updated_at\":\"2025-04-20 12:21:35\",\"created_at\":\"2025-04-20 12:21:35\",\"id\":41},\"old\":\"Null\"}', NULL, '2025-04-20 05:21:35', '2025-04-20 05:21:35'),
(359, 'default', 'Admin admin-1 Menghapus Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'deleted', 40, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":40,\"package_id\":13,\"amenities_name\":\"Pajak\",\"type\":\"include\",\"created_at\":\"2025-04-20 12:21:27\",\"updated_at\":\"2025-04-20 12:21:27\",\"deleted_at\":null}}', NULL, '2025-04-20 05:21:42', '2025-04-20 05:21:42'),
(360, 'default', 'Admin admin-1 Menghapus Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'deleted', 41, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":41,\"package_id\":13,\"amenities_name\":\"Live Music\",\"type\":\"include\",\"created_at\":\"2025-04-20 12:21:35\",\"updated_at\":\"2025-04-20 12:21:35\",\"deleted_at\":null}}', NULL, '2025-04-20 05:21:49', '2025-04-20 05:21:49'),
(361, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Pajak\",\"type\":\"exclude\",\"updated_at\":\"2025-04-20 12:21:58\",\"created_at\":\"2025-04-20 12:21:58\",\"id\":42},\"old\":\"Null\"}', NULL, '2025-04-20 05:21:58', '2025-04-20 05:21:58'),
(362, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Live Music\",\"type\":\"exclude\",\"updated_at\":\"2025-04-20 12:22:05\",\"created_at\":\"2025-04-20 12:22:05\",\"id\":43},\"old\":\"Null\"}', NULL, '2025-04-20 05:22:05', '2025-04-20 05:22:05'),
(363, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Kolam Renang\",\"type\":\"exclude\",\"updated_at\":\"2025-04-20 12:22:27\",\"created_at\":\"2025-04-20 12:22:27\",\"id\":44},\"old\":\"Null\"}', NULL, '2025-04-20 05:22:27', '2025-04-20 05:22:27'),
(364, 'default', 'Admin admin-1 Menghapus Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'deleted', 39, 'App\\Models\\Admin', 1, '{\"attributes\":\"Null\",\"old\":{\"id\":39,\"package_id\":13,\"amenities_name\":\"Transportasi\",\"type\":\"exclude\",\"created_at\":\"2025-04-20 12:21:12\",\"updated_at\":\"2025-04-20 12:21:12\",\"deleted_at\":null}}', NULL, '2025-04-20 06:28:09', '2025-04-20 06:28:09'),
(365, 'default', 'Admin admin-1 Menambahkan Amenity di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageAmenity', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"amenities_name\":\"Wahana Hiburan\",\"type\":\"exclude\",\"updated_at\":\"2025-04-20 13:29:36\",\"created_at\":\"2025-04-20 13:29:36\",\"id\":45},\"old\":\"Null\"}', NULL, '2025-04-20 06:29:36', '2025-04-20 06:29:36'),
(366, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageItinerary', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"name\":\"Hari ke -1\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Sore<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Makan siang di restoran lokal.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Malam<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Waktu luang untuk menjelajahi daerah setempat.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 13:30:22\",\"created_at\":\"2025-04-20 13:30:22\",\"id\":18},\"old\":\"Null\"}', NULL, '2025-04-20 06:30:22', '2025-04-20 06:30:22'),
(367, 'default', 'Admin admin-1 Menambahkan Itinerary di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageItinerary', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"name\":\"Hari -2\",\"description\":\"<p><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Pagi:<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Sore<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Makan siang di restoran lokal.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">Malam<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">1. Waktu luang untuk menjelajahi daerah setempat.<\\/span><\\/span><br style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\" \\/><span style=\\\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\\\"><span style=\\\"box-sizing: border-box; vertical-align: inherit;\\\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.<\\/span><\\/span><\\/p>\",\"updated_at\":\"2025-04-20 13:30:46\",\"created_at\":\"2025-04-20 13:30:46\",\"id\":19},\"old\":\"Null\"}', NULL, '2025-04-20 06:30:46', '2025-04-20 06:30:46'),
(368, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745155972.avif\",\"updated_at\":\"2025-04-20 13:32:52\",\"created_at\":\"2025-04-20 13:32:52\",\"id\":29},\"old\":\"Null\"}', NULL, '2025-04-20 06:32:52', '2025-04-20 06:32:52'),
(369, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745155991.jpg\",\"updated_at\":\"2025-04-20 13:33:11\",\"created_at\":\"2025-04-20 13:33:11\",\"id\":30},\"old\":\"Null\"}', NULL, '2025-04-20 06:33:11', '2025-04-20 06:33:11'),
(370, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156001.jpg\",\"updated_at\":\"2025-04-20 13:33:21\",\"created_at\":\"2025-04-20 13:33:21\",\"id\":31},\"old\":\"Null\"}', NULL, '2025-04-20 06:33:21', '2025-04-20 06:33:21'),
(371, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156020.avif\",\"updated_at\":\"2025-04-20 13:33:40\",\"created_at\":\"2025-04-20 13:33:40\",\"id\":32},\"old\":\"Null\"}', NULL, '2025-04-20 06:33:40', '2025-04-20 06:33:40'),
(372, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156030.avif\",\"updated_at\":\"2025-04-20 13:33:50\",\"created_at\":\"2025-04-20 13:33:50\",\"id\":33},\"old\":\"Null\"}', NULL, '2025-04-20 06:33:50', '2025-04-20 06:33:50'),
(373, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156043.avif\",\"updated_at\":\"2025-04-20 13:34:03\",\"created_at\":\"2025-04-20 13:34:03\",\"id\":34},\"old\":\"Null\"}', NULL, '2025-04-20 06:34:03', '2025-04-20 06:34:03'),
(374, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156056.avif\",\"updated_at\":\"2025-04-20 13:34:16\",\"created_at\":\"2025-04-20 13:34:16\",\"id\":35},\"old\":\"Null\"}', NULL, '2025-04-20 06:34:16', '2025-04-20 06:34:16'),
(375, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156160.avif\",\"updated_at\":\"2025-04-20 13:36:00\",\"created_at\":\"2025-04-20 13:36:00\",\"id\":36},\"old\":\"Null\"}', NULL, '2025-04-20 06:36:00', '2025-04-20 06:36:00'),
(376, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156168.avif\",\"updated_at\":\"2025-04-20 13:36:08\",\"created_at\":\"2025-04-20 13:36:08\",\"id\":37},\"old\":\"Null\"}', NULL, '2025-04-20 06:36:08', '2025-04-20 06:36:08'),
(377, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156185.avif\",\"updated_at\":\"2025-04-20 13:36:25\",\"created_at\":\"2025-04-20 13:36:25\",\"id\":38},\"old\":\"Null\"}', NULL, '2025-04-20 06:36:25', '2025-04-20 06:36:25'),
(378, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156204.avif\",\"updated_at\":\"2025-04-20 13:36:44\",\"created_at\":\"2025-04-20 13:36:44\",\"id\":39},\"old\":\"Null\"}', NULL, '2025-04-20 06:36:44', '2025-04-20 06:36:44'),
(379, 'default', 'Admin admin-1 Menambahkan Photo di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackagePhoto', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"photo\":\"package_1745156216.avif\",\"updated_at\":\"2025-04-20 13:36:56\",\"created_at\":\"2025-04-20 13:36:56\",\"id\":40},\"old\":\"Null\"}', NULL, '2025-04-20 06:36:56', '2025-04-20 06:36:56'),
(380, 'default', 'Admin admin-1 Menambahkan Video di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageVideo', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"video\":\"DuU-bZdtr38\",\"updated_at\":\"2025-04-20 13:39:12\",\"created_at\":\"2025-04-20 13:39:12\",\"id\":14},\"old\":\"Null\"}', NULL, '2025-04-20 06:39:12', '2025-04-20 06:39:12'),
(381, 'default', 'Admin admin-1 Menambahkan Video di Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\PackageVideo', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"video\":\"LXtZH04NHoQ\",\"updated_at\":\"2025-04-20 13:39:31\",\"created_at\":\"2025-04-20 13:39:31\",\"id\":15},\"old\":\"Null\"}', NULL, '2025-04-20 06:39:31', '2025-04-20 06:39:31'),
(382, 'default', 'Admin admin-1 Menambahkan Tour untuk Package Outing Regular A (2 Day 1 Night In The Villa)', 'App\\Models\\Tour', 'created', 13, 'App\\Models\\Admin', 1, '{\"attributes\":{\"package_id\":\"13\",\"tour_start_date\":\"2025-04-29\",\"tour_end_date\":\"2025-04-30\",\"booking_end_date\":\"2025-04-27\",\"total_seat\":\"100\",\"updated_at\":\"2025-04-20 13:46:02\",\"created_at\":\"2025-04-20 13:46:02\",\"id\":13},\"old\":\"Null\"}', NULL, '2025-04-20 06:46:02', '2025-04-20 06:46:02'),
(383, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 04:27:31', '2025-04-21 04:27:31'),
(384, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 06:34:38', '2025-04-21 06:34:38'),
(385, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 06:34:49', '2025-04-21 06:34:49'),
(386, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 15:56:58', '2025-04-21 15:56:58'),
(387, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 16:10:54', '2025-04-21 16:10:54'),
(388, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 16:11:03', '2025-04-21 16:11:03'),
(389, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 16:30:22', '2025-04-21 16:30:22'),
(390, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 16:30:30', '2025-04-21 16:30:30'),
(391, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 21:13:08', '2025-04-21 21:13:08'),
(392, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 21:14:59', '2025-04-21 21:14:59'),
(393, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 21:15:08', '2025-04-21 21:15:08'),
(394, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 21:16:40', '2025-04-21 21:16:40'),
(395, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 21:17:31', '2025-04-21 21:17:31'),
(396, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 21:17:37', '2025-04-21 21:17:37');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(397, 'default', 'Admin admin-1 Mengedit Setting.', 'App\\Models\\Setting', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"logo\":\"logo_1745298275.png\",\"favicon\":\"favicon_1745298275.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, TripSummit. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-04-22 05:04:35\"},\"old\":{\"id\":1,\"logo\":\"logo_1738592301.png\",\"favicon\":\"favicon_1738592301.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, TripSummit. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-02-17 14:22:40\"}}', NULL, '2025-04-21 22:04:35', '2025-04-21 22:04:35'),
(398, 'default', 'Admin admin-1 Mengedit Setting.', 'App\\Models\\Setting', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"logo\":\"logo_1745298275.png\",\"favicon\":\"favicon_1745298275.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, Pesona Indonesia. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-04-22 05:04:45\"},\"old\":{\"id\":1,\"logo\":\"logo_1745298275.png\",\"favicon\":\"favicon_1745298275.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, TripSummit. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-04-22 05:04:35\"}}', NULL, '2025-04-21 22:04:45', '2025-04-21 22:04:45'),
(399, 'default', 'Admin admin-1 Mengedit Setting.', 'App\\Models\\Setting', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"logo\":\"logo_1745298275.png\",\"favicon\":\"favicon_1745298275.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"pesonaindonesia@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"pesonaindonesia@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, Pesona Indonesia. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-04-22 05:05:47\"},\"old\":{\"id\":1,\"logo\":\"logo_1745298275.png\",\"favicon\":\"favicon_1745298275.png\",\"top_bar_phone\":\"111-222-444\",\"top_bar_email\":\"tripsummit@example.com\",\"footer_address\":\"34 Antiger Lane, USA, 12937\",\"footer_phone\":\"111-222-3333\",\"footer_email\":\"tripsummit@example.com\",\"facebook\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\",\"linkedin\":\"#\",\"instagram\":\"#\",\"copyright\":\"Hak Cipta \\u00a9 2025, Pesona Indonesia. Semua Hak Dilindungi Undang-Undang.\",\"banner\":\"banner_1738592301.jpg\",\"created_at\":\"2024-12-16 11:44:25\",\"updated_at\":\"2025-04-22 05:04:45\"}}', NULL, '2025-04-21 22:05:47', '2025-04-21 22:05:47'),
(400, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:08:23', '2025-04-21 23:08:23'),
(401, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 23:08:32', '2025-04-21 23:08:32'),
(402, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 23:09:05', '2025-04-21 23:09:05'),
(403, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:09:12', '2025-04-21 23:09:12'),
(404, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:11:48', '2025-04-21 23:11:48'),
(405, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 23:11:55', '2025-04-21 23:11:55'),
(406, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-21 23:12:35', '2025-04-21 23:12:35'),
(407, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:12:41', '2025-04-21 23:12:41'),
(408, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:16:52', '2025-04-21 23:16:52'),
(409, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-21 23:47:01', '2025-04-21 23:47:01'),
(410, 'default', 'Admin Menambahkan Destination Video di ', 'App\\Models\\DestinationVideo', 'created', 15, 'App\\Models\\Admin', 1, '{\"attributes\":{\"destination_id\":\"10\",\"video\":\"AR1cSKxxSmU\",\"updated_at\":\"2025-04-22 08:01:41\",\"created_at\":\"2025-04-22 08:01:41\",\"id\":15},\"old\":\"Null\"}', NULL, '2025-04-22 01:01:41', '2025-04-22 01:01:41'),
(411, 'default', 'User suparman Melakukan login', NULL, 'login', NULL, 'App\\Models\\User', 6, '[]', NULL, '2025-04-22 01:08:16', '2025-04-22 01:08:16'),
(412, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-22 02:19:09', '2025-04-22 02:19:09'),
(413, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-22 23:32:37', '2025-04-22 23:32:37'),
(414, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 00:41:43', '2025-04-23 00:41:43'),
(415, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 01:56:05', '2025-04-23 01:56:05'),
(416, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 02:44:30', '2025-04-23 02:44:30'),
(417, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 02:44:37', '2025-04-23 02:44:37'),
(418, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 02:47:20', '2025-04-23 02:47:20'),
(419, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 02:47:28', '2025-04-23 02:47:28'),
(420, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 19:20:03', '2025-04-23 19:20:03'),
(421, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:05:19', '2025-04-23 22:05:19'),
(422, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:42:24', '2025-04-23 22:42:24'),
(423, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 22:42:31', '2025-04-23 22:42:31'),
(424, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 22:42:50', '2025-04-23 22:42:50'),
(425, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:42:56', '2025-04-23 22:42:56'),
(426, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:43:20', '2025-04-23 22:43:20'),
(427, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:43:25', '2025-04-23 22:43:25'),
(428, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:43:29', '2025-04-23 22:43:29'),
(429, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 22:43:40', '2025-04-23 22:43:40'),
(430, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 22:45:01', '2025-04-23 22:45:01'),
(431, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-23 22:45:07', '2025-04-23 22:45:07'),
(432, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-23 22:45:59', '2025-04-23 22:45:59'),
(433, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-24 00:51:58', '2025-04-24 00:51:58'),
(434, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-24 00:52:05', '2025-04-24 00:52:05'),
(435, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-24 00:52:08', '2025-04-24 00:52:08'),
(436, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-24 00:52:15', '2025-04-24 00:52:15'),
(437, 'default', 'Admin admin2 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-24 00:54:18', '2025-04-24 00:54:18'),
(438, 'default', 'Admin admin2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-24 00:58:48', '2025-04-24 00:58:48'),
(439, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-24 00:58:56', '2025-04-24 00:58:56'),
(440, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 00:54:52', '2025-04-25 00:54:52'),
(441, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 01:50:40', '2025-04-25 01:50:40'),
(442, 'default', 'Admin Admin-3 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 3, '[]', NULL, '2025-04-25 01:50:49', '2025-04-25 01:50:49'),
(443, 'default', 'Admin Editor Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 4, '[]', NULL, '2025-04-25 01:51:06', '2025-04-25 01:51:06'),
(444, 'default', 'Admin Editor Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 4, '[]', NULL, '2025-04-25 02:27:36', '2025-04-25 02:27:36'),
(445, 'default', 'Admin admin-1 Melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 02:40:43', '2025-04-25 02:40:43'),
(446, 'default', 'Admin admin-1 Mengedit Welcome Item.', 'App\\Models\\WelcomeItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"heading\":\"Selamat datang di TripSummit\",\"description\":\"<p><span style=\\\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\\\">Di TripSummit, misi kami adalah mewujudkan impian perjalanan dengan menyediakan pengalaman yang personal dan berkesan. Kami memanfaatkan keahlian dan mitra tepercaya kami untuk memastikan setiap perjalanan berjalan lancar dan menyenangkan.<\\/span><\\/p>\\r\\n<p><span style=\\\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\\\">Kami percaya bahwa perjalanan dapat menumbuhkan pertumbuhan pribadi dan pemahaman budaya. Tujuan kami adalah membantu klien menjelajahi destinasi baru dan terhubung dengan beragam budaya. Kami mempromosikan perjalanan berkelanjutan untuk memberikan dampak positif bagi masyarakat dan melestarikan keindahan planet kita.<\\/span><\\/p>\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"welcome_item_1732528236.jpg\",\"video\":\"Rh9Kz2EHKnw\",\"status\":\"Hide\",\"created_at\":\"2024-11-25 03:48:59\",\"updated_at\":\"2025-04-25 09:55:55\"},\"old\":{\"id\":1,\"heading\":\"Selamat datang di TripSummit\",\"description\":\"<p><span style=\\\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\\\">Di TripSummit, misi kami adalah mewujudkan impian perjalanan dengan menyediakan pengalaman yang personal dan berkesan. Kami memanfaatkan keahlian dan mitra tepercaya kami untuk memastikan setiap perjalanan berjalan lancar dan menyenangkan.<\\/span><\\/p>\\r\\n<p><span style=\\\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\\\">Kami percaya bahwa perjalanan dapat menumbuhkan pertumbuhan pribadi dan pemahaman budaya. Tujuan kami adalah membantu klien menjelajahi destinasi baru dan terhubung dengan beragam budaya. Kami mempromosikan perjalanan berkelanjutan untuk memberikan dampak positif bagi masyarakat dan melestarikan keindahan planet kita.<\\/span><\\/p>\",\"button_text\":\"Baca selengkapnya\",\"button_link\":\"#\",\"photo\":\"welcome_item_1732528236.jpg\",\"video\":\"Rh9Kz2EHKnw\",\"status\":\"Show\",\"created_at\":\"2024-11-25 03:48:59\",\"updated_at\":\"2025-02-17 13:44:35\"}}', NULL, '2025-04-25 02:55:55', '2025-04-25 02:55:55'),
(447, 'default', 'Admin admin-1 Mengedit Home Item.', 'App\\Models\\HomeItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Show\",\"featured_status\":\"Show\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:00\"},\"old\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Show\",\"featured_status\":\"Show\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Show\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-02-17 13:46:00\"}}', NULL, '2025-04-25 02:56:00', '2025-04-25 02:56:00'),
(448, 'default', 'Admin admin-1 Mengedit Home Item.', 'App\\Models\\HomeItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Hide\",\"featured_status\":\"Hide\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:10\"},\"old\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Show\",\"featured_status\":\"Show\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:00\"}}', NULL, '2025-04-25 02:56:10', '2025-04-25 02:56:10'),
(449, 'default', 'Admin admin-1 Mengedit About Item.', 'App\\Models\\AboutItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"featured_status\":\"Hide\",\"created_at\":\"2024-12-15 02:46:06\",\"updated_at\":\"2025-04-25 09:56:14\"},\"old\":{\"id\":1,\"featured_status\":\"Show\",\"created_at\":\"2024-12-15 02:46:06\",\"updated_at\":\"2025-02-08 05:36:17\"}}', NULL, '2025-04-25 02:56:14', '2025-04-25 02:56:14'),
(450, 'default', 'Admin admin-1 Mengedit Counter Item.', 'App\\Models\\CounterItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"item1_number\":\"40\",\"item1_text\":\"Destinasi\",\"item2_number\":\"1200\",\"item2_text\":\"Klien\",\"item3_number\":\"130\",\"item3_text\":\"Paket\",\"item4_number\":\"60\",\"item4_text\":\"Timbal Balik\",\"status\":\"Hide\",\"created_at\":\"2024-11-25 13:23:14\",\"updated_at\":\"2025-04-25 09:56:16\"},\"old\":{\"id\":1,\"item1_number\":\"40\",\"item1_text\":\"Destinasi\",\"item2_number\":\"1200\",\"item2_text\":\"Klien\",\"item3_number\":\"130\",\"item3_text\":\"Paket\",\"item4_number\":\"60\",\"item4_text\":\"Timbal Balik\",\"status\":\"Show\",\"created_at\":\"2024-11-25 13:23:14\",\"updated_at\":\"2025-02-17 14:26:08\"}}', NULL, '2025-04-25 02:56:16', '2025-04-25 02:56:16'),
(451, 'default', 'Admin admin-1 Mengedit Home Item.', 'App\\Models\\HomeItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Hide\",\"featured_status\":\"Hide\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:10\"},\"old\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Hide\",\"featured_status\":\"Hide\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:10\"}}', NULL, '2025-04-25 02:56:49', '2025-04-25 02:56:49'),
(452, 'default', 'Admin admin-1 Mengedit Home Item.', 'App\\Models\\HomeItem', 'updated', 1, 'App\\Models\\Admin', 1, '{\"attributes\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Hide\",\"featured_status\":\"Hide\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Hide\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Hide\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Hide\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:57:51\"},\"old\":{\"id\":1,\"destination_heading\":\"Tujuan Populer\",\"destination_subheading\":\"Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia\",\"destination_status\":\"Hide\",\"featured_status\":\"Hide\",\"package_heading\":\"Paket Terbaru\",\"package_subheading\":\"Jelajahi paket perjalanan terbaru kami di seluruh dunia\",\"package_status\":\"Show\",\"testimonial_heading\":\"Testimoni Klien\",\"testimonial_subheading\":\"Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami\",\"testimonial_background\":\"testimonial_1734160718.jpg\",\"testimonial_status\":\"Show\",\"blog_heading\":\"Berita Terbaru\",\"blog_subheading\":\"Simak berita dan update terbaru dari postingan blog kami\",\"blog_status\":\"Show\",\"sponsor_heading\":\"Disponsori oleh\",\"sponsor_status\":\"Hide\",\"created_at\":\"2024-12-14 05:08:44\",\"updated_at\":\"2025-04-25 09:56:10\"}}', NULL, '2025-04-25 02:57:51', '2025-04-25 02:57:51'),
(453, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:00:30', '2025-04-25 03:00:30'),
(454, 'default', 'Admin admin-1 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:00:44', '2025-04-25 03:00:44'),
(455, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:00:50', '2025-04-25 03:00:50'),
(456, 'default', 'Admin admin-1 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:01:36', '2025-04-25 03:01:36'),
(457, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:01:43', '2025-04-25 03:01:43'),
(458, 'default', 'Admin admin-2 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-25 03:01:51', '2025-04-25 03:01:51'),
(459, 'default', 'Admin admin-2 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 2, '[]', NULL, '2025-04-25 03:01:55', '2025-04-25 03:01:55'),
(460, 'default', 'Admin admin-1 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:49:50', '2025-04-25 03:49:50'),
(461, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:50:23', '2025-04-25 03:50:23'),
(462, 'default', 'Admin admin-1 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:50:29', '2025-04-25 03:50:29'),
(463, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:51:19', '2025-04-25 03:51:19'),
(464, 'default', 'Admin admin-1 melakukan login', NULL, 'login', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:51:26', '2025-04-25 03:51:26'),
(465, 'default', 'Admin admin-1 Melakukan logout', NULL, 'logout', NULL, 'App\\Models\\Admin', 1, '[]', NULL, '2025-04-25 03:51:30', '2025-04-25 03:51:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `photo`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin-1', 'admin@admin.com', 'admin_1735390234.jpg', '$2y$12$JcOMefOPmLguH3oZ7jk.GODxKz4vX6FB.DDZJfKdyPA4h2WPfVahe', '', '2024-11-20 03:13:16', '2025-04-25 01:45:59'),
(2, 'admin-2', 'admin2@admin.com', 'admin_1745570741.jpg', '$2y$12$JcOMefOPmLguH3oZ7jk.GODxKz4vX6FB.DDZJfKdyPA4h2WPfVahe', NULL, NULL, '2025-04-25 01:45:52'),
(3, 'Admin-3', 'admin3@admin.com', 'admin_1745570678.jpg', '$2y$12$9W0LJQiQgMOeFc2ITPf9HOODQyzryboAg.2AL8QA4aHLhOGoEsb..', NULL, '2025-04-25 01:44:38', '2025-04-25 01:44:38'),
(4, 'Editor', 'editor@editor.com', 'admin_1745570797.jpg', '$2y$12$JcOMefOPmLguH3oZ7jk.GODxKz4vX6FB.DDZJfKdyPA4h2WPfVahe', NULL, '2025-04-25 01:46:37', '2025-04-25 01:46:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kolam renang', '2024-12-03 04:52:53', '2025-02-17 07:55:27', NULL),
(2, 'Panduan Pribadi', '2024-12-03 04:53:13', '2025-02-17 07:55:10', NULL),
(3, 'Sepeda Gunung', '2024-12-03 04:53:21', '2025-02-17 07:54:01', NULL),
(4, 'Biaya Masuk', '2024-12-03 04:53:29', '2025-02-17 07:54:20', NULL),
(5, 'Tamasya', '2024-12-03 04:53:38', '2025-02-17 07:54:30', NULL),
(6, 'Tarif pesawat', '2024-12-03 04:53:46', '2025-02-17 07:54:42', NULL),
(7, 'Wifi Gratis', '2024-12-03 04:53:52', '2025-02-17 07:54:09', NULL),
(8, 'Akomodasi', '2024-12-03 04:53:59', '2025-02-17 07:53:40', NULL),
(9, 'Transportasi Gratis', '2024-12-03 04:56:20', '2025-02-17 07:54:59', NULL),
(11, 'Pajak Keberangkatan', '2024-12-03 05:55:39', '2025-02-17 07:54:51', NULL),
(12, 'Festival & Acara', '2024-12-03 05:55:47', '2025-02-17 07:53:52', NULL),
(20, 'Tiket Masuk Patengan', '2025-04-17 19:32:00', '2025-04-17 19:32:23', NULL),
(21, 'Makan Pagi dan Sore', '2025-04-17 19:32:42', '2025-04-17 19:32:42', NULL),
(22, 'Kamar Hotel Bintang 5', '2025-04-17 19:33:15', '2025-04-17 19:33:15', NULL),
(23, 'Wisata Perahu', '2025-04-17 19:33:26', '2025-04-17 19:33:26', NULL),
(24, 'ATV', '2025-04-17 19:33:34', '2025-04-17 19:33:34', NULL),
(25, 'Live Music', '2025-04-17 19:33:47', '2025-04-17 19:33:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Penerbangan', 'penerbangan', '2024-11-26 16:33:08', '2025-02-17 19:43:55', NULL),
(2, 'Negara', 'negara', '2024-11-26 16:33:49', '2025-02-17 19:44:06', NULL),
(3, 'Kesehatan', 'kesehatan', '2024-11-26 16:34:09', '2025-02-17 19:44:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `package_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_person` int(11) NOT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `checkout_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bookings`
--

INSERT INTO `bookings` (`id`, `order_id`, `package_id`, `tour_id`, `user_id`, `total_person`, `paid_amount`, `payment_method`, `payment_status`, `invoice_no`, `checkout_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, NULL, 7, 6, 6, 1, '2815000', 'Midtrans', 'Completed', '2928fd11-ea72-4a9a-ac08-5afc29cec519', NULL, '2025-04-17 19:57:22', '2025-04-17 19:57:45', NULL),
(8, NULL, 7, 6, 6, 1, '2815000', 'Midtrans', 'confirm', 'c20f7d96-0036-4044-afe9-b446fabc6815', NULL, '2025-04-18 00:38:14', '2025-04-18 00:38:49', NULL),
(9, NULL, 11, 12, 6, 5, '500000000', 'Midtrans', 'Completed', '59ddc67c-058f-43b2-bc73-cc6ab000f088', NULL, '2025-04-20 02:41:56', '2025-04-20 02:42:43', NULL),
(10, NULL, 11, 12, 6, 5, '500000000', 'Midtrans', 'Completed', '4c27608b-5378-47db-9463-be58902db66b', NULL, '2025-04-20 02:56:13', '2025-04-20 02:56:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking_rooms`
--

CREATE TABLE `booking_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` bigint(20) UNSIGNED NOT NULL,
  `accommodation_id` bigint(20) UNSIGNED NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `booking_rooms`
--

INSERT INTO `booking_rooms` (`id`, `room_id`, `user_id`, `tour_id`, `accommodation_id`, `check_in`, `check_out`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 6, 1, '2025-04-18', '2025-04-20', '2025-04-17 10:21:37', '2025-04-17 10:21:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:127:{i:0;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:15:\"lihat.dashboard\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:10;}}i:1;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:13:\"lihat.laporan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:2;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:17:\"simpanpdf.laporan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:3;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:19:\"simpanexcel.laporan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:4;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:12:\"lihat.slider\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:5;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:13:\"tambah.slider\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:6;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"edit.slider\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:7;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:12:\"hapus.slider\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:8;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:13:\"sampah.slider\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:9;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"lihat.pengaturan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:10;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"edit.pengaturan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:11;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:22:\"tambah.fasilitas.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:12;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:21:\"hapus.fasilitas.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:13;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:22:\"sampah.fasilitas.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:14;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:12:\"lihat.ulasan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:15;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:12:\"hapus.ulasan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:16;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:13:\"sampah.ulasan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:17;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:11:\"lihat.fitur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:18;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"tambah.fitur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:19;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:10:\"edit.fitur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:20;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:11:\"hapus.fitur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:21;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:12:\"sampah.fitur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:22;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"lihat.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:23;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:16:\"tambah.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:24;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:14:\"edit.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:25;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:15:\"hapus.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:26;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:16:\"sampah.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:27;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:26:\"lihat.galeryFoto.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:28;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:27:\"tambah.galeryFoto.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:29;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:26:\"hapus.galeryFoto.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:30;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:27:\"sampah.galeryFoto.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:31;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:27:\"lihat.galeryVideo.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:32;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:28:\"tambah.galeryVideo.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:33;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:27:\"hapus.galeryVideo.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:34;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:28:\"sampah.galeryVideo.destinasi\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:35;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:18:\"lihat.blogKategori\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:36;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:19:\"tambah.blogKategori\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:37;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:17:\"edit.blogKategori\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:38;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:18:\"hapus.blogKategori\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:39;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:19:\"sampah.blogKategori\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:40;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"lihat.blogPost\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:41;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"tambah.blogPost\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:42;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:13:\"edit.blogPost\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:43;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:14:\"hapus.blogPost\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:44;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:15:\"sampah.blogPost\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:45;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:17:\"lihat.commentBlog\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:46;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:17:\"hapus.commentBlog\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:47;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:11:\"lihat.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:48;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:12:\"tambah.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:49;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:10:\"edit.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:50;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:11:\"hapus.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:51;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:21:\"lihat.fasilitas.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:52;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:22:\"lihat.galery.fasilitas\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:53;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:23:\"tambah.galery.fasilitas\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:54;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:22:\"hapus.galery.fasilitas\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:55;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:14:\"tambah.rencana\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:56;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:13:\"hapus.rencana\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:57;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:14:\"sampah.rencana\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:58;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:13:\"lihat.rencana\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:59;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:22:\"lihat.pertanyaan.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:60;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:23:\"tambah.pertanyaan.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:61;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:22:\"hapus.pertanyaan.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:62;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:23:\"sampah.pertanyaan.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:63;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:22:\"lihat.galeryFoto.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:64;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:23:\"tambah.galeryFoto.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:65;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:22:\"hapus.galeryFoto.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:66;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:23:\"sampah.galeryFoto.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:67;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:23:\"lihat.galeryVideo.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:68;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:24:\"tambah.galeryVideo.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:69;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:23:\"hapus.galeryVideo.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:70;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:24:\"sampah.galeryVideo.paket\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:71;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:9:\"lihat.tur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:72;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:10:\"tambah.tur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:73;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:8:\"edit.tur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:74;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:9:\"hapus.tur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:75;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:10:\"sampah.tur\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:76;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:19:\"lihat.infoPemesanan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:77;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:19:\"hapus.infoPemesanan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:78;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:20:\"sampah.infoPemesanan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:79;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:22:\"whatsapp.infoPemesanan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:80;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:24:\"infofaktur.infoPemesanan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:81;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:14:\"lihat.pengikut\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:82;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:19:\"kirimEmail.pengikut\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:83;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:14:\"hapus.pengikut\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:84;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:15:\"sampah.pengikut\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:85;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:14:\"lihat.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:86;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:15:\"tambah.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:87;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:13:\"edit.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:88;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:14:\"hapus.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:89;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:15:\"sampah.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:90;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:22:\"lihat.message.pengguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:91;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:22:\"buka.message.penggguna\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:92;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:15:\"lihat.testimoni\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:93;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:16:\"tambah.testimoni\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:94;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:14:\"edit.testimoni\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:95;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:15:\"hapus.testimoni\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:96;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:16:\"sampah.testimoni\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:97;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:16:\"lihat.pertanyaan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:98;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:17:\"tambah.pertanyaan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:99;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:15:\"edit.pertanyaan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:100;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:16:\"hapus.pertanyaan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:101;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:17:\"sampah.pertanyaan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:102;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:13:\"lihat.anggota\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:103;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:14:\"tambah.anggota\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:104;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:12:\"edit.anggota\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:105;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:13:\"hapus.anggota\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:106;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:14:\"sampah.anggota\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:107;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:13:\"lihat.sponsor\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:108;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:14:\"tambah.sponsor\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:109;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:13:\"hapus.sponsor\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:110;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:14:\"sampah.sponsor\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:111;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:9:\"Perizinan\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:112;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:13:\"lihat.beranda\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:113;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:12:\"edit.beranda\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:114;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:13:\"lihat.tentang\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:115;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:12:\"edit.tentang\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:116;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:12:\"lihat.kontak\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:117;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:11:\"edit.kontak\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:118;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:13:\"lihat.welcome\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:119;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:12:\"edit.welcome\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:120;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:13:\"lihat.counter\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:121;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:12:\"edit.counter\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:122;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:20:\"lihat.privacy.policy\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:123;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:19:\"edit.privacy.policy\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:9;i:1;i:11;}}i:124;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:24:\"lihat.logAktivitas.admin\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:125;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:23:\"lihat.logAktivitas.user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:9;}}i:126;a:3:{s:1:\"a\";i:135;s:1:\"b\";s:21:\"approve.infoPemesanan\";s:1:\"c\";s:5:\"admin\";}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:5:\"admin\";}i:1;a:3:{s:1:\"a\";i:10;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:5:\"admin\";}i:2;a:3:{s:1:\"a\";i:11;s:1:\"b\";s:6:\"Editor\";s:1:\"c\";s:5:\"admin\";}}}', 1745658080);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `parent_id`, `name`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(2, 3, 1, 'Suparman', 'hai', '2025-03-26 01:56:07', '2025-03-26 01:56:07', 'approved'),
(3, 3, NULL, 'Asep Tarya Cahyadi', 'hi', '2025-03-26 02:17:29', '2025-03-26 02:17:29', 'approved'),
(4, 3, NULL, 'Asep Tarya Cahyadi', 'hello', '2025-03-26 02:42:11', '2025-03-26 02:42:11', 'approved'),
(5, 3, NULL, 'Asep Tarya Cahyadi', 'hiiiiiii', '2025-03-26 02:51:07', '2025-03-26 02:51:07', 'approved'),
(6, 3, 5, 'Asep Tarya Cahyadi', 'hi', '2025-03-26 02:57:15', '2025-03-26 02:57:15', 'approved'),
(7, 3, 5, 'suparman', 'hello', '2025-03-26 02:58:02', '2025-03-26 02:58:02', 'approved'),
(8, 3, 5, 'suparman', 'how are you today asep?', '2025-03-26 05:39:39', '2025-03-26 05:39:39', 'approved'),
(9, 3, 3, 'suparman', 'haiiii', '2025-03-26 05:40:47', '2025-03-26 05:40:47', 'approved'),
(18, 3, NULL, 'suparman', 'hiiii', '2025-03-27 05:45:29', '2025-03-27 05:45:29', 'approved'),
(19, 3, 18, 'suparman', 'hellooo', '2025-03-27 05:47:36', '2025-03-27 05:47:36', 'approved'),
(21, 3, 5, 'suparman', 'wawwww asepppp', '2025-03-27 06:15:10', '2025-03-27 06:15:10', 'approved'),
(22, 3, 5, 'suparman', 'asepppp', '2025-03-27 06:33:20', '2025-03-27 06:33:20', 'approved'),
(23, 3, 5, 'suparman', 'a', '2025-03-27 06:33:36', '2025-03-27 06:33:36', 'approved'),
(24, 3, 5, 'suparman', 's', '2025-03-27 06:33:46', '2025-03-27 06:33:46', 'approved'),
(25, 3, 5, 'suparman', 'e', '2025-03-27 06:33:53', '2025-03-27 06:33:53', 'approved'),
(26, 3, 5, 'suparman', 'p', '2025-03-27 06:33:58', '2025-03-27 06:33:58', 'approved'),
(27, 3, 5, 'suparman', 'gdfgsd', '2025-03-27 06:34:07', '2025-03-27 06:34:07', 'approved'),
(28, 3, 5, 'suparman', 'fghfghfh', '2025-03-27 06:34:13', '2025-03-27 06:34:13', 'approved'),
(29, 3, 5, 'suparman', 'asfdafasf', '2025-03-27 06:34:19', '2025-03-27 06:34:19', 'approved'),
(30, 3, 5, 'suparman', 'cvbcvbcvbcv', '2025-03-27 06:34:24', '2025-03-27 06:34:24', 'approved'),
(31, 3, 5, 'suparman', 'fhfghfgh', '2025-03-27 06:34:30', '2025-03-27 06:34:30', 'approved'),
(32, 3, 5, 'suparman', 'uiouiouoi', '2025-03-27 06:34:36', '2025-03-27 06:34:36', 'approved'),
(33, 3, 3, 'suparman', 'dfsafdasd', '2025-03-27 06:34:48', '2025-03-27 06:34:48', 'approved'),
(34, 3, 3, 'suparman', 'sdfsdfdsfsdf', '2025-03-27 06:34:53', '2025-03-27 06:34:53', 'approved'),
(35, 3, 3, 'suparman', 'sdfsdfsdfsdf', '2025-03-27 06:34:59', '2025-03-27 06:34:59', 'approved'),
(36, 3, 3, 'suparman', 'cbcbfbfdbdf', '2025-03-27 06:35:04', '2025-03-27 06:35:04', 'approved'),
(37, 3, 3, 'suparman', 'asdadsdasdasd', '2025-03-27 06:35:10', '2025-03-27 06:35:10', 'approved');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact_items`
--

CREATE TABLE `contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact_items`
--

INSERT INTO `contact_items` (`id`, `map_code`, `created_at`, `updated_at`) VALUES
(1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2799198932!2d-74.25987701513004!3d40.69767006272707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1645362221879!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border: 0\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2024-12-14 20:29:50', '2024-12-14 20:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `counter_items`
--

CREATE TABLE `counter_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item1_number` varchar(255) DEFAULT NULL,
  `item1_text` varchar(255) DEFAULT NULL,
  `item2_number` varchar(255) DEFAULT NULL,
  `item2_text` varchar(255) DEFAULT NULL,
  `item3_number` varchar(255) DEFAULT NULL,
  `item3_text` varchar(255) DEFAULT NULL,
  `item4_number` varchar(255) DEFAULT NULL,
  `item4_text` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `counter_items`
--

INSERT INTO `counter_items` (`id`, `item1_number`, `item1_text`, `item2_number`, `item2_text`, `item3_number`, `item3_text`, `item4_number`, `item4_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '40', 'Destinasi', '1200', 'Klien', '130', 'Paket', '60', 'Timbal Balik', 'Hide', '2024-11-25 06:23:14', '2025-04-25 02:56:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `best_time` text DEFAULT NULL,
  `health_safety` text DEFAULT NULL,
  `visa_requirement` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `featured_photo` varchar(255) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `package_count` int(11) DEFAULT NULL,
  `is_visible_on_map` tinyint(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `slug`, `description`, `country`, `language`, `currency`, `area`, `timezone`, `best_time`, `health_safety`, `visa_requirement`, `activity`, `map`, `featured_photo`, `country_code`, `package_count`, `is_visible_on_map`, `view_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sydney', 'sydney', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', 'Australia', 'Australia, Bahasa Inggris, Bahasa Spanyol', 'AUD', '120039 sqft', 'GMT-6', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Berselancar, Menyelam, Mendaki, Berkemah, Terjun Payung, Safari Satwa Liar</span></p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29727389.296015263!2d111.80237967433143!3d-24.560477348708336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sid!2sid!4v1733031925173!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'feaatured_destination_1733030190.jpg', NULL, NULL, NULL, 42, '2024-11-29 09:44:40', '2025-03-15 02:54:16', '2025-03-15 02:54:16'),
(2, 'Phuket', 'phuket', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', 'Thailand', 'Thai, English', 'Baht', '100000 sq miles', 'GMT+3', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Surfing, Scuba Diving, Hiking, Camping, Skydiving, Wildlife Safari</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7962202.943951995!2d96.18288712085554!3d12.984997724362604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x304d8df747424db1%3A0x9ed72c880757e802!2sThailand!5e0!3m2!1sid!2sid!4v1733032885866!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'feaatured_destination_1732899388.jpg', NULL, NULL, NULL, 9, '2024-11-29 09:56:28', '2025-03-15 02:54:40', '2025-03-15 02:54:40'),
(3, 'Lisbon', 'lisbon', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', 'Lisbon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'feaatured_destination_1732899573.jpg', NULL, NULL, NULL, 16, '2024-11-29 09:59:33', '2025-03-15 02:54:42', '2025-03-15 02:54:42'),
(5, 'Bandung Selatan', 'bandung-selatan', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', 'Bandung Selatan - Indonesia', 'Indonesia, Sunda, English', 'RP', '20000 sq miles', 'GMT +7', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, ei alterum voluptatibus sea, an probo nostro euismod his. Eos at modus ludus suscipiantur, his odio labore ea. Ei prima detraxit pri. Quas forensibus vim id. Putant moderatius reprehendunt ea mel, epicurei platonem eu est, no ignota voluptua mei.</p>\r\n<p>Falli malorum scriptorem te sed, vel aliquip intellegam ad, pri te scaevola evertitur. Sit ad exerci menandri, qui paulo corpora phaedrum an, ex habeo minimum vis. Minim quando numquam at duo, est nonumy ubique contentiones an, per cu elit temporibus. Eam cu movet primis, fastidii expetendis assueverit qui ut. Errem discere repudiandae per in. Audiam omittantur usu at, has iudico dolore omnium te.</p>\r\n<p>&nbsp;</p>', '<p>Hiking, Camping, Wildlife Safari</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d389817.9291643734!2d107.14241790591959!3d-6.903345291968417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20selatan!5e1!3m2!1sid!2sid!4v1744961345326!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'feaatured_destination_1734942101.jpg', 'ID', 2, 1, 28, '2024-12-23 01:21:41', '2025-04-20 07:03:53', NULL),
(10, 'Bandung Barat', 'bandung-barat', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>', 'Bandung Barat - Indonesia', 'Indonesia, Sunda', 'Rp', '1.287 km²', 'GMT', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur at felis non libero suscipit fermentum. Duis volutpat, ante et scelerisque luctus, sem nulla placerat leo, at aliquet libero justo id nulla. Integer at dui nec magna posuere fringilla. Nunc euismod bibendum augue. Cras nec ligula velit. Donec in laoreet leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d389817.32098643546!2d107.1424182909513!3d-6.904083574726247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20bandung%20barat!5e1!3m2!1sid!2sid!4v1744961179550!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'feaatured_destination_1744961276.jpg', NULL, NULL, NULL, 2, '2025-04-18 00:27:56', '2025-04-18 23:34:34', NULL),
(11, 'Rancabali', 'rancabali', '<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.</p>\r\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.</p>\r\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.</p>\r\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.</p>', 'Rancabali - Indonesia', 'Indonesia, Sunda', 'Rp', '148,37 km2', 'UTC', '<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.</p>\r\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.</p>\r\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.</p>\r\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.</p>', '<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.</p>\r\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.</p>\r\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.</p>\r\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.</p>', '<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.</p>\r\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.</p>\r\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.</p>\r\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.</p>', '<p>Praesent quis orci sit amet ante facilisis suscipit. Integer in eros molestie, ultricies arcu ac, cursus quam. Nulla facilisi. Ut egestas semper magna ac condimentum. Aliquam erat volutpat. Sed bibendum sollicitudin orci, at viverra metus vehicula sed.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque sodales, velit nec euismod scelerisque, lectus est interdum eros, sit amet bibendum eros sapien in magna. Quisque suscipit ligula eu turpis dignissim, a eleifend ipsum cursus.</p>\r\n<p>Nullam quis arcu in magna pulvinar tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nulla ut cursus laoreet. Nullam elementum lorem vel facilisis laoreet. Cras ac turpis vel erat vehicula venenatis.</p>\r\n<p>Sed at risus vel nulla consequat fermentum. Donec et orci mauris. Nullam tempor velit id mi luctus, a scelerisque libero accumsan. In hac habitasse platea dictumst. Cras ac nunc nec massa tristique fringilla.</p>\r\n<p>Sed vehicula magna at lacus interdum, quis laoreet nulla condimentum. Aliquam erat volutpat. Cras et nulla in turpis consectetur suscipit. Vivamus lobortis, risus sit amet cursus tincidunt, erat turpis placerat ex, ut placerat justo lorem vel ligula. Fusce non diam felis.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3043.741647484783!2d107.35707799997648!3d-7.164299673881348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20rancabali!5e1!3m2!1sid!2sid!4v1745044303220!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'feaatured_destination_1745044436.jpg', NULL, NULL, NULL, 1, '2025-04-18 23:33:56', '2025-04-18 23:33:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `destination_photos`
--

CREATE TABLE `destination_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `destination_photos`
--

INSERT INTO `destination_photos` (`id`, `destination_id`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, 5, 'destination_1745044963.jpg', '2025-04-18 23:42:43', '2025-04-18 23:42:43', NULL),
(35, 5, 'destination_1745044966.jpg', '2025-04-18 23:42:46', '2025-04-18 23:42:46', NULL),
(36, 5, 'destination_1745044970.jpg', '2025-04-18 23:42:50', '2025-04-18 23:42:50', NULL),
(37, 5, 'destination_1745044973.jpg', '2025-04-18 23:42:53', '2025-04-18 23:42:53', NULL),
(38, 5, 'destination_1745044976.jpg', '2025-04-18 23:42:56', '2025-04-18 23:42:56', NULL),
(39, 5, 'destination_1745044978.jpg', '2025-04-18 23:42:58', '2025-04-18 23:42:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `destination_videos`
--

CREATE TABLE `destination_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `destination_videos`
--

INSERT INTO `destination_videos` (`id`, `destination_id`, `video`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 2, '3QDole5dUh8', '2024-12-02 06:21:07', '2024-12-02 06:21:07', NULL),
(8, 11, 'jSBPBf1TPU8', '2025-04-18 23:45:20', '2025-04-18 23:45:20', NULL),
(9, 11, 'SXVVRlHvgls', '2025-04-18 23:45:39', '2025-04-18 23:45:39', NULL),
(10, 11, 'eeMz5Q0aWTc&t=395s', '2025-04-18 23:45:56', '2025-04-18 23:46:02', '2025-04-18 23:46:02'),
(11, 11, 'eeMz5Q0aWTc&t', '2025-04-18 23:46:10', '2025-04-18 23:46:13', '2025-04-18 23:46:13'),
(12, 11, '395s', '2025-04-18 23:46:19', '2025-04-18 23:46:26', '2025-04-18 23:46:26'),
(13, 11, 'yWdtfpZsfj8', '2025-04-18 23:46:40', '2025-04-18 23:46:40', NULL),
(14, 11, 'LJ9_uJ62C0w', '2025-04-18 23:46:55', '2025-04-18 23:46:55', NULL),
(15, 10, 'AR1cSKxxSmU', '2025-04-22 01:01:41', '2025-04-22 01:01:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bagaimana cara memesan paket perjalanan online?', 'Untuk memesan paket perjalanan secara daring, telusuri penawaran di situs web kami, pilih destinasi dan tanggal yang diinginkan, lalu ikuti petunjuk untuk menyesuaikan perjalanan Anda. Setelah Anda memilih opsi, lanjutkan ke halaman pembayaran, masukkan detail Anda, dan lakukan pembayaran dengan aman. Anda akan menerima email konfirmasi berisi rencana perjalanan dan detail pemesanan Anda.', '2024-11-26 07:33:34', '2025-02-17 07:35:33', NULL),
(2, 'Apa saja yang termasuk dalam paket perjalanan?', 'Paket perjalanan kami biasanya mencakup akomodasi, transportasi, dan aktivitas atau tur tertentu. Beberapa paket juga dapat menawarkan makanan, asuransi perjalanan, dan antar-jemput bandara. Setiap paket dirancang untuk memberikan pengalaman perjalanan yang komprehensif, tetapi Anda selalu dapat menyesuaikan paket Anda untuk menyertakan layanan tambahan atau permintaan khusus. Silakan periksa detail paket untuk mengetahui apa saja yang termasuk.', '2024-11-26 07:34:33', '2025-02-17 07:36:57', NULL),
(3, 'Apakah ada diskon perjalanan yang tersedia?', 'Ya, kami menawarkan berbagai diskon perjalanan sepanjang tahun, termasuk diskon khusus pemesanan awal, penawaran menit terakhir, dan promosi musiman. Untuk tetap mendapatkan informasi terbaru tentang diskon terbaru kami, berlangganan buletin kami, ikuti kami di media sosial, atau periksa bagian \"Penawaran\" di situs web kami. Kami bertujuan untuk menyediakan pilihan perjalanan yang terjangkau tanpa mengurangi kualitas.', '2024-11-26 07:36:00', '2025-02-17 07:36:50', NULL),
(4, 'Bagaimana cara membatalkan atau mengubah pemesan?', 'Untuk membatalkan atau mengubah pemesanan, masuk ke akun Anda di situs web kami dan buka bagian \"Pemesanan Saya\". Di sini, Anda dapat melihat reservasi Anda saat ini dan mengikuti petunjuk untuk membuat perubahan atau pembatalan. Harap perhatikan bahwa kebijakan pembatalan dan biaya perubahan mungkin berlaku, tergantung pada syarat dan ketentuan pemesanan Anda. Hubungi dukungan pelanggan kami untuk bantuan jika diperlukan.', '2024-11-26 07:36:54', '2025-02-17 07:37:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fas fa-briefcase', 'Jelajahi Destinasi', 'Temukan tempat-tempat menakjubkan untuk dikunjungi, dari kota-kota yang ramai hingga pantai-pantai yang tenang, dan rencanakan petualangan sempurna Anda dengan pemandu ahli kami.', '2024-11-25 03:56:27', '2025-02-17 06:51:34', NULL),
(2, 'fas fa-search', 'Paket Perjalanan Kustom', 'Buat paket perjalanan khusus yang dirancang sesuai akomodasi, aktivitas, & transportasi Anda untuk perjalanan yang lancar.', '2024-11-25 03:56:58', '2025-02-17 06:51:50', NULL),
(3, 'fas fa-share-alt', 'Penawaran & Diskon Perjalanan', 'Manfaatkan penawaran dan diskon perjalanan eksklusif kami, yang memastikan Anda mendapatkan nilai terbaik untuk liburan impian Anda.', '2024-11-25 03:57:26', '2025-02-17 06:52:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_items`
--

CREATE TABLE `home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_heading` text DEFAULT NULL,
  `destination_subheading` text DEFAULT NULL,
  `destination_status` text DEFAULT NULL,
  `featured_status` text DEFAULT NULL,
  `package_heading` text DEFAULT NULL,
  `package_subheading` text DEFAULT NULL,
  `package_status` text DEFAULT NULL,
  `testimonial_heading` text DEFAULT NULL,
  `testimonial_subheading` text DEFAULT NULL,
  `testimonial_background` text DEFAULT NULL,
  `testimonial_status` text DEFAULT NULL,
  `blog_heading` text DEFAULT NULL,
  `blog_subheading` text DEFAULT NULL,
  `blog_status` text DEFAULT NULL,
  `sponsor_heading` text DEFAULT NULL,
  `sponsor_status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_items`
--

INSERT INTO `home_items` (`id`, `destination_heading`, `destination_subheading`, `destination_status`, `featured_status`, `package_heading`, `package_subheading`, `package_status`, `testimonial_heading`, `testimonial_subheading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `sponsor_heading`, `sponsor_status`, `created_at`, `updated_at`) VALUES
(1, 'Tujuan Populer', 'Jelajahi tujuan perjalanan kami yang paling populer di seluruh dunia', 'Hide', 'Hide', 'Paket Terbaru', 'Jelajahi paket perjalanan terbaru kami di seluruh dunia', 'Hide', 'Testimoni Klien', 'Lihat apa yang klien kami katakan tentang pengalaman mereka bersama kami', 'testimonial_1734160718.jpg', 'Hide', 'Berita Terbaru', 'Simak berita dan update terbaru dari postingan blog kami', 'Hide', 'Disponsori oleh', 'Hide', '2024-12-13 22:08:44', '2025-04-25 02:57:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-11 21:36:43', '2024-12-11 21:36:43'),
(3, 2, '2025-01-20 23:37:35', '2025-01-20 23:37:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `message_comments`
--

CREATE TABLE `message_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `message_comments`
--

INSERT INTO `message_comments` (`id`, `message_id`, `sender_id`, `type`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'User', 'I want  to know about the travel to Sydney. Please tell me more.', '2024-12-11 22:05:09', '2024-12-11 22:05:09'),
(2, 1, 1, 'Admin', 'Yes. Ican tell you more.', '2024-12-12 05:07:07', '2024-12-12 05:07:07'),
(3, 1, 1, 'User', 'Thanks.', '2024-12-11 22:40:31', '2024-12-11 22:40:31'),
(4, 1, 1, 'User', 'i will come to your office.', '2024-12-11 22:49:11', '2024-12-11 22:49:11'),
(5, 1, 1, 'Admin', 'Ok Anytime.', '2024-12-12 00:11:32', '2024-12-12 00:11:32'),
(6, 1, 1, 'User', 'Tell me to your preferred time.', '2024-12-12 00:13:10', '2024-12-12 00:13:10'),
(7, 1, 1, 'Admin', 'After Evening.', '2024-12-12 00:17:55', '2024-12-12 00:17:55'),
(8, 1, 1, 'User', 'Y', '2024-12-12 00:18:11', '2024-12-12 00:18:11'),
(11, 1, 1, 'User', 'heh', '2025-01-07 19:44:21', '2025-01-07 19:44:21'),
(12, 1, 1, 'User', 'heh', '2025-01-07 19:46:51', '2025-01-07 19:46:51'),
(13, 1, 1, 'Admin', 'oy', '2025-01-07 19:49:13', '2025-01-07 19:49:13'),
(14, 1, 1, 'User', 'mabar', '2025-01-07 19:49:35', '2025-01-07 19:49:35'),
(15, 1, 1, 'User', 'mabar min', '2025-01-07 19:49:57', '2025-01-07 19:49:57'),
(16, 1, 1, 'Admin', 'matamu', '2025-01-07 19:50:14', '2025-01-07 19:50:14'),
(17, 1, 1, 'Admin', 'p', '2025-01-11 20:27:12', '2025-01-11 20:27:12'),
(18, 3, 2, 'User', 'hi', '2025-01-20 23:37:40', '2025-01-20 23:37:40'),
(19, 3, 1, 'Admin', 'hi', '2025-01-20 23:38:20', '2025-01-20 23:38:20'),
(20, 3, 1, 'Admin', 'pe', '2025-01-20 23:45:56', '2025-01-20 23:45:56'),
(21, 3, 2, 'User', 'pe', '2025-01-20 23:50:48', '2025-01-20 23:50:48'),
(22, 1, 1, 'User', 'p', '2025-01-20 23:51:08', '2025-01-20 23:51:08'),
(23, 1, 2, 'Admin', 'p', '2025-01-20 23:52:59', '2025-01-20 23:52:59'),
(24, 1, 1, 'User', 'ey', '2025-01-21 00:05:20', '2025-01-21 00:05:20'),
(25, 1, 1, 'Admin', 'oy', '2025-01-21 00:06:35', '2025-01-21 00:06:35'),
(26, 1, 2, 'Admin', 'apa', '2025-01-21 00:07:12', '2025-01-21 00:07:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_17_150813_create_admins_table', 1),
(5, '2024_11_24_135507_create_sliders_table', 2),
(6, '2024_11_25_033607_create_welcome_items_table', 3),
(7, '2024_11_25_101915_create_features_table', 4),
(8, '2024_11_25_131003_create_counter_items_table', 5),
(9, '2024_11_25_151106_create_testimonials_table', 6),
(10, '2024_11_26_112930_create_team_members_table', 7),
(11, '2024_11_26_141526_create_faqs_table', 8),
(12, '2024_11_26_225636_create_blog_categories_table', 9),
(13, '2024_11_27_083240_create_posts_table', 10),
(14, '2024_11_28_034956_create_destinations_table', 11),
(15, '2024_12_01_102225_create_destination_photos_table', 12),
(16, '2024_12_01_134916_create_destination_videos_table', 13),
(17, '2024_12_02_135157_create_packages_table', 14),
(18, '2024_12_03_114009_create_amenities_table', 15),
(19, '2024_12_03_115944_create_package_aminities_table', 16),
(20, '2024_12_03_115944_create_package_amenities_table', 17),
(21, '2024_12_04_075528_create_package_itirenaries_table', 17),
(22, '2024_12_04_075528_create_package_itineraries_table', 18),
(23, '2024_12_04_092317_create_package_photos_table', 18),
(24, '2024_12_04_100208_create_package_videos_table', 19),
(25, '2024_12_04_121324_create_package_faqs_table', 20),
(26, '2024_12_04_134615_create_tours_table', 21),
(27, '2024_12_04_151201_create_bookings_table', 22),
(28, '2024_12_08_113714_create_reviews_table', 23),
(29, '2024_12_12_022811_create_wishlists_table', 24),
(30, '2024_12_12_034447_create_messages_table', 25),
(31, '2024_12_12_034701_create_message_comments_table', 25),
(32, '2024_12_12_074815_create_subscribers_table', 26),
(33, '2024_12_14_044836_create_home_items_table', 27),
(34, '2024_12_15_022831_create_about_items_table', 28),
(35, '2024_12_15_032347_create_contact_items_table', 29),
(36, '2024_12_15_035211_create_term_privacy_items_table', 30),
(37, '2024_12_16_101126_create_settings_table', 31),
(38, '2024_12_17_023418_create_orders_table', 32),
(39, '2024_12_18_022704_create_payments_table', 33),
(40, '2024_12_18_043915_create_personal_access_tokens_table', 34),
(42, '2024_12_31_085741_create_notifications_table', 35),
(43, '2025_01_14_023357_create_sponsors_table', 36),
(47, '2025_02_05_044554_create_activity_log_table', 37),
(48, '2025_02_05_044555_add_event_column_to_activity_log_table', 37),
(49, '2025_02_05_044556_add_batch_uuid_column_to_activity_log_table', 37),
(50, '2025_02_12_054233_add_delete_at_field_to_sliders', 38),
(51, '2025_02_12_061610_add_delete_at_field_to_amenities', 39),
(52, '2025_02_12_084447_add_delete_at_field_to_reviews', 40),
(53, '2025_02_12_084945_add_delete_at_field_to_features', 41),
(54, '2025_02_12_091639_add_delete_at_field_to_destinations', 42),
(55, '2025_02_12_134429_add_delete_at_field_to_destination_photos', 43),
(56, '2025_02_12_143712_add_delete_at_field_to_destination_videos', 44),
(57, '2025_02_13_060552_add_delete_at_field_to_blog_categories', 45),
(58, '2025_02_13_062727_add_delete_at_field_to_posts', 46),
(59, '2025_02_13_084925_add_delete_at_field_to_packages', 47),
(60, '2025_02_13_132708_add_delete_at_field_to_package_amenities', 48),
(61, '2025_02_13_135428_add_delete_at_field_to_package_itineraries', 49),
(62, '2025_02_13_142310_add_delete_at_field_to_package_faqs', 50),
(63, '2025_02_15_034423_add_delete_at_field_to_package_photos', 51),
(64, '2025_02_15_035836_add_delete_at_field_to_package_videos', 52),
(65, '2025_02_15_040921_add_delete_at_field_to_tours', 53),
(66, '2025_02_15_081254_add_delete_at_field_to_bookings', 54),
(67, '2025_02_15_091857_add_delete_at_field_to_subscribers', 55),
(68, '2025_02_15_092549_add_delete_at_field_to_users', 56),
(69, '2025_02_15_092559_add_delete_at_field_to_testimonials', 56),
(70, '2025_02_15_092605_add_delete_at_field_to_faqs', 56),
(71, '2025_02_15_092627_add_delete_at_field_to_team_members', 56),
(72, '2025_02_15_092637_add_delete_at_field_to_sponsors', 56),
(73, '2025_03_26_075731_create_comments_table', 57),
(74, '2025_03_26_082801_add_parent_id_to_comments_table', 58),
(75, '2025_03_26_130213_add_status_to_comments_table', 59),
(76, '2025_04_16_055259_create_accommodations_table', 60),
(77, '2025_04_16_055322_create_rooms_table', 60),
(79, '2025_04_17_043039_create_accommodation_tour_table', 61),
(80, '2025_04_16_055359_create_booking_rooms_table', 62),
(81, '2025_04_18_085618_create_package_amenity_photos_table', 63),
(82, '2025_04_21_113728_create_permission_tables', 64);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(9, 'App\\Models\\Admin', 1),
(10, 'App\\Models\\Admin', 2),
(11, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(16) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL COMMENT '1=pending, 2=paid, 3=expired',
  `snap_token` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured_photo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `old_price` text DEFAULT NULL,
  `total_rating` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  `min_person` text DEFAULT NULL,
  `max_person` text DEFAULT NULL,
  `include_hostel` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `packages`
--

INSERT INTO `packages` (`id`, `destination_id`, `name`, `slug`, `description`, `featured_photo`, `banner`, `map`, `price`, `old_price`, `total_rating`, `total_score`, `min_person`, `max_person`, `include_hostel`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'Great Barrier Reef', 'great-barrier-reef', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>', 'featured_package_1733152566.jpg', 'banner_package_1733666393.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29727389.296015263!2d111.80237967433143!3d-24.560477348708336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sid!2sid!4v1733031925173!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 300, '350', 0, 0, NULL, NULL, 0, '2024-12-02 08:16:06', '2025-03-15 02:53:11', '2025-03-15 02:53:11'),
(4, 3, 'Royal Ontario Museum', 'royal-ontario-museum', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>', 'featured_package_1733471096.jpg', 'banner_package_1733471096.jpg', NULL, 50, '150', 0, 0, NULL, NULL, 0, '2024-12-06 00:44:56', '2025-03-15 02:53:34', '2025-03-15 02:53:34'),
(5, 2, 'Similan Islands, Andaman Sea', 'similan-islands', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>', 'featured_package_1734357051.jpg', 'banner_package_1734357052.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d34842.636595734206!2d97.62461786772579!3d8.648734497177111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x305a71a2bdeee5fd%3A0xe8d3e2bd15fe3719!2sSimilan%20Islands!5e1!3m2!1sid!2sid!4v1734357031818!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 230, '500', 0, 0, '1', NULL, 0, '2024-12-16 06:50:52', '2025-03-15 02:53:37', '2025-03-15 02:53:37'),
(6, 3, 'Venice Grand Canal', 'venice-grand-canal', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">The Great Barrier Reef, located off the coast of Queensland, Australia, is the world\'s largest coral reef system, stretching over 2,300 kilometers and comprising more than 2,900 individual reefs and 900 islands. Renowned for its stunning biodiversity, the reef is home to an extraordinary variety of marine life, including over 1,500 species of fish and 400 types of coral. Its vibrant coral formations and crystal-clear waters make it a premier destination for snorkeling and diving enthusiasts.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Beyond its natural beauty, the Great Barrier Reef holds significant ecological and economic importance. It supports a vast array of marine life and contributes to the livelihoods of many local communities through tourism and fishing. However, the reef faces numerous threats, including climate change and coral bleaching, making conservation efforts crucial for its future.</p>', 'featured_package_1734357650.jpg', 'banner_package_1734357650.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12364.954508978293!2d12.315310615153587!3d45.43731533524304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x477eb1cf9b80b6c1%3A0x7bc9f4c104616008!2sKanal%20Besar%20Venesia!5e1!3m2!1sid!2sid!4v1734357630537!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 10000000, '1000', 0, 0, '1', NULL, 0, '2024-12-16 07:00:50', '2025-03-15 02:53:40', '2025-03-15 02:53:40'),
(7, 5, 'Situ Patenggang', 'situ-patenggang', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Situ Patenggang, yang terletak di lepas pantai Rancabali, Indonesia, merupakan sistem terumbu karang terbesar di dunia, membentang sepanjang 2.300 kilometer dan terdiri dari lebih dari 2.900 terumbu karang dan 900 pulau. Terkenal karena keanekaragaman hayatinya yang menakjubkan, terumbu karang ini merupakan rumah bagi berbagai macam kehidupan laut yang luar biasa, termasuk lebih dari 1.500 spesies ikan dan 400 jenis karang. Formasi karangnya yang berwarna-warni dan airnya yang sebening kristal menjadikannya tujuan utama bagi penggemar snorkeling dan menyelam.</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Selain keindahan alamnya, Great Barrier Reef memiliki kepentingan ekologis dan ekonomi yang signifikan. Terumbu karang ini mendukung berbagai macam kehidupan laut dan berkontribusi terhadap mata pencaharian banyak masyarakat lokal melalui pariwisata dan penangkapan ikan. Namun, terumbu karang ini menghadapi berbagai ancaman, termasuk perubahan iklim dan pemutihan karang, sehingga upaya konservasi menjadi sangat penting bagi masa depannya.</span></p>', 'featured_package_1734942366.jpg', 'banner_package_1734942366.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6999.786802009336!2d107.3525230889993!3d-7.167282176306749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688bc0fb5ad637%3A0x2585812940b0a366!2sSitu%20Patengan!5e1!3m2!1sid!2sid!4v1734943559677!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 2815000, '3000000', 4, 20, '10', NULL, 1, '2024-12-23 01:26:06', '2025-04-17 19:31:34', NULL),
(11, 5, 'Kawah Putih', 'kawah-putih', '<p>Mauris vitae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>Nullam vehicula magna sit amet magna ullamcorper, at dictum est gravida. Morbi nec magna at quam malesuada accumsan. Suspendisse potenti. Vivamus feugiat massa ut tortor scelerisque, non dapibus nulla consectetur. Aliquam erat volutpat.</p>\r\n<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.</p>\r\n<p>Phasellus ac eros at urna condimentum lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed bibendum, sapien a venenatis fermentum, mauris augue cursus turpis, vitae elementum massa orci sit amet massa. In hac habitasse platea dictumst.</p>\r\n<p>In hac habitasse platea dictumst. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam eu nunc non augue tincidunt suscipit. Suspendisse potenti. Aliquam erat volutpat. Integer vel turpis sed purus scelerisque euismod.</p>', 'featured_package_1744787703.jpg', 'banner_package_1744787703.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2435.4988745216574!2d107.3997041983116!3d-7.166151382329763!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688c1383dc510f%3A0xfab41bb8e4a3a83e!2sKawah%20Putih!5e1!3m2!1sid!2sid!4v1744942822875!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 100000000, '150000000', 0, 0, '1', NULL, 1, '2025-04-16 00:15:03', '2025-04-20 02:31:08', NULL),
(12, 11, 'Glamping VIP', 'glamping-vip', '<p>Praesent placerat, magna in vehicula vestibulum, felis urna cursus lorem, sed vestibulum quam eros vel libero. Vivamus commodo, odio sed fringilla pretium, sem nulla feugiat odio, in cursus elit dolor et ex.</p>\r\n<p>Fusce at nisi arcu. Quisque sed dolor nec dui scelerisque dapibus. Sed at purus at sem aliquet luctus. Sed non massa sit amet sapien porttitor ornare. Vivamus pretium, tortor at tempus ullamcorper, diam ligula lobortis quam, at scelerisque libero lectus ut risus.</p>\r\n<p>Mauris vtae quam in justo dictum sodales. In eget tortor a nunc vehicula tempor. Nam ac tincidunt ipsum, eget accumsan nisi. Praesent porta, magna vitae dapibus pharetra, erat eros efficitur nunc, in mattis lectus libero a velit. Nulla facilisi.</p>\r\n<p>Etiam accumsan urna a mauris dapibus, nec aliquet nunc convallis. Phasellus eget justo et libero ultrices posuere. Cras euismod, arcu nec congue convallis, ipsum nunc cursus nibh, vel condimentum sapien orci non libero. Integer ullamcorper felis sit amet felis placerat, eu convallis lorem iaculis.</p>\r\n<p>Nam tempor finibus lorem, nec varius arcu convallis sed. Nunc id orci a neque vehicula malesuada. Donec vehicula libero vel leo convallis, nec tincidunt felis tincidunt. Maecenas euismod tristique leo, vel malesuada ligula malesuada sed. Donec eget libero id leo congue venenatis.</p>', 'featured_package_1745046196.jpg', 'banner_package_1745046196.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6087.446563591594!2d107.35150347660205!3d-7.167049570328272!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e688b96c30c7869%3A0xcc3d65320d369aa7!2sGlamping%20Lakeside%20Rancabali!5e1!3m2!1sid!2sid!4v1745045976108!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 100000, '200000', 0, 0, '1', NULL, NULL, '2025-04-19 00:03:16', '2025-04-19 00:03:16', NULL),
(13, 5, 'Outing Regular A (2 Day 1 Night In The Villa)', 'outing-regular-A-2-day-1-night-in-the-villa', '<p>Suspendisse potenti. Vivamus non arcu tincidunt, congue massa at, porttitor velit. Curabitur lacinia nisl ut turpis convallis, at dictum urna aliquet. Nullam non urna eget felis interdum feugiat. Morbi vel neque elit. Nullam a luctus leo. Integer maximus sapien in bibendum scelerisque.</p>\r\n<p>Curabitur tincidunt, felis a elementum tincidunt, ex felis fermentum dui, eget pulvinar arcu eros eu eros. Vestibulum sollicitudin pretium velit, eget volutpat justo fermentum sit amet. Pellentesque in nulla in nisi dictum interdum.</p>\r\n<p>Aliquam erat volutpat. Nullam scelerisque auctor libero, id volutpat est dignissim vitae. Aliquam erat volutpat. Integer laoreet, nisi a tincidunt tincidunt, odio nisl commodo libero, id ultricies sapien purus non odio. Phasellus ac ultricies ex, vel scelerisque libero.</p>\r\n<p>Vivamus lacinia lacus vel neque egestas, vitae volutpat purus dapibus. Nullam nec ultricies erat. Etiam ac urna metus. Sed cursus libero id ullamcorper interdum. Donec non urna et erat vehicula porttitor. Vivamus a sagittis dolor. Nulla facilisi. Cras euismod orci at felis cursus, vel vulputate sapien suscipit.</p>\r\n<p>Nullam nec turpis et arcu egestas commodo. Integer sit amet metus non tortor tincidunt interdum. Donec et metus mollis, ultricies est at, ultricies nulla. Morbi non libero magna. Praesent imperdiet magna ac ipsum cursus, ut fermentum turpis tincidunt.</p>', 'featured_package_1745151488.jpg', 'banner_package_1745151488.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13999.268454482612!2d107.5604137385902!3d-7.177206845539057!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e689156f0a45e35%3A0x401e8f1fc28c690!2sPangalengan%2C%20Kec.%20Pangalengan%2C%20Kabupaten%20Bandung%2C%20Jawa%20Barat!5e1!3m2!1sid!2sid!4v1745151317794!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 450000, '500000', 0, 0, '10', '10', NULL, '2025-04-20 05:18:08', '2025-04-20 05:18:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_amenities`
--

CREATE TABLE `package_amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `amenities_name` text NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_amenities`
--

INSERT INTO `package_amenities` (`id`, `package_id`, `amenities_name`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Akomodasi', 'include', '2025-04-18 07:34:41', '2025-04-18 07:34:41', NULL),
(2, 7, 'Renang', 'include', '2025-04-18 08:42:20', '2025-04-18 08:42:20', NULL),
(3, 7, 'Kamar', 'include', '2025-04-18 08:57:14', '2025-04-18 08:57:14', NULL),
(4, 7, 'Penginapan', 'include', '2025-04-18 08:57:22', '2025-04-18 08:57:22', NULL),
(5, 7, 'Live Music', 'include', '2025-04-18 08:57:41', '2025-04-18 08:57:41', NULL),
(6, 7, 'Tiket Masuk', 'include', '2025-04-18 08:57:55', '2025-04-18 08:57:55', NULL),
(7, 11, 'Akomodasi', 'include', '2025-04-18 23:47:28', '2025-04-18 23:49:25', '2025-04-18 23:49:25'),
(8, 12, 'Jembatan Rengganis ( arah Timur & Barat )', 'include', '2025-04-19 00:03:54', '2025-04-19 00:03:54', NULL),
(9, 12, 'Kerajaan Sultan', 'include', '2025-04-19 00:04:04', '2025-04-19 00:04:10', '2025-04-19 00:04:10'),
(10, 12, 'Keranjang Sultan', 'include', '2025-04-19 00:04:19', '2025-04-19 00:04:19', NULL),
(11, 12, 'Kawah Rengganis', 'include', '2025-04-19 00:04:31', '2025-04-19 00:04:31', NULL),
(12, 12, 'Kinara Resto', 'include', '2025-04-19 00:04:40', '2025-04-19 00:04:40', NULL),
(13, 12, 'Welcome Drink', 'include', '2025-04-19 00:04:48', '2025-04-19 00:04:48', NULL),
(14, 12, 'Danau Patenggang', 'include', '2025-04-19 00:05:03', '2025-04-19 00:05:03', NULL),
(15, 12, 'Hutan Pinus', 'include', '2025-04-19 00:05:18', '2025-04-19 00:05:18', NULL),
(16, 12, 'Golesat', 'include', '2025-04-19 00:05:19', '2025-04-19 00:05:19', NULL),
(17, 12, 'Pinisi Resto', 'include', '2025-04-19 00:05:35', '2025-04-19 00:05:35', NULL),
(18, 12, 'Balkon Spider', 'include', '2025-04-19 00:05:40', '2025-04-19 00:05:46', '2025-04-19 00:05:46'),
(19, 12, 'Balcone Spider', 'include', '2025-04-19 00:05:51', '2025-04-19 00:05:51', NULL),
(20, 12, 'Taman Kelinci', 'include', '2025-04-19 00:05:59', '2025-04-19 00:05:59', NULL),
(21, 12, 'Jembatan Pinisi Tea Walk', 'include', '2025-04-19 00:06:13', '2025-04-19 00:06:27', '2025-04-19 00:06:27'),
(22, 12, 'Jembatan Pinisi', 'include', '2025-04-19 00:06:29', '2025-04-19 00:06:29', NULL),
(23, 12, 'Tea Walk', 'include', '2025-04-19 00:06:33', '2025-04-19 00:06:33', NULL),
(24, 12, 'transportasi', 'include', '2025-04-19 00:07:26', '2025-04-19 00:07:36', '2025-04-19 00:07:36'),
(25, 12, 'transportasi', 'exclude', '2025-04-19 00:07:38', '2025-04-19 00:07:38', NULL),
(26, 12, 'Makan Malam', 'exclude', '2025-04-19 00:09:11', '2025-04-19 00:09:11', NULL),
(27, 12, 'Kegiatan lainnya', 'exclude', '2025-04-19 00:09:59', '2025-04-19 00:10:04', '2025-04-19 00:10:04'),
(28, 12, 'Kegiatan Lainnya', 'exclude', '2025-04-19 00:10:11', '2025-04-19 00:10:11', NULL),
(29, 13, 'Akomodasi Penginapan Villa Regular (2D1N)', 'include', '2025-04-20 05:18:42', '2025-04-20 05:18:42', NULL),
(30, 13, 'Arung jeram/Rafting selama +/- 2 jam', 'include', '2025-04-20 05:18:57', '2025-04-20 05:18:57', NULL),
(31, 13, 'Paintball War Games', 'include', '2025-04-20 05:19:55', '2025-04-20 05:19:55', NULL),
(32, 13, 'Flying Fox', 'include', '2025-04-20 05:20:03', '2025-04-20 05:20:03', NULL),
(33, 13, '3X Makan', 'include', '2025-04-20 05:20:10', '2025-04-20 05:20:10', NULL),
(34, 13, 'Pemandu Wisata / Tour Leader', 'include', '2025-04-20 05:20:20', '2025-04-20 05:20:20', NULL),
(35, 13, 'P3K/Safety Equipment & Rescue team', 'include', '2025-04-20 05:20:27', '2025-04-20 05:20:27', NULL),
(36, 13, 'Local Transport', 'include', '2025-04-20 05:20:40', '2025-04-20 05:20:40', NULL),
(37, 13, 'Asuransi (Personal Accident)', 'include', '2025-04-20 05:20:47', '2025-04-20 05:20:47', NULL),
(38, 13, 'Free Dokumentasi', 'include', '2025-04-20 05:20:54', '2025-04-20 05:20:54', NULL),
(39, 13, 'Transportasi', 'exclude', '2025-04-20 05:21:12', '2025-04-20 06:28:09', '2025-04-20 06:28:09'),
(40, 13, 'Pajak', 'include', '2025-04-20 05:21:27', '2025-04-20 05:21:42', '2025-04-20 05:21:42'),
(41, 13, 'Live Music', 'include', '2025-04-20 05:21:35', '2025-04-20 05:21:49', '2025-04-20 05:21:49'),
(42, 13, 'Pajak', 'exclude', '2025-04-20 05:21:58', '2025-04-20 05:21:58', NULL),
(43, 13, 'Live Music', 'exclude', '2025-04-20 05:22:05', '2025-04-20 05:22:05', NULL),
(44, 13, 'Kolam Renang', 'exclude', '2025-04-20 05:22:27', '2025-04-20 05:22:27', NULL),
(45, 13, 'Wahana Hiburan', 'exclude', '2025-04-20 06:29:36', '2025-04-20 06:29:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_amenity_photos`
--

CREATE TABLE `package_amenity_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `package_amenity_id` int(11) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_amenity_photos`
--

INSERT INTO `package_amenity_photos` (`id`, `package_id`, `package_amenity_id`, `photo`, `created_at`, `updated_at`) VALUES
(2, 7, 1, 'package_amenity1744988883.jpg', '2025-04-18 08:08:03', '2025-04-18 08:08:03'),
(3, 7, 1, 'package_amenity1744988909.jpg', '2025-04-18 08:08:29', '2025-04-18 08:08:29'),
(4, 7, 2, 'package_amenity1744991032.jpg', '2025-04-18 08:43:52', '2025-04-18 08:43:52'),
(5, 7, 2, 'package_amenity1744991049.jpg', '2025-04-18 08:44:09', '2025-04-18 08:44:09'),
(6, 12, 8, 'package_amenity1745046769.png', '2025-04-19 00:12:49', '2025-04-19 00:12:49'),
(7, 12, 8, 'package_amenity1745046772.jpg', '2025-04-19 00:12:52', '2025-04-19 00:12:52'),
(8, 12, 8, 'package_amenity1745046774.jpg', '2025-04-19 00:12:54', '2025-04-19 00:12:54'),
(9, 12, 8, 'package_amenity1745046777.jpg', '2025-04-19 00:12:57', '2025-04-19 00:12:57'),
(11, 12, 10, 'package_amenity1745047118.jpg', '2025-04-19 00:18:38', '2025-04-19 00:18:38'),
(12, 12, 10, 'package_amenity1745047152.jpg', '2025-04-19 00:19:12', '2025-04-19 00:19:12'),
(13, 12, 11, 'package_amenity1745047445.jpg', '2025-04-19 00:24:05', '2025-04-19 00:24:05'),
(14, 12, 11, 'package_amenity1745047452.jpg', '2025-04-19 00:24:12', '2025-04-19 00:24:12'),
(15, 12, 11, 'package_amenity1745047455.jpg', '2025-04-19 00:24:15', '2025-04-19 00:24:15'),
(16, 12, 11, 'package_amenity1745047498.jpg', '2025-04-19 00:24:58', '2025-04-19 00:24:58'),
(17, 12, 12, 'package_amenity1745047577.jpg', '2025-04-19 00:26:17', '2025-04-19 00:26:17'),
(18, 12, 12, 'package_amenity1745047581.jpg', '2025-04-19 00:26:21', '2025-04-19 00:26:21'),
(19, 12, 12, 'package_amenity1745047583.jpg', '2025-04-19 00:26:23', '2025-04-19 00:26:23'),
(20, 12, 12, 'package_amenity1745047608.jpg', '2025-04-19 00:26:48', '2025-04-19 00:26:48'),
(21, 12, 13, 'package_amenity1745047748.jpg', '2025-04-19 00:29:08', '2025-04-19 00:29:08'),
(22, 12, 13, 'package_amenity1745047750.jpg', '2025-04-19 00:29:10', '2025-04-19 00:29:10'),
(23, 12, 13, 'package_amenity1745047753.jpg', '2025-04-19 00:29:13', '2025-04-19 00:29:13'),
(24, 12, 13, 'package_amenity1745047838.jpg', '2025-04-19 00:30:38', '2025-04-19 00:30:38'),
(25, 12, 14, 'package_amenity1745047945.webp', '2025-04-19 00:32:25', '2025-04-19 00:32:25'),
(26, 12, 14, 'package_amenity1745047948.webp', '2025-04-19 00:32:28', '2025-04-19 00:32:28'),
(27, 12, 14, 'package_amenity1745047951.webp', '2025-04-19 00:32:31', '2025-04-19 00:32:31'),
(28, 12, 14, 'package_amenity1745047953.webp', '2025-04-19 00:32:33', '2025-04-19 00:32:33'),
(29, 12, 10, 'package_amenity1745047977.webp', '2025-04-19 00:32:57', '2025-04-19 00:32:57'),
(30, 12, 10, 'package_amenity1745047984.webp', '2025-04-19 00:33:04', '2025-04-19 00:33:04'),
(31, 12, 15, 'package_amenity1745048041.webp', '2025-04-19 00:34:01', '2025-04-19 00:34:01'),
(32, 12, 15, 'package_amenity1745048044.jpg', '2025-04-19 00:34:04', '2025-04-19 00:34:04'),
(33, 12, 15, 'package_amenity1745048046.jpg', '2025-04-19 00:34:06', '2025-04-19 00:34:06'),
(34, 12, 15, 'package_amenity1745048048.webp', '2025-04-19 00:34:08', '2025-04-19 00:34:08'),
(35, 12, 16, 'package_amenity1745048144.jpg', '2025-04-19 00:35:44', '2025-04-19 00:35:44'),
(36, 12, 16, 'package_amenity1745048146.jpg', '2025-04-19 00:35:46', '2025-04-19 00:35:46'),
(37, 12, 16, 'package_amenity1745048149.jpg', '2025-04-19 00:35:49', '2025-04-19 00:35:49'),
(38, 12, 16, 'package_amenity1745048151.jpg', '2025-04-19 00:35:51', '2025-04-19 00:35:51'),
(39, 12, 17, 'package_amenity1745048230.jpg', '2025-04-19 00:37:10', '2025-04-19 00:37:10'),
(40, 12, 17, 'package_amenity1745048232.jpg', '2025-04-19 00:37:12', '2025-04-19 00:37:12'),
(41, 12, 17, 'package_amenity1745048235.jpg', '2025-04-19 00:37:15', '2025-04-19 00:37:15'),
(42, 12, 17, 'package_amenity1745048237.webp', '2025-04-19 00:37:17', '2025-04-19 00:37:17'),
(43, 12, 19, 'package_amenity1745048335.webp', '2025-04-19 00:38:55', '2025-04-19 00:38:55'),
(44, 12, 19, 'package_amenity1745048337.jpg', '2025-04-19 00:38:57', '2025-04-19 00:38:57'),
(45, 12, 19, 'package_amenity1745048339.jpg', '2025-04-19 00:38:59', '2025-04-19 00:38:59'),
(46, 12, 19, 'package_amenity1745048342.jpg', '2025-04-19 00:39:02', '2025-04-19 00:39:02'),
(47, 12, 20, 'package_amenity1745048425.jpg', '2025-04-19 00:40:25', '2025-04-19 00:40:25'),
(48, 12, 20, 'package_amenity1745048427.jpg', '2025-04-19 00:40:27', '2025-04-19 00:40:27'),
(49, 12, 20, 'package_amenity1745048429.jpg', '2025-04-19 00:40:29', '2025-04-19 00:40:29'),
(50, 12, 20, 'package_amenity1745048432.jpg', '2025-04-19 00:40:32', '2025-04-19 00:40:32'),
(51, 12, 22, 'package_amenity1745048475.jpg', '2025-04-19 00:41:15', '2025-04-19 00:41:15'),
(52, 12, 22, 'package_amenity1745048478.jpg', '2025-04-19 00:41:18', '2025-04-19 00:41:18'),
(53, 12, 22, 'package_amenity1745048480.jpg', '2025-04-19 00:41:20', '2025-04-19 00:41:20'),
(54, 12, 22, 'package_amenity1745048482.jpg', '2025-04-19 00:41:22', '2025-04-19 00:41:22'),
(55, 12, 23, 'package_amenity1745048519.jpg', '2025-04-19 00:41:59', '2025-04-19 00:41:59'),
(56, 12, 23, 'package_amenity1745048534.jpg', '2025-04-19 00:42:14', '2025-04-19 00:42:14'),
(57, 12, 23, 'package_amenity1745048536.jpg', '2025-04-19 00:42:16', '2025-04-19 00:42:16'),
(58, 12, 23, 'package_amenity1745048538.jpg', '2025-04-19 00:42:18', '2025-04-19 00:42:18'),
(59, 13, 29, 'package_amenity1745151856.jpg', '2025-04-20 05:24:16', '2025-04-20 05:24:16'),
(60, 13, 29, 'package_amenity1745151867.jpg', '2025-04-20 05:24:27', '2025-04-20 05:24:27'),
(61, 13, 29, 'package_amenity1745151876.jpg', '2025-04-20 05:24:36', '2025-04-20 05:24:36'),
(62, 13, 29, 'package_amenity1745151887.jpg', '2025-04-20 05:24:47', '2025-04-20 05:24:47'),
(63, 13, 30, 'package_amenity1745152142.avif', '2025-04-20 05:29:02', '2025-04-20 05:29:02'),
(64, 13, 30, 'package_amenity1745152154.avif', '2025-04-20 05:29:14', '2025-04-20 05:29:14'),
(65, 13, 30, 'package_amenity1745152167.avif', '2025-04-20 05:29:27', '2025-04-20 05:29:27'),
(66, 13, 30, 'package_amenity1745152179.avif', '2025-04-20 05:29:39', '2025-04-20 05:29:39'),
(67, 13, 31, 'package_amenity1745152365.avif', '2025-04-20 05:32:45', '2025-04-20 05:32:45'),
(68, 13, 31, 'package_amenity1745152377.avif', '2025-04-20 05:32:57', '2025-04-20 05:32:57'),
(69, 13, 31, 'package_amenity1745152387.avif', '2025-04-20 05:33:07', '2025-04-20 05:33:07'),
(70, 13, 31, 'package_amenity1745152397.avif', '2025-04-20 05:33:17', '2025-04-20 05:33:17'),
(71, 13, 32, 'package_amenity1745152572.avif', '2025-04-20 05:36:12', '2025-04-20 05:36:12'),
(72, 13, 32, 'package_amenity1745152582.avif', '2025-04-20 05:36:22', '2025-04-20 05:36:22'),
(73, 13, 32, 'package_amenity1745152591.avif', '2025-04-20 05:36:31', '2025-04-20 05:36:31'),
(74, 13, 32, 'package_amenity1745152604.avif', '2025-04-20 05:36:44', '2025-04-20 05:36:44'),
(75, 13, 33, 'package_amenity1745152669.avif', '2025-04-20 05:37:49', '2025-04-20 05:37:49'),
(76, 13, 33, 'package_amenity1745152681.avif', '2025-04-20 05:38:01', '2025-04-20 05:38:01'),
(77, 13, 33, 'package_amenity1745152691.avif', '2025-04-20 05:38:11', '2025-04-20 05:38:11'),
(78, 13, 34, 'package_amenity1745152819.avif', '2025-04-20 05:40:19', '2025-04-20 05:40:19'),
(79, 13, 34, 'package_amenity1745152833.avif', '2025-04-20 05:40:33', '2025-04-20 05:40:33'),
(80, 13, 34, 'package_amenity1745152847.avif', '2025-04-20 05:40:47', '2025-04-20 05:40:47'),
(81, 13, 34, 'package_amenity1745152859.avif', '2025-04-20 05:40:59', '2025-04-20 05:40:59'),
(82, 13, 35, 'package_amenity1745153003.avif', '2025-04-20 05:43:23', '2025-04-20 05:43:23'),
(83, 13, 35, 'package_amenity1745153013.avif', '2025-04-20 05:43:33', '2025-04-20 05:43:33'),
(84, 13, 35, 'package_amenity1745153024.avif', '2025-04-20 05:43:44', '2025-04-20 05:43:44'),
(85, 13, 35, 'package_amenity1745153034.avif', '2025-04-20 05:43:54', '2025-04-20 05:43:54'),
(86, 13, 36, 'package_amenity1745155348.avif', '2025-04-20 06:22:28', '2025-04-20 06:22:28'),
(87, 13, 36, 'package_amenity1745155360.avif', '2025-04-20 06:22:40', '2025-04-20 06:22:40'),
(88, 13, 36, 'package_amenity1745155373.avif', '2025-04-20 06:22:53', '2025-04-20 06:22:53'),
(89, 13, 36, 'package_amenity1745155384.avif', '2025-04-20 06:23:04', '2025-04-20 06:23:04'),
(90, 13, 37, 'package_amenity1745155502.avif', '2025-04-20 06:25:02', '2025-04-20 06:25:02'),
(91, 13, 37, 'package_amenity1745155512.avif', '2025-04-20 06:25:12', '2025-04-20 06:25:12'),
(92, 13, 37, 'package_amenity1745155521.avif', '2025-04-20 06:25:21', '2025-04-20 06:25:21'),
(93, 13, 37, 'package_amenity1745155530.avif', '2025-04-20 06:25:30', '2025-04-20 06:25:30'),
(94, 13, 38, 'package_amenity1745155702.avif', '2025-04-20 06:28:22', '2025-04-20 06:28:22'),
(95, 13, 38, 'package_amenity1745155711.avif', '2025-04-20 06:28:31', '2025-04-20 06:28:31'),
(96, 13, 38, 'package_amenity1745155722.avif', '2025-04-20 06:28:42', '2025-04-20 06:28:42'),
(97, 13, 38, 'package_amenity1745155733.avif', '2025-04-20 06:28:53', '2025-04-20 06:28:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_faqs`
--

CREATE TABLE `package_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_faqs`
--

INSERT INTO `package_faqs` (`id`, `package_id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 7, 'Kegiatan apa saja yang termasuk dalam tur?', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Kami sarankan untuk membawa pakaian renang, tabir surya, topi, kacamata hitam, dan botol air yang dapat digunakan kembali. Jika Anda berencana untuk bersnorkel atau menyelam, bawalah perlengkapan Anda sendiri jika Anda mau, meskipun perlengkapan disediakan. Jangan lupa membawa kamera untuk mengabadikan pemandangan bawah laut yang luar biasa!</span></p>', '2025-02-17 19:12:28', '2025-02-17 19:12:28', NULL),
(17, 7, 'Apakah tur ini cocok untuk pemula?', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Ya, tur ini dirancang untuk semua tingkat pengalaman. Pemandu kami menyediakan instruksi lengkap dan pengarahan keselamatan untuk snorkeling dan menyelam. Pemula dapat menikmati tur perahu beralas kaca dan snorkeling di perairan dangkal, sementara penyelam berpengalaman dapat menjelajahi bagian terumbu karang yang lebih dalam.</span></p>', '2025-02-17 19:12:49', '2025-02-17 19:12:49', NULL),
(19, 7, 'Kegiatan apa saja yang termasuk dalam tur?', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Tur Situ Patenggang mencakup wisata snorkeling, menyelam, dan wisata perahu berlantai kaca, yang memungkinkan Anda menjelajahi kehidupan laut dan formasi karang yang semarak. Selain itu, paket ini menawarkan wisata terumbu karang berpemandu, presentasi informatif oleh ahli biologi kelautan, dan waktu luang di pantai-pantai yang menakjubkan.</span></p>', '2025-02-17 19:13:41', '2025-02-17 19:13:41', NULL),
(20, 7, 'Berapa lama tur nya dan bagaimana jadwalnya?', '<p><span style=\"color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Tur Great Barrier Reef biasanya berlangsung seharian penuh, dimulai pagi-pagi sekali dan kembali menjelang sore hari. Jadwalnya meliputi transportasi ke dan dari terumbu karang, beberapa jam aktivitas air, makan siang, dan waktu luang untuk bersantai dan menjelajah.</span></p>', '2025-02-17 19:14:06', '2025-02-17 19:14:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_itineraries`
--

CREATE TABLE `package_itineraries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_itineraries`
--

INSERT INTO `package_itineraries` (`id`, `package_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 7, 'Hari 1', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Sore</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Makan siang di restoran lokal.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Malam</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Waktu luang untuk menjelajahi daerah setempat.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.</span></span></p>', '2025-02-17 07:57:49', '2025-02-17 07:57:49', NULL),
(12, 7, 'Hari 2', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Sarapan pagi di hotel.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Berangkat menuju Situ Patenggang dengan perahu katamaran yang nyaman.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">3. Pengarahan keselamatan dan pemasangan perlengkapan untuk snorkeling dan menyelam.</span></span></p>', '2025-02-17 07:58:03', '2025-02-17 07:58:03', NULL),
(13, 7, 'Hari 3', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Sarapan pagi di hotel.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Briefing keselamatan dan pemasangan perlengkapan sepeda gunung.</span></span></p>', '2025-02-17 07:58:13', '2025-02-17 07:58:13', NULL),
(14, 12, 'Hari ke 1', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Sore</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Makan siang di restoran lokal.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Malam</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Waktu luang untuk menjelajahi daerah setempat.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.</span></span></p>', '2025-04-20 03:35:20', '2025-04-20 03:35:20', NULL),
(15, 12, 'Hari ke 2', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Sore</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Makan siang di restoran lokal.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Malam</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Waktu luang untuk menjelajahi daerah setempat.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.</span></span></p>', '2025-04-20 03:35:36', '2025-04-20 03:35:36', NULL),
(16, 12, 'Hari ke 3', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Sarapan pagi di hotel.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Berangkat menuju Situ Patenggang dengan perahu katamaran yang nyaman.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">3. Pengarahan keselamatan dan pemasangan perlengkapan untuk snorkeling dan menyelam.</span></span></p>', '2025-04-20 03:35:52', '2025-04-20 03:35:52', NULL),
(17, 12, 'Hari ke 4', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Sarapan pagi di hotel.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Berangkat menuju Situ Patenggang dengan perahu katamaran yang nyaman.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">3. Pengarahan keselamatan dan pemasangan perlengkapan untuk snorkeling dan menyelam.</span></span></p>', '2025-04-20 03:36:04', '2025-04-20 03:36:04', NULL),
(18, 13, 'Hari ke -1', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Sore</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Makan siang di restoran lokal.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Malam</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Waktu luang untuk menjelajahi daerah setempat.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.</span></span></p>', '2025-04-20 06:30:22', '2025-04-20 06:30:22', NULL),
(19, 13, 'Hari -2', '<p><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Pagi:</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Tiba di Cairns atau Port Douglas dan check in ke hotel Anda.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Bertemu dengan pemandu wisata dan sesama wisatawan.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Sore</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Makan siang di restoran lokal.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Mengunjungi Akuarium Cairns untuk mendapatkan pengenalan tentang kehidupan laut di Great Barrier Reef.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; font-weight: bolder; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">Malam</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">1. Waktu luang untuk menjelajahi daerah setempat.</span></span><br style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\" /><span style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box; vertical-align: inherit;\">2. Makan malam sambutan di hotel, dengan ikhtisar rencana perjalanan wisata dan pengarahan tentang konservasi terumbu karang.</span></span></p>', '2025-04-20 06:30:46', '2025-04-20 06:30:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_photos`
--

CREATE TABLE `package_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_photos`
--

INSERT INTO `package_photos` (`id`, `package_id`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 7, 'package_1734942993.jpg', '2024-12-23 01:36:33', '2024-12-23 01:36:33', NULL),
(13, 7, 'package_1734942999.jpg', '2024-12-23 01:36:39', '2024-12-23 01:36:39', NULL),
(14, 7, 'package_1734943006.jpg', '2024-12-23 01:36:46', '2024-12-23 01:36:46', NULL),
(15, 7, 'package_1734943015.jpg', '2024-12-23 01:36:55', '2024-12-23 01:36:55', NULL),
(16, 7, 'package_1734943020.jpg', '2024-12-23 01:37:00', '2024-12-23 01:37:00', NULL),
(17, 7, 'package_1734943026.jpg', '2024-12-23 01:37:06', '2024-12-23 01:37:06', NULL),
(18, 7, 'package_1734943031.jpg', '2024-12-23 01:37:11', '2024-12-23 01:37:11', NULL),
(21, 12, 'package_1745145445.jpg', '2025-04-20 03:37:25', '2025-04-20 03:37:25', NULL),
(22, 12, 'package_1745145461.jpg', '2025-04-20 03:37:41', '2025-04-20 03:37:41', NULL),
(23, 12, 'package_1745145483.jpg', '2025-04-20 03:38:03', '2025-04-20 03:38:03', NULL),
(24, 12, 'package_1745145497.jpg', '2025-04-20 03:38:17', '2025-04-20 03:38:17', NULL),
(25, 12, 'package_1745145524.jpg', '2025-04-20 03:38:44', '2025-04-20 03:38:44', NULL),
(26, 12, 'package_1745145548.jpg', '2025-04-20 03:39:08', '2025-04-20 03:39:08', NULL),
(27, 12, 'package_1745145561.jpg', '2025-04-20 03:39:21', '2025-04-20 03:39:21', NULL),
(28, 12, 'package_1745145588.jpg', '2025-04-20 03:39:48', '2025-04-20 03:39:48', NULL),
(29, 13, 'package_1745155972.avif', '2025-04-20 06:32:52', '2025-04-20 06:32:52', NULL),
(30, 13, 'package_1745155991.jpg', '2025-04-20 06:33:11', '2025-04-20 06:33:11', NULL),
(31, 13, 'package_1745156001.jpg', '2025-04-20 06:33:21', '2025-04-20 06:33:21', NULL),
(32, 13, 'package_1745156020.avif', '2025-04-20 06:33:40', '2025-04-20 06:33:40', NULL),
(33, 13, 'package_1745156030.avif', '2025-04-20 06:33:50', '2025-04-20 06:33:50', NULL),
(34, 13, 'package_1745156043.avif', '2025-04-20 06:34:03', '2025-04-20 06:34:03', NULL),
(35, 13, 'package_1745156056.avif', '2025-04-20 06:34:16', '2025-04-20 06:34:16', NULL),
(36, 13, 'package_1745156160.avif', '2025-04-20 06:36:00', '2025-04-20 06:36:00', NULL),
(37, 13, 'package_1745156168.avif', '2025-04-20 06:36:08', '2025-04-20 06:36:08', NULL),
(38, 13, 'package_1745156185.avif', '2025-04-20 06:36:25', '2025-04-20 06:36:25', NULL),
(39, 13, 'package_1745156204.avif', '2025-04-20 06:36:44', '2025-04-20 06:36:44', NULL),
(40, 13, 'package_1745156216.avif', '2025-04-20 06:36:56', '2025-04-20 06:36:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package_videos`
--

CREATE TABLE `package_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `package_videos`
--

INSERT INTO `package_videos` (`id`, `package_id`, `video`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 7, 'CZ7oy3qYWe0', '2024-12-23 01:37:52', '2024-12-23 01:37:52', NULL),
(7, 7, 'npJGVkxebmo', '2024-12-23 01:38:33', '2024-12-23 01:38:33', NULL),
(8, 7, 'OPXcm8VQPKY', '2024-12-23 01:38:56', '2024-12-23 01:38:56', NULL),
(9, 7, 'BN9ICIWl41Y', '2024-12-23 01:40:04', '2024-12-23 01:40:04', NULL),
(12, 12, 'SZNIKIetUBQ', '2025-04-20 03:41:46', '2025-04-20 03:41:46', NULL),
(13, 12, '4VKS90iGG1Q', '2025-04-20 03:42:10', '2025-04-20 03:42:10', NULL),
(14, 13, 'DuU-bZdtr38', '2025-04-20 06:39:12', '2025-04-20 06:39:12', NULL),
(15, 13, 'LXtZH04NHoQ', '2025-04-20 06:39:31', '2025-04-20 06:39:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(7, 'lihat.dashboard', 'admin', '2025-04-23 00:42:45', '2025-04-23 02:02:19'),
(8, 'lihat.laporan', 'admin', '2025-04-23 00:43:26', '2025-04-23 00:43:26'),
(9, 'simpanpdf.laporan', 'admin', '2025-04-23 00:43:44', '2025-04-23 00:43:44'),
(10, 'simpanexcel.laporan', 'admin', '2025-04-23 00:44:26', '2025-04-23 00:44:26'),
(11, 'lihat.slider', 'admin', '2025-04-23 00:44:40', '2025-04-23 00:44:40'),
(12, 'tambah.slider', 'admin', '2025-04-23 00:44:52', '2025-04-23 01:09:38'),
(13, 'edit.slider', 'admin', '2025-04-23 00:45:05', '2025-04-23 00:45:05'),
(14, 'hapus.slider', 'admin', '2025-04-23 00:45:18', '2025-04-23 00:45:18'),
(15, 'sampah.slider', 'admin', '2025-04-23 00:45:34', '2025-04-23 00:45:34'),
(16, 'lihat.pengaturan', 'admin', '2025-04-23 00:45:49', '2025-04-23 00:45:49'),
(17, 'edit.pengaturan', 'admin', '2025-04-23 00:46:03', '2025-04-23 00:46:03'),
(19, 'tambah.fasilitas.paket', 'admin', '2025-04-23 00:46:40', '2025-04-23 02:49:53'),
(21, 'hapus.fasilitas.paket', 'admin', '2025-04-23 00:47:28', '2025-04-23 02:50:06'),
(22, 'sampah.fasilitas.paket', 'admin', '2025-04-23 00:47:45', '2025-04-23 02:50:14'),
(23, 'lihat.ulasan', 'admin', '2025-04-23 00:48:31', '2025-04-23 00:48:31'),
(24, 'hapus.ulasan', 'admin', '2025-04-23 00:48:47', '2025-04-23 00:48:47'),
(25, 'sampah.ulasan', 'admin', '2025-04-23 00:49:03', '2025-04-23 00:49:03'),
(26, 'lihat.fitur', 'admin', '2025-04-23 00:49:48', '2025-04-23 00:49:48'),
(27, 'tambah.fitur', 'admin', '2025-04-23 00:50:06', '2025-04-23 01:10:24'),
(28, 'edit.fitur', 'admin', '2025-04-23 00:50:21', '2025-04-23 00:50:21'),
(29, 'hapus.fitur', 'admin', '2025-04-23 00:50:41', '2025-04-23 00:50:41'),
(30, 'sampah.fitur', 'admin', '2025-04-23 00:50:58', '2025-04-23 00:50:58'),
(31, 'lihat.destinasi', 'admin', '2025-04-23 01:08:16', '2025-04-23 02:54:15'),
(32, 'tambah.destinasi', 'admin', '2025-04-23 01:08:38', '2025-04-23 02:54:32'),
(33, 'edit.destinasi', 'admin', '2025-04-23 01:14:28', '2025-04-23 02:54:49'),
(34, 'hapus.destinasi', 'admin', '2025-04-23 01:14:43', '2025-04-23 02:56:05'),
(35, 'sampah.destinasi', 'admin', '2025-04-23 01:15:01', '2025-04-23 02:56:21'),
(36, 'lihat.galeryFoto.destinasi', 'admin', '2025-04-23 01:15:18', '2025-04-23 02:56:35'),
(37, 'tambah.galeryFoto.destinasi', 'admin', '2025-04-23 01:15:34', '2025-04-23 02:57:15'),
(38, 'hapus.galeryFoto.destinasi', 'admin', '2025-04-23 01:16:02', '2025-04-23 02:57:34'),
(39, 'sampah.galeryFoto.destinasi', 'admin', '2025-04-23 01:16:18', '2025-04-23 02:57:50'),
(40, 'lihat.galeryVideo.destinasi', 'admin', '2025-04-23 01:16:34', '2025-04-23 02:58:04'),
(41, 'tambah.galeryVideo.destinasi', 'admin', '2025-04-23 01:16:48', '2025-04-23 02:58:19'),
(42, 'hapus.galeryVideo.destinasi', 'admin', '2025-04-23 01:17:04', '2025-04-23 02:58:32'),
(43, 'sampah.galeryVideo.destinasi', 'admin', '2025-04-23 01:17:18', '2025-04-23 02:58:47'),
(44, 'lihat.blogKategori', 'admin', '2025-04-23 01:18:12', '2025-04-23 03:34:26'),
(45, 'tambah.blogKategori', 'admin', '2025-04-23 01:18:27', '2025-04-23 03:34:28'),
(46, 'edit.blogKategori', 'admin', '2025-04-23 01:18:40', '2025-04-23 03:34:10'),
(47, 'hapus.blogKategori', 'admin', '2025-04-23 01:18:55', '2025-04-23 03:34:03'),
(48, 'sampah.blogKategori', 'admin', '2025-04-23 01:19:13', '2025-04-23 03:33:58'),
(49, 'lihat.blogPost', 'admin', '2025-04-23 01:19:28', '2025-04-23 03:33:51'),
(50, 'tambah.blogPost', 'admin', '2025-04-23 01:19:43', '2025-04-23 03:33:45'),
(51, 'edit.blogPost', 'admin', '2025-04-23 01:19:58', '2025-04-23 03:33:39'),
(52, 'hapus.blogPost', 'admin', '2025-04-23 01:20:17', '2025-04-23 03:33:32'),
(53, 'sampah.blogPost', 'admin', '2025-04-23 01:20:31', '2025-04-23 03:33:27'),
(54, 'lihat.commentBlog', 'admin', '2025-04-23 01:20:45', '2025-04-23 03:20:59'),
(55, 'hapus.commentBlog', 'admin', '2025-04-23 01:21:03', '2025-04-23 03:21:16'),
(56, 'lihat.paket', 'admin', '2025-04-23 01:23:03', '2025-04-23 02:59:39'),
(57, 'tambah.paket', 'admin', '2025-04-23 01:23:15', '2025-04-23 02:59:59'),
(58, 'edit.paket', 'admin', '2025-04-23 01:23:30', '2025-04-23 03:00:14'),
(59, 'hapus.paket', 'admin', '2025-04-23 01:23:46', '2025-04-23 03:01:17'),
(60, 'lihat.fasilitas.paket', 'admin', '2025-04-23 01:24:03', '2025-04-23 02:50:24'),
(61, 'lihat.galery.fasilitas', 'admin', '2025-04-23 01:31:40', '2025-04-23 01:31:40'),
(62, 'tambah.galery.fasilitas', 'admin', '2025-04-23 01:31:53', '2025-04-23 01:31:53'),
(63, 'hapus.galery.fasilitas', 'admin', '2025-04-23 01:32:05', '2025-04-23 01:32:05'),
(64, 'tambah.rencana', 'admin', '2025-04-23 01:32:17', '2025-04-23 01:32:17'),
(65, 'hapus.rencana', 'admin', '2025-04-23 01:32:30', '2025-04-23 01:32:30'),
(66, 'sampah.rencana', 'admin', '2025-04-23 01:32:43', '2025-04-23 01:32:43'),
(67, 'lihat.rencana', 'admin', '2025-04-23 01:32:56', '2025-04-23 01:32:56'),
(68, 'lihat.pertanyaan.paket', 'admin', '2025-04-23 01:33:10', '2025-04-23 01:33:10'),
(69, 'tambah.pertanyaan.paket', 'admin', '2025-04-23 01:33:20', '2025-04-23 01:33:20'),
(70, 'hapus.pertanyaan.paket', 'admin', '2025-04-23 01:33:29', '2025-04-23 01:33:29'),
(71, 'sampah.pertanyaan.paket', 'admin', '2025-04-23 01:33:40', '2025-04-23 01:33:40'),
(72, 'lihat.galeryFoto.paket', 'admin', '2025-04-23 01:33:52', '2025-04-23 01:33:52'),
(73, 'tambah.galeryFoto.paket', 'admin', '2025-04-23 01:34:03', '2025-04-23 01:34:03'),
(74, 'hapus.galeryFoto.paket', 'admin', '2025-04-23 01:34:13', '2025-04-23 01:34:13'),
(75, 'sampah.galeryFoto.paket', 'admin', '2025-04-23 01:34:23', '2025-04-23 01:34:23'),
(76, 'lihat.galeryVideo.paket', 'admin', '2025-04-23 01:34:35', '2025-04-23 01:34:35'),
(77, 'tambah.galeryVideo.paket', 'admin', '2025-04-23 01:34:48', '2025-04-23 01:34:48'),
(78, 'hapus.galeryVideo.paket', 'admin', '2025-04-23 01:35:00', '2025-04-23 01:35:00'),
(79, 'sampah.galeryVideo.paket', 'admin', '2025-04-23 01:35:14', '2025-04-23 01:35:14'),
(80, 'lihat.tur', 'admin', '2025-04-23 01:43:25', '2025-04-23 01:43:25'),
(81, 'tambah.tur', 'admin', '2025-04-23 01:43:39', '2025-04-23 01:43:39'),
(82, 'edit.tur', 'admin', '2025-04-23 01:43:48', '2025-04-23 01:43:48'),
(83, 'hapus.tur', 'admin', '2025-04-23 01:43:56', '2025-04-23 01:43:56'),
(84, 'sampah.tur', 'admin', '2025-04-23 01:44:08', '2025-04-23 01:44:08'),
(85, 'lihat.infoPemesanan', 'admin', '2025-04-23 01:44:18', '2025-04-23 03:02:36'),
(86, 'hapus.infoPemesanan', 'admin', '2025-04-23 01:44:30', '2025-04-23 03:03:34'),
(87, 'sampah.infoPemesanan', 'admin', '2025-04-23 01:44:45', '2025-04-23 03:04:34'),
(88, 'whatsapp.infoPemesanan', 'admin', '2025-04-23 01:45:18', '2025-04-23 03:05:53'),
(89, 'infofaktur.infoPemesanan', 'admin', '2025-04-23 01:45:27', '2025-04-23 03:06:01'),
(90, 'lihat.pengikut', 'admin', '2025-04-23 01:46:25', '2025-04-23 01:46:25'),
(91, 'kirimEmail.pengikut', 'admin', '2025-04-23 01:46:34', '2025-04-23 01:46:34'),
(92, 'hapus.pengikut', 'admin', '2025-04-23 01:46:51', '2025-04-23 01:46:51'),
(93, 'sampah.pengikut', 'admin', '2025-04-23 01:47:01', '2025-04-23 01:47:01'),
(94, 'lihat.pengguna', 'admin', '2025-04-23 01:47:21', '2025-04-23 01:47:21'),
(95, 'tambah.pengguna', 'admin', '2025-04-23 01:47:31', '2025-04-23 01:47:31'),
(96, 'edit.pengguna', 'admin', '2025-04-23 01:47:40', '2025-04-23 01:47:40'),
(97, 'hapus.pengguna', 'admin', '2025-04-23 01:47:49', '2025-04-23 01:47:49'),
(98, 'sampah.pengguna', 'admin', '2025-04-23 01:47:58', '2025-04-23 01:47:58'),
(99, 'lihat.message.pengguna', 'admin', '2025-04-23 01:48:11', '2025-04-23 01:48:11'),
(100, 'buka.message.penggguna', 'admin', '2025-04-23 01:48:23', '2025-04-23 01:48:23'),
(101, 'lihat.testimoni', 'admin', '2025-04-23 01:48:46', '2025-04-23 03:10:56'),
(102, 'tambah.testimoni', 'admin', '2025-04-23 01:49:43', '2025-04-23 03:11:03'),
(103, 'edit.testimoni', 'admin', '2025-04-23 01:49:52', '2025-04-23 03:11:09'),
(104, 'hapus.testimoni', 'admin', '2025-04-23 01:50:01', '2025-04-23 03:15:07'),
(105, 'sampah.testimoni', 'admin', '2025-04-23 01:50:10', '2025-04-23 03:11:19'),
(106, 'lihat.pertanyaan', 'admin', '2025-04-23 01:50:52', '2025-04-23 03:21:53'),
(107, 'tambah.pertanyaan', 'admin', '2025-04-23 01:51:00', '2025-04-23 03:22:09'),
(108, 'edit.pertanyaan', 'admin', '2025-04-23 01:51:16', '2025-04-23 03:22:25'),
(109, 'hapus.pertanyaan', 'admin', '2025-04-23 01:51:25', '2025-04-23 03:22:40'),
(110, 'sampah.pertanyaan', 'admin', '2025-04-23 01:51:37', '2025-04-23 03:22:56'),
(111, 'lihat.anggota', 'admin', '2025-04-23 01:51:56', '2025-04-23 03:14:39'),
(112, 'tambah.anggota', 'admin', '2025-04-23 01:52:05', '2025-04-23 03:14:36'),
(113, 'edit.anggota', 'admin', '2025-04-23 01:52:15', '2025-04-23 03:14:34'),
(114, 'hapus.anggota', 'admin', '2025-04-23 01:52:27', '2025-04-23 03:14:32'),
(115, 'sampah.anggota', 'admin', '2025-04-23 01:52:37', '2025-04-23 03:14:29'),
(116, 'lihat.sponsor', 'admin', '2025-04-23 01:53:07', '2025-04-23 03:18:10'),
(117, 'tambah.sponsor', 'admin', '2025-04-23 01:53:17', '2025-04-23 03:18:12'),
(118, 'hapus.sponsor', 'admin', '2025-04-23 01:53:27', '2025-04-23 03:18:08'),
(119, 'sampah.sponsor', 'admin', '2025-04-23 01:53:36', '2025-04-23 03:18:06'),
(120, 'Perizinan', 'admin', '2025-04-23 01:54:09', '2025-04-23 01:54:09'),
(121, 'lihat.beranda', 'admin', '2025-04-23 01:54:20', '2025-04-23 01:54:20'),
(122, 'edit.beranda', 'admin', '2025-04-23 01:54:30', '2025-04-23 01:54:30'),
(123, 'lihat.tentang', 'admin', '2025-04-23 01:54:39', '2025-04-23 01:54:39'),
(124, 'edit.tentang', 'admin', '2025-04-23 01:54:51', '2025-04-23 01:54:51'),
(125, 'lihat.kontak', 'admin', '2025-04-23 01:54:59', '2025-04-23 01:54:59'),
(126, 'edit.kontak', 'admin', '2025-04-23 01:55:09', '2025-04-23 01:55:09'),
(127, 'lihat.welcome', 'admin', '2025-04-23 01:55:38', '2025-04-23 03:19:29'),
(128, 'edit.welcome', 'admin', '2025-04-23 01:55:48', '2025-04-23 03:19:44'),
(129, 'lihat.counter', 'admin', '2025-04-23 01:55:59', '2025-04-23 03:30:18'),
(130, 'edit.counter', 'admin', '2025-04-23 01:56:07', '2025-04-23 03:30:44'),
(131, 'lihat.privacy.policy', 'admin', '2025-04-23 01:56:36', '2025-04-23 03:29:18'),
(132, 'edit.privacy.policy', 'admin', '2025-04-23 01:56:45', '2025-04-23 03:29:46'),
(133, 'lihat.logAktivitas.admin', 'admin', '2025-04-23 01:57:30', '2025-04-23 03:27:58'),
(134, 'lihat.logAktivitas.user', 'admin', '2025-04-23 01:57:46', '2025-04-23 03:27:44'),
(135, 'approve.infoPemesanan', 'admin', '2025-04-23 19:49:51', '2025-04-23 19:49:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `blog_category_id`, `title`, `slug`, `short_description`, `description`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Bermitra untuk menciptakan komunitas yang kuat', 'bermitra-untuk-menciptakan-komunitas-yang-kuat', 'Untuk menciptakan masyarakat yang baik, kita perlu bekerja sama. Kita perlu saling membantu, saling mendukung, dan saling menghormati.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, no unum senserit constituam has, has an enim recusabo, dolorum consequuntur ad quo. Nisl nonumes ea eam, at pro eleifend partiendo, alii summo ex nam. Eam impetus efficiantur ullamcorper no, ad est meliore patrioque sententiae, no eam atqui possit. An iriure meliore maiorum sed, quo an altera numquam. Nam eu commodo persecuti. Eu eos tibique delectus disputando, ei purto wisi euripidis mei, vis augue electram iudicabit ea.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Eum id legimus rationibus, aeque eligendi ullamcorper mel et. Habeo officiis id usu, eu intellegat voluptatum definiebas nec, cu his error solet voluptua. Nec in wisi labore expetendis. His hinc verear ne, pri dignissim sententiae percipitur no, mel mollis ceteros gubergren in.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Cu cum tota summo vulputate, ullum recusabo neglegentur per ex. Velit deleniti facilisi an usu, vim ludus prompta probatus ne. Ad eum ferri liber, sea no virtute facilisi. Id ius dico consectetuer. Te animal facilisis his, est ipsum putent te.</p>', 'post_1732704008.jpg', '2024-11-27 03:40:08', '2025-02-17 07:17:10', NULL),
(2, 2, 'Mengubah donasi darurat Anda menjadi bantuan instan', 'Mengubah-donasi-darurat-Anda-menjadi-bantuan-instan', 'Kami bekerja keras untuk membantu orang miskin. Kami berusaha menyediakan mereka makanan, tempat berteduh, pakaian, pendidikan, dan bantuan medis.', '<div class=\"short-des\" style=\"box-sizing: border-box; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, no unum senserit constituam has, has an enim recusabo, dolorum consequuntur ad quo. Nisl nonumes ea eam, at pro eleifend partiendo, alii summo ex nam. Eam impetus efficiantur ullamcorper no, ad est meliore patrioque sententiae, no eam atqui possit. An iriure meliore maiorum sed, quo an altera numquam. Nam eu commodo persecuti. Eu eos tibique delectus disputando, ei purto wisi euripidis mei, vis augue electram iudicabit ea.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Eum id legimus rationibus, aeque eligendi ullamcorper mel et. Habeo officiis id usu, eu intellegat voluptatum definiebas nec, cu his error solet voluptua. Nec in wisi labore expetendis. His hinc verear ne, pri dignissim sententiae percipitur no, mel mollis ceteros gubergren in.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Cu cum tota summo vulputate, ullum recusabo neglegentur per ex. Velit deleniti facilisi an usu, vim ludus prompta probatus ne. Ad eum ferri liber, sea no virtute facilisi. Id ius dico consectetuer. Te animal facilisis his, est ipsum putent te.</p>\r\n</div>', 'post_1732706504.jpg', '2024-11-27 04:21:44', '2025-02-17 07:17:27', NULL),
(3, 1, 'Lembaga amal memberikan dorongan pendidikan bagi anak-anak', 'lembaga-amal-memberikan-dorongan-pendidikan-bagi-anak-anak', 'Untuk meningkatkan pendidikan anak-anak, kami menyediakan mereka buku, pena, pensil, buku catatan, dan perlengkapan penting lainnya.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, no unum senserit constituam has, has an enim recusabo, dolorum consequuntur ad quo. Nisl nonumes ea eam, at pro eleifend partiendo, alii summo ex nam. Eam impetus efficiantur ullamcorper no, ad est meliore patrioque sententiae, no eam atqui possit. An iriure meliore maiorum sed, quo an altera numquam. Nam eu commodo persecuti. Eu eos tibique delectus disputando, ei purto wisi euripidis mei, vis augue electram iudicabit ea.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Eum id legimus rationibus, aeque eligendi ullamcorper mel et. Habeo officiis id usu, eu intellegat voluptatum definiebas nec, cu his error solet voluptua. Nec in wisi labore expetendis. His hinc verear ne, pri dignissim sententiae percipitur no, mel mollis ceteros gubergren in.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #ffffff;\">Cu cum tota summo vulputate, ullum recusabo neglegentur per ex. Velit deleniti facilisi an usu, vim ludus prompta probatus ne. Ad eum ferri liber, sea no virtute facilisi. Id ius dico consectetuer. Te animal facilisis his, est ipsum putent te.</p>', 'post_1732706569.jpg', '2024-11-27 04:22:49', '2025-02-17 07:17:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `package_id`, `rating`, `comment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 1, 7, 5, 'wow', '2025-01-20 23:09:26', '2025-02-12 01:47:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(9, 'super_admin', 'admin', '2025-04-23 02:09:35', '2025-04-23 02:09:35'),
(10, 'admin', 'admin', '2025-04-23 02:39:39', '2025-04-23 02:39:39'),
(11, 'Editor', 'admin', '2025-04-25 01:48:25', '2025-04-25 01:48:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(7, 9),
(7, 10),
(8, 9),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(13, 9),
(14, 9),
(15, 9),
(16, 9),
(17, 9),
(19, 9),
(19, 11),
(21, 9),
(21, 11),
(22, 9),
(22, 11),
(23, 9),
(24, 9),
(25, 9),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(31, 9),
(31, 11),
(32, 9),
(32, 11),
(33, 9),
(33, 11),
(34, 9),
(34, 11),
(35, 9),
(35, 11),
(36, 9),
(36, 11),
(37, 9),
(37, 11),
(38, 9),
(38, 11),
(39, 9),
(39, 11),
(40, 9),
(40, 11),
(41, 9),
(41, 11),
(42, 9),
(42, 11),
(43, 9),
(43, 11),
(44, 9),
(44, 11),
(45, 9),
(45, 11),
(46, 9),
(46, 11),
(47, 9),
(47, 11),
(48, 9),
(48, 11),
(49, 9),
(49, 11),
(50, 9),
(50, 11),
(51, 9),
(51, 11),
(52, 9),
(52, 11),
(53, 9),
(53, 11),
(54, 9),
(54, 11),
(55, 9),
(55, 11),
(56, 9),
(56, 11),
(57, 9),
(57, 11),
(58, 9),
(58, 11),
(59, 9),
(59, 11),
(60, 9),
(60, 11),
(61, 9),
(61, 11),
(62, 9),
(62, 11),
(63, 9),
(63, 11),
(64, 9),
(64, 11),
(65, 9),
(65, 11),
(66, 9),
(66, 11),
(67, 9),
(67, 11),
(68, 9),
(68, 11),
(69, 9),
(69, 11),
(70, 9),
(70, 11),
(71, 9),
(71, 11),
(72, 9),
(72, 11),
(73, 9),
(73, 11),
(74, 9),
(74, 11),
(75, 9),
(75, 11),
(76, 9),
(76, 11),
(77, 9),
(77, 11),
(78, 9),
(78, 11),
(79, 9),
(79, 11),
(80, 9),
(80, 11),
(81, 9),
(81, 11),
(82, 9),
(82, 11),
(83, 9),
(83, 11),
(84, 9),
(84, 11),
(85, 9),
(86, 9),
(87, 9),
(88, 9),
(89, 9),
(90, 9),
(91, 9),
(92, 9),
(93, 9),
(94, 9),
(95, 9),
(96, 9),
(97, 9),
(98, 9),
(99, 9),
(100, 9),
(101, 9),
(102, 9),
(103, 9),
(104, 9),
(105, 9),
(106, 9),
(106, 11),
(107, 9),
(107, 11),
(108, 9),
(108, 11),
(109, 9),
(109, 11),
(110, 9),
(110, 11),
(111, 9),
(112, 9),
(113, 9),
(114, 9),
(115, 9),
(116, 9),
(116, 11),
(117, 9),
(117, 11),
(118, 9),
(118, 11),
(119, 9),
(119, 11),
(120, 9),
(121, 9),
(121, 11),
(122, 9),
(122, 11),
(123, 9),
(123, 11),
(124, 9),
(124, 11),
(125, 9),
(125, 11),
(126, 9),
(126, 11),
(127, 9),
(127, 11),
(128, 9),
(128, 11),
(129, 9),
(129, 11),
(130, 9),
(130, 11),
(131, 9),
(131, 11),
(132, 9),
(132, 11),
(133, 9),
(134, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accommodation_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `room_price` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `accommodation_id`, `name`, `capacity`, `room_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Room 1', 4, '0', NULL, NULL),
(2, 2, 'Room 1', 5, '300000', NULL, NULL),
(3, 3, 'Room 1', 10, '5000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JRq06esG8wogVtiAOMyR2BTX4Qy8aRtnVWu13uRv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkFhd1VmZkN4bUU3M2pJNGVtbFh6Q2dEVXdtT0Vlelk1QU9yZG1lbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9', 1745578297);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `top_bar_phone` varchar(255) DEFAULT NULL,
  `top_bar_email` varchar(255) DEFAULT NULL,
  `footer_address` varchar(255) DEFAULT NULL,
  `footer_phone` varchar(255) DEFAULT NULL,
  `footer_email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_address`, `footer_phone`, `footer_email`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `copyright`, `banner`, `created_at`, `updated_at`) VALUES
(1, 'logo_1745298275.png', 'favicon_1745298275.png', '111-222-444', 'pesonaindonesia@example.com', '34 Antiger Lane, USA, 12937', '111-222-3333', 'pesonaindonesia@example.com', '#', '#', '#', '#', '#', 'Hak Cipta © 2025, Pesona Indonesia. Semua Hak Dilindungi Undang-Undang.', 'banner_1738592301.jpg', '2024-12-16 04:44:25', '2025-04-21 22:05:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `heading`, `text`, `button_text`, `button_link`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Perjalanan ke Kota-Kota Bagus', 'Menjelajahi kota-kota yang ramai, menyelami budaya yang beragam, mengunjungi tempat-tempat penting, menikmati kuliner lokal, dan berinteraksi dengan penduduk setempat menawarkan pengalaman yang tak terlupakan, memperkaya perspektif Anda, dan menciptakan kenangan abadi, menjadikan perjalanan kota menjadi unik dan tak ternilai.', 'Baca selengkapnya', '#', 'slider_1740820647.jpg', '2024-11-24 08:16:30', '2025-03-01 02:17:27', NULL),
(3, 'Sewa Mobil Berkualitas', 'Sewalah mobil berkualitas untuk perjalanan yang nyaman dan dapat diandalkan, dengan memastikan performa terbaik, fitur-fitur canggih, dan layanan yang luar biasa, sehingga setiap perjalanan menjadi lancar, menyenangkan, dan bebas stres, baik untuk perjalanan bisnis maupun liburan.', 'Baca selengkapnya', '#', 'slider1732461466.jpg', '2024-11-24 08:17:46', '2025-02-17 06:43:27', NULL),
(9, 'qwertyui', '12345678790uyiutrrd', 'qwere', '#', 'slider1740316107.jpg', '2025-02-23 06:08:27', '2025-02-23 06:08:33', '2025-02-23 06:08:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sponsors`
--

INSERT INTO `sponsors` (`id`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sponsor_1736823285.png', '2025-01-13 19:54:45', '2025-01-13 19:54:45', NULL),
(2, 'sponsor_1736823875.png', '2025-01-13 20:04:35', '2025-01-13 20:04:35', NULL),
(3, 'sponsor_1736824685.png', '2025-01-13 20:18:05', '2025-01-13 20:18:05', NULL),
(4, 'sponsor_1736825136.png', '2025-01-13 20:25:36', '2025-01-13 20:25:36', NULL),
(5, 'sponsor_1736825144.png', '2025-01-13 20:25:44', '2025-01-13 20:25:44', NULL),
(6, 'sponsor_1736825160.png', '2025-01-13 20:26:00', '2025-01-13 20:26:00', NULL),
(8, 'sponsor_1736825182.png', '2025-01-13 20:26:22', '2025-01-13 20:26:22', NULL),
(9, 'sponsor_1736825198.png', '2025-01-13 20:26:38', '2025-01-13 20:26:38', NULL),
(10, 'sponsor_1736825217.png', '2025-01-13 20:26:57', '2025-01-13 20:26:57', NULL),
(11, 'sponsor_1736825226.png', '2025-01-13 20:27:06', '2025-01-13 20:27:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'subscriber1@gmail.com', '', 'Active', '2024-12-13 20:57:18', '2024-12-13 20:58:26', NULL),
(2, 'subscriber2@gmail.com', '', 'Active', '2024-12-13 20:59:36', '2024-12-13 21:00:14', NULL),
(5, 'john@gmail.com', '23414b4579e74e5a119b796e335806dfc8e1d6c69767488d91c09a1b39fb17a6', 'Pending', '2025-02-22 19:12:06', '2025-02-22 19:12:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `slug`, `designation`, `address`, `email`, `phone`, `biography`, `photo`, `facebook`, `twitter`, `linkedin`, `instagram`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pat Flynn', 'pat-flynn', 'Founder', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'patflynn@gmail.com', '111-111-1212', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>', 'team_member_1732623709.jpg', '#', '#', '#', '#', '2024-11-26 05:21:50', '2024-11-26 05:21:50', NULL),
(2, 'David Beckham', 'david-beckham', 'CO-Founder', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'david@gmail.com', '111-111-1212', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>', 'team_member_1732623918.jpg', '#', '#', '#', '#', '2024-11-26 05:25:18', '2024-11-26 05:25:18', NULL),
(3, 'Peter Smith', 'peter-smith', 'CTO', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'peter@gmail.com', '111-111-1212', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>', 'team_member_1732624005.jpg', '#', '#', '#', '#', '2024-11-26 05:26:45', '2024-11-26 05:26:45', NULL),
(4, 'Brent Grundy', 'brent-grundy', 'Tour Manager', '932 Pine Tree Lane, Chevy Chase, MD 20815', 'brent@gmail.com', '111-111-1212', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Lorem ipsum dolor sit amet, et ius explicari persequeris, an per novum noluisse hendrerit, atqui regione laboramus ea eum. Rebum tractatos ne qui, quis volumus pri an. Vim id idque partem, primis accumsan voluptatum vix ea, id vis zril tibique conclusionemque. Blandit pertinacia in has, cu duo quod deleniti. Vix quas referrentur cu.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: Roboto, sans-serif; font-size: 16px; background-color: #f3f3f3;\">Nec purto lobortis ad, mei ea molestie constituto accommodare, deserunt persecuti voluptaria mei ei. In diceret fierent adversarium duo, in homero dissentias vim. Ea nam lucilius liberavisse. At his erant utamur, eam persius laoreet no. Te ubique persecuti usu, cum aliquip aliquando signiferumque eu, ei tale ludus per. Vix at argumentum comprehensam, veri nullam evertitur ne vel.</p>', 'team_member_1732624085.jpg', '#', '#', '#', '#', '2024-11-26 05:28:05', '2024-11-26 05:28:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_privacy_items`
--

CREATE TABLE `term_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms` text DEFAULT NULL,
  `privacy` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `term_privacy_items`
--

INSERT INTO `term_privacy_items` (`id`, `terms`, `privacy`, `created_at`, `updated_at`) VALUES
(1, '<h1>Heading Item</h1>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h2>Heading Item</h2>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h3>Heading Item</h3>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>', '<h1>Heading Item</h1>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h2>Heading Item</h2>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>\r\n<h3>Heading Item</h3>\r\n<p>Lorem ipsum dolor sit amet, ex est debet iuvaret scripserit, no graeco facilisis vix. Eam cu odio quidam antiopam, duo liber movet in. Ex has diceret nostrum legendos, ex choro apeirian nam, ridens verterem interpretaris ne eam. Ne harum deleniti pri. No civibus invenire mel, id vix doming erroribus omittantur. Et summo ridens mea, mei copiosae percipitur no. Paulo mandamus prodesset an duo, everti oblique epicurei te duo. Mei ad senserit evertitur. Sed dictas dissentiet id, est iudico salutandi eloquentiam no. Sea ei sonet ornatus interpretaris, quas rebum omnium cu quo. Nam oblique singulis at.</p>', '2024-12-14 21:23:01', '2024-12-14 21:27:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brent Grundy', 'CEO, ABC Company', 'Menjadi relawan di lembaga amal ini merupakan pengalaman yang transformatif. Dedikasi mereka yang tak tergoyahkan untuk membantu mereka yang membutuhkan benar-benar menginspirasi. Saya bangga menjadi bagian dari misi mereka, menyaksikan dampak luar biasa yang mereka buat. Saya bersyukur atas kesempatan untuk berkontribusi pada upaya mereka.', 'testimonial_1732551337.jpg', '2024-11-25 09:15:37', '2025-02-17 06:54:45', NULL),
(2, 'Patrick Hendenrson', 'CEO, BB Company', 'Menjadi relawan di lembaga amal ini merupakan pengalaman yang transformatif. Dedikasi mereka yang tak tergoyahkan untuk membantu mereka yang membutuhkan benar-benar menginspirasi. Saya bangga menjadi bagian dari misi mereka, menyaksikan dampak luar biasa yang mereka buat. Saya bersyukur atas kesempatan untuk berkontribusi pada upaya mereka.', 'testimonial_1732551462.jpg', '2024-11-25 09:17:42', '2025-02-17 06:55:10', NULL),
(3, 'David Becham', 'CEO, CC Company', 'Menjadi relawan di lembaga amal ini merupakan pengalaman yang transformatif. Dedikasi mereka yang tak tergoyahkan untuk membantu mereka yang membutuhkan benar-benar menginspirasi. Saya bangga menjadi bagian dari misi mereka, menyaksikan dampak luar biasa yang mereka buat. Saya bersyukur atas kesempatan untuk berkontribusi pada upaya mereka.', 'testimonial_1732551493.jpg', '2024-11-25 09:18:13', '2025-02-17 06:55:17', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `total_seat` varchar(255) DEFAULT NULL,
  `tour_start_date` varchar(255) DEFAULT NULL,
  `tour_end_date` varchar(255) DEFAULT NULL,
  `booking_end_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tours`
--

INSERT INTO `tours` (`id`, `package_id`, `total_seat`, `tour_start_date`, `tour_end_date`, `booking_end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, '50', '2025-01-06', '2025-01-12', '2025-02-28', '2024-12-04 07:25:21', '2025-03-15 02:53:05', '2025-03-15 02:53:05'),
(6, 7, '100', '2025-04-18', '2025-04-20', '2025-04-30', '2024-12-23 01:47:54', '2025-04-09 23:34:13', NULL),
(7, 6, '100', '2025-04-18', '2025-03-01', '2025-02-10', '2025-01-25 21:16:57', '2025-03-15 02:53:08', '2025-03-15 02:53:08'),
(11, 7, '32', '2025-05-19', '2025-05-20', '2025-04-27', '2025-04-16 19:01:06', '2025-04-17 19:18:25', '2025-04-17 19:18:25'),
(12, 11, '23', '2025-04-18', '2025-04-20', '2025-04-21', '2025-04-17 19:18:40', '2025-04-20 02:29:44', NULL),
(13, 13, '100', '2025-04-29', '2025-04-30', '2025-04-27', '2025-04-20 06:46:02', '2025-04-20 06:46:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=suspended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `token`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Asep Tarya Cahyadi', 'abyan@gmail.com', 'user_photo_1739865769.png', '$2y$12$pZ7H6Rheph6fH/SZ5tuEVuvWqM1crSIhWiMOMfrjt0W4S7iBJGUca', '089525907023', 'Indonesia', 'Sindangsari', 'Bandung', 'Ciwidey', '40973', '8465280810e04c26570fb7f977a26d6f44739e042bcc1298ff8074dbcbba0ec2', '1', '2024-11-22 07:00:51', '2025-03-07 18:52:20', NULL),
(2, 'david', 'david@gmail.com', NULL, '$2y$12$Ho7a0EmFQtymnIHuoY3lQOFHbFQxr6NDqUzz4zgsG5BoS9MUxw3Vu', NULL, NULL, NULL, NULL, NULL, NULL, '', '1', '2024-11-24 06:03:08', '2024-11-24 06:03:32', NULL),
(6, 'suparman', 'suparman123@gmail.com', NULL, '$2y$12$pZ7H6Rheph6fH/SZ5tuEVuvWqM1crSIhWiMOMfrjt0W4S7iBJGUca', '089525907023', '#', '#', '#', '#', '#', '', '1', '2025-03-04 06:43:57', '2025-04-17 20:00:35', NULL),
(17, 'Muhammad Abyan', 'abyandev657@gmail.com', NULL, '$2y$12$GSk6f6AtL42SSB9R.uDSSuC67Wma3gOcZsz5cxmFrtLJTqfO3s4m2', NULL, NULL, NULL, NULL, NULL, NULL, 'a3ef37fe541c2b5e77459abf1177e32803a452fb630304ce66fca7375ae4d2b0', '0', '2025-03-06 01:47:15', '2025-03-07 18:53:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `welcome_items`
--

CREATE TABLE `welcome_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `welcome_items`
--

INSERT INTO `welcome_items` (`id`, `heading`, `description`, `button_text`, `button_link`, `photo`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Selamat datang di TripSummit', '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\">Di TripSummit, misi kami adalah mewujudkan impian perjalanan dengan menyediakan pengalaman yang personal dan berkesan. Kami memanfaatkan keahlian dan mitra tepercaya kami untuk memastikan setiap perjalanan berjalan lancar dan menyenangkan.</span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 15px; background-color: #f2f2f2;\">Kami percaya bahwa perjalanan dapat menumbuhkan pertumbuhan pribadi dan pemahaman budaya. Tujuan kami adalah membantu klien menjelajahi destinasi baru dan terhubung dengan beragam budaya. Kami mempromosikan perjalanan berkelanjutan untuk memberikan dampak positif bagi masyarakat dan melestarikan keindahan planet kita.</span></p>', 'Baca selengkapnya', '#', 'welcome_item_1732528236.jpg', 'Rh9Kz2EHKnw', 'Hide', '2024-11-24 20:48:59', '2025-04-25 02:55:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `package_id`, `created_at`, `updated_at`) VALUES
(3, 1, 7, '2024-12-23 01:26:37', '2024-12-23 01:26:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `booking_rooms`
--
ALTER TABLE `booking_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_rooms_room_id_foreign` (`room_id`),
  ADD KEY `booking_rooms_user_id_foreign` (`user_id`),
  ADD KEY `booking_rooms_tour_id_foreign` (`tour_id`),
  ADD KEY `booking_rooms_accommodation_id_foreign` (`accommodation_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indeks untuk tabel `contact_items`
--
ALTER TABLE `contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `counter_items`
--
ALTER TABLE `counter_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_code` (`country_code`);

--
-- Indeks untuk tabel `destination_photos`
--
ALTER TABLE `destination_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `destination_videos`
--
ALTER TABLE `destination_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `message_comments`
--
ALTER TABLE `message_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_amenities`
--
ALTER TABLE `package_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_amenity_photos`
--
ALTER TABLE `package_amenity_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_faqs`
--
ALTER TABLE `package_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_itineraries`
--
ALTER TABLE `package_itineraries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_photos`
--
ALTER TABLE `package_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `package_videos`
--
ALTER TABLE `package_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_accommodation_id_foreign` (`accommodation_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `term_privacy_items`
--
ALTER TABLE `term_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `welcome_items`
--
ALTER TABLE `welcome_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `booking_rooms`
--
ALTER TABLE `booking_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `contact_items`
--
ALTER TABLE `contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `counter_items`
--
ALTER TABLE `counter_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `destination_photos`
--
ALTER TABLE `destination_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `destination_videos`
--
ALTER TABLE `destination_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `message_comments`
--
ALTER TABLE `message_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `package_amenities`
--
ALTER TABLE `package_amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `package_amenity_photos`
--
ALTER TABLE `package_amenity_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `package_faqs`
--
ALTER TABLE `package_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `package_itineraries`
--
ALTER TABLE `package_itineraries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `package_photos`
--
ALTER TABLE `package_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `package_videos`
--
ALTER TABLE `package_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `term_privacy_items`
--
ALTER TABLE `term_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `welcome_items`
--
ALTER TABLE `welcome_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking_rooms`
--
ALTER TABLE `booking_rooms`
  ADD CONSTRAINT `booking_rooms_accommodation_id_foreign` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_rooms_tour_id_foreign` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_rooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_accommodation_id_foreign` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
