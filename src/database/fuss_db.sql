-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 15, 2025 at 07:13 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuss_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `name`, `email`, `password`, `role`, `status`) VALUES
(2, 'admin', 'admin kim', 'admin@fuss.com', '$2y$10$F7a4Stkw7p0ELD0jOb.oVu0QDJKf3Y8iVu7QnuuAqLcGmhRsM.Xuy', 'admin', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `credit_logs`
--

CREATE TABLE `credit_logs` (
  `id` int UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `admin_id` int UNSIGNED DEFAULT NULL,
  `ref_type` varchar(30) DEFAULT NULL,
  `ref_id` int DEFAULT NULL,
  `change_amount` decimal(10,2) NOT NULL,
  `reason` text,
  `previous_credits` decimal(10,2) DEFAULT NULL,
  `new_credits` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_name` varchar(100) DEFAULT 'System'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credit_logs`
--

INSERT INTO `credit_logs` (`id`, `student_id`, `admin_id`, `ref_type`, `ref_id`, `change_amount`, `reason`, `previous_credits`, `new_credits`, `created_at`, `admin_name`) VALUES
(5, 6, 2, NULL, NULL, 123.00, '11', 62.00, 185.00, '2025-10-10 14:22:27', 'System'),
(6, 1, 2, NULL, NULL, 12.00, '212', 93.00, 105.00, '2025-10-10 23:33:24', 'System'),
(7, 1, 2, NULL, NULL, 12.00, '123', 105.00, 117.00, '2025-10-10 23:35:12', 'System'),
(8, 1, 2, NULL, NULL, -31.00, '123', 117.00, 86.00, '2025-10-10 23:35:49', 'System'),
(9, 1, 2, NULL, NULL, -30.00, '123', 86.00, 56.00, '2025-10-10 23:38:23', 'System'),
(10, 8, 2, NULL, NULL, 10.00, '1234', 0.00, 10.00, '2025-10-10 23:38:41', 'System'),
(11, 8, 2, NULL, NULL, 14.00, 'bonus for porjects', 10.00, 24.00, '2025-10-10 23:39:43', 'System'),
(12, 8, 2, NULL, NULL, 12.00, '123', 60.00, 72.00, '2025-10-10 23:54:55', 'System'),
(13, 6, 2, NULL, NULL, -123.00, '123', 185.00, 62.00, '2025-10-10 23:55:29', 'System'),
(14, 8, 2, NULL, NULL, -12.00, '12', 72.00, 60.00, '2025-10-10 23:56:34', 'System'),
(15, 8, 2, NULL, NULL, 12.00, '12', 60.00, 72.00, '2025-10-10 23:59:57', 'System'),
(16, 8, 2, NULL, NULL, 12.00, '12', 72.00, 84.00, '2025-10-11 00:06:59', 'System'),
(17, 8, 2, NULL, NULL, -12.00, '12', 84.00, 72.00, '2025-10-11 00:08:21', 'System'),
(18, 8, 2, NULL, NULL, -12.00, '12', 72.00, 60.00, '2025-10-11 00:09:46', 'System'),
(19, 8, 2, NULL, NULL, 12.00, '12', 60.00, 72.00, '2025-10-11 00:11:04', 'System'),
(20, 8, 2, NULL, NULL, 12.00, '12', 72.00, 84.00, '2025-10-11 00:11:24', 'System'),
(21, 8, 2, NULL, NULL, 12.00, '12', 84.00, 96.00, '2025-10-11 00:11:42', 'System'),
(22, 8, 2, NULL, NULL, 12.00, '12', 96.00, 108.00, '2025-10-11 00:12:16', 'System'),
(23, 8, 2, NULL, NULL, 12.00, '12', 108.00, 120.00, '2025-10-11 09:42:22', 'System'),
(24, 6, 2, NULL, NULL, -12.00, '1212', 62.00, 50.00, '2025-10-11 09:46:05', 'System'),
(25, 6, 2, NULL, NULL, 12.00, '1212', 50.00, 62.00, '2025-10-11 10:38:46', 'System'),
(26, 8, 2, NULL, NULL, -12.00, '12', 120.00, 108.00, '2025-10-11 10:40:19', 'System'),
(27, 8, 2, NULL, NULL, 12.00, '12', 108.00, 120.00, '2025-10-11 10:44:10', 'System'),
(28, 6, 2, NULL, NULL, 12.00, '12', 62.00, 74.00, '2025-10-11 10:53:57', 'System'),
(29, 6, 2, NULL, NULL, -12.00, '12', 74.00, 62.00, '2025-10-11 11:02:24', 'System'),
(30, 6, 2, NULL, NULL, 12.00, '12', 62.00, 74.00, '2025-10-11 11:02:50', 'System'),
(31, 8, 2, NULL, NULL, 12.00, '12', 120.00, 132.00, '2025-10-11 11:04:52', 'System'),
(32, 8, 2, NULL, NULL, -121.00, '12', 132.00, 11.00, '2025-10-11 11:09:33', 'System'),
(33, 6, 2, NULL, NULL, -12.00, '12', 74.00, 62.00, '2025-10-12 03:11:39', 'System'),
(34, 6, 2, NULL, NULL, -12.00, '12', 62.00, 50.00, '2025-10-12 03:14:21', 'System'),
(35, 8, 2, NULL, NULL, -12.00, '12', 11.00, 0.00, '2025-10-12 03:21:02', 'System'),
(36, 6, 2, NULL, NULL, -12.00, '12', 50.00, 38.00, '2025-10-12 03:23:16', 'System'),
(37, 8, 2, NULL, NULL, 12.00, '12', 0.00, 12.00, '2025-10-12 03:26:49', 'System'),
(38, 1, 2, NULL, NULL, -12.00, '12', 56.00, 44.00, '2025-10-12 03:30:31', 'System'),
(39, 1, 2, NULL, NULL, -12.00, '12', 44.00, 32.00, '2025-10-12 03:34:15', 'System'),
(40, 1, 2, NULL, NULL, 12.00, '123', 32.00, 44.00, '2025-10-12 03:41:08', 'System'),
(41, 1, 2, NULL, NULL, 50.00, 'bonus', 44.00, 94.00, '2025-10-12 06:12:55', 'System'),
(42, 1, 2, NULL, NULL, 12.00, '12', 94.00, 106.00, '2025-10-12 06:17:43', 'System'),
(43, 6, 2, NULL, NULL, -12.00, '12', 38.00, 26.00, '2025-10-12 11:01:32', 'System'),
(44, 6, 2, NULL, NULL, 50.00, 'sysyem error', 26.00, 76.00, '2025-10-12 12:38:32', 'System'),
(45, 1, NULL, 'skill', 21, 1.00, 'Skill added: ㅁㅇㄴㄴㅁㅇㄴㅁㅇㄴㅁㄴㅁㅇ', 108.00, 109.00, '2025-10-14 08:41:55', 'System'),
(46, 1, NULL, 'skill', 22, 1.00, 'Skill added: addsdaddasd', 109.00, 110.00, '2025-10-14 08:42:10', 'System'),
(47, 1, NULL, 'skill', 23, 1.00, 'Skill added: addsdaddasd', 110.00, 111.00, '2025-10-14 08:45:44', 'System'),
(48, 1, NULL, 'skill', 24, 1.00, 'Skill added: addsdaddasd', 111.00, 112.00, '2025-10-14 08:48:34', 'System'),
(49, 1, NULL, 'skill', 25, 1.00, 'Skill added: addsdaddasd', 112.00, 113.00, '2025-10-14 08:49:28', 'System');

-- --------------------------------------------------------

--
-- Table structure for table `credit_policies`
--

CREATE TABLE `credit_policies` (
  `id` int NOT NULL,
  `policy_name` varchar(100) NOT NULL,
  `trigger_event` varchar(50) NOT NULL,
  `credit_change` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credit_policies`
--

INSERT INTO `credit_policies` (`id`, `policy_name`, `trigger_event`, `credit_change`, `is_active`, `created_at`) VALUES
(1, 'Skill Added Reward', 'skill_add', 1.00, 1, '2025-10-12 09:49:07'),
(2, 'Report Resolve Bonus', 'report_resolved', 5.00, 1, '2025-10-12 09:49:07'),
(3, 'Penalty for Misconduct', 'penalty_action', -5.00, 0, '2025-10-12 09:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int NOT NULL,
  `report_id` int NOT NULL,
  `filed_by` int DEFAULT NULL,
  `reason` text,
  `status` enum('pending','reviewed','resolved') NOT NULL DEFAULT 'pending',
  `admin_note` varchar(500) NOT NULL,
  `resolution` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `disputes`
--

INSERT INTO `disputes` (`id`, `report_id`, `filed_by`, `reason`, `status`, `admin_note`, `resolution`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'I believe my account was wrongly suspended. Please review again.', 'pending', 'It was an error', NULL, '2025-10-12 13:15:28', '2025-10-12 13:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `content` text,
  `category` enum('chat','help','faq','system') DEFAULT 'chat',
  `is_read` tinyint(1) DEFAULT '0',
  `thread_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `request_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `content`, `category`, `is_read`, `thread_id`, `created_at`, `request_id`) VALUES
(2, 1, 6, 'Hi I need yout ehel', 'chat', 0, NULL, '2025-10-14 10:59:27', NULL),
(21, 1, 2, 'I was wondering.....', 'help', 0, NULL, '2025-10-14 14:00:16', NULL),
(22, 1, 2, 'I need yout help', 'chat', 0, NULL, '2025-10-15 02:16:00', NULL),
(23, 1, 2, '123', 'help', 0, NULL, '2025-10-15 02:29:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `moderation_logs`
--

CREATE TABLE `moderation_logs` (
  `id` int NOT NULL,
  `report_id` int DEFAULT NULL,
  `dispute_id` int DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `evidence_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moderation_logs`
--

INSERT INTO `moderation_logs` (`id`, `report_id`, `dispute_id`, `admin_id`, `action`, `note`, `created_at`, `evidence_path`) VALUES
(1, NULL, 1, NULL, 'Added mediation note', 'It was a system error.', '2025-10-12 13:22:26', 'uploads/1760275346_IMG_3839.jpeg'),
(2, NULL, 1, NULL, 'Frozen user credits temporarily', 'It was a system error.', '2025-10-12 13:22:29', 'uploads/1760275349_IMG_3839.jpeg'),
(3, NULL, 1, 2, 'Added mediation note', 'It was an error', '2025-10-12 13:27:28', 'uploads/1760275648_IMG_3838.jpeg'),
(4, NULL, 1, 2, 'Frozen user credits temporarily', 'User credits were frozen by admin.', '2025-10-12 13:27:39', NULL),
(5, NULL, 1, 2, 'Unfrozen user credits', 'User credits were unfrozen by admin.', '2025-10-12 13:27:44', NULL),
(7, 2, NULL, NULL, 'resolved', 'Report status changed to \'resolved\' by admin.', '2025-10-12 14:16:29', NULL),
(8, 2, NULL, NULL, 'pending', 'Report status changed to \'pending\' by admin.', '2025-10-13 01:15:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `type` enum('info','warning','error','success') DEFAULT 'info',
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `type`, `is_read`, `created_at`) VALUES
(2, 'Report #1 marked as resolved by admin.', 'success', 1, '2025-10-12 09:24:59'),
(3, 'User #3 has multiple pending reports.', 'warning', 1, '2025-10-12 09:24:59'),
(4, 'Database connection temporarily failed.', 'error', 1, '2025-10-12 09:24:59'),
(5, 'New skill added by user Naomi Willson.', 'info', 1, '2025-10-12 09:24:59'),
(6, '🛠️ Student ID #1 profile has been updated by admin.', 'info', 0, '2025-10-12 11:59:01'),
(7, '🛠️ Student ID #6 profile has been updated by admin.', 'info', 0, '2025-10-12 11:59:44'),
(8, '🛠️ Student ID #6 profile has been updated by admin.', 'info', 0, '2025-10-12 12:00:32'),
(9, '🛠️ Student ID #8 profile has been updated by admin.', 'info', 1, '2025-10-12 12:04:06'),
(10, '🛠️ Student ID #1 profile updated by admin.', 'info', 0, '2025-10-12 12:08:30'),
(11, '🛠️ Student ID #1 profile updated by admin.', 'info', 0, '2025-10-12 12:08:45'),
(12, '✏️ profile #1 content has been edited by admin.', 'info', 0, '2025-10-12 12:25:16'),
(13, '✏️ skill #7 content has been edited by admin.', 'info', 0, '2025-10-12 12:26:01'),
(14, '✏️ profile #1 content has been edited by admin.', 'info', 1, '2025-10-12 12:31:38'),
(15, 'Report #1 status changed to \'reviewed\' by admin.', 'info', 1, '2025-10-12 12:35:12'),
(16, 'Report #1 status changed to \'pending\' by admin.', 'info', 1, '2025-10-12 12:35:20'),
(17, 'Report #1 status changed to \'reviewed\' by admin.', 'info', 1, '2025-10-12 12:35:40'),
(18, 'Report #2 status changed to \'reviewed\' by admin.', 'info', 1, '2025-10-12 12:35:46'),
(19, 'Report #1 status changed to \'pending\' by admin.', 'info', 0, '2025-10-12 12:36:57'),
(20, 'Report #1 status changed to \'reviewed\' by admin.', 'info', 0, '2025-10-12 12:39:26'),
(21, 'Report #1 status changed to \'resolved\' by admin.', 'success', 0, '2025-10-12 13:04:12'),
(22, 'Report #1 status changed to \'pending\' by admin.', 'info', 0, '2025-10-12 13:04:21'),
(23, '✏️ skill #7 content has been edited by admin.', 'info', 0, '2025-10-12 13:04:41'),
(24, 'Report #1 status changed to \'reviewed\' by admin.', 'info', 0, '2025-10-12 13:05:42'),
(25, 'Report #2 status changed to \'pending\' by admin.', 'info', 0, '2025-10-12 13:07:04'),
(26, 'Dispute #1 status changed to \'open\' by admin.', 'info', 0, '2025-10-12 13:15:47'),
(27, 'Dispute #1 status changed to \'under_review\' by admin.', 'info', 0, '2025-10-12 13:15:55'),
(28, 'Dispute #1 status changed to \'pending\' by admin.', 'info', 0, '2025-10-12 13:34:15'),
(29, '✏️ skill #7 content has been edited by admin.', 'info', 0, '2025-10-12 13:42:01'),
(30, '✏️ skill #7 content has been edited by admin.', 'info', 1, '2025-10-12 13:42:39'),
(31, '✏️ skill #7 content has been edited by admin.', 'info', 1, '2025-10-12 13:42:48'),
(32, 'Report #2 status changed to \'reviewed\' by admin.', 'info', 0, '2025-10-12 13:42:55'),
(33, 'Report #1 status changed to \'pending\' by admin.', 'info', 0, '2025-10-12 13:46:52'),
(34, '🗑️ Reported skill #7 has been deleted by admin.', 'error', 1, '2025-10-12 13:55:25'),
(35, '✏️ profile #1 content has been edited by admin.', 'info', 0, '2025-10-12 14:06:09'),
(36, '🔔 Admin adjusted trust score of user #1 by -1 points (wrong contents).', 'info', 1, '2025-10-12 14:13:18'),
(37, 'Report #2 status changed to \'resolved\' by admin.', 'success', 0, '2025-10-12 14:16:29'),
(38, '🔔 Admin adjusted trust score of user #1 by 1 points (back).', 'info', 1, '2025-10-12 14:18:10'),
(39, 'Report #2 status changed to \'pending\' by admin.', 'info', 1, '2025-10-13 01:15:56'),
(40, '🛠️ Student ID #1 profile updated by admin.', 'info', 0, '2025-10-13 05:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `qualification_name` varchar(255) NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `year_completed` varchar(10) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `user_id`, `qualification_name`, `institution`, `year_completed`, `description`, `created_at`) VALUES
(1, 1, 'It', 'uni', '2024', '111', '2025-10-13 05:20:11'),
(2, 1, 'ㅇㅁㄴ', 'ㅇㅁㄴ', 'ㅇㅁㄴ', 'ㅇㅁㄴ', '2025-10-15 05:22:19'),
(3, 1, 'ㅇㅁㄴ', 'ㅇㅁㄴ', 'ㅇㅁㄴ', 'ㅇㅁㄴ', '2025-10-15 05:22:43'),
(4, 1, 'data', 'uni', '2025', 'ddd', '2025-10-15 05:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `target_type` enum('skill','profile','review','other') DEFAULT 'other',
  `target_id` int DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `status` enum('pending','reviewed','resolved') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `target_type`, `target_id`, `reason`, `status`, `created_at`) VALUES
(2, 6, 'profile', 1, 'Fake name used on profile', 'pending', '2025-10-12 06:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int NOT NULL,
  `requester_id` int NOT NULL,
  `accepted_by` int DEFAULT NULL,
  `provider_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `status` enum('pending','accepted','rejected','completed','cancelled') DEFAULT 'pending',
  `hours` int NOT NULL,
  `message` text,
  `preferred_date` datetime DEFAULT NULL,
  `preferred_datetime` datetime DEFAULT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `booked_for` datetime DEFAULT NULL,
  `requested_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `requester_confirm` tinyint(1) DEFAULT '0',
  `provider_confirm` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `request_id` int DEFAULT NULL,
  `reviewer_id` int DEFAULT NULL,
  `reviewed_user_id` int DEFAULT NULL,
  `rating` tinyint NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `request_id`, `reviewer_id`, `reviewed_user_id`, `rating`, `comment`, `created_at`) VALUES
(1, NULL, 1, 6, 5, 'haha', '2025-10-13 04:48:39'),
(2, NULL, 1, 6, 5, 'haha', '2025-10-13 04:50:26'),
(3, NULL, 1, 6, 5, '123', '2025-10-13 04:50:31'),
(4, NULL, 1, 6, 5, '121', '2025-10-15 05:14:28'),
(5, NULL, 6, 1, 5, 'Best', '2025-10-15 05:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int NOT NULL,
  `skill_id` int DEFAULT NULL,
  `requester_id` int NOT NULL,
  `accepted_by` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `duration_hours` int NOT NULL DEFAULT '1',
  `urgency` varchar(32) DEFAULT NULL,
  `preferred_datetime` datetime DEFAULT NULL,
  `message` text,
  `status` enum('pending','accepted','rejected','completed','cancelled','disputed','expired') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `skill_id`, `requester_id`, `accepted_by`, `provider_id`, `subject`, `duration_hours`, `urgency`, `preferred_datetime`, `message`, `status`, `created_at`, `updated_at`) VALUES
(13, NULL, 2, NULL, 1, 'Tutoring', 2, 'Normal', '2025-10-17 19:49:00', 'Eftegwe', 'accepted', '2025-10-14 09:19:13', NULL),
(15, NULL, 2, NULL, 1, 'Resume Review', 2, 'Normal', '2025-10-22 20:07:00', 'Rtkn2ti4', 'accepted', '2025-10-14 09:37:39', NULL),
(17, NULL, 1, NULL, NULL, 'Resume Review', 3, 'Urgent', '2025-10-15 02:05:00', 'Help with Resume.', 'expired', '2025-10-14 14:07:59', NULL),
(18, NULL, 1, NULL, NULL, 'Tutoring', 2, 'Normal', '2025-10-15 01:28:00', 'Help', 'expired', '2025-10-14 14:58:55', NULL),
(19, NULL, 1, NULL, 2, 'Coding Help', 1, 'Normal', '2025-10-15 02:30:00', 'Help With JavaScript.', 'completed', '2025-10-14 15:32:30', NULL),
(20, NULL, 1, NULL, NULL, 'Essay Proofreading', 2, 'Normal', '2025-10-23 13:13:00', 'Help', 'pending', '2025-10-15 02:43:23', NULL),
(21, NULL, 1, NULL, NULL, 'Essay Proofreading', 1, 'Normal', '2025-10-29 15:01:00', 'Jbhbj', 'pending', '2025-10-15 04:31:38', NULL),
(22, NULL, 1, NULL, NULL, 'Resume Review', 2, 'Normal', '2025-10-20 15:08:00', '3r3', 'pending', '2025-10-15 04:38:22', NULL),
(24, NULL, 6, NULL, 1, 'Tutoring', 2, 'Normal', '2025-10-17 16:34:00', '1=Math', 'accepted', '2025-10-15 06:04:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `skill_name` varchar(150) NOT NULL,
  `description` text,
  `category` varchar(100) DEFAULT NULL,
  `type` enum('academic','non-academic') DEFAULT 'non-academic',
  `popularity` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `user_id`, `skill_name`, `description`, `category`, `type`, `popularity`, `created_at`) VALUES
(8, 1, 'sleeping', 'how to go to sleep quickly', 'Communi', 'non-academic', 0, '2025-10-10 08:58:11'),
(9, 1, 'Sing', 'How to make the song', '', 'non-academic', 0, '2025-10-13 06:11:56'),
(23, 1, 'addsdaddasd', 'ㅇㄴㅁㅇㄴㅁㄴㅁㅇㅇㄴasdasdasdasdadasd', 'Career Skills', 'academic', 0, '2025-10-14 08:45:44'),
(24, 1, 'addsdaddasd', 'ㅇㄴㅁㅇㄴㅁㄴㅁㅇㅇㄴasdasdasdasdadasd', 'Career Skills', 'academic', 0, '2025-10-14 08:48:34'),
(25, 1, 'addsdaddasd', 'ㅇㄴㅁㅇㄴㅁㄴㅁㅇㅇㄴasdasdasdasdadasd', 'Career Skills', 'academic', 0, '2025-10-14 08:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `skill_categories`
--

CREATE TABLE `skill_categories` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skill_categories`
--

INSERT INTO `skill_categories` (`id`, `name`, `description`, `created_at`) VALUES
(2, 'Programming', 'Coding and software development skills', '2025-10-13 03:11:14'),
(3, 'Graphic Design', 'Creative and digital design skills', '2025-10-13 03:11:14'),
(4, 'Languages', 'Language learning and cultural exchange', '2025-10-13 03:11:14'),
(5, 'Career Skills', 'Professional communication and career development', '2025-10-13 03:11:14'),
(6, 'Health & Fitness', 'Physical and mental well-being activities', '2025-10-13 03:11:14'),
(7, 'Cooking', 'Food preparation and culinary skills', '2025-10-13 03:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `skill_topics`
--

CREATE TABLE `skill_topics` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skill_topics`
--

INSERT INTO `skill_topics` (`id`, `category_id`, `name`, `description`, `created_at`) VALUES
(1, 6, 'Weight', 'How to do Weight', '2025-10-13 03:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `request_id` int DEFAULT NULL,
  `from_user` int NOT NULL,
  `to_user` int NOT NULL,
  `credits` int DEFAULT NULL,
  `type` enum('earn','spend','adjust','refund','freeze') DEFAULT 'earn',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `request_id`, `from_user`, `to_user`, `credits`, `type`, `created_at`) VALUES
(7, 24, 6, 1, 1, 'earn', '2025-10-15 06:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `trust_logs`
--

CREATE TABLE `trust_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `change_amount` int DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trust_logs`
--

INSERT INTO `trust_logs` (`id`, `user_id`, `change_amount`, `reason`, `created_at`) VALUES
(1, 1, -1, 'wrong contents', '2025-10-12 14:13:18'),
(2, 1, 1, 'back', '2025-10-12 14:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('student','admin') DEFAULT 'student',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `fuss_credits` decimal(10,2) DEFAULT '0.00',
  `degree` varchar(100) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `bio` text,
  `profile_pic` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT '0.00',
  `trust_score` int DEFAULT '100',
  `violation_count` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_frozen` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `role`, `status`, `fuss_credits`, `degree`, `year`, `profile_image`, `bio`, `profile_pic`, `availability`, `rating`, `trust_score`, `violation_count`, `created_at`, `is_frozen`) VALUES
(1, 'Esther Kim', 'kim1060@flinders.edu.au', '$2y$10$cqM5GwNMk76gla8qRTzE2upJqQAZnXgBLwBhrB3.7nDHvYcaA89wu', 'student', 0, 114.00, 'Data Analysis', 3, 'uploads/1760270341_IMG_3560.jpeg', 'hahga', 'user_1_1760333593.jpeg', 'Weekday Evening (6pm-9pm)', 0.00, 100, 1, '2025-09-17 07:16:47', 0),
(6, 'Nathan Bross', 'nathan.bross@hotmail.com', '$2y$10$glgNcHkdPhLmxCAQ603Sa.Xs/Rv0j9nZ/Ts63eUqrGBDIRDA8Eu0a', 'student', 0, 75.00, 'animal', 3, 'uploads/1760270384_IMG_3777.jpeg', '', NULL, 'Weekday Morning (9am-12pm)', 0.00, 100, 0, '2025-10-10 11:49:03', 0),
(8, 'Naomi willson', 'naomi@flinders.edu.au', '$2y$10$1I4.tC3S5kWEdbhyIydst.QcbhGWyKH75mnmUvnAFog.WYt6bG9tK', 'student', 0, 12.00, 'animal science', 1, 'uploads/1760270646_IMG_3865.jpeg', NULL, NULL, NULL, 0.00, 100, 0, '2025-10-10 13:25:55', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_student_id` (`student_id`),
  ADD KEY `idx_admin_id` (`admin_id`);

--
-- Indexes for table `credit_policies`
--
ALTER TABLE `credit_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `moderation_logs`
--
ALTER TABLE `moderation_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `dispute_id` (`dispute_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requester_id` (`requester_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `fk_reviewed_user` (`reviewed_user_id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_id` (`skill_id`),
  ADD KEY `requester_id` (`requester_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skill_categories`
--
ALTER TABLE `skill_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_topics`
--
ALTER TABLE `skill_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `from_user` (`from_user`),
  ADD KEY `to_user` (`to_user`);

--
-- Indexes for table `trust_logs`
--
ALTER TABLE `trust_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credit_logs`
--
ALTER TABLE `credit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `credit_policies`
--
ALTER TABLE `credit_policies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `moderation_logs`
--
ALTER TABLE `moderation_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `skill_categories`
--
ALTER TABLE `skill_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skill_topics`
--
ALTER TABLE `skill_topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trust_logs`
--
ALTER TABLE `trust_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD CONSTRAINT `fk_credit_logs_admin` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_credit_logs_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `disputes`
--
ALTER TABLE `disputes`
  ADD CONSTRAINT `disputes_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`);

--
-- Constraints for table `moderation_logs`
--
ALTER TABLE `moderation_logs`
  ADD CONSTRAINT `moderation_logs_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`),
  ADD CONSTRAINT `moderation_logs_ibfk_2` FOREIGN KEY (`dispute_id`) REFERENCES `disputes` (`id`);

--
-- Constraints for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`requester_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_ibfk_3` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviewed_user` FOREIGN KEY (`reviewed_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `skill_topics`
--
ALTER TABLE `skill_topics`
  ADD CONSTRAINT `skill_topics_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `skill_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `trust_logs`
--
ALTER TABLE `trust_logs`
  ADD CONSTRAINT `trust_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
