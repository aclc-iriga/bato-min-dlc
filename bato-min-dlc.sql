-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 03:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bato-min-dlc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2024-02-11 06:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrangements`
--

INSERT INTO `arrangements` (`id`, `event_id`, `team_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 2, '2024-02-11 06:55:37', '2024-02-11 06:55:37'),
(2, 3, 4, 3, '2024-02-11 06:55:40', '2024-02-11 06:55:40'),
(3, 3, 2, 4, '2024-02-11 06:55:47', '2024-02-11 06:55:47'),
(4, 3, 3, 5, '2024-02-11 06:55:51', '2024-02-11 06:55:51'),
(5, 4, 5, 2, '2024-02-11 06:56:08', '2024-02-11 06:56:08'),
(6, 4, 4, 3, '2024-02-11 06:56:11', '2024-02-11 06:56:11'),
(7, 4, 2, 4, '2024-02-11 06:56:16', '2024-02-11 06:56:16'),
(8, 4, 3, 5, '2024-02-11 06:56:19', '2024-02-11 06:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'marching-parade', 'Marching Parade', '2024-02-10 10:27:05', '2024-02-10 10:28:45'),
(2, 1, 'dlc-minorettes-exhibition', 'DLC and Minorettes Exhibition', '2024-02-10 10:27:43', '2024-02-10 10:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'bato-min-dlc-2024', 'DLC and Minorettes Competition (Elementary Level) 2024', '2023-04-06 13:24:04', '2024-02-11 06:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marching', 30, '2024-02-10 10:39:14', '2024-02-10 10:39:14'),
(2, 1, 'Baton Twirling', 30, '2024-02-10 10:39:27', '2024-02-10 10:39:27'),
(3, 1, 'Rhythm & Style', 15, '2024-02-10 10:39:43', '2024-02-10 10:39:43'),
(4, 1, 'Uniform (Appeal & Neatness)', 10, '2024-02-10 10:40:02', '2024-02-10 10:40:02'),
(5, 1, 'Eyes Right', 15, '2024-02-10 10:40:21', '2024-02-10 10:40:21'),
(6, 2, 'Precision of Drums (Score, Clarity Interpretation)', 30, '2024-02-10 10:41:46', '2024-02-10 10:41:46'),
(7, 2, 'Sound of the Bugles or Lyre (Clarity, Timing, Intonation)', 30, '2024-02-10 10:42:07', '2024-02-10 10:42:07'),
(8, 2, 'Marching (Smartness, Timing & Alignment)', 25, '2024-02-10 10:42:36', '2024-02-10 10:42:36'),
(9, 2, 'Uniform (Smartness & Neatness)', 15, '2024-02-10 10:43:00', '2024-02-10 10:43:00'),
(10, 3, 'Marching', 25, '2024-02-10 10:43:42', '2024-02-10 10:43:42'),
(11, 3, 'Baton Twirling (Mastery & Gracefulness) ', 30, '2024-02-10 10:44:10', '2024-02-10 10:44:10'),
(12, 3, 'Choreography (Movement & Style)', 30, '2024-02-10 10:45:28', '2024-02-10 10:45:28'),
(13, 3, 'Uniform (Appeal & Neatness)', 10, '2024-02-10 10:45:49', '2024-02-10 10:45:49'),
(14, 3, 'Performance of the Minorette Leader', 5, '2024-02-10 10:46:29', '2024-02-10 10:46:29'),
(15, 4, 'Precision of Drums (Score, Clarity Interpretation)', 25, '2024-02-10 10:47:00', '2024-02-10 10:47:00'),
(16, 4, 'Sound of the Bugles or Lyre (Clarity, Timing & Interpretation)', 25, '2024-02-10 10:47:26', '2024-02-10 10:47:26'),
(17, 4, 'Choreography', 20, '2024-02-10 10:47:42', '2024-02-10 10:47:42'),
(18, 4, 'Marching (Smartness, Timing & Alignment)', 15, '2024-02-10 10:48:11', '2024-02-10 10:48:11'),
(19, 4, 'Uniform (Smartness & Neatness)', 10, '2024-02-10 10:48:41', '2024-02-10 10:48:41'),
(20, 4, 'Performance of the DLC Conductor', 5, '2024-02-10 10:49:12', '2024-02-10 10:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `technical_id`, `event_id`, `team_id`, `value`, `is_locked`, `created_at`, `updated_at`) VALUES
(29, 1, 4, 1, 0, 0, '2024-02-11 06:57:44', '2024-02-11 06:57:44'),
(30, 1, 4, 5, 0, 0, '2024-02-11 06:57:44', '2024-02-11 06:57:44'),
(31, 1, 4, 4, 0, 0, '2024-02-11 06:57:44', '2024-02-11 06:57:44'),
(32, 1, 4, 2, 0, 0, '2024-02-11 06:57:44', '2024-02-11 06:57:44'),
(33, 1, 4, 3, 0, 0, '2024-02-11 06:57:44', '2024-02-11 06:57:44'),
(34, 1, 1, 1, 0, 0, '2024-02-11 06:57:45', '2024-02-11 06:57:45'),
(35, 1, 1, 2, 0, 0, '2024-02-11 06:57:45', '2024-02-11 06:57:45'),
(36, 1, 1, 3, 0, 0, '2024-02-11 06:57:45', '2024-02-11 06:57:45'),
(37, 1, 1, 4, 0, 0, '2024-02-11 06:57:45', '2024-02-11 06:57:45'),
(38, 1, 1, 5, 0, 0, '2024-02-11 06:57:45', '2024-02-11 06:57:45'),
(39, 1, 2, 1, 0, 0, '2024-02-11 06:58:14', '2024-02-11 06:58:14'),
(40, 1, 2, 2, 0, 0, '2024-02-11 06:58:14', '2024-02-11 06:58:14'),
(41, 1, 2, 3, 0, 0, '2024-02-11 06:58:14', '2024-02-11 06:58:14'),
(42, 1, 2, 4, 0, 0, '2024-02-11 06:58:14', '2024-02-11 06:58:14'),
(43, 1, 2, 5, 0, 0, '2024-02-11 06:58:14', '2024-02-11 06:58:14'),
(44, 1, 3, 1, 0, 0, '2024-02-11 06:58:19', '2024-02-11 06:58:19'),
(45, 1, 3, 5, 0, 0, '2024-02-11 06:58:19', '2024-02-11 06:58:19'),
(46, 1, 3, 4, 0, 0, '2024-02-11 06:58:19', '2024-02-11 06:58:19'),
(47, 1, 3, 2, 0, 0, '2024-02-11 06:58:19', '2024-02-11 06:58:19'),
(48, 1, 3, 3, 0, 0, '2024-02-11 06:58:19', '2024-02-11 06:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'marching-minorettes', 'Marching Minorettes ', '2024-02-10 10:34:37', '2024-02-10 10:34:37'),
(2, 1, 'marching-dlc', 'Marching DLC', '2024-02-10 10:35:00', '2024-02-11 06:54:59'),
(3, 2, 'minorettes-exhibition', 'Minorettes Exhibition', '2024-02-10 10:36:06', '2024-02-10 10:36:06'),
(4, 2, 'dlc-exhibition', 'DLC Exhibition', '2024-02-10 10:36:25', '2024-02-10 10:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 1-01', 'no-avatar.jpg', 'judge11', 'judge11', NULL, NULL, NULL, '2023-04-06 13:58:11', '2024-02-11 06:42:05'),
(2, 2, 'Judge 1-02', 'no-avatar.jpg', 'judge12', 'judge12', NULL, NULL, NULL, '2023-04-06 13:58:28', '2024-02-11 06:42:12'),
(3, 3, 'Judge 1-03', 'no-avatar.jpg', 'judge13', 'judge13', NULL, NULL, NULL, '2023-04-06 13:58:42', '2024-02-11 06:42:16'),
(4, 1, 'Judge 2-01', 'no-avatar.jpg', 'judge21', 'judge21', NULL, NULL, NULL, '2023-04-06 13:59:26', '2024-02-11 06:42:20'),
(5, 2, 'Judge 2-02', 'no-avatar.jpg', 'judge22', 'judge22', NULL, NULL, NULL, '2023-04-06 14:00:00', '2024-02-11 06:42:24'),
(6, 3, 'Judge 2-03', 'noavatar.jpg', 'judge23', 'judge23', NULL, NULL, NULL, '2024-02-11 06:39:59', '2024-02-11 06:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-02-11 14:52:04', '2024-02-11 14:52:35'),
(2, 1, 3, 1, '2024-02-11 14:52:08', '2024-02-11 14:52:37'),
(3, 2, 1, 0, '2024-02-11 14:52:17', '2024-02-11 14:52:17'),
(4, 2, 3, 0, '2024-02-11 14:52:22', '2024-02-11 14:52:22'),
(5, 3, 1, 0, '2024-02-11 14:52:28', '2024-02-11 14:52:28'),
(6, 3, 3, 0, '2024-02-11 14:52:32', '2024-02-11 14:52:32'),
(7, 4, 2, 1, '2024-02-11 14:52:49', '2024-02-11 14:52:50'),
(8, 4, 4, 1, '2024-02-11 14:52:54', '2024-02-11 14:52:55'),
(9, 5, 2, 0, '2024-02-11 14:53:03', '2024-02-11 14:53:03'),
(10, 5, 4, 0, '2024-02-11 14:53:07', '2024-02-11 14:53:07'),
(11, 6, 2, 0, '2024-02-11 14:53:14', '2024-02-11 14:53:14'),
(12, 6, 4, 0, '2024-02-11 14:53:17', '2024-02-11 14:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'BATO NORTH CENTRAL SCHOOL', 'Bato', 'bato-north-central.jpg', '2024-02-11 06:34:51', '2024-02-11 06:37:43'),
(2, 2, 'BATO SOUTH CENTRAL SCHOOL', 'Bato', 'bato-south-central.jpg', '2024-02-11 06:35:15', '2024-02-11 06:38:04'),
(3, 3, 'CARLOS NARDO ELEMENTARY SCHOOL', 'Bato', 'carlos-nardo.jpg', '2024-02-11 06:35:27', '2024-02-11 06:38:13'),
(4, 4, 'DR. HERACLEO A. GUBALLA ELEMENTARY SCHOOL', 'Bato', 'dr-haracleo-a-guballa.jpg', '2024-02-11 06:35:39', '2024-02-11 06:37:53'),
(5, 5, 'PAGATPATAN ELEMENTARY SCHOOL', 'Bato', 'pagatpatan.jpg', '2024-02-11 06:35:54', '2024-02-11 06:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-05-02 14:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_event`
--

INSERT INTO `technical_event` (`id`, `technical_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-02-11 06:47:47', '2024-02-11 06:47:47'),
(2, 1, 2, '2024-02-11 06:47:49', '2024-02-11 06:47:49'),
(3, 1, 3, '2024-02-11 06:47:52', '2024-02-11 06:47:52'),
(4, 1, 4, '2024-02-11 06:47:54', '2024-02-11 06:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1st Place', '2024-02-10 11:29:37', '2024-02-10 11:33:26'),
(2, 1, 2, '2nd Place', '2024-02-10 11:29:37', '2024-02-10 11:33:53'),
(3, 1, 3, '3rd Place', '2024-02-10 11:29:37', '2024-02-10 11:34:09'),
(4, 1, 4, '4th Place', '2024-02-10 11:29:37', '2024-02-10 11:34:20'),
(5, 1, 5, '5th Place', '2024-02-10 11:29:37', '2024-02-10 11:34:29'),
(6, 2, 1, '1st Place', '2024-02-10 11:29:39', '2024-02-11 06:45:29'),
(7, 2, 2, '2nd Place', '2024-02-10 11:29:39', '2024-02-11 06:45:32'),
(8, 2, 3, '3rd Place', '2024-02-10 11:29:39', '2024-02-11 06:45:35'),
(9, 2, 4, '4th Place', '2024-02-10 11:29:39', '2024-02-11 06:45:38'),
(10, 2, 5, '5th Place', '2024-02-10 11:29:39', '2024-02-11 06:45:41'),
(11, 3, 1, '1st Place', '2024-02-10 11:29:42', '2024-02-11 06:45:43'),
(12, 3, 2, '2nd Place', '2024-02-10 11:29:42', '2024-02-11 06:45:45'),
(13, 3, 3, '3rd Place', '2024-02-10 11:29:42', '2024-02-11 06:45:48'),
(14, 3, 4, '4th Place', '2024-02-10 11:29:42', '2024-02-11 06:45:50'),
(15, 3, 5, '5th Place', '2024-02-10 11:29:42', '2024-02-11 06:45:53'),
(16, 4, 1, '1st Place', '2024-02-10 11:29:43', '2024-02-11 06:45:55'),
(17, 4, 2, '2nd Place', '2024-02-10 11:29:43', '2024-02-11 06:45:58'),
(18, 4, 3, '3rd Place', '2024-02-10 11:29:43', '2024-02-11 06:46:01'),
(19, 4, 4, '4th Place', '2024-02-10 11:29:43', '2024-02-11 06:46:03'),
(20, 4, 5, '5th Place', '2024-02-10 11:29:43', '2024-02-11 06:48:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
