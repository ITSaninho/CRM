-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 05 2018 г., 21:21
-- Версия сервера: 5.7.19
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `balance`
--

CREATE TABLE `balance` (
  `balance_id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `balance_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `balance`
--

INSERT INTO `balance` (`balance_id`, `teams_id`, `balance_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, '2017-11-08 22:00:00', '2017-11-08 22:00:00'),
(2, 2, 0.00, '2017-11-08 22:00:00', '2017-11-08 22:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `cards_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `done` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`cards_id`, `name`, `description`, `user_id`, `task_id`, `deadline`, `done`, `created_at`, `updated_at`) VALUES
(26, 'testttttttttttt1', 'Description lalallala', '5', '2', '2017-11-27', '0', '2017-11-16 11:25:35', '2017-11-30 12:05:54'),
(27, 'dfgdfghhhhh', '', '5', '2', '2017-05-10', '0', '2017-11-16 11:25:42', '2017-11-16 11:25:42'),
(28, 'fghfgh', '', '5', '76', '2017-10-29', '0', '2017-11-16 11:26:30', '2017-11-16 11:26:30'),
(37, 'llllllllll', '', '5', '76', '2017-11-14', '0', '2017-11-16 11:55:43', '2017-11-16 11:55:43'),
(38, 'jghjghj', '', '5', '2', '2017-10-19', '0', '2017-11-16 12:16:25', '2017-11-16 12:16:25'),
(40, 'fgdgdfgdfhhhhhhhh', 'dsfsdfj', '5', '2', '', '0', '2017-11-16 12:17:44', '2017-11-19 22:08:42'),
(41, '1234', 'description test', '5', '67', '2017-11-24', '0', '2017-11-16 12:21:14', '2017-12-05 08:31:45'),
(42, 'dsfsdfsd fds fds', '', '5', '75', '', '0', '2017-11-16 12:21:21', '2017-11-16 12:21:21'),
(45, 'fddfdfd', '', '5', '67', '2017-11-29', '0', '2017-11-16 13:54:43', '2017-11-16 13:54:43'),
(49, 'new card1', '', '5', '67', '', '0', '2017-12-01 12:56:14', '2017-12-01 12:56:14'),
(50, 'new card2', '', '5', '67', '', '0', '2017-12-01 12:57:16', '2017-12-01 12:57:16'),
(53, 'card12', 'description1', '5', '80', '2017/12/13 7:11', '1', '2017-12-05 12:21:55', '2017-12-11 09:12:15'),
(55, 'jhjgh', '', '5', '80', '', '1', '2017-12-07 08:09:51', '2017-12-07 17:26:59'),
(56, 'jhjgh', '', '5', '80', '', '0', '2017-12-07 08:09:52', '2017-12-07 08:09:52'),
(57, 'jhjgh', '', '5', '80', '', '0', '2017-12-07 08:09:53', '2017-12-07 08:09:53'),
(58, 'jhjgh', '', '5', '80', '', '0', '2017-12-07 08:09:53', '2017-12-07 08:09:53'),
(59, 'jhjghuhgjg', '', '5', '80', '', '0', '2017-12-07 08:10:02', '2017-12-07 08:10:02'),
(60, 'dsfsdf', '', '5', '80', '', '0', '2017-12-07 12:24:34', '2017-12-07 12:24:34'),
(61, 'Test card', '', '5', '80', '', '0', '2017-12-11 11:17:19', '2017-12-11 11:17:19'),
(64, 'card222222222', '', '5', '82', '', '0', '2017-12-12 08:31:14', '2017-12-12 08:31:14'),
(67, 'fsdf', '', '5', '82', '', '0', '2017-12-13 08:35:09', '2017-12-13 08:35:09'),
(71, '1', '', '5', '98', '', '0', '2017-12-13 09:10:08', '2017-12-13 09:10:08'),
(72, 'jgjh', 'vgvvnb', '5', '109', '2017/12/21 00:23', '0', '2017-12-21 21:23:51', '2017-12-21 21:24:28');

-- --------------------------------------------------------

--
-- Структура таблицы `cards_comments`
--

CREATE TABLE `cards_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `cards_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cards_comments`
--

INSERT INTO `cards_comments` (`id`, `cards_id`, `users_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 27, 5, 'gfhfghfgh', '2017-11-21 13:28:45', '2017-11-21 13:28:45'),
(2, 27, 5, 'bvbcv', '2017-11-21 13:33:06', '2017-11-21 13:33:06'),
(4, 27, 5, 'bnvbnvbn', '2017-11-21 13:34:27', '2017-11-21 13:34:27'),
(6, 27, 5, 'hgjghjghjg df gdfgd', '2017-11-21 13:34:51', '2017-11-21 13:34:51'),
(34, 27, 5, 'rrrrrrr', '2017-11-22 07:21:33', '2017-11-22 07:21:33'),
(44, 27, 5, '54343', '2017-11-22 07:31:36', '2017-11-22 07:31:36'),
(59, 26, 5, 'dfgfdgdf', '2017-11-22 12:29:17', '2017-11-22 12:29:17'),
(60, 26, 5, '333333333333', '2017-11-22 12:29:20', '2017-11-22 12:29:20'),
(61, 26, 5, 'reter', '2017-11-22 13:06:24', '2017-11-22 13:06:24'),
(62, 26, 5, 'rrrrrrrrrrr', '2017-11-22 13:06:24', '2017-11-22 13:06:24'),
(63, 26, 5, 'dgd', '2017-11-22 13:06:42', '2017-11-22 13:06:42'),
(64, 41, 5, 'helloooooooooooooo', '2017-11-23 09:53:24', '2017-11-23 09:53:24'),
(66, 26, 5, 'ffd', '2017-11-23 14:19:56', '2017-11-23 14:19:56'),
(67, 26, 5, 'gfdgdfgd', '2017-11-26 11:32:02', '2017-11-26 11:32:02'),
(68, 26, 5, 'hfghfffffffffff', '2017-11-27 11:49:46', '2017-11-27 11:49:46'),
(69, 26, 5, '22222', '2017-11-27 11:52:16', '2017-11-27 11:52:16'),
(70, 26, 5, '44444', '2017-11-27 12:38:34', '2017-11-27 12:38:34'),
(71, 38, 5, 'aaaaaaaa', '2017-11-29 12:28:09', '2017-11-29 12:28:09'),
(72, 41, 5, 'hello', '2017-12-04 14:06:09', '2017-12-04 14:06:09'),
(74, 53, 5, 'new comment1', '2017-12-05 12:48:45', '2017-12-05 12:48:45'),
(75, 53, 5, 'new 2', '2017-12-05 12:48:50', '2017-12-05 12:48:50'),
(76, 53, 5, 'new comment', '2017-12-05 12:52:37', '2017-12-05 12:52:37'),
(77, 72, 5, 'hgjgjhh', '2017-12-21 21:24:00', '2017-12-21 21:24:00'),
(78, 72, 5, 'hhhhhhhhhhhhhhhhhh', '2017-12-21 21:24:05', '2017-12-21 21:24:05');

-- --------------------------------------------------------

--
-- Структура таблицы `cards_users`
--

CREATE TABLE `cards_users` (
  `cards_id` varchar(100) NOT NULL,
  `users_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cards_users`
--

INSERT INTO `cards_users` (`cards_id`, `users_id`, `created_at`, `updated_at`) VALUES
('26', '7', '2017-11-29 07:25:26', '2017-11-29 07:25:26'),
('26', '7', '2017-11-29 07:25:29', '2017-11-29 07:25:29'),
('26', '8', '2017-11-29 07:25:33', '2017-11-29 07:25:33'),
('26', '9', '2017-11-29 07:25:35', '2017-11-29 07:25:35'),
('27', '5', NULL, NULL),
('38', '8', NULL, NULL),
('40', '5', NULL, NULL),
('28', '8', NULL, NULL),
('28', '9', NULL, NULL),
('37', '5', NULL, NULL),
('27', '8', NULL, NULL),
('27', '9', NULL, NULL),
('27', '5', NULL, NULL),
('41', '5', '2017-12-01 13:47:25', '2017-12-01 13:47:25'),
('41', '8', '2017-12-01 13:47:27', '2017-12-01 13:47:27'),
('41', '9', '2017-12-01 13:47:28', '2017-12-01 13:47:28'),
('53', '7', '2017-12-05 12:50:24', '2017-12-05 12:50:24'),
('53', '5', '2017-12-07 18:09:45', '2017-12-07 18:09:45'),
('55', '5', NULL, NULL),
('61', '5', NULL, NULL),
('69', '5', NULL, NULL),
('69', '9', NULL, NULL),
('69', '7', NULL, NULL),
('53', '9', NULL, NULL),
('55', '7', NULL, NULL),
('72', '5', NULL, NULL),
('72', '7', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `checkboxes`
--

CREATE TABLE `checkboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `checklist_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `checkboxes`
--

INSERT INTO `checkboxes` (`id`, `checklist_id`, `title`, `status`, `deadline`, `created_at`, `updated_at`) VALUES
(20, '19', 'new1', '1', '', '2017-11-22 12:29:11', '2017-11-27 13:08:57'),
(22, '20', '2', '1', '', '2017-11-22 12:58:37', '2017-11-22 12:58:41'),
(23, '20', '3', '1', '', '2017-11-22 12:58:38', '2017-11-27 13:20:04'),
(24, '21', '123123', '1', '', '2017-11-22 13:06:55', '2017-12-04 08:32:52'),
(26, '19', '2', '1', '', '2017-11-22 13:20:37', '2017-11-30 12:06:22'),
(28, '19', '3', '0', '', '2017-11-22 13:20:50', '2017-11-27 13:25:20'),
(29, '21', 'wwwwwwwwwww', '1', '', '2017-11-22 13:21:04', '2017-12-01 13:43:25'),
(30, '22', '211212', '1', '', '2017-11-23 09:52:59', '2017-11-23 09:53:06'),
(34, '23', '1', '0', '', '2017-11-27 11:58:29', '2017-11-27 11:58:29'),
(36, '19', 'second item', '1', '', '2017-11-27 13:12:10', '2017-11-27 13:18:38'),
(38, '25', '1', '1', '', '2017-12-01 12:59:21', '2017-12-01 12:59:26'),
(40, '25', '3', '0', '', '2017-12-01 13:00:25', '2017-12-01 13:00:25'),
(41, '26', '1', '1', '', '2017-12-01 13:00:28', '2017-12-01 13:00:34'),
(42, '26', '8', '0', '', '2017-12-01 13:00:31', '2017-12-01 13:00:31'),
(45, '27', '1', '0', '', '2017-12-01 13:31:22', '2017-12-01 13:31:22'),
(46, '27', '2', '0', '2017/12/30 0:00', '2017-12-01 13:31:27', '2017-12-01 13:31:27'),
(49, '22', '3', '1', '', '2017-12-04 09:57:19', '2017-12-04 09:57:22'),
(53, '32', '1', '0', '2017/07/30 3:05', '2017-12-05 12:49:08', '2017-12-05 12:49:08'),
(54, '32', '2', '1', '2017/07/30 0:00', '2017-12-05 12:49:11', '2017-12-05 12:49:16'),
(67, '43', '1', '1', '2017/12/13 17:17', '2017-12-07 12:40:45', '2017-12-11 12:33:11'),
(69, '36', 'ВВффвів', '0', '2017-12-21T22:00:00.000Z', '2017-12-09 10:44:57', '2017-12-09 10:44:57'),
(70, '39', 'шшшшшшшшшшшшшш', '0', '2017-12-16T22:00:00.000Z', '2017-12-09 10:45:39', '2017-12-09 10:45:39'),
(93, '32', 'jjjjjjjjjjjj', '0', '2017/12/16 1:01', '2017-12-10 21:49:35', '2017-12-10 21:49:35'),
(94, '32', '888', '0', '2017/12/30 0:00', '2017-12-10 21:50:33', '2017-12-10 21:50:33'),
(95, '35', '111111111111', '0', '2017/12/13 17:17', '2017-12-11 09:12:52', '2017-12-11 09:12:52'),
(96, '36', 'lllllllllllllllllllllllllllll', '0', '2017/12/28 0:00', '2017-12-11 12:19:52', '2017-12-11 12:19:52'),
(169, '43', '3', '0', '', '2017-12-21 08:22:39', '2017-12-21 08:22:39'),
(170, '45', 'q', '0', '', '2017-12-21 08:31:05', '2017-12-21 08:31:05'),
(171, '45', '1', '0', '', '2017-12-21 08:31:14', '2017-12-21 08:31:14'),
(172, '46', '1', '1', '', '2017-12-21 21:24:47', '2017-12-21 21:25:05'),
(173, '46', '2', '0', '2017/12/22 00:23', '2017-12-21 21:25:02', '2017-12-21 21:25:02');

-- --------------------------------------------------------

--
-- Структура таблицы `checkboxes_users`
--

CREATE TABLE `checkboxes_users` (
  `checkboxes_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `checkboxes_users`
--

INSERT INTO `checkboxes_users` (`checkboxes_id`, `users_id`) VALUES
('32', '8'),
('32', '9'),
('32', '7'),
('92', '7'),
('92', '5'),
('92', '7'),
('92', '5'),
('93', '7'),
('93', '5'),
('93', '7'),
('93', '7'),
('93', '5'),
('94', '7'),
('94', '5'),
('95', '7'),
('95', '5'),
('96', '7'),
('96', '5'),
('97', '5'),
('97', '8'),
('98', '5'),
('98', '8'),
('99', '5'),
('99', '8'),
('100', '5'),
('100', '8'),
('101', '5'),
('102', '5'),
('102', '8'),
('104', '5'),
('104', '8'),
('111', '7'),
('111', '5'),
('125', '5'),
('127', '7'),
('127', '5'),
('137', '5'),
('138', '5'),
('138', '7'),
('139', '5'),
('139', '7'),
('145', '5'),
('145', '8'),
('146', '5'),
('148', '8'),
('149', ''),
('149', '8'),
('149', '5'),
('150', ''),
('150', '5'),
('150', '8'),
('151', '8'),
('151', '5'),
('152', '5'),
('152', '8'),
('154', '5'),
('154', '8'),
('155', '5'),
('158', '5'),
('159', '8'),
('169', '5'),
('171', '5'),
('173', '5'),
('173', '7');

-- --------------------------------------------------------

--
-- Структура таблицы `checklists`
--

CREATE TABLE `checklists` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cards_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `checklists`
--

INSERT INTO `checklists` (`id`, `title`, `users_id`, `cards_id`, `created_at`, `updated_at`) VALUES
(19, 'cheklist1', '5', '26', '2017-11-22 12:29:01', '2017-11-22 12:29:01'),
(20, 'cheklist2', '5', '26', '2017-11-22 12:58:28', '2017-11-22 12:58:28'),
(21, 'cheklist3', '5', '41', '2017-11-23 09:52:46', '2017-11-23 09:52:46'),
(22, 'cheklist4', '5', '41', '2017-11-23 09:52:53', '2017-11-23 09:52:53'),
(23, 'cheklist5', '5', '26', '2017-11-27 11:58:22', '2017-11-27 11:58:22'),
(24, 'New checklist', '5', '26', '2017-11-27 13:12:44', '2017-11-27 13:12:44'),
(25, 'new cheklist', '5', '45', '2017-12-01 12:58:48', '2017-12-01 12:58:48'),
(26, 'daaaaaaaaaa', '5', '45', '2017-12-01 12:59:14', '2017-12-01 12:59:14'),
(27, 'checklist1111', '5', '49', '2017-12-01 13:31:16', '2017-12-01 13:31:16'),
(29, 'авіа', '5', '50', '2017-12-01 13:53:19', '2017-12-01 13:53:19'),
(30, 'new cheklist', '5', '41', '2017-12-04 14:10:56', '2017-12-04 14:10:56'),
(32, 'cheklist1236', '5', '53', '2017-12-05 12:49:05', '2017-12-11 08:36:06'),
(35, 'list1', '5', '53', '2017-12-07 12:32:38', '2017-12-07 12:32:38'),
(36, '123', '5', '53', '2017-12-07 12:33:53', '2017-12-07 12:33:53'),
(37, 'daaa', '5', '53', '2017-12-07 12:34:19', '2017-12-07 12:34:19'),
(38, 'asdas', '5', '53', '2017-12-07 12:34:24', '2017-12-07 12:34:24'),
(39, 'fsdfsd', '5', '53', '2017-12-07 12:34:50', '2017-12-07 12:34:50'),
(40, 'gdfg', '5', '53', '2017-12-07 12:34:56', '2017-12-07 12:34:56'),
(41, 'fgdfgd', '5', '53', '2017-12-07 12:34:59', '2017-12-07 12:34:59'),
(42, 'lllllllllllhjh', '5', '53', '2017-12-07 12:38:00', '2017-12-07 12:38:00'),
(44, 'dfgdfg', '5', '56', '2017-12-07 12:39:33', '2017-12-07 12:39:33'),
(45, 'dsfd', '5', '55', '2017-12-07 12:42:14', '2017-12-07 12:42:14'),
(46, 'ghgh', '5', '72', '2017-12-21 21:24:20', '2017-12-21 21:24:20');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(10) UNSIGNED NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency_sign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency_main` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `customer_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `extra_phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `bank_account` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extra_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `invoice_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `send_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `send_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `send_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `send_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `send_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`customer_id`, `company_name`, `contact_person`, `customer_type`, `phone_number`, `extra_phone_number`, `bank_account`, `nip`, `email`, `extra_email`, `website`, `fb_link`, `created_at`, `updated_at`, `invoice_street`, `invoice_town`, `invoice_province`, `invoice_post_code`, `invoice_region`, `send_street`, `send_town`, `send_province`, `send_post_code`, `send_region`, `description`) VALUES
(1, 'firma1', 'sfdsfdsf', '0', '+45435656456', '+34656456', 43343, '5435345', 'itsaninho@gmail.com', 'extraitsaninho@gmail.com', 'www.google.com', 'linkkkkkkkkk', '2017-11-08 11:12:20', '2017-11-08 11:12:20', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', 'fffffffffffgfdg df gdf g df'),
(2, 'firma2', 'sfdsfdsf', '0', '+45435fds656456', '+546546', 434343, '5435345', 'itsaniffffffffnho@gmail.com', 'extra_fdsf@gmail.com', 'www.google.com', 'linkkkkkkkkk', '2017-11-08 11:12:20', '2017-11-08 11:12:20', 'soborna12', 'rivne12', 'rivnenska12', '4444456', 'rivnenskoy12', 'soborna12', 'rivne12', 'rivnenska12', '654645', 'rivnenskoy12', 'd f dg fffffffffffff gdf gd'),
(3, 'firma1', '', '0', '0', '0', 0, '', '', '', '', '', '2017-11-27 07:22:30', '2017-11-27 07:22:30', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'firma1', '', '0', '0', '0', 0, '', '', '', '', '', '2017-11-27 07:53:58', '2017-11-27 07:53:58', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'firma1', '', '0', '0', '0', 0, '', '', '', '', '', '2017-11-27 07:54:01', '2017-11-27 07:54:01', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `customers_comments`
--

CREATE TABLE `customers_comments` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_text` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `customers_teams`
--

CREATE TABLE `customers_teams` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers_teams`
--

INSERT INTO `customers_teams` (`customer_id`, `teams_id`) VALUES
(1, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `customers_users`
--

CREATE TABLE `customers_users` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `customers_users`
--

INSERT INTO `customers_users` (`customer_id`, `users_id`) VALUES
(1, 5),
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `descs`
--

CREATE TABLE `descs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `descs`
--

INSERT INTO `descs` (`id`, `name`, `team_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'second desc', '2', '7', NULL, NULL),
(3, 'new desc', '2', '5', '2017-12-12 08:59:45', '2017-12-12 08:59:45'),
(4, 'new desc2', '2', '5', '2017-12-12 08:59:53', '2017-12-12 08:59:53'),
(5, 'туццццц', '2', '5', '2017-12-12 10:38:35', '2017-12-12 10:38:35'),
(6, 'ввввввв', '2', '5', '2017-12-12 10:39:40', '2017-12-12 10:39:40'),
(7, 'gdfgdfg', '2', '5', '2017-12-13 09:14:47', '2017-12-13 09:14:47');

-- --------------------------------------------------------

--
-- Структура таблицы `finances`
--

CREATE TABLE `finances` (
  `finances_id` int(10) UNSIGNED NOT NULL,
  `finances_customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_payment_method` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `finances_paid` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `finances_total_amount` double(6,2) UNSIGNED NOT NULL,
  `finances_issue_date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_payment_date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_assign_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_invoice_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_invoice_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_invoice_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_invoice_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_invoice_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_send_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_send_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_send_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_send_post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `finances_send_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `finances`
--

INSERT INTO `finances` (`finances_id`, `finances_customer_name`, `finances_number`, `finances_payment_method`, `finances_paid`, `finances_total_amount`, `finances_issue_date`, `finances_payment_date`, `finances_assign_to`, `finances_invoice_street`, `finances_invoice_town`, `finances_invoice_province`, `finances_invoice_post_code`, `finances_invoice_region`, `finances_send_street`, `finances_send_town`, `finances_send_province`, `finances_send_post_code`, `finances_send_region`, `created_at`, `updated_at`) VALUES
(1, 'firma1', '1/2017', '0', '0', 43.00, '2017-11-08', '2017-11-08', '2', 'soborna32', 'rivne', 'rivnenska oblast', '6546', 'rivnenska oblast', 'soborna 2323', 'rivne', 'rivnenska oblast', '6546', 'rivnenska oblast', '2017-11-08 11:14:06', '2017-11-08 11:14:06'),
(2, 'firma1', '2/2017', '0', '0', 3434.00, '2017-11-09', '2017-11-05', '2', 'soborna325', 'rivne1', 'rivnenska oblast1', '65465', 'rivnenska oblast1', 'soborna 23', 'rivne1', 'rivnenska oblast1', '434343', '', '2017-11-09 13:45:21', '2017-11-09 13:45:21'),
(3, 'firma1', '11/2017', '0', '0', 32.00, '2017-11-10', '2017-11-10', '2', 'soborna324', 'rivne2', 'rivnenska oblast2', '654643', 'rivnenska oblast2', 'soborna 1', 'rivne2', 'rivnenska oblast2', '4343', 'rivnenska oblast', '2017-11-10 07:42:55', '2017-11-23 11:09:54'),
(4, 'firma1', '13/2017', '0', '0', 3087.57, '2017-11-10', '2017-11-10', '2', 'soborna12', 'rivne12', 'rivnenska12', '5465462', 'rivnenskoy12', 'soborna13', 'rivne13', 'rivnenska13', '4353453', 'rivnenskoy13', '2017-11-10 08:22:38', '2017-11-23 11:28:36'),
(5, 'firma1', '5/2017', '0', '0', 30.40, '2017-11-17', '2017-11-17', '2', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-17 08:55:14', '2017-11-17 08:55:14'),
(6, 'firma1', '6/2017', '0', '0', 33.66, '2017-11-17', '2017-11-17', '2', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-17 08:57:08', '2017-11-17 08:57:08'),
(7, 'firma1', '7/2017', '0', '0', 42.14, '2017-11-17', '2017-11-17', '2', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-17 09:02:00', '2017-11-17 09:02:00'),
(8, 'firma1', '8/2017', '0', '0', 426.30, '2017-11-17', '2017-11-17', '2', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-17 09:03:44', '2017-11-17 09:03:44'),
(9, 'firma1', '9/2017', '0', '0', 331.74, '2017-11-17', '2017-11-17', '2', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-17 09:05:15', '2017-11-17 09:05:15'),
(10, 'firma1', '5/2017', '0', '0', 32.00, '2017-11-26', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 09:14:39', '2017-11-23 09:14:39'),
(11, 'firma1', '12/2017', '0', '0', 5545.73, '2017-11-23', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 11:11:05', '2017-11-24 14:13:52'),
(12, 'firma1', '13/2017', '0', '0', 5675.06, '2017-11-23', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 11:12:26', '2017-11-23 12:51:06'),
(13, 'firma1', '14/2017', '0', '0', 2025.58, '2017-11-23', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 11:29:27', '2017-11-23 12:10:27'),
(14, 'firma1', '14/2017', '0', '0', 3232.00, '2017-11-23', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 11:47:31', '2017-11-23 11:47:31'),
(15, 'firma1', '15/2017', '0', '0', 4444.00, '2017-11-23', '2017-11-23', '5', 'soborna1', 'rivne1', 'rivnenska1', '546546', 'rivnenskoy1', 'soborna1', 'rivne1', 'rivnenska1', '435345', 'rivnenskoy1', '2017-11-23 11:53:16', '2017-11-23 11:53:16');

-- --------------------------------------------------------

--
-- Структура таблицы `finances_products`
--

CREATE TABLE `finances_products` (
  `finances_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `finances_products`
--

INSERT INTO `finances_products` (`finances_id`, `products_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 0),
(6, 0),
(7, 0),
(8, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(12, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 16),
(15, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `finances_registered`
--

CREATE TABLE `finances_registered` (
  `registered_id` int(10) UNSIGNED NOT NULL,
  `teams_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registered_finances_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_finances_netto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_finances_brutto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_payment_method` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registered_paid` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registered_issue_date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_payment_date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_assign_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_order_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_bank_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `finances_registered`
--

INSERT INTO `finances_registered` (`registered_id`, `teams_id`, `registered_finances_number`, `registered_customer_name`, `registered_subject`, `registered_finances_netto`, `registered_finances_brutto`, `registered_payment_method`, `registered_paid`, `registered_issue_date`, `registered_payment_date`, `registered_assign_to`, `registered_bank_account`, `registered_order_title`, `registered_bank_nip`, `registered_bank_name`, `registered_bank_street`, `registered_bank_town`, `registered_bank_postcode`, `registered_bank_region`, `registered_description`, `created_at`, `updated_at`) VALUES
(1, '0', '24324', 'ertret', 'retrr', 'trrrrrrrrr', 'trete', '0', '0', '2017-11-06', '2017-11-09', 'assingn to1', 'bank_account1', 'oreder title1', '4546546', 'bank_name1', 'soborna1', 'rivn1', '75675', 'rivnee', 'descriptionssss', '2017-11-09 22:00:00', '2017-11-09 22:00:10'),
(2, '2', 'gfh', 'firma1', 'fdsf', '32', '43343', '', '1', '2017-11-06', '2017-11-09', '2', 'bank_account12', 'oreder title12', '5435345', 'bank_name2', 'soborna2', 'rivn12', '67567', 'rivne2', 'descriptionssss5547', '2017-11-09 13:46:26', '2017-11-15 10:09:03');

-- --------------------------------------------------------

--
-- Структура таблицы `finances_teams`
--

CREATE TABLE `finances_teams` (
  `finances_id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `finances_teams`
--

INSERT INTO `finances_teams` (`finances_id`, `teams_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `lists_users`
--

CREATE TABLE `lists_users` (
  `lists_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lists_users`
--

INSERT INTO `lists_users` (`lists_id`, `users_id`) VALUES
('2', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2017_04_05_133438_add_users_active_in_users', 1),
(3, '2017_04_14_110400_create_teams_table', 1),
(4, '2017_04_14_110656_create_users_teams_table', 1),
(5, '2017_04_18_092807_add_users_avatar_field', 1),
(6, '2017_05_03_131231_create_notifications_table', 1),
(7, '2017_05_08_083453_add_teams_invite_and_teams_approved_fields', 1),
(8, '2017_05_09_090959_create_plugins_table', 1),
(9, '2017_05_09_091609_create_plugins_teams_table', 1),
(10, '2017_05_10_071833_create_currency_table', 1),
(11, '2017_05_13_090347_create_balance_table', 2),
(12, '2017_05_16_140924_add_plugins_icon_field', 2),
(13, '2017_10_09_112347_create_customers_table', 2),
(14, '2017_10_09_123157_add_address_and_customer_type_columns', 2),
(15, '2017_10_10_100120_add_comments_column_to_customers_table', 2),
(16, '2017_10_10_133619_add_teams_id_column_to_customers_table', 2),
(17, '2017_10_12_150259_rename_id_column_and_remove_teams_id_column_in_customers_table', 2),
(18, '2017_10_12_153337_create_customers_teams_table', 2),
(19, '2017_10_16_103957_change_phone_number_column_lenght', 2),
(20, '2017_10_16_162101_add_description_column_to_customers_table', 2),
(21, '2017_10_17_163033_create_customers_comments_table', 2),
(22, '2017_10_17_165623_remove_comments_column_from_customers_table', 2),
(23, '2017_10_17_180419_rename_user_id_column_in_customers_comments_table', 2),
(24, '2017_10_18_121124_add_author_column_to_customers_comments_table', 2),
(25, '2017_10_18_125520_add_users_first_name_and_users_last_name_columns_to_users_table', 2),
(26, '2017_10_23_151808_create_customers_users_table', 2),
(27, '2017_10_23_175755_remove_assign_to_column_in_customers_table', 2),
(28, '2017_10_30_115405_add_teams_fields_to_teams_table', 2),
(29, '2017_10_30_132949_rename_teams_send_post_code_column', 2),
(30, '2017_10_30_164012_remove_old_finances_table', 2),
(31, '2017_10_30_165218_create_finances_table', 2),
(32, '2017_10_30_183306_create_products_table', 2),
(33, '2017_10_31_121122_add_products_currency_column', 2),
(34, '2017_10_31_121809_change_column_types_of_products_cost_products_vat_amount_products_total_cost', 2),
(35, '2017_10_31_133354_create_finances_products_table', 2),
(36, '2017_10_31_143919_remove_products_id_column_from_finances_table', 2),
(37, '2017_10_31_152421_create_finances_teams_table', 2),
(38, '2017_11_02_140918_add_finances_total_amount_column_to_finances_table', 2),
(39, '2017_11_02_182425_add_finances_number_column_to_finances_table', 2),
(40, '2017_11_03_155508_add_discount_and_tax_column_to_products_table', 2),
(41, '2017_11_03_215959_create_finances_registered_table', 2),
(42, '2017_11_05_103618_add_teams_id_column_to_finances_registered_table', 2),
(43, '2017_11_06_102929_change_column_type_of_registered_bank_account', 2),
(44, '2017_11_06_134917_remove_address_mailbox_columns_in_customers_table', 2),
(45, '2017_11_06_135153_remove_address_mailbox_columns_in_finances_table', 2),
(46, '2017_11_06_135432_remove_address_mailbox_columns_in_teams_table', 2),
(48, '2017_11_13_144103_create_task_manager_table', 3),
(49, '2017_11_14_112912_create_task_table', 4),
(50, '2017_11_15_103823_create_task_list_table', 5),
(51, '2017_11_17_102952_add_colum_products_discount_amount_table', 6),
(52, '2017_11_17_104452_add_colum_products_discount_amount_and_products_vat_amount_table', 7),
(53, '2017_11_17_151513_rename_task_table', 8),
(54, '2017_11_17_151938_rename_task_list_table', 9),
(56, '2017_11_17_152139_add_column_from_card_table', 10),
(57, '2017_11_17_112638_add_products_cost_with_discount_column_to_products_table', 11),
(58, '2017_11_17_164903_add_products_vat_shipping_amount_column_to_products_table', 12),
(59, '2017_11_19_185605_create_cards_users_table', 13),
(60, '2017_11_19_190913_add_column_team_id_to_users_table', 14),
(61, '2017_11_19_203342_delete_column_team_id_from_users_table', 15),
(63, '2017_11_21_143837_create_cards_comments_table', 16),
(70, '2017_11_22_104231_create_checklist_table', 17),
(71, '2017_11_22_104402_create_checklist_value_table', 17),
(72, '2017_11_22_233630_add_column_to_cards_table', 18),
(73, '2017_11_27_115304_rename_column_id_on_cards_id_in_cards_table', 19),
(74, '2017_11_27_115704_drop_column_id_and_time_in_cards_table', 20),
(75, '2017_11_27_122303_rename_column_on_cards_id_and_users_id_in_cards_users_table', 21),
(76, '2017_11_27_124824_rename_card_id_and_comment_id_in_cards_comments_table', 22),
(77, '2017_11_27_125324_rename_column_card_id_and_user_id_in_checklist_table', 23),
(78, '2017_11_27_140152_rename_checklist_table', 24),
(79, '2017_11_27_140859_rename_checkboxes_table', 25),
(80, '2017_11_28_102423_add_column_create_at_and_updated_at_in_table', 26),
(81, '2017_11_28_131056_create_lists_users_table', 27),
(82, '2017_12_01_093029_add_column_position_to_table', 28),
(83, '2017_12_01_113736_add_column_teams_id_to_table', 29),
(85, '2017_12_07_022922_add_column_icon_color_to_users_table', 30),
(86, '2017_12_07_163714_add_column_done_to_cards_table', 31),
(87, '2017_12_08_144200_add_column_deadline_to_checkboxes_table', 32),
(88, '2017_12_08_145210_create_checkboxes_users_table', 33),
(89, '2017_12_09_190247_rename_column_in_checkboxes_users_table', 34),
(90, '2017_12_09_190635_rename_column_in_checkboxes_users_table2', 35),
(91, '2017_12_11_000542_create_decss_table', 36),
(92, '2017_12_11_001056_add_column_desc_id_to_cards_table', 37),
(93, '2017_12_11_001258_add_column_desc_id_to_tasks_lists_table', 38),
(94, '2017_12_11_001607_add_column_teams_id_to_descs_table', 39);

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--

CREATE TABLE `plugins` (
  `plugins_id` int(10) UNSIGNED NOT NULL,
  `plugins_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plugins_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plugins_price` double(6,2) NOT NULL DEFAULT '0.00',
  `plugins_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fa fa-cogs',
  `plugins_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plugins`
--

INSERT INTO `plugins` (`plugins_id`, `plugins_name`, `plugins_code`, `plugins_price`, `plugins_icon`, `plugins_config`, `created_at`, `updated_at`) VALUES
(1, 'Customers', 'customers', 0.00, 'fa fa-cogs', '', NULL, NULL),
(2, 'Finances', 'finances', 0.00, 'fa fa-cogs', '', NULL, NULL),
(3, 'Task Manager', 'task_manager', 0.00, 'fa fa-cogs', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `plugins_teams`
--

CREATE TABLE `plugins_teams` (
  `plugins_id` int(10) UNSIGNED NOT NULL,
  `teams_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plugins_teams`
--

INSERT INTO `plugins_teams` (`plugins_id`, `teams_id`) VALUES
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(3, 3),
(3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `products_id` int(10) UNSIGNED NOT NULL,
  `products_type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_amount` int(10) UNSIGNED NOT NULL,
  `products_currency` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_dimension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_cost` double NOT NULL,
  `products_discount_percent` double(6,2) UNSIGNED NOT NULL,
  `products_discount_regular` double(6,2) UNSIGNED NOT NULL,
  `products_discount_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_cost_with_discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_vat_percent` int(10) UNSIGNED NOT NULL,
  `products_shipping_price` double(6,2) UNSIGNED NOT NULL,
  `products_vat_shipping_percent` double(6,2) UNSIGNED NOT NULL,
  `products_vat_shipping_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `products_vat_amount` double NOT NULL,
  `products_total_cost` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`products_id`, `products_type`, `products_name`, `products_amount`, `products_currency`, `products_dimension`, `products_cost`, `products_discount_percent`, `products_discount_regular`, `products_discount_amount`, `products_cost_with_discount`, `products_vat_percent`, `products_shipping_price`, `products_vat_shipping_percent`, `products_vat_shipping_amount`, `products_vat_amount`, `products_total_cost`, `created_at`, `updated_at`) VALUES
(1, '0', 'tretert', 1, '0', '', 43, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 43, '2017-11-08 11:14:05', '2017-11-08 11:14:05'),
(2, '0', 'dfdsfsdf', 1, '0', '', 3434, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 3434, '2017-11-09 13:45:21', '2017-11-09 13:45:21'),
(3, '0', 'ghfghfg', 1, '0', '', 32, 0.00, 0.00, '0', '0', 0, 2.00, 4.50, '0', 0, 32, '2017-11-10 07:42:54', '2017-11-10 07:42:54'),
(4, '0', 'Product1', 3, '0', '', 443, 4.00, 0.00, '0', '0', 7, 4.00, 4.50, '0', 87.696, 1340.4959999999999, '2017-11-10 08:22:38', '2017-11-23 11:28:35'),
(5, '0', 'Product2', 54, '0', '', 454, 43.00, 0.00, '0', '0', 32, 4.00, 4.50, '0', 423.5328, 1747.0728, '2017-11-10 08:22:38', '2017-11-23 11:28:36'),
(6, '0', 'dfgdfg', 1, '0', '', 435, 2.00, 0.00, '8.7', '0', 0, 0.00, 4.50, '0', 0, 426.3, '2017-11-17 09:03:44', '2017-11-17 09:03:44'),
(7, '0', 'dgfdgdf', 1, '0', '', 342, 3.00, 0.00, '10.26', '0', 0, 0.00, 4.50, '0', 0, 331.74, '2017-11-17 09:05:15', '2017-11-17 09:05:15'),
(8, '0', 'dsfsdf', 1, '0', '', 32, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 32, '2017-11-23 09:14:38', '2017-11-23 09:14:38'),
(9, '0', 'Product1', 1, '0', '', 5445, 3.00, 0.00, '163.35', '5281.65', 5, 5.00, 4.50, '0', 264.0825, 5545.7325, '2017-11-23 11:11:05', '2017-11-24 14:13:51'),
(10, '0', 'Product1', 1, '0', 'fdfd', 4353, 54.00, 0.00, '29.16', '24.84', 65, 5.00, 4.50, '0', 16.146, 40.986000000000004, '2017-11-23 11:12:26', '2017-11-23 12:51:06'),
(11, '0', 'Product4', 1, '0', '', 12, 3.00, 0.00, '163.62', '5290.38', 6, 5.00, 4.50, '0', 317.4228, 5607.8028, '2017-11-23 11:12:26', '2017-11-23 12:27:11'),
(12, '0', 'Product2', 1, '0', '', 563, 54.00, 0.00, '30.24', '25.76', 2, 5.00, 4.50, '0', 0.5152, 26.2752, '2017-11-23 11:12:26', '2017-11-23 12:27:11'),
(13, '0', 'ff3333', 1, '0', '', 4343, 56.00, 0.00, '2432.08', '1910.92', 6, 0.00, 4.50, '0', 114.65520000000001, 2025.5752, '2017-11-23 11:29:27', '2017-11-23 12:07:18'),
(14, '0', 'sdfsdf', 1, '0', '', 3232, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 3232, '2017-11-23 11:47:31', '2017-11-23 11:47:31'),
(15, '0', 'dsddddddddddddd', 1, '0', '', 32323, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 32323, '2017-11-23 11:50:05', '2017-11-23 11:50:05'),
(16, '0', 'ddfdsf', 1, '0', '', 2121, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 2121, '2017-11-23 11:53:16', '2017-11-23 11:53:16'),
(17, '0', 'dfsfsdf', 1, '0', '', 2323, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 2323, '2017-11-23 11:53:16', '2017-11-23 11:53:16'),
(18, '0', 'dddddddddddddd', 1, '1', '', 4234234, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 4234234, '2017-11-23 11:56:39', '2017-11-23 11:56:39'),
(19, '0', 'ddddddddddddddddddaaaaaaaaaa', 1, '1', '', 324234, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 324234, '2017-11-23 11:56:39', '2017-11-23 11:56:39'),
(20, '0', 'sdfdsf', 1, '0', '', 32432, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 32432, '2017-11-23 11:59:35', '2017-11-23 11:59:35'),
(21, '0', 'aaaaaaa', 1, '0', '', 22, 0.00, 0.00, '0', '0', 0, 0.00, 4.50, '0', 0, 22, '2017-11-23 11:59:35', '2017-11-23 11:59:35');

-- --------------------------------------------------------

--
-- Структура таблицы `tasks_lists`
--

CREATE TABLE `tasks_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks_lists`
--

INSERT INTO `tasks_lists` (`id`, `name`, `desc_id`, `user_id`, `teams_id`, `position`, `created_at`, `updated_at`) VALUES
(82, 'tasklist2', '2', '5', '2', 1, '2017-12-12 07:23:11', '2018-02-05 17:07:42'),
(98, 'first list', '3', '5', '2', 0, '2017-12-13 09:10:03', '2017-12-13 09:10:03'),
(109, 'task1', '2', '5', '2', 0, '2017-12-21 11:58:23', '2018-02-05 17:07:42'),
(110, 'newtasklist1', '2', '5', '2', 2, '2017-12-21 23:26:17', '2018-02-05 17:07:40'),
(111, 'апрапр', '5', '5', '2', 7, '2017-12-22 08:35:52', '2017-12-22 08:35:52'),
(112, 'ddbfbdb', '6', '5', '2', 1, '2017-12-22 08:37:55', '2017-12-22 08:37:55'),
(113, 'hhhhhhhh', '6', '5', '2', 2, '2017-12-22 08:38:07', '2017-12-22 08:38:07'),
(114, 'fghfgh', '6', '5', '2', 3, '2017-12-22 08:43:56', '2017-12-22 08:43:56');

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `teams_id` int(10) UNSIGNED NOT NULL,
  `teams_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_extra_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_extra_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_bank_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_bank_account` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_fb_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_invoice_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_invoice_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_invoice_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_invoice_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_invoice_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_send_street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_send_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_send_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_send_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `teams_send_region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`teams_id`, `teams_name`, `teams_phone`, `teams_extra_phone`, `teams_email`, `teams_extra_email`, `teams_nip`, `teams_bank_name`, `teams_bank_account`, `teams_website`, `teams_fb_link`, `teams_invoice_street`, `teams_invoice_town`, `teams_invoice_province`, `teams_invoice_postcode`, `teams_invoice_region`, `teams_send_street`, `teams_send_town`, `teams_send_province`, `teams_send_postcode`, `teams_send_region`, `created_at`, `updated_at`) VALUES
(1, 'itsaninho', '30845654765', '45464567987', 'itsaninho@gmail.com', 'itsaninh4543o@gmail.com', '324325464', 'Privat', 'fdsfsdfsdf', 'www.dadad.com', '453656546546460', 'soborna', 'rivne', 'gfdgdf', '33016', 'fsdf', 'soborna', 'rivne', 'fdsf', '33016', 'dsfsdf', '2017-11-08 10:15:15', '2017-11-08 10:18:46'),
(2, 'Team 2', '5654645', '54353453453', 'itsani444444444nho@gmail.com', 'itsani44444444444nho@gmail.com', '34234234', 'Privat bank', 'bank_acaunt', 'www.google.com', 'fb_link', 'sobornaaaaaaaaaa', 'riveneeeee', 'rivneeeeee', '33423', 'rivne obl', 'sobornaaaaaa', 'rivne', 'rivneeeeee', '35435', 'rivneeeeee obl', '2017-11-08 10:26:54', '2017-11-08 10:26:54'),
(3, 'new team1', '34324324', '3.2222222222222e15', 'newmail@gmail.com', 'newm4444444ail@gmail.com', '3242342', 'fddddd', 'dsf', 'fdsf', '3244444444444', 'fddddddddd', 'fdgfdg', 'gfdgdfg', '43435', 'dfgdfg', 'gfhfgh', 'hgfhfg', 'dfgdfg', '34353534', 'hgfh', '2017-11-09 13:40:25', '2017-11-09 13:41:27');

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `users_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '168,78,62',
  `users_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_active` tinyint(1) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_first_name`, `users_last_name`, `users_email`, `icon_color`, `users_password`, `users_avatar`, `users_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'fsdfsdf', 'Denis', 'Domanskiy', 'itsaninhoaaa@gmail.com', '168,78,62', '$2y$10$onPOwED0kPiLC8a5V257uOFI3Z32YCirqBhqOo/BhBWPuyIBu2cpC', '', 1, 'ZSPJLneKILPRbifqU0O6Vns39cfmzTLHJZAIzmjUllkYQJtnt9bNBwGdJMI3', '2017-12-20 23:46:08', '2017-12-20 23:46:08'),
(6, 'fsdfsdfsdf', 'Oleksandr', 'Fedorchuk', 'dsfsdfsdf@gmail.com', '168,78,62', '$2y$10$pW.EuFXCjcWKWxeF/0J7guLh67.Qstm6joZCeArUJKRz3SPrQoQlG', '', 1, NULL, '2017-11-21 10:34:41', '2017-11-21 10:34:43'),
(7, 'user3', 'first_na', 'user_last_name', 'itsanfsdfsinhoaaa@gmail.com', '168,78,62', '$2y$10$onPOwED0kPiLC8a5V257uOFI3Z32YCirqBhqOo/BhBWPuyIBu2cpC', '', 1, NULL, NULL, NULL),
(9, 'user4', 'first_na2', 'user_last2', '77sinhoaaa@gmail.com', '168,78,62', '$2y$10$onPOwED0kPiLC8a5V257uOFI3Z32YCirqBhqOo/BhBWPuyIBu2cpC', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_teams`
--

CREATE TABLE `users_teams` (
  `users_id` int(11) NOT NULL DEFAULT '0',
  `teams_id` int(11) NOT NULL DEFAULT '0',
  `teams_leader` tinyint(1) NOT NULL DEFAULT '0',
  `teams_invite` tinyint(4) NOT NULL DEFAULT '0',
  `teams_approved` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_teams`
--

INSERT INTO `users_teams` (`users_id`, `teams_id`, `teams_leader`, `teams_invite`, `teams_approved`) VALUES
(6, 1, 1, 1, 1),
(5, 2, 1, 1, 1),
(2, 3, 1, 1, 1),
(7, 2, 1, 1, 1),
(8, 2, 1, 1, 1),
(9, 2, 1, 1, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_id`);

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`cards_id`);

--
-- Индексы таблицы `cards_comments`
--
ALTER TABLE `cards_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `checkboxes`
--
ALTER TABLE `checkboxes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `checklists`
--
ALTER TABLE `checklists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `customers_comments`
--
ALTER TABLE `customers_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Индексы таблицы `descs`
--
ALTER TABLE `descs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`finances_id`);

--
-- Индексы таблицы `finances_registered`
--
ALTER TABLE `finances_registered`
  ADD PRIMARY KEY (`registered_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Индексы таблицы `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`plugins_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Индексы таблицы `tasks_lists`
--
ALTER TABLE `tasks_lists`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teams_id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_users_email_unique` (`users_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `cards_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT для таблицы `cards_comments`
--
ALTER TABLE `cards_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT для таблицы `checkboxes`
--
ALTER TABLE `checkboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT для таблицы `checklists`
--
ALTER TABLE `checklists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `customers_comments`
--
ALTER TABLE `customers_comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `descs`
--
ALTER TABLE `descs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `finances`
--
ALTER TABLE `finances`
  MODIFY `finances_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `finances_registered`
--
ALTER TABLE `finances_registered`
  MODIFY `registered_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT для таблицы `plugins`
--
ALTER TABLE `plugins`
  MODIFY `plugins_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `tasks_lists`
--
ALTER TABLE `tasks_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `teams_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
