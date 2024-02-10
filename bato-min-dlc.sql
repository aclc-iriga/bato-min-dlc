-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 12:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2024-02-10 11:44:31');

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
(1, 'bato-min-dlc-2023', 'DLC and Minorettes Competition (Elementary Level) 2023', '2023-04-06 13:24:04', '2023-04-06 13:24:04');

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
(2, 1, 'marching-dlc-parade', 'Marching DLC Parade', '2024-02-10 10:35:00', '2024-02-10 10:35:00'),
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
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2023-05-21 21:02:49'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2023-05-21 21:02:55'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2023-05-21 21:03:01'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2023-04-06 13:59:26', '2023-05-21 21:03:04'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2023-04-06 14:00:00', '2023-05-21 21:03:08');

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
(1, 1, 1, 0, '2024-02-10 11:11:22', '2024-02-10 11:14:12'),
(2, 1, 2, 0, '2024-02-10 11:11:30', '2024-02-10 11:14:17'),
(3, 1, 3, 0, '2024-02-10 11:11:33', '2024-02-10 11:14:21'),
(4, 1, 4, 0, '2024-02-10 11:11:36', '2024-02-10 11:14:24'),
(5, 2, 1, 0, '2024-02-10 11:11:43', '2024-02-10 11:14:27'),
(6, 2, 2, 0, '2024-02-10 11:11:47', '2024-02-10 11:14:33'),
(7, 2, 3, 0, '2024-02-10 11:11:50', '2024-02-10 11:14:36'),
(8, 2, 4, 0, '2024-02-10 11:11:55', '2024-02-10 11:14:38'),
(9, 3, 1, 0, '2024-02-10 11:12:10', '2024-02-10 11:14:41'),
(10, 3, 2, 0, '2024-02-10 11:12:14', '2024-02-10 11:14:44'),
(11, 3, 3, 0, '2024-02-10 11:12:18', '2024-02-10 11:14:47'),
(12, 3, 4, 0, '2024-02-10 11:12:21', '2024-02-10 11:14:53');

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
(1, 1, 'Contingent 1', 'Location 1', 'contingent.png', '2024-02-10 11:09:16', '2024-02-10 11:17:57'),
(2, 2, 'Contingent 2', 'Location 2', 'contingent.png', '2024-02-10 11:09:39', '2024-02-10 11:18:01'),
(3, 3, 'Contingent 3', 'Location 3', 'contingent.png', '2024-02-10 11:09:57', '2024-02-10 11:18:05'),
(4, 4, 'Contingent 4', 'Location 4', 'contingent.png', '2024-02-10 11:10:18', '2024-02-10 11:18:09'),
(5, 5, 'Contingent 5', 'Location 5', 'contingent.png', '2024-02-10 11:10:41', '2024-02-10 11:18:13'),
(6, 6, 'Contingent 6', 'Location 6', 'contingent.png', '2024-02-10 11:17:15', '2024-02-10 11:18:17'),
(7, 7, 'Contingent 7', 'Location 7', 'contingent.png', '2024-02-10 11:17:36', '2024-02-10 11:18:21');

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
(1, 1, 1, '2024-02-10 11:12:30', '2024-02-10 11:16:02'),
(2, 1, 2, '2024-02-10 11:12:33', '2024-02-10 11:16:05'),
(3, 1, 3, '2024-02-10 11:12:35', '2024-02-10 11:16:08'),
(4, 1, 4, '2024-02-10 11:12:37', '2024-02-10 11:16:10');

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
(6, 1, 6, '', '2024-02-10 11:29:37', '2024-02-10 11:29:37'),
(7, 1, 7, '', '2024-02-10 11:29:37', '2024-02-10 11:29:37'),
(8, 2, 1, '1st Place', '2024-02-10 11:29:39', '2024-02-10 11:33:26'),
(9, 2, 2, '2nd Place', '2024-02-10 11:29:39', '2024-02-10 11:33:53'),
(10, 2, 3, '3rd Place', '2024-02-10 11:29:39', '2024-02-10 11:34:09'),
(11, 2, 4, '4th Place', '2024-02-10 11:29:39', '2024-02-10 11:34:20'),
(12, 2, 5, '5th Place', '2024-02-10 11:29:39', '2024-02-10 11:34:29'),
(13, 2, 6, '', '2024-02-10 11:29:39', '2024-02-10 11:29:39'),
(14, 2, 7, '', '2024-02-10 11:29:39', '2024-02-10 11:29:39'),
(15, 3, 1, '1st Place', '2024-02-10 11:29:42', '2024-02-10 11:33:26'),
(16, 3, 2, '2nd Place', '2024-02-10 11:29:42', '2024-02-10 11:33:53'),
(17, 3, 3, '3rd Place', '2024-02-10 11:29:42', '2024-02-10 11:34:09'),
(18, 3, 4, '4th Place', '2024-02-10 11:29:42', '2024-02-10 11:34:20'),
(19, 3, 5, '5th Place', '2024-02-10 11:29:42', '2024-02-10 11:34:29'),
(20, 3, 6, '', '2024-02-10 11:29:42', '2024-02-10 11:29:42'),
(21, 3, 7, '', '2024-02-10 11:29:42', '2024-02-10 11:29:42'),
(22, 4, 1, '1st Place', '2024-02-10 11:29:43', '2024-02-10 11:33:26'),
(23, 4, 2, '2nd Place', '2024-02-10 11:29:43', '2024-02-10 11:33:53'),
(24, 4, 3, '3rd Place', '2024-02-10 11:29:43', '2024-02-10 11:34:09'),
(25, 4, 4, '4th Place', '2024-02-10 11:29:43', '2024-02-10 11:34:20'),
(26, 4, 5, '5th Place', '2024-02-10 11:29:43', '2024-02-10 11:34:29'),
(27, 4, 6, '', '2024-02-10 11:29:43', '2024-02-10 11:29:43'),
(28, 4, 7, '', '2024-02-10 11:29:43', '2024-02-10 11:29:43');

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
