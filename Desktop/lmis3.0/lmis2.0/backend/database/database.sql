-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2023 at 03:19 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elmapicms`
--

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `slug`, `project_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pages', 'pages', 1, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(2, 'Posts', 'posts', 1, 2, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(3, 'Categories', 'categories', 1, 3, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(4, 'Authors', 'authors', 1, 4, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(5, 'Tags', 'tags', 1, 5, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(6, 'Comments', 'comments', 1, 6, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(7, 'Globals', 'globals', 1, 7, '2023-07-09 20:10:23', '2023-07-09 20:10:23', NULL),
(8, 'Indicator Categories', 'indicator-categories', 1, 8, '2023-07-09 20:23:56', '2023-07-09 20:24:49', NULL),
(9, 'Indicators', 'indicators', 1, 12, '2023-07-09 20:24:06', '2023-07-09 22:42:52', NULL),
(10, 'Indicator Data', 'indicator-data', 1, 13, '2023-07-09 20:27:39', '2023-07-09 22:42:52', NULL),
(11, 'States', 'states', 1, 14, '2023-07-09 22:19:19', '2023-07-09 22:42:52', NULL),
(12, 'Sectors', 'sectors', 1, 15, '2023-07-09 22:21:31', '2023-07-09 22:42:52', NULL),
(13, 'Key Facts', 'key-facts', 1, 17, '2023-07-09 22:22:18', '2023-07-09 22:42:52', NULL),
(14, 'Occupations', 'occupations', 1, 16, '2023-07-09 22:28:37', '2023-07-09 22:42:52', NULL),
(15, 'Data Insight Categories', 'data-insight-categories', 1, 10, '2023-07-09 22:32:28', '2023-07-09 22:42:37', NULL),
(16, 'Data Insights', 'data-insights', 1, 18, '2023-07-09 22:33:09', '2023-07-09 22:42:52', NULL),
(17, 'Data Source Categories', 'data-source-categories', 1, 9, '2023-07-09 22:35:53', '2023-07-09 22:42:37', NULL),
(18, 'Data Sources', 'data-sources', 1, 11, '2023-07-09 22:36:19', '2023-07-09 22:42:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collection_fields`
--

CREATE TABLE `collection_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` json DEFAULT NULL,
  `validations` json DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_fields`
--

INSERT INTO `collection_fields` (`id`, `type`, `label`, `name`, `description`, `placeholder`, `options`, `validations`, `project_id`, `collection_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'text', 'Title', 'title', NULL, NULL, '{\"slug\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 1, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(2, 'slug', 'URL', 'url', NULL, NULL, '{\"slug\": {\"field\": \"title\"}, \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 1, 2, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(3, 'richtext', 'Content', 'content', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 1, 3, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(4, 'enumeration', 'Menu Position', 'menu-position', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [\"MainMenu\", \"FooterMenu\", \"Both\"], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 1, 4, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(5, 'text', 'Title', 'title', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(6, 'slug', 'URL', 'url', NULL, NULL, '{\"slug\": {\"field\": \"title\"}, \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 2, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(7, 'longtext', 'Excerpt', 'excerpt', NULL, NULL, '{\"slug\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 3, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(8, 'richtext', 'Content', 'content', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 4, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(9, 'media', 'Cover Image', 'cover-image', NULL, NULL, '{\"slug\": [], \"media\": {\"type\": 1}, \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 5, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(10, 'relation', 'Category', 'category', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": \"1\", \"collection\": 3}, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 6, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(11, 'relation', 'Author', 'author', NULL, NULL, '{\"slug\": [], \"relation\": {\"type\": 1, \"collection\": 4}, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 7, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(12, 'relation', 'Tags', 'tags', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": \"2\", \"collection\": 5}, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 2, 8, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(13, 'text', 'Title', 'title', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 3, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(14, 'slug', 'URL', 'url', NULL, NULL, '{\"slug\": {\"field\": \"title\"}, \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 3, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(15, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(16, 'longtext', 'Info', 'info', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(17, 'media', 'Avatar', 'avatar', NULL, NULL, '{\"slug\": [], \"media\": {\"type\": 1}, \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(18, 'text', 'Facebook', 'facebook', NULL, NULL, '{\"slug\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(19, 'text', 'Instagram', 'instagram', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(20, 'text', 'Twitter', 'twitter', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(21, 'text', 'Linkedin', 'linkedin', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 4, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(22, 'text', 'Tag', 'tag', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 5, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(23, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 6, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(24, 'email', 'E-mail', 'e-mail', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 6, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(25, 'longtext', 'Comment', 'comment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 6, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(26, 'relation', 'Post', 'post', NULL, NULL, '{\"slug\": [], \"relation\": {\"type\": 1, \"collection\": 2}, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 6, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(27, 'slug', 'Label', 'label', NULL, NULL, '{\"slug\": {\"field\": null}, \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 7, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(28, 'text', 'Value', 'value', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 7, 1, '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(29, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 8, 29, '2023-07-09 20:25:34', '2023-07-09 20:52:12'),
(30, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 8, 30, '2023-07-09 20:25:50', '2023-07-09 20:52:17'),
(32, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 9, 2, '2023-07-09 20:26:37', '2023-07-09 20:59:42'),
(33, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 9, 3, '2023-07-09 20:26:49', '2023-07-09 20:59:42'),
(36, 'number', 'Year', 'year', 'Year of data collection', NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": \"0\", \"min\": \"1970\", \"type\": \"Min\", \"status\": true, \"message\": null}}', 1, 10, 2, '2023-07-09 20:42:11', '2023-07-09 21:17:55'),
(37, 'number', 'Working Age Population', 'working-age-population', 'Number of working-age population in the country for that year', NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 3, '2023-07-09 20:42:37', '2023-07-09 20:50:22'),
(38, 'number', 'Labour Force', 'labour-force', 'Number of people in the labor force', NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 4, '2023-07-09 20:42:51', '2023-07-10 17:03:08'),
(40, 'relation', 'Indicator', 'indicator', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": \"1\", \"collection\": 9}, \"timepicker\": false, \"enumeration\": [], \"hiddenInAPI\": true, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 1, '2023-07-09 20:44:11', '2023-08-24 10:25:26'),
(41, 'number', 'Total Employed', 'total-employed', 'Number of employed individuals', NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 6, '2023-07-09 20:47:17', '2023-07-09 23:38:00'),
(43, 'enumeration', 'Dimensions', 'dimensions', NULL, NULL, '{\"slug\": [], \"media\": [], \"multiple\": true, \"relation\": [], \"timepicker\": false, \"enumeration\": [\"year\", \"working-age-population\", \"labour-force\", \"total-employed\", \"wage-salaried-workers\", \"self-employed-workers\", \"agriculture-employment\", \"industry-employment\", \"services-employment\", \"occupation\", \"occupation-employment\", \"part-time-workers\", \"average-hours-worked\", \"health-and-wellbeing\", \"labour-costs\", \"informal-sector-unemployment\", \"gdp-contribution\", \"labour-productivity\", \"hourly-compensation-costs\", \"international-competitiveness\", \"immigrants\", \"emigrants\", \"insured-workforce\", \"uninsured-workforce\", \"special-needs-employment\", \"total-unemployed\", \"illeterate-unemployed\", \"educational-attainment\", \"job-openings\", \"skills-mismatch\", \"average-wage\", \"compensation-costs\", \"purchasing-power\", \"youth-unemployment\", \"adult-unemployment\", \"inactive-population\", \"long-term-unemployed\", \"underemployed-workforce\", \"desired-hours\", \"actual-hours\", \"illeterate-labour-force\", \"standard-of-living\", \"total-population\"], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 9, 4, '2023-07-09 20:54:13', '2023-07-10 17:50:05'),
(44, 'relation', 'Indicator Category', 'indicator-category', NULL, NULL, '{\"slug\": [], \"relation\": {\"type\": 1, \"collection\": 8}, \"repeatable\": false, \"enumeration\": [], \"hiddenInAPI\": true, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 9, 1, '2023-07-09 20:59:38', '2023-07-09 21:16:15'),
(45, 'media', 'Cover Image', 'cover-image', NULL, NULL, '{\"slug\": [], \"media\": {\"type\": 1}, \"relation\": [], \"repeatable\": false, \"enumeration\": [], \"hiddenInAPI\": false, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 8, 45, '2023-07-09 22:17:55', '2023-07-09 22:17:55'),
(46, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 11, 46, '2023-07-09 22:19:37', '2023-07-09 22:19:37'),
(47, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 11, 47, '2023-07-09 22:19:50', '2023-07-10 18:04:42'),
(48, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 12, 48, '2023-07-09 22:21:47', '2023-07-09 22:21:47'),
(49, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 12, 49, '2023-07-09 22:21:57', '2023-07-10 18:01:39'),
(50, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 50, '2023-07-09 22:22:47', '2023-07-09 22:22:47'),
(51, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 51, '2023-07-09 22:22:59', '2023-07-09 22:22:59'),
(52, 'number', 'Value', 'value', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 52, '2023-07-09 22:23:35', '2023-07-09 22:23:35'),
(53, 'relation', 'State', 'state', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 11}, \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 53, '2023-07-09 22:24:30', '2023-07-09 22:24:30'),
(54, 'relation', 'Sector', 'sector', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 12}, \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 54, '2023-07-09 22:24:43', '2023-07-09 22:24:43'),
(55, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 14, 55, '2023-07-09 22:29:14', '2023-07-09 22:29:14'),
(56, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 14, 56, '2023-07-09 22:29:21', '2023-07-09 22:29:21'),
(57, 'relation', 'Sector', 'sector', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 12}, \"timepicker\": false, \"enumeration\": [], \"hiddenInAPI\": true, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 14, 57, '2023-07-09 22:29:36', '2023-07-10 18:06:58'),
(58, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 15, 58, '2023-07-09 22:32:50', '2023-07-09 22:32:50'),
(59, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 15, 59, '2023-07-09 22:33:00', '2023-07-09 22:33:00'),
(60, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 60, '2023-07-09 22:33:28', '2023-07-09 22:33:28'),
(61, 'relation', 'Category', 'category', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 15}, \"timepicker\": false, \"enumeration\": [], \"hiddenInAPI\": true, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 61, '2023-07-09 22:33:49', '2023-07-09 22:33:49'),
(62, 'richtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 62, '2023-07-09 22:34:07', '2023-07-09 22:34:07'),
(63, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 17, 63, '2023-07-09 22:36:03', '2023-07-09 22:36:03'),
(64, 'text', 'Name', 'name', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": true, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 18, 64, '2023-07-09 22:36:30', '2023-07-09 22:36:30'),
(65, 'longtext', 'Description', 'description', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 18, 65, '2023-07-09 22:36:38', '2023-07-09 22:36:38'),
(66, 'relation', 'Category', 'category', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 17}, \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 18, 66, '2023-07-09 22:36:58', '2023-07-09 22:36:58'),
(67, 'relation', 'Source', 'source', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 18}, \"timepicker\": false, \"enumeration\": [], \"hiddenInAPI\": true, \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": true, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 67, '2023-07-09 22:37:23', '2023-08-24 10:47:24'),
(68, 'date', 'Publication Date', 'publication-date', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 68, '2023-07-09 22:37:48', '2023-07-09 22:37:48'),
(69, 'text', 'URL', 'url', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 16, 69, '2023-07-09 22:38:16', '2023-07-09 22:38:16'),
(70, 'relation', 'Occupation', 'occupation', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 14}, \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 13, 70, '2023-07-09 22:41:49', '2023-07-09 22:41:49'),
(71, 'number', 'Wage Salaried Workers', 'wage-salaried-workers', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 71, '2023-07-09 23:38:18', '2023-07-09 23:38:18'),
(72, 'number', 'Self Employed Workers', 'self-employed-workers', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 72, '2023-07-09 23:38:32', '2023-07-09 23:38:32'),
(73, 'number', 'Agriculture Employment', 'agriculture-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 73, '2023-07-09 23:38:47', '2023-07-09 23:38:47'),
(74, 'number', 'Industry Employment', 'industry-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 74, '2023-07-09 23:38:57', '2023-07-09 23:38:57'),
(75, 'number', 'Services Employment', 'services-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 75, '2023-07-09 23:39:19', '2023-07-09 23:39:19'),
(76, 'relation', 'Occupation', 'occupation', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": {\"type\": 1, \"collection\": 14}, \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 76, '2023-07-09 23:39:39', '2023-07-09 23:39:39'),
(77, 'number', 'Occupation Employment', 'occupation-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 77, '2023-07-09 23:39:55', '2023-07-09 23:39:55'),
(78, 'number', 'Part Time Workers', 'part-time-workers', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 78, '2023-07-09 23:40:06', '2023-07-09 23:40:06'),
(79, 'number', 'Average Hours Worked', 'average-hours-worked', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 79, '2023-07-09 23:40:18', '2023-07-09 23:40:18'),
(80, 'number', 'Health and Wellbeing', 'health-and-wellbeing', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 80, '2023-07-09 23:41:25', '2023-07-09 23:41:25'),
(81, 'number', 'Labour Costs', 'labour-costs', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 81, '2023-07-09 23:41:37', '2023-07-09 23:41:37'),
(82, 'number', 'Informal Sector Employment', 'informal-sector-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 82, '2023-07-09 23:43:23', '2023-07-09 23:43:23'),
(83, 'number', 'GDP Contribution', 'gdp-contribution', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 83, '2023-07-09 23:43:39', '2023-07-09 23:43:39'),
(84, 'number', 'Labour Productivity', 'labour-productivity', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 84, '2023-07-09 23:44:50', '2023-07-09 23:44:50'),
(85, 'number', 'Hourly Compensation Costs', 'hourly-compensation-costs', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 85, '2023-07-09 23:45:11', '2023-07-09 23:45:11'),
(86, 'number', 'International Competitiveness', 'international-competitiveness', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 86, '2023-07-09 23:45:38', '2023-07-09 23:45:38'),
(87, 'number', 'Immigrants', 'immigrants', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 87, '2023-07-09 23:45:49', '2023-07-09 23:45:49'),
(88, 'number', 'Emigrants', 'emigrants', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 88, '2023-07-09 23:45:58', '2023-07-09 23:45:58'),
(89, 'number', 'Insured Workforce', 'insured-workforce', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 89, '2023-07-09 23:46:15', '2023-07-09 23:46:15'),
(90, 'number', 'Uninsured Workforce', 'uninsured-workforce', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 90, '2023-07-09 23:46:27', '2023-07-09 23:46:27'),
(91, 'number', 'Special Needs Employment', 'special-needs-employment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 91, '2023-07-09 23:46:46', '2023-07-09 23:46:46'),
(92, 'number', 'Total Unemployed', 'total-unemployed', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 92, '2023-07-09 23:46:57', '2023-07-09 23:46:57'),
(93, 'number', 'Illeterate Unemployed', 'illeterate-unemployed', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 93, '2023-07-09 23:47:14', '2023-07-09 23:47:14'),
(94, 'enumeration', 'Educational Attainment', 'educational-attainment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [\"OND\", \"HND\", \"SSCE\", \"BSC\", \"MSC\", \"Diploma\", \"PhD\"], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 94, '2023-07-09 23:48:12', '2023-07-09 23:48:12'),
(95, 'number', 'Job Openings', 'job-openings', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 95, '2023-07-09 23:48:29', '2023-07-09 23:48:29'),
(96, 'number', 'Skills Mismatch', 'skills-mismatch', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 96, '2023-07-09 23:48:39', '2023-07-09 23:48:39'),
(97, 'number', 'Average Wage', 'average-wage', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 97, '2023-07-09 23:48:47', '2023-07-09 23:48:47'),
(98, 'number', 'Compensation Costs', 'compensation-costs', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 98, '2023-07-09 23:49:02', '2023-07-09 23:49:02'),
(99, 'number', 'Purchasing Power', 'purchasing-power', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 99, '2023-07-09 23:49:16', '2023-07-09 23:49:16'),
(100, 'number', 'Youth Unemployment', 'youth-unemployment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 100, '2023-07-09 23:49:38', '2023-07-09 23:49:38'),
(101, 'number', 'Adult Unemployment', 'adult-unemployment', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 101, '2023-07-09 23:49:51', '2023-07-09 23:49:51'),
(102, 'number', 'Inactive Population', 'inactive-population', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 102, '2023-07-09 23:50:04', '2023-07-09 23:50:04'),
(103, 'number', 'Long-Term Unemployed', 'long-term-unemployed', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 103, '2023-07-09 23:50:26', '2023-07-09 23:50:26'),
(104, 'number', 'Underemployed Workforce', 'underemployed-workforce', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 104, '2023-07-09 23:50:42', '2023-07-09 23:50:42'),
(105, 'number', 'Desired Hours', 'desired-hours', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 105, '2023-07-09 23:50:51', '2023-07-09 23:50:51'),
(106, 'number', 'Actual Hours', 'actual-hours', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 106, '2023-07-09 23:51:00', '2023-07-09 23:51:00'),
(107, 'number', 'Illeterate Labour Force', 'illeterate-labour-force', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 107, '2023-07-09 23:51:18', '2023-07-09 23:51:18'),
(108, 'number', 'Total Population', 'total-population', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 108, '2023-07-10 17:56:26', '2023-07-10 17:56:26'),
(109, 'number', 'Standard of Living', 'standard-of-living', NULL, NULL, '{\"slug\": [], \"media\": [], \"relation\": [], \"timepicker\": false, \"enumeration\": [], \"hideInContentList\": false}', '{\"unique\": {\"status\": false, \"message\": null}, \"required\": {\"status\": false, \"message\": null}, \"charcount\": {\"max\": null, \"min\": null, \"type\": \"Between\", \"status\": false, \"message\": null}}', 1, 10, 109, '2023-07-10 17:56:59', '2023-07-10 17:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `project_id`, `collection_id`, `locale`, `form_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `published_at`, `published_by`, `deleted_at`) VALUES
(1, 1, 8, 'en', NULL, '2023-07-09 20:29:11', 1, '2023-08-24 11:08:10', 1, '2023-08-24 11:08:10', 1, NULL),
(2, 1, 8, 'en', NULL, '2023-07-09 20:29:50', 1, '2023-07-09 20:29:50', NULL, '2023-07-09 20:29:50', 1, NULL),
(3, 1, 8, 'en', NULL, '2023-07-09 20:30:10', 1, '2023-07-09 20:30:10', NULL, '2023-07-09 20:30:10', 1, NULL),
(4, 1, 8, 'en', NULL, '2023-07-09 20:30:31', 1, '2023-07-09 20:30:31', NULL, '2023-07-09 20:30:31', 1, NULL),
(5, 1, 9, 'en', NULL, '2023-07-09 20:34:43', 1, '2023-07-09 21:04:57', 1, '2023-07-09 21:04:57', 1, NULL),
(6, 1, 9, 'en', NULL, '2023-07-09 20:35:04', 1, '2023-07-09 21:05:37', 1, '2023-07-09 21:05:37', 1, NULL),
(7, 1, 10, 'en', NULL, '2023-07-09 21:07:13', 1, '2023-07-10 18:00:13', 1, '2023-07-09 21:13:21', 1, '2023-07-10 18:00:13'),
(8, 1, 17, 'en', NULL, '2023-07-09 22:44:22', 1, '2023-07-09 22:44:22', NULL, '2023-07-09 22:44:22', 1, NULL),
(9, 1, 17, 'en', NULL, '2023-07-09 22:44:56', 1, '2023-07-09 22:44:56', NULL, '2023-07-09 22:44:56', 1, NULL),
(10, 1, 17, 'en', NULL, '2023-07-09 22:45:06', 1, '2023-07-09 22:45:06', NULL, '2023-07-09 22:45:06', 1, NULL),
(11, 1, 17, 'en', NULL, '2023-07-09 22:45:14', 1, '2023-07-09 22:45:14', NULL, '2023-07-09 22:45:14', 1, NULL),
(12, 1, 17, 'en', NULL, '2023-07-09 22:45:22', 1, '2023-07-09 22:45:22', NULL, '2023-07-09 22:45:22', 1, NULL),
(13, 1, 17, 'en', NULL, '2023-07-09 22:45:32', 1, '2023-07-09 22:45:32', NULL, '2023-07-09 22:45:32', 1, NULL),
(14, 1, 17, 'en', NULL, '2023-07-09 22:45:44', 1, '2023-07-09 22:45:44', NULL, '2023-07-09 22:45:44', 1, NULL),
(15, 1, 17, 'en', NULL, '2023-07-09 22:45:53', 1, '2023-07-09 22:45:53', NULL, '2023-07-09 22:45:53', 1, NULL),
(16, 1, 17, 'en', NULL, '2023-07-09 22:46:04', 1, '2023-07-09 22:46:04', NULL, '2023-07-09 22:46:04', 1, NULL),
(17, 1, 17, 'en', NULL, '2023-07-09 22:46:13', 1, '2023-07-09 22:46:13', NULL, '2023-07-09 22:46:13', 1, NULL),
(18, 1, 17, 'en', NULL, '2023-07-09 22:46:21', 1, '2023-07-09 22:46:21', NULL, '2023-07-09 22:46:21', 1, NULL),
(19, 1, 17, 'en', NULL, '2023-07-09 22:46:30', 1, '2023-07-09 22:46:30', NULL, '2023-07-09 22:46:30', 1, NULL),
(20, 1, 17, 'en', NULL, '2023-07-09 22:46:37', 1, '2023-07-09 22:46:37', NULL, '2023-07-09 22:46:37', 1, NULL),
(21, 1, 17, 'en', NULL, '2023-07-09 22:46:44', 1, '2023-07-09 22:46:44', NULL, '2023-07-09 22:46:44', 1, NULL),
(22, 1, 17, 'en', NULL, '2023-07-09 22:46:51', 1, '2023-07-09 22:46:51', NULL, '2023-07-09 22:46:51', 1, NULL),
(23, 1, 17, 'en', NULL, '2023-07-09 22:46:58', 1, '2023-07-09 22:46:58', NULL, '2023-07-09 22:46:58', 1, NULL),
(24, 1, 17, 'en', NULL, '2023-07-09 22:47:06', 1, '2023-07-09 22:47:06', NULL, '2023-07-09 22:47:06', 1, NULL),
(25, 1, 17, 'en', NULL, '2023-07-09 22:47:14', 1, '2023-07-09 22:47:14', NULL, '2023-07-09 22:47:14', 1, NULL),
(26, 1, 17, 'en', NULL, '2023-07-09 22:47:23', 1, '2023-07-09 22:47:23', NULL, '2023-07-09 22:47:23', 1, NULL),
(27, 1, 17, 'en', NULL, '2023-07-09 22:47:31', 1, '2023-07-09 22:47:31', NULL, '2023-07-09 22:47:31', 1, NULL),
(28, 1, 15, 'en', NULL, '2023-07-09 22:48:21', 1, '2023-07-09 22:48:21', NULL, '2023-07-09 22:48:21', 1, NULL),
(29, 1, 15, 'en', NULL, '2023-07-09 22:48:29', 1, '2023-07-09 22:48:29', NULL, '2023-07-09 22:48:29', 1, NULL),
(30, 1, 15, 'en', NULL, '2023-07-09 22:48:40', 1, '2023-07-09 22:48:40', NULL, '2023-07-09 22:48:40', 1, NULL),
(31, 1, 15, 'en', NULL, '2023-07-09 22:48:49', 1, '2023-07-09 22:48:49', NULL, '2023-07-09 22:48:49', 1, NULL),
(32, 1, 15, 'en', NULL, '2023-07-09 22:48:56', 1, '2023-07-09 22:48:56', NULL, '2023-07-09 22:48:56', 1, NULL),
(33, 1, 15, 'en', NULL, '2023-07-09 22:49:06', 1, '2023-07-09 22:49:06', NULL, '2023-07-09 22:49:06', 1, NULL),
(34, 1, 15, 'en', NULL, '2023-07-09 22:49:13', 1, '2023-07-09 22:49:13', NULL, '2023-07-09 22:49:13', 1, NULL),
(35, 1, 15, 'en', NULL, '2023-07-09 22:49:21', 1, '2023-07-09 22:49:21', NULL, '2023-07-09 22:49:21', 1, NULL),
(36, 1, 15, 'en', NULL, '2023-07-09 22:49:28', 1, '2023-07-09 22:49:28', NULL, '2023-07-09 22:49:28', 1, NULL),
(37, 1, 15, 'en', NULL, '2023-07-09 22:49:36', 1, '2023-07-09 22:49:36', NULL, '2023-07-09 22:49:36', 1, NULL),
(38, 1, 15, 'en', NULL, '2023-07-09 22:49:44', 1, '2023-07-09 22:49:44', NULL, '2023-07-09 22:49:44', 1, NULL),
(39, 1, 15, 'en', NULL, '2023-07-09 22:49:52', 1, '2023-07-09 22:49:52', NULL, '2023-07-09 22:49:52', 1, NULL),
(40, 1, 15, 'en', NULL, '2023-07-09 22:50:00', 1, '2023-07-09 22:50:00', NULL, '2023-07-09 22:50:00', 1, NULL),
(41, 1, 15, 'en', NULL, '2023-07-09 22:50:09', 1, '2023-07-09 22:50:09', NULL, '2023-07-09 22:50:09', 1, NULL),
(42, 1, 15, 'en', NULL, '2023-07-09 22:50:16', 1, '2023-07-09 22:50:16', NULL, '2023-07-09 22:50:16', 1, NULL),
(43, 1, 15, 'en', NULL, '2023-07-09 22:50:23', 1, '2023-07-09 22:50:23', NULL, '2023-07-09 22:50:23', 1, NULL),
(44, 1, 15, 'en', NULL, '2023-07-09 22:50:32', 1, '2023-07-09 22:50:32', NULL, '2023-07-09 22:50:32', 1, NULL),
(45, 1, 15, 'en', NULL, '2023-07-09 22:50:40', 1, '2023-07-09 22:50:40', NULL, '2023-07-09 22:50:40', 1, NULL),
(46, 1, 15, 'en', NULL, '2023-07-09 22:50:49', 1, '2023-07-09 22:50:49', NULL, '2023-07-09 22:50:49', 1, NULL),
(47, 1, 15, 'en', NULL, '2023-07-09 22:50:57', 1, '2023-07-09 22:50:57', NULL, '2023-07-09 22:50:57', 1, NULL),
(48, 1, 9, 'en', NULL, '2023-07-09 23:01:47', 1, '2023-07-09 23:05:07', 1, '2023-07-09 23:05:07', 1, NULL),
(49, 1, 9, 'en', NULL, '2023-07-09 23:09:04', 1, '2023-07-09 23:09:04', NULL, '2023-07-09 23:09:04', 1, NULL),
(50, 1, 9, 'en', NULL, '2023-07-10 17:16:04', 1, '2023-07-10 17:16:04', NULL, '2023-07-10 17:16:04', 1, NULL),
(51, 1, 9, 'en', NULL, '2023-07-10 17:18:51', 1, '2023-07-10 17:44:42', 1, '2023-07-10 17:44:42', 1, NULL),
(52, 1, 9, 'en', NULL, '2023-07-10 17:22:10', 1, '2023-07-10 17:22:10', NULL, '2023-07-10 17:22:10', 1, NULL),
(53, 1, 9, 'en', NULL, '2023-07-10 17:23:29', 1, '2023-07-10 17:44:10', 1, '2023-07-10 17:44:10', 1, NULL),
(54, 1, 9, 'en', NULL, '2023-07-10 17:25:18', 1, '2023-07-10 17:25:18', NULL, '2023-07-10 17:25:18', 1, NULL),
(55, 1, 9, 'en', NULL, '2023-07-10 17:27:08', 1, '2023-07-10 17:43:42', 1, '2023-07-10 17:43:42', 1, NULL),
(56, 1, 9, 'en', NULL, '2023-07-10 17:28:20', 1, '2023-07-10 17:43:16', 1, '2023-07-10 17:43:16', 1, NULL),
(57, 1, 9, 'en', NULL, '2023-07-10 17:29:31', 1, '2023-07-10 17:29:31', NULL, '2023-07-10 17:29:31', 1, NULL),
(58, 1, 9, 'en', NULL, '2023-07-10 17:31:45', 1, '2023-07-10 17:42:11', 1, '2023-07-10 17:42:11', 1, NULL),
(59, 1, 9, 'en', NULL, '2023-07-10 17:34:25', 1, '2023-07-10 17:41:23', 1, '2023-07-10 17:41:23', 1, NULL),
(60, 1, 9, 'en', NULL, '2023-07-10 17:36:32', 1, '2023-07-10 17:42:39', 1, '2023-07-10 17:42:39', 1, NULL),
(61, 1, 9, 'en', NULL, '2023-07-10 17:39:49', 1, '2023-07-10 17:39:49', NULL, '2023-07-10 17:39:49', 1, NULL),
(62, 1, 9, 'en', NULL, '2023-07-10 17:48:11', 1, '2023-07-10 17:48:11', NULL, '2023-07-10 17:48:11', 1, NULL),
(63, 1, 9, 'en', NULL, '2023-07-10 17:50:44', 1, '2023-07-10 17:50:55', 1, '2023-07-10 17:50:55', 1, NULL),
(64, 1, 9, 'en', NULL, '2023-07-10 17:52:22', 1, '2023-07-10 17:52:22', NULL, '2023-07-10 17:52:22', 1, NULL),
(65, 1, 9, 'en', NULL, '2023-07-10 17:54:55', 1, '2023-07-10 17:54:55', NULL, '2023-07-10 17:54:55', 1, NULL),
(66, 1, 12, 'en', NULL, '2023-07-10 18:01:47', 1, '2023-07-10 18:01:47', NULL, '2023-07-10 18:01:47', 1, NULL),
(67, 1, 12, 'en', NULL, '2023-07-10 18:02:13', 1, '2023-07-10 18:02:13', NULL, '2023-07-10 18:02:13', 1, NULL),
(68, 1, 12, 'en', NULL, '2023-07-10 18:02:22', 1, '2023-07-10 18:02:22', NULL, '2023-07-10 18:02:22', 1, NULL),
(69, 1, 12, 'en', NULL, '2023-07-10 18:02:31', 1, '2023-07-10 18:02:31', NULL, '2023-07-10 18:02:31', 1, NULL),
(70, 1, 12, 'en', NULL, '2023-07-10 18:02:38', 1, '2023-07-10 18:02:38', NULL, '2023-07-10 18:02:38', 1, NULL),
(71, 1, 12, 'en', NULL, '2023-07-10 18:02:44', 1, '2023-07-10 18:02:44', NULL, '2023-07-10 18:02:44', 1, NULL),
(72, 1, 12, 'en', NULL, '2023-07-10 18:02:51', 1, '2023-07-10 18:02:51', NULL, '2023-07-10 18:02:51', 1, NULL),
(73, 1, 12, 'en', NULL, '2023-07-10 18:02:57', 1, '2023-07-10 18:02:57', NULL, '2023-07-10 18:02:57', 1, NULL),
(74, 1, 12, 'en', NULL, '2023-07-10 18:03:03', 1, '2023-07-10 18:03:03', NULL, '2023-07-10 18:03:03', 1, NULL),
(75, 1, 12, 'en', NULL, '2023-07-10 18:03:10', 1, '2023-07-10 18:03:10', NULL, '2023-07-10 18:03:10', 1, NULL),
(76, 1, 12, 'en', NULL, '2023-07-10 18:03:17', 1, '2023-07-10 18:03:17', NULL, '2023-07-10 18:03:17', 1, NULL),
(77, 1, 12, 'en', NULL, '2023-07-10 18:03:23', 1, '2023-07-10 18:03:23', NULL, '2023-07-10 18:03:23', 1, NULL),
(78, 1, 12, 'en', NULL, '2023-07-10 18:03:30', 1, '2023-07-10 18:03:30', NULL, '2023-07-10 18:03:30', 1, NULL),
(79, 1, 12, 'en', NULL, '2023-07-10 18:03:37', 1, '2023-07-10 18:03:37', NULL, '2023-07-10 18:03:37', 1, NULL),
(80, 1, 12, 'en', NULL, '2023-07-10 18:03:48', 1, '2023-07-10 18:03:48', NULL, '2023-07-10 18:03:48', 1, NULL),
(81, 1, 12, 'en', NULL, '2023-07-10 18:03:54', 1, '2023-07-10 18:03:54', NULL, '2023-07-10 18:03:54', 1, NULL),
(82, 1, 12, 'en', NULL, '2023-07-10 18:04:02', 1, '2023-07-10 18:04:02', NULL, '2023-07-10 18:04:02', 1, NULL),
(83, 1, 12, 'en', NULL, '2023-07-10 18:04:08', 1, '2023-07-10 18:04:08', NULL, '2023-07-10 18:04:08', 1, NULL),
(84, 1, 12, 'en', NULL, '2023-07-10 18:04:15', 1, '2023-07-10 18:04:15', NULL, '2023-07-10 18:04:15', 1, NULL),
(85, 1, 14, 'en', NULL, '2023-07-10 18:05:13', 1, '2023-07-10 18:05:13', NULL, '2023-07-10 18:05:13', 1, NULL),
(86, 1, 14, 'en', NULL, '2023-07-10 18:05:51', 1, '2023-07-10 18:05:51', NULL, '2023-07-10 18:05:51', 1, NULL),
(87, 1, 14, 'en', NULL, '2023-07-10 18:06:01', 1, '2023-07-10 18:06:01', NULL, '2023-07-10 18:06:01', 1, NULL),
(88, 1, 14, 'en', NULL, '2023-07-10 18:06:12', 1, '2023-07-10 18:06:12', NULL, '2023-07-10 18:06:12', 1, NULL),
(89, 1, 14, 'en', NULL, '2023-07-10 18:06:24', 1, '2023-07-10 18:06:24', NULL, '2023-07-10 18:06:24', 1, NULL),
(90, 1, 12, 'en', NULL, '2023-07-10 18:08:07', 1, '2023-07-10 18:08:07', NULL, '2023-07-10 18:08:07', 1, NULL),
(91, 1, 14, 'en', NULL, '2023-07-10 18:08:28', 1, '2023-07-10 18:08:28', NULL, '2023-07-10 18:08:28', 1, NULL),
(92, 1, 14, 'en', NULL, '2023-07-10 18:08:42', 1, '2023-07-10 18:33:22', 1, '2023-07-10 18:33:22', 1, NULL),
(93, 1, 14, 'en', NULL, '2023-07-10 18:08:56', 1, '2023-07-10 18:08:56', NULL, '2023-07-10 18:08:56', 1, NULL),
(94, 1, 14, 'en', NULL, '2023-07-10 18:09:10', 1, '2023-07-10 18:09:10', NULL, '2023-07-10 18:09:10', 1, NULL),
(95, 1, 14, 'en', NULL, '2023-07-10 18:09:24', 1, '2023-07-10 18:09:24', NULL, '2023-07-10 18:09:24', 1, NULL),
(96, 1, 14, 'en', NULL, '2023-07-10 18:09:49', 1, '2023-07-10 18:09:49', NULL, '2023-07-10 18:09:49', 1, NULL),
(97, 1, 14, 'en', NULL, '2023-07-10 18:09:59', 1, '2023-07-10 18:09:59', NULL, '2023-07-10 18:09:59', 1, NULL),
(98, 1, 14, 'en', NULL, '2023-07-10 18:10:10', 1, '2023-07-10 18:10:10', NULL, '2023-07-10 18:10:10', 1, NULL),
(99, 1, 14, 'en', NULL, '2023-07-10 18:10:19', 1, '2023-07-10 18:10:19', NULL, '2023-07-10 18:10:19', 1, NULL),
(100, 1, 14, 'en', NULL, '2023-07-10 18:10:29', 1, '2023-07-10 18:10:29', NULL, '2023-07-10 18:10:29', 1, NULL),
(101, 1, 14, 'en', NULL, '2023-07-10 18:10:39', 1, '2023-07-10 18:10:39', NULL, '2023-07-10 18:10:39', 1, NULL),
(102, 1, 14, 'en', NULL, '2023-07-10 18:10:48', 1, '2023-07-10 18:10:48', NULL, '2023-07-10 18:10:48', 1, NULL),
(103, 1, 14, 'en', NULL, '2023-07-10 18:10:58', 1, '2023-07-10 18:10:58', NULL, '2023-07-10 18:10:58', 1, NULL),
(104, 1, 14, 'en', NULL, '2023-07-10 18:11:09', 1, '2023-07-10 18:11:09', NULL, '2023-07-10 18:11:09', 1, NULL),
(105, 1, 14, 'en', NULL, '2023-07-10 18:11:23', 1, '2023-07-10 18:11:23', NULL, '2023-07-10 18:11:23', 1, NULL),
(106, 1, 14, 'en', NULL, '2023-07-10 18:11:41', 1, '2023-07-10 18:11:41', NULL, '2023-07-10 18:11:41', 1, NULL),
(107, 1, 14, 'en', NULL, '2023-07-10 18:11:51', 1, '2023-07-10 18:11:51', NULL, '2023-07-10 18:11:51', 1, NULL),
(108, 1, 14, 'en', NULL, '2023-07-10 18:12:01', 1, '2023-07-10 18:12:01', NULL, '2023-07-10 18:12:01', 1, NULL),
(109, 1, 14, 'en', NULL, '2023-07-10 18:12:11', 1, '2023-07-10 18:12:11', NULL, '2023-07-10 18:12:11', 1, NULL),
(110, 1, 14, 'en', NULL, '2023-07-10 18:12:37', 1, '2023-07-10 18:12:37', NULL, '2023-07-10 18:12:37', 1, NULL),
(111, 1, 14, 'en', NULL, '2023-07-10 18:12:48', 1, '2023-07-10 18:12:48', NULL, '2023-07-10 18:12:48', 1, NULL),
(112, 1, 14, 'en', NULL, '2023-07-10 18:12:57', 1, '2023-07-10 18:12:57', NULL, '2023-07-10 18:12:57', 1, NULL),
(113, 1, 14, 'en', NULL, '2023-07-10 18:13:07', 1, '2023-07-10 18:13:07', NULL, '2023-07-10 18:13:07', 1, NULL),
(114, 1, 14, 'en', NULL, '2023-07-10 18:13:16', 1, '2023-07-10 18:13:16', NULL, '2023-07-10 18:13:16', 1, NULL),
(115, 1, 14, 'en', NULL, '2023-07-10 18:13:25', 1, '2023-07-10 18:13:25', NULL, '2023-07-10 18:13:25', 1, NULL),
(116, 1, 14, 'en', NULL, '2023-07-10 18:13:40', 1, '2023-07-10 18:13:40', NULL, '2023-07-10 18:13:40', 1, NULL),
(117, 1, 14, 'en', NULL, '2023-07-10 18:13:51', 1, '2023-07-10 18:13:51', NULL, '2023-07-10 18:13:51', 1, NULL),
(118, 1, 14, 'en', NULL, '2023-07-10 18:14:11', 1, '2023-07-10 18:14:11', NULL, '2023-07-10 18:14:11', 1, NULL),
(119, 1, 14, 'en', NULL, '2023-07-10 18:14:23', 1, '2023-07-10 18:14:23', NULL, '2023-07-10 18:14:23', 1, NULL),
(120, 1, 14, 'en', NULL, '2023-07-10 18:14:35', 1, '2023-07-10 18:14:35', NULL, '2023-07-10 18:14:35', 1, NULL),
(121, 1, 14, 'en', NULL, '2023-07-10 18:14:50', 1, '2023-07-10 18:14:50', NULL, '2023-07-10 18:14:50', 1, NULL),
(122, 1, 14, 'en', NULL, '2023-07-10 18:15:03', 1, '2023-07-10 18:15:03', NULL, '2023-07-10 18:15:03', 1, NULL),
(123, 1, 14, 'en', NULL, '2023-07-10 18:15:15', 1, '2023-07-10 18:15:15', NULL, '2023-07-10 18:15:15', 1, NULL),
(124, 1, 14, 'en', NULL, '2023-07-10 18:15:27', 1, '2023-07-10 18:15:27', NULL, '2023-07-10 18:15:27', 1, NULL),
(125, 1, 14, 'en', NULL, '2023-07-10 18:15:40', 1, '2023-07-10 18:15:40', NULL, '2023-07-10 18:15:40', 1, NULL),
(126, 1, 14, 'en', NULL, '2023-07-10 18:16:03', 1, '2023-07-10 18:16:03', NULL, '2023-07-10 18:16:03', 1, NULL),
(127, 1, 14, 'en', NULL, '2023-07-10 18:16:16', 1, '2023-07-10 18:16:16', NULL, '2023-07-10 18:16:16', 1, NULL),
(128, 1, 14, 'en', NULL, '2023-07-10 18:16:27', 1, '2023-07-10 18:16:27', NULL, '2023-07-10 18:16:27', 1, NULL),
(129, 1, 14, 'en', NULL, '2023-07-10 18:16:39', 1, '2023-07-10 18:16:39', NULL, '2023-07-10 18:16:39', 1, NULL),
(130, 1, 14, 'en', NULL, '2023-07-10 18:16:51', 1, '2023-07-10 18:16:51', NULL, '2023-07-10 18:16:51', 1, NULL),
(131, 1, 14, 'en', NULL, '2023-07-10 18:17:10', 1, '2023-07-10 18:17:10', NULL, '2023-07-10 18:17:10', 1, NULL),
(132, 1, 14, 'en', NULL, '2023-07-10 18:17:23', 1, '2023-07-10 18:17:23', NULL, '2023-07-10 18:17:23', 1, NULL),
(133, 1, 14, 'en', NULL, '2023-07-10 18:30:50', 1, '2023-07-10 18:30:50', NULL, '2023-07-10 18:30:50', 1, NULL),
(134, 1, 14, 'en', NULL, '2023-07-10 18:31:03', 1, '2023-07-10 18:31:03', NULL, '2023-07-10 18:31:03', 1, NULL),
(135, 1, 14, 'en', NULL, '2023-07-10 18:31:23', 1, '2023-07-10 18:31:23', NULL, '2023-07-10 18:31:23', 1, NULL),
(136, 1, 14, 'en', NULL, '2023-07-10 18:31:35', 1, '2023-07-10 18:31:35', NULL, '2023-07-10 18:31:35', 1, NULL),
(137, 1, 14, 'en', NULL, '2023-07-10 18:31:47', 1, '2023-07-10 18:31:47', NULL, '2023-07-10 18:31:47', 1, NULL),
(138, 1, 14, 'en', NULL, '2023-07-10 18:32:00', 1, '2023-07-10 18:32:00', NULL, '2023-07-10 18:32:00', 1, NULL),
(139, 1, 14, 'en', NULL, '2023-07-10 18:32:11', 1, '2023-07-10 18:32:11', NULL, '2023-07-10 18:32:11', 1, NULL),
(140, 1, 14, 'en', NULL, '2023-07-10 18:32:22', 1, '2023-07-10 18:32:22', NULL, '2023-07-10 18:32:22', 1, NULL),
(141, 1, 14, 'en', NULL, '2023-07-10 18:33:39', 1, '2023-07-10 18:33:39', NULL, '2023-07-10 18:33:39', 1, NULL),
(142, 1, 14, 'en', NULL, '2023-07-10 18:33:51', 1, '2023-07-10 18:33:51', NULL, '2023-07-10 18:33:51', 1, NULL),
(143, 1, 14, 'en', NULL, '2023-07-10 18:34:04', 1, '2023-07-10 18:34:04', NULL, '2023-07-10 18:34:04', 1, NULL),
(144, 1, 14, 'en', NULL, '2023-07-10 18:34:15', 1, '2023-07-10 18:34:15', NULL, '2023-07-10 18:34:15', 1, NULL),
(145, 1, 14, 'en', NULL, '2023-07-10 18:34:28', 1, '2023-07-10 18:34:28', NULL, '2023-07-10 18:34:28', 1, NULL),
(146, 1, 14, 'en', NULL, '2023-07-10 18:34:38', 1, '2023-07-10 18:34:38', NULL, '2023-07-10 18:34:38', 1, NULL),
(147, 1, 14, 'en', NULL, '2023-07-10 18:34:49', 1, '2023-07-10 18:34:49', NULL, '2023-07-10 18:34:49', 1, NULL),
(148, 1, 14, 'en', NULL, '2023-07-10 18:35:01', 1, '2023-07-10 18:35:01', NULL, '2023-07-10 18:35:01', 1, NULL),
(149, 1, 14, 'en', NULL, '2023-07-10 18:35:15', 1, '2023-07-10 18:35:15', NULL, '2023-07-10 18:35:15', 1, NULL),
(150, 1, 14, 'en', NULL, '2023-07-10 18:35:42', 1, '2023-07-10 18:35:42', NULL, '2023-07-10 18:35:42', 1, NULL),
(151, 1, 14, 'en', NULL, '2023-07-10 18:36:08', 1, '2023-07-10 18:36:08', NULL, '2023-07-10 18:36:08', 1, NULL),
(152, 1, 14, 'en', NULL, '2023-07-10 18:36:26', 1, '2023-07-10 18:36:26', NULL, '2023-07-10 18:36:26', 1, NULL),
(153, 1, 14, 'en', NULL, '2023-07-10 18:36:38', 1, '2023-07-10 18:36:38', NULL, '2023-07-10 18:36:38', 1, NULL),
(154, 1, 14, 'en', NULL, '2023-07-10 18:36:50', 1, '2023-07-10 18:36:50', NULL, '2023-07-10 18:36:50', 1, NULL),
(155, 1, 14, 'en', NULL, '2023-07-10 18:37:01', 1, '2023-07-10 18:37:01', NULL, '2023-07-10 18:37:01', 1, NULL),
(156, 1, 14, 'en', NULL, '2023-07-10 18:37:10', 1, '2023-07-10 18:37:10', NULL, '2023-07-10 18:37:10', 1, NULL),
(157, 1, 14, 'en', NULL, '2023-07-10 18:37:24', 1, '2023-07-10 18:37:24', NULL, '2023-07-10 18:37:24', 1, NULL),
(158, 1, 14, 'en', NULL, '2023-07-10 18:37:34', 1, '2023-07-10 18:37:34', NULL, '2023-07-10 18:37:34', 1, NULL),
(159, 1, 14, 'en', NULL, '2023-07-10 18:37:44', 1, '2023-07-10 18:37:44', NULL, '2023-07-10 18:37:44', 1, NULL),
(160, 1, 14, 'en', NULL, '2023-07-10 18:37:55', 1, '2023-07-10 18:37:55', NULL, '2023-07-10 18:37:55', 1, NULL),
(161, 1, 14, 'en', NULL, '2023-07-10 18:38:05', 1, '2023-07-10 18:38:05', NULL, '2023-07-10 18:38:05', 1, NULL),
(162, 1, 14, 'en', NULL, '2023-07-10 18:38:18', 1, '2023-07-10 18:38:18', NULL, '2023-07-10 18:38:18', 1, NULL),
(163, 1, 14, 'en', NULL, '2023-07-10 18:38:28', 1, '2023-07-10 18:38:28', NULL, '2023-07-10 18:38:28', 1, NULL),
(164, 1, 14, 'en', NULL, '2023-07-10 18:38:43', 1, '2023-07-10 18:38:43', NULL, '2023-07-10 18:38:43', 1, NULL),
(165, 1, 14, 'en', NULL, '2023-07-10 18:38:53', 1, '2023-07-10 18:38:53', NULL, '2023-07-10 18:38:53', 1, NULL),
(166, 1, 14, 'en', NULL, '2023-07-10 18:39:03', 1, '2023-07-10 18:39:03', NULL, '2023-07-10 18:39:03', 1, NULL),
(167, 1, 14, 'en', NULL, '2023-07-10 18:39:13', 1, '2023-07-10 18:39:13', NULL, '2023-07-10 18:39:13', 1, NULL),
(168, 1, 14, 'en', NULL, '2023-07-10 18:39:24', 1, '2023-07-10 18:39:24', NULL, '2023-07-10 18:39:24', 1, NULL),
(169, 1, 14, 'en', NULL, '2023-07-10 18:39:37', 1, '2023-07-10 18:39:37', NULL, '2023-07-10 18:39:37', 1, NULL),
(170, 1, 14, 'en', NULL, '2023-07-10 18:39:50', 1, '2023-07-10 18:39:50', NULL, '2023-07-10 18:39:50', 1, NULL),
(171, 1, 14, 'en', NULL, '2023-07-10 18:40:01', 1, '2023-07-10 18:40:01', NULL, '2023-07-10 18:40:01', 1, NULL),
(172, 1, 14, 'en', NULL, '2023-07-10 18:40:13', 1, '2023-07-10 18:40:13', NULL, '2023-07-10 18:40:13', 1, NULL),
(173, 1, 14, 'en', NULL, '2023-07-10 18:40:24', 1, '2023-07-10 18:40:24', NULL, '2023-07-10 18:40:24', 1, NULL),
(174, 1, 14, 'en', NULL, '2023-07-10 18:40:44', 1, '2023-07-10 18:40:44', NULL, '2023-07-10 18:40:44', 1, NULL),
(175, 1, 14, 'en', NULL, '2023-07-10 18:40:54', 1, '2023-07-10 18:40:54', NULL, '2023-07-10 18:40:54', 1, NULL),
(176, 1, 14, 'en', NULL, '2023-07-10 18:41:06', 1, '2023-07-10 18:41:06', NULL, '2023-07-10 18:41:06', 1, NULL),
(177, 1, 14, 'en', NULL, '2023-07-10 18:41:16', 1, '2023-07-10 18:41:16', NULL, '2023-07-10 18:41:16', 1, NULL),
(178, 1, 14, 'en', NULL, '2023-07-10 18:41:29', 1, '2023-07-10 18:41:29', NULL, '2023-07-10 18:41:29', 1, NULL),
(179, 1, 14, 'en', NULL, '2023-07-10 18:41:53', 1, '2023-07-10 18:41:53', NULL, '2023-07-10 18:41:53', 1, NULL),
(180, 1, 14, 'en', NULL, '2023-07-10 18:42:06', 1, '2023-07-10 18:42:06', NULL, '2023-07-10 18:42:06', 1, NULL),
(181, 1, 14, 'en', NULL, '2023-07-10 18:42:17', 1, '2023-07-10 18:42:17', NULL, '2023-07-10 18:42:17', 1, NULL),
(182, 1, 14, 'en', NULL, '2023-07-10 18:42:27', 1, '2023-07-10 18:42:27', NULL, '2023-07-10 18:42:27', 1, NULL),
(183, 1, 11, 'en', NULL, '2023-07-10 18:43:40', 1, '2023-07-10 18:43:40', NULL, '2023-07-10 18:43:40', 1, NULL),
(184, 1, 11, 'en', NULL, '2023-07-10 18:43:56', 1, '2023-07-10 18:43:56', NULL, '2023-07-10 18:43:56', 1, NULL),
(185, 1, 11, 'en', NULL, '2023-07-10 18:44:04', 1, '2023-07-10 18:44:04', NULL, '2023-07-10 18:44:04', 1, NULL),
(186, 1, 11, 'en', NULL, '2023-07-10 18:44:09', 1, '2023-07-10 18:44:09', NULL, '2023-07-10 18:44:09', 1, NULL),
(187, 1, 11, 'en', NULL, '2023-07-10 18:44:13', 1, '2023-07-10 18:44:13', NULL, '2023-07-10 18:44:13', 1, NULL),
(188, 1, 11, 'en', NULL, '2023-07-10 18:44:17', 1, '2023-07-10 18:44:17', NULL, '2023-07-10 18:44:17', 1, NULL),
(189, 1, 11, 'en', NULL, '2023-07-10 18:44:21', 1, '2023-07-10 18:44:21', NULL, '2023-07-10 18:44:21', 1, NULL),
(190, 1, 11, 'en', NULL, '2023-07-10 18:44:25', 1, '2023-07-10 18:44:25', NULL, '2023-07-10 18:44:25', 1, NULL),
(191, 1, 11, 'en', NULL, '2023-07-10 18:44:30', 1, '2023-07-10 18:44:30', NULL, '2023-07-10 18:44:30', 1, NULL),
(192, 1, 11, 'en', NULL, '2023-07-10 18:44:35', 1, '2023-07-10 18:44:35', NULL, '2023-07-10 18:44:35', 1, NULL),
(193, 1, 11, 'en', NULL, '2023-07-10 18:44:39', 1, '2023-07-10 18:44:39', NULL, '2023-07-10 18:44:39', 1, NULL),
(194, 1, 11, 'en', NULL, '2023-07-10 18:44:43', 1, '2023-07-10 18:44:43', NULL, '2023-07-10 18:44:43', 1, NULL),
(195, 1, 11, 'en', NULL, '2023-07-10 18:44:48', 1, '2023-07-10 18:44:48', NULL, '2023-07-10 18:44:48', 1, NULL),
(196, 1, 11, 'en', NULL, '2023-07-10 18:44:52', 1, '2023-07-10 18:44:52', NULL, '2023-07-10 18:44:52', 1, NULL),
(197, 1, 11, 'en', NULL, '2023-07-10 18:44:56', 1, '2023-07-10 18:44:56', NULL, '2023-07-10 18:44:56', 1, NULL),
(198, 1, 11, 'en', NULL, '2023-07-10 18:45:01', 1, '2023-07-10 18:45:01', NULL, '2023-07-10 18:45:01', 1, NULL),
(199, 1, 11, 'en', NULL, '2023-07-10 18:45:05', 1, '2023-07-10 18:45:05', NULL, '2023-07-10 18:45:05', 1, NULL),
(200, 1, 11, 'en', NULL, '2023-07-10 18:45:10', 1, '2023-07-10 18:45:10', NULL, '2023-07-10 18:45:10', 1, NULL),
(201, 1, 11, 'en', NULL, '2023-07-10 18:45:15', 1, '2023-07-10 18:45:15', NULL, '2023-07-10 18:45:15', 1, NULL),
(202, 1, 11, 'en', NULL, '2023-07-10 18:45:20', 1, '2023-07-10 18:45:20', NULL, '2023-07-10 18:45:20', 1, NULL),
(203, 1, 11, 'en', NULL, '2023-07-10 18:45:24', 1, '2023-07-10 18:45:24', NULL, '2023-07-10 18:45:24', 1, NULL),
(204, 1, 11, 'en', NULL, '2023-07-10 18:45:29', 1, '2023-07-10 18:45:29', NULL, '2023-07-10 18:45:29', 1, NULL),
(205, 1, 11, 'en', NULL, '2023-07-10 18:45:34', 1, '2023-07-10 18:45:34', NULL, '2023-07-10 18:45:34', 1, NULL),
(206, 1, 11, 'en', NULL, '2023-07-10 18:45:38', 1, '2023-07-10 18:45:38', NULL, '2023-07-10 18:45:38', 1, NULL),
(207, 1, 11, 'en', NULL, '2023-07-10 18:45:43', 1, '2023-07-10 18:45:43', NULL, '2023-07-10 18:45:43', 1, NULL),
(208, 1, 11, 'en', NULL, '2023-07-10 18:45:47', 1, '2023-07-10 18:45:47', NULL, '2023-07-10 18:45:47', 1, NULL),
(209, 1, 11, 'en', NULL, '2023-07-10 18:45:51', 1, '2023-07-10 18:45:51', NULL, '2023-07-10 18:45:51', 1, NULL),
(210, 1, 11, 'en', NULL, '2023-07-10 18:45:55', 1, '2023-07-10 18:45:55', NULL, '2023-07-10 18:45:55', 1, NULL),
(211, 1, 11, 'en', NULL, '2023-07-10 18:45:59', 1, '2023-07-10 18:45:59', NULL, '2023-07-10 18:45:59', 1, NULL),
(212, 1, 11, 'en', NULL, '2023-07-10 18:46:05', 1, '2023-07-10 18:46:05', NULL, '2023-07-10 18:46:05', 1, NULL),
(213, 1, 11, 'en', NULL, '2023-07-10 18:46:09', 1, '2023-07-10 18:46:09', NULL, '2023-07-10 18:46:09', 1, NULL),
(214, 1, 11, 'en', NULL, '2023-07-10 18:46:13', 1, '2023-07-10 18:46:13', NULL, '2023-07-10 18:46:13', 1, NULL),
(215, 1, 11, 'en', NULL, '2023-07-10 18:46:17', 1, '2023-07-10 18:46:17', NULL, '2023-07-10 18:46:17', 1, NULL),
(216, 1, 11, 'en', NULL, '2023-07-10 18:46:22', 1, '2023-07-10 18:46:22', NULL, '2023-07-10 18:46:22', 1, NULL),
(217, 1, 11, 'en', NULL, '2023-07-10 18:46:26', 1, '2023-07-10 18:46:26', NULL, '2023-07-10 18:46:26', 1, NULL),
(218, 1, 11, 'en', NULL, '2023-07-10 18:46:33', 1, '2023-07-10 18:46:33', NULL, '2023-07-10 18:46:33', 1, NULL),
(219, 1, 11, 'en', NULL, '2023-07-10 18:46:44', 1, '2023-07-10 18:46:44', NULL, '2023-07-10 18:46:44', 1, NULL),
(220, 1, 10, 'en', NULL, '2023-08-24 10:44:22', 1, '2023-08-24 10:44:26', 1, '2023-08-24 10:44:26', 1, NULL),
(221, 1, 18, 'en', NULL, '2023-08-24 10:45:39', 1, '2023-08-24 10:45:39', NULL, '2023-08-24 10:45:39', 1, NULL),
(222, 1, 16, 'en', NULL, '2023-08-24 10:46:18', 1, '2023-08-24 10:46:18', NULL, '2023-08-24 10:46:18', 1, NULL),
(223, 1, 3, 'en', NULL, '2023-08-24 11:18:22', 1, '2023-08-24 11:18:22', NULL, '2023-08-24 11:18:22', 1, NULL),
(224, 1, 4, 'en', NULL, '2023-08-24 11:18:47', 1, '2023-08-24 11:19:10', 1, '2023-08-24 11:19:10', 1, NULL),
(225, 1, 2, 'en', NULL, '2023-08-24 11:19:28', 1, '2023-08-24 11:19:28', NULL, '2023-08-24 11:19:28', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_meta`
--

CREATE TABLE `content_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_meta`
--

INSERT INTO `content_meta` (`id`, `project_id`, `collection_id`, `content_id`, `field_name`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, 1, 'name', 'Population', '2023-07-09 20:29:11', '2023-07-09 20:29:11', NULL),
(2, 1, 8, 1, 'description', 'Nigeria is the most populous country in Africa, with a population of over 200 million people. The population is growing rapidly, at an annual rate of 2.5%. This growth is putting a strain on the country\'s resources, such as food, water, and energy. Labour Market: The Nigerian labour market is characterized by high levels of unemployment and underemployment. The unemployment rate is estimated to be around 23%, and the underemployment rate is even higher. This is due to a number of factors, including the rapid population growth, the lack of job creation, and the mismatch between the skills of the workforce and the needs of the economy. LMIS: The LMIS is a system that collects and analyzes data on the Nigerian labour market. The system is used to track the trends in the labour market, identify areas of weakness, and develop policies to improve the labour market.', '2023-07-09 20:29:11', '2023-07-09 20:29:11', NULL),
(3, 1, 8, 2, 'name', 'Employment', '2023-07-09 20:29:50', '2023-07-09 20:29:50', NULL),
(4, 1, 8, 2, 'description', 'The employment indicators in Nigeria, as reflected in the Labor Market Information System, point to persistent challenges in job creation, skills development, and gender equality. Addressing these issues requires comprehensive strategies, including enhancing vocational training, diversifying the economy, promoting entrepreneurship, and implementing policies that foster inclusive growth and job creation.', '2023-07-09 20:29:50', '2023-07-09 20:29:50', NULL),
(5, 1, 8, 3, 'name', 'Education', '2023-07-09 20:30:10', '2023-07-09 20:30:10', NULL),
(6, 1, 8, 3, 'description', 'Education information Nigeria has a large and growing population, with over 200 million people. The population is young, with a median age of 18.4 years. This means that there is a large number of people of school age. The education system is a key factor in determining the skills and productivity of the workforce. A well-educated workforce is more likely to be employed and to earn higher wages.', '2023-07-09 20:30:10', '2023-07-09 20:30:10', NULL),
(7, 1, 8, 4, 'name', 'Unemployment', '2023-07-09 20:30:31', '2023-07-09 20:30:31', NULL),
(8, 1, 8, 4, 'description', 'Unemployment is a major problem in Nigeria. The unemployment rate is estimated to be around 23%, and the underemployment rate is even higher. This means that a large number of people in Nigeria are either unemployed or underemployed. The LMIS is a valuable tool for policymakers who are trying to address the challenges of unemployment in Nigeria. The system provides data that can be used to develop policies that will help to create jobs, improve the skills of the workforce, and make the labour market more efficient.', '2023-07-09 20:30:31', '2023-07-09 20:30:31', NULL),
(9, 1, 9, 5, 'name', 'Labour force participation rate', '2023-07-09 20:34:43', '2023-07-09 20:34:43', NULL),
(10, 1, 9, 5, 'description', 'A measure of the proportion of a country’s working-age population that engages actively in the labour market.', '2023-07-09 20:34:43', '2023-07-09 20:34:43', NULL),
(11, 1, 9, 6, 'name', 'Employment-to-population ratio', '2023-07-09 20:35:04', '2023-07-09 20:35:04', NULL),
(12, 1, 9, 6, 'description', 'The employment-to-population ratio is defined as the proportion of a country’s working-age population that is employed.', '2023-07-09 20:35:04', '2023-07-09 20:35:04', NULL),
(13, 1, 8, 1, 'indicators', '5,6', '2023-07-09 20:35:20', '2023-07-09 20:35:20', NULL),
(14, 1, 9, 5, 'indicator-category', '1', '2023-07-09 21:00:41', '2023-07-09 21:00:41', NULL),
(15, 1, 9, 5, 'dimensions', 'labour_force,year,working_age_population,participation_rate', '2023-07-09 21:00:41', '2023-07-09 21:04:57', NULL),
(16, 1, 9, 6, 'indicator-category', '1', '2023-07-09 21:01:00', '2023-07-09 21:01:00', NULL),
(17, 1, 9, 6, 'dimensions', 'employment_ratio,working_age_population,employed,year', '2023-07-09 21:01:00', '2023-07-09 21:05:37', NULL),
(18, 1, 10, 7, 'indicators', '5', '2023-07-09 21:07:13', '2023-07-10 18:00:13', '2023-07-10 18:00:13'),
(19, 1, 10, 7, 'year', '2021', '2023-07-09 21:07:13', '2023-07-10 18:00:13', '2023-07-10 18:00:13'),
(20, 1, 17, 8, 'name', 'Government Report', '2023-07-09 22:44:22', '2023-07-09 22:44:22', NULL),
(21, 1, 17, 9, 'name', 'Research Study', '2023-07-09 22:44:56', '2023-07-09 22:44:56', NULL),
(22, 1, 17, 10, 'name', 'Industry Publication', '2023-07-09 22:45:06', '2023-07-09 22:45:06', NULL),
(23, 1, 17, 11, 'name', 'Academic Journal', '2023-07-09 22:45:14', '2023-07-09 22:45:14', NULL),
(24, 1, 17, 12, 'name', 'Survey Data', '2023-07-09 22:45:22', '2023-07-09 22:45:22', NULL),
(25, 1, 17, 13, 'name', 'Labor Market Analysis', '2023-07-09 22:45:32', '2023-07-09 22:45:32', NULL),
(26, 1, 17, 14, 'name', 'Company Report', '2023-07-09 22:45:44', '2023-07-09 22:45:44', NULL),
(27, 1, 17, 15, 'name', 'Statistical Database', '2023-07-09 22:45:53', '2023-07-09 22:45:53', NULL),
(28, 1, 17, 16, 'name', 'Online Platform', '2023-07-09 22:46:04', '2023-07-09 22:46:04', NULL),
(29, 1, 17, 17, 'name', 'Economic Research', '2023-07-09 22:46:13', '2023-07-09 22:46:13', NULL),
(30, 1, 17, 18, 'name', 'Trade Association Publication', '2023-07-09 22:46:21', '2023-07-09 22:46:21', NULL),
(31, 1, 17, 19, 'name', 'Policy Brief', '2023-07-09 22:46:30', '2023-07-09 22:46:30', NULL),
(32, 1, 17, 20, 'name', 'Case Study', '2023-07-09 22:46:37', '2023-07-09 22:46:37', NULL),
(33, 1, 17, 21, 'name', 'Whitepaper', '2023-07-09 22:46:44', '2023-07-09 22:46:44', NULL),
(34, 1, 17, 22, 'name', 'News Article', '2023-07-09 22:46:51', '2023-07-09 22:46:51', NULL),
(35, 1, 17, 23, 'name', 'Data Aggregator', '2023-07-09 22:46:58', '2023-07-09 22:46:58', NULL),
(36, 1, 17, 24, 'name', 'Government Database', '2023-07-09 22:47:06', '2023-07-09 22:47:06', NULL),
(37, 1, 17, 25, 'name', 'Think Tank Report', '2023-07-09 22:47:14', '2023-07-09 22:47:14', NULL),
(38, 1, 17, 26, 'name', 'International Organization Report', '2023-07-09 22:47:23', '2023-07-09 22:47:23', NULL),
(39, 1, 17, 27, 'name', 'Market Research', '2023-07-09 22:47:31', '2023-07-09 22:47:31', NULL),
(40, 1, 15, 28, 'name', 'Occupational Demand', '2023-07-09 22:48:21', '2023-07-09 22:48:21', NULL),
(41, 1, 15, 29, 'name', 'Unemployment Rates', '2023-07-09 22:48:29', '2023-07-09 22:48:29', NULL),
(42, 1, 15, 30, 'name', 'Education and Training', '2023-07-09 22:48:40', '2023-07-09 22:48:40', NULL),
(43, 1, 15, 31, 'name', 'Wage and Salary Data', '2023-07-09 22:48:49', '2023-07-09 22:48:49', NULL),
(44, 1, 15, 32, 'name', 'Workforce Trends', '2023-07-09 22:48:56', '2023-07-09 22:48:56', NULL),
(45, 1, 15, 33, 'name', 'Job Vacancy Analysis', '2023-07-09 22:49:06', '2023-07-09 22:49:06', NULL),
(46, 1, 15, 34, 'name', 'Industry Growth', '2023-07-09 22:49:13', '2023-07-09 22:49:13', NULL),
(47, 1, 15, 35, 'name', 'Labor Force Participation', '2023-07-09 22:49:21', '2023-07-09 22:49:21', NULL),
(48, 1, 15, 36, 'name', 'Skill Gaps', '2023-07-09 22:49:28', '2023-07-09 22:49:28', NULL),
(49, 1, 15, 37, 'name', 'Emerging Occupations', '2023-07-09 22:49:36', '2023-07-09 22:49:36', NULL),
(50, 1, 15, 38, 'name', 'Economic Indicators', '2023-07-09 22:49:44', '2023-07-09 22:49:44', NULL),
(51, 1, 15, 39, 'name', 'Regional Analysis', '2023-07-09 22:49:52', '2023-07-09 22:49:52', NULL),
(52, 1, 15, 40, 'name', 'Demographic Analysis', '2023-07-09 22:50:00', '2023-07-09 22:50:00', NULL),
(53, 1, 15, 41, 'name', 'Workforce Diversity', '2023-07-09 22:50:09', '2023-07-09 22:50:09', NULL),
(54, 1, 15, 42, 'name', 'Labor Market Policies', '2023-07-09 22:50:16', '2023-07-09 22:50:16', NULL),
(55, 1, 15, 43, 'name', 'Job Market Outlook', '2023-07-09 22:50:23', '2023-07-09 22:50:23', NULL),
(56, 1, 15, 44, 'name', 'Technology and Automation', '2023-07-09 22:50:32', '2023-07-09 22:50:32', NULL),
(57, 1, 15, 45, 'name', 'Employment Regulations', '2023-07-09 22:50:40', '2023-07-09 22:50:40', NULL),
(58, 1, 15, 46, 'name', 'Entrepreneurship and Startups', '2023-07-09 22:50:49', '2023-07-09 22:50:49', NULL),
(59, 1, 15, 47, 'name', 'Workforce Development Programs', '2023-07-09 22:50:57', '2023-07-09 22:50:57', NULL),
(60, 1, 9, 48, 'name', 'Status in Employment', '2023-07-09 23:01:47', '2023-07-09 23:01:47', NULL),
(61, 1, 9, 48, 'indicator-category', '2', '2023-07-09 23:01:47', '2023-07-09 23:01:47', NULL),
(62, 1, 9, 48, 'description', 'It distinguishes between two categories of the total employed. These are (a) wage and salaried workers (also known as employees), and (b) self-employed workers.', '2023-07-09 23:01:47', '2023-07-09 23:01:47', NULL),
(63, 1, 9, 48, 'dimensions', 'year,total_employed,wage_salaried_workers,self_employed_workers', '2023-07-09 23:01:47', '2023-07-09 23:05:07', NULL),
(64, 1, 9, 49, 'name', 'Employment by Sector', '2023-07-09 23:09:04', '2023-07-09 23:09:04', NULL),
(65, 1, 9, 49, 'description', 'This indicator classifies employment into three broad sectors – agriculture, industry, and services – and expresses each as a percentage of total employment.', '2023-07-09 23:09:04', '2023-07-09 23:09:04', NULL),
(66, 1, 9, 49, 'dimensions', 'year,total_employed,agriculture_employment,industry_employment,services_employment', '2023-07-09 23:09:04', '2023-07-09 23:09:04', NULL),
(67, 1, 9, 49, 'indicator-category', '2', '2023-07-09 23:09:04', '2023-07-09 23:09:04', NULL),
(68, 1, 9, 50, 'indicator-category', '2', '2023-07-10 17:16:04', '2023-07-10 17:16:04', NULL),
(69, 1, 9, 50, 'name', 'Employment by Occupation', '2023-07-10 17:16:04', '2023-07-10 17:16:04', NULL),
(70, 1, 9, 50, 'description', 'The Indicator is use for analysis of imbalances in supply and demand in different labour markets.', '2023-07-10 17:16:04', '2023-07-10 17:16:04', NULL),
(71, 1, 9, 50, 'dimensions', 'year,total-employed,occupation,occupation-employment', '2023-07-10 17:16:04', '2023-07-10 17:16:04', NULL),
(72, 1, 9, 51, 'indicator-category', '2', '2023-07-10 17:18:51', '2023-07-10 17:18:51', NULL),
(73, 1, 9, 51, 'name', 'Part-time workers', '2023-07-10 17:18:51', '2023-07-10 17:18:51', NULL),
(74, 1, 9, 51, 'description', 'This indicator is use to study labour market flexibility in reaction to changing work organization. E.g. Proportion of part-time workers to total workforce', '2023-07-10 17:18:51', '2023-07-10 17:18:51', NULL),
(75, 1, 9, 51, 'dimensions', 'year,part-time-workers,labour-force', '2023-07-10 17:18:51', '2023-07-10 17:44:42', NULL),
(76, 1, 9, 52, 'indicator-category', '2', '2023-07-10 17:22:10', '2023-07-10 17:22:10', NULL),
(77, 1, 9, 52, 'name', 'Hours of work', '2023-07-10 17:22:10', '2023-07-10 17:22:10', NULL),
(78, 1, 9, 52, 'description', 'The number of hours worked has an impact on the health and well-being of workers as well as on levels of productivity and labour costs of establishments.', '2023-07-10 17:22:10', '2023-07-10 17:22:10', NULL),
(79, 1, 9, 52, 'dimensions', 'year,occupation,average-hours-worked,health-and-wellbeing,labour-productivity,labour-costs', '2023-07-10 17:22:10', '2023-07-10 17:22:10', NULL),
(80, 1, 9, 53, 'indicator-category', '2', '2023-07-10 17:23:29', '2023-07-10 17:23:29', NULL),
(81, 1, 9, 53, 'name', 'Employment in the informal economy', '2023-07-10 17:23:29', '2023-07-10 17:23:29', NULL),
(82, 1, 9, 53, 'description', 'The indicator shows the proportion of informal sector employment to the total workforce vis –a- vis contribution to GDP.', '2023-07-10 17:23:29', '2023-07-10 17:23:29', NULL),
(83, 1, 9, 53, 'dimensions', 'year,informal-sector-unemployment,gdp-contribution,labour-force', '2023-07-10 17:23:29', '2023-07-10 17:44:10', NULL),
(84, 1, 9, 54, 'name', 'Labour productivity', '2023-07-10 17:25:18', '2023-07-10 17:25:18', NULL),
(85, 1, 9, 54, 'indicator-category', '2', '2023-07-10 17:25:18', '2023-07-10 17:25:18', NULL),
(86, 1, 9, 54, 'description', 'In combination with hourly compensation costs, can be used to assess the international competitiveness of a labour market.', '2023-07-10 17:25:18', '2023-07-10 17:25:18', NULL),
(87, 1, 9, 54, 'dimensions', 'year,labour-productivity,hourly-compensation-costs,international-competitiveness', '2023-07-10 17:25:18', '2023-07-10 17:25:18', NULL),
(88, 1, 9, 55, 'indicator-category', '2', '2023-07-10 17:27:08', '2023-07-10 17:27:08', NULL),
(89, 1, 9, 55, 'name', 'Labour migration rate', '2023-07-10 17:27:08', '2023-07-10 17:27:08', NULL),
(90, 1, 9, 55, 'dimensions', 'year,immigrants,emigrants,labour-force', '2023-07-10 17:27:08', '2023-07-10 17:43:42', NULL),
(91, 1, 9, 55, 'description', 'Labour migration rate', '2023-07-10 17:27:08', '2023-07-10 17:27:08', NULL),
(92, 1, 9, 56, 'name', 'Labour health insurance coverage rate', '2023-07-10 17:28:20', '2023-07-10 17:28:20', NULL),
(93, 1, 9, 56, 'description', 'Labour health insurance coverage rate', '2023-07-10 17:28:20', '2023-07-10 17:28:20', NULL),
(94, 1, 9, 56, 'dimensions', 'year,insured-workforce,uninsured-workforce,labour-force', '2023-07-10 17:28:20', '2023-07-10 17:43:16', NULL),
(95, 1, 9, 56, 'indicator-category', '2', '2023-07-10 17:28:20', '2023-07-10 17:28:20', NULL),
(96, 1, 9, 57, 'indicator-category', '2', '2023-07-10 17:29:31', '2023-07-10 17:29:31', NULL),
(97, 1, 9, 57, 'name', 'Employment of special needs as a percentage of total employment.', '2023-07-10 17:29:31', '2023-07-10 17:29:31', NULL),
(98, 1, 9, 57, 'description', 'Employment of special needs as a percentage of total employment.', '2023-07-10 17:29:31', '2023-07-10 17:29:31', NULL),
(99, 1, 9, 57, 'dimensions', 'year,total-employed,special-needs-employment', '2023-07-10 17:29:31', '2023-07-10 17:29:31', NULL),
(100, 1, 9, 58, 'name', 'Educational attainment and illteracy', '2023-07-10 17:31:45', '2023-07-10 17:31:45', NULL),
(101, 1, 9, 58, 'indicator-category', '3', '2023-07-10 17:31:45', '2023-07-10 17:42:11', NULL),
(102, 1, 9, 58, 'description', 'It presents statistics on the level and distribution of the knowledge and skills base of the labour force and the unemployed.', '2023-07-10 17:31:45', '2023-07-10 17:31:45', NULL),
(103, 1, 9, 58, 'dimensions', 'year,total-unemployed,illeterate-labour-force,educational-attainment,illeterate-unemployed,labour-force', '2023-07-10 17:31:45', '2023-07-10 17:42:11', NULL),
(104, 1, 9, 59, 'name', 'Skills mismatch', '2023-07-10 17:34:25', '2023-07-10 17:34:25', NULL),
(105, 1, 9, 59, 'indicator-category', '3', '2023-07-10 17:34:25', '2023-07-10 17:41:23', NULL),
(106, 1, 9, 59, 'description', 'This provides information on the extent to which the supply of skills matches the demand for skills.', '2023-07-10 17:34:25', '2023-07-10 17:34:25', NULL),
(107, 1, 9, 59, 'dimensions', 'year,job-openings,skills-mismatch,labour-force,total-employed', '2023-07-10 17:34:25', '2023-07-10 17:41:23', NULL),
(108, 1, 9, 60, 'indicator-category', '3', '2023-07-10 17:36:32', '2023-07-10 17:42:39', NULL),
(109, 1, 9, 60, 'name', 'Wages and compensation costs', '2023-07-10 17:36:32', '2023-07-10 17:36:32', NULL),
(110, 1, 9, 60, 'description', 'This is a measure of the level and trend of workers’ purchasing power and an approximation of their standard of living.', '2023-07-10 17:36:32', '2023-07-10 17:36:32', NULL),
(111, 1, 9, 60, 'dimensions', 'year,occupation,average-wage,compensation-costs,purchasing-power,standard-of-living', '2023-07-10 17:36:32', '2023-07-10 17:37:14', NULL),
(112, 1, 9, 61, 'indicator-category', '4', '2023-07-10 17:39:49', '2023-07-10 17:39:49', NULL),
(113, 1, 9, 61, 'name', 'Unemployment', '2023-07-10 17:39:49', '2023-07-10 17:39:49', NULL),
(114, 1, 9, 61, 'description', 'The unemployment rate is probably the best known labour market measure and certainly one of the most widely quoted by the media in many countries.', '2023-07-10 17:39:49', '2023-07-10 17:39:49', NULL),
(115, 1, 9, 61, 'dimensions', 'year,labour-force,total-unemployed', '2023-07-10 17:39:49', '2023-07-10 17:39:49', NULL),
(116, 1, 9, 62, 'indicator-category', '4', '2023-07-10 17:48:11', '2023-07-10 17:48:11', NULL),
(117, 1, 9, 62, 'name', 'The youth unemployment rate', '2023-07-10 17:48:11', '2023-07-10 17:48:11', NULL),
(118, 1, 9, 62, 'description', '(a) the youth unemployment rate as a percentage of the adult unemployment rate; (b) the youth share in total unemployment; and (c) youth unemployment as a proportion of the youth population.', '2023-07-10 17:48:11', '2023-07-10 17:48:11', NULL),
(119, 1, 9, 62, 'dimensions', 'year,total-unemployed,youth-unemployment,adult-unemployment', '2023-07-10 17:48:11', '2023-07-10 17:48:11', NULL),
(120, 1, 9, 63, 'indicator-category', '4', '2023-07-10 17:50:44', '2023-07-10 17:50:44', NULL),
(121, 1, 9, 63, 'name', 'Inactivity', '2023-07-10 17:50:44', '2023-07-10 17:50:44', NULL),
(122, 1, 9, 63, 'description', 'The inactivity rate is defined as the percentage of the population that is neither working nor seeking work (that is, not in the labour force).', '2023-07-10 17:50:44', '2023-07-10 17:50:44', NULL),
(123, 1, 9, 63, 'dimensions', 'year,labour-force,inactive-population,total-unemployed,total-population', '2023-07-10 17:50:44', '2023-07-10 17:50:55', NULL),
(124, 1, 9, 64, 'name', 'Long-term unemployment', '2023-07-10 17:52:22', '2023-07-10 17:52:22', NULL),
(125, 1, 9, 64, 'description', 'The proportion of the employee who are out of work for more than one year.', '2023-07-10 17:52:22', '2023-07-10 17:52:22', NULL),
(126, 1, 9, 64, 'indicator-category', '4', '2023-07-10 17:52:22', '2023-07-10 17:52:22', NULL),
(127, 1, 9, 64, 'dimensions', 'year,total-employed,long-term-unemployed', '2023-07-10 17:52:22', '2023-07-10 17:52:22', NULL),
(128, 1, 9, 65, 'name', 'Time-related underemployment', '2023-07-10 17:54:55', '2023-07-10 17:54:55', NULL),
(129, 1, 9, 65, 'indicator-category', '4', '2023-07-10 17:54:55', '2023-07-10 17:54:55', NULL),
(130, 1, 9, 65, 'description', 'This indicator shows the extent of the underutilization of the workforce.', '2023-07-10 17:54:55', '2023-07-10 17:54:55', NULL),
(131, 1, 9, 65, 'dimensions', 'year,total-employed,underemployed-workforce', '2023-07-10 17:54:55', '2023-07-10 17:54:55', NULL),
(132, 1, 12, 66, 'name', 'Agriculture and Farming', '2023-07-10 18:01:47', '2023-07-10 18:01:47', NULL),
(133, 1, 12, 67, 'name', 'Manufacturing', '2023-07-10 18:02:13', '2023-07-10 18:02:13', NULL),
(134, 1, 12, 68, 'name', 'Transportation and Logistics', '2023-07-10 18:02:22', '2023-07-10 18:02:22', NULL),
(135, 1, 12, 69, 'name', 'Retail', '2023-07-10 18:02:31', '2023-07-10 18:02:31', NULL),
(136, 1, 12, 70, 'name', 'Healthcare', '2023-07-10 18:02:38', '2023-07-10 18:02:38', NULL),
(137, 1, 12, 71, 'name', 'Education', '2023-07-10 18:02:44', '2023-07-10 18:02:44', NULL),
(138, 1, 12, 72, 'name', 'Information Technology (IT)', '2023-07-10 18:02:51', '2023-07-10 18:02:51', NULL),
(139, 1, 12, 73, 'name', 'Financial Services', '2023-07-10 18:02:57', '2023-07-10 18:02:57', NULL),
(140, 1, 12, 74, 'name', 'Hospitality and Tourism', '2023-07-10 18:03:03', '2023-07-10 18:03:03', NULL),
(141, 1, 12, 75, 'name', 'Entertainment and Media', '2023-07-10 18:03:10', '2023-07-10 18:03:10', NULL),
(142, 1, 12, 76, 'name', 'Energy and Utilities', '2023-07-10 18:03:17', '2023-07-10 18:03:17', NULL),
(143, 1, 12, 77, 'name', 'Government and Public Administration', '2023-07-10 18:03:23', '2023-07-10 18:03:23', NULL),
(144, 1, 12, 78, 'name', 'Professional Services (such as law, accounting, consulting)', '2023-07-10 18:03:30', '2023-07-10 18:03:30', NULL),
(145, 1, 12, 79, 'name', 'Real Estate and Property Management', '2023-07-10 18:03:37', '2023-07-10 18:03:37', NULL),
(146, 1, 12, 80, 'name', 'Automotive Industry', '2023-07-10 18:03:48', '2023-07-10 18:03:48', NULL),
(147, 1, 12, 81, 'name', 'Aerospace and Defense', '2023-07-10 18:03:54', '2023-07-10 18:03:54', NULL),
(148, 1, 12, 82, 'name', 'Telecommunications', '2023-07-10 18:04:02', '2023-07-10 18:04:02', NULL),
(149, 1, 12, 83, 'name', 'Food and Beverage', '2023-07-10 18:04:08', '2023-07-10 18:04:08', NULL),
(150, 1, 12, 84, 'name', 'Mining and Extraction', '2023-07-10 18:04:15', '2023-07-10 18:04:15', NULL),
(151, 1, 14, 85, 'name', 'Farmer', '2023-07-10 18:05:13', '2023-07-10 18:05:13', NULL),
(152, 1, 14, 85, 'sector', '66', '2023-07-10 18:05:13', '2023-07-10 18:05:13', NULL),
(153, 1, 14, 86, 'name', 'Agricultural Technician', '2023-07-10 18:05:51', '2023-07-10 18:05:51', NULL),
(154, 1, 14, 86, 'sector', '66', '2023-07-10 18:05:51', '2023-07-10 18:05:51', NULL),
(155, 1, 14, 87, 'name', 'Rancher', '2023-07-10 18:06:01', '2023-07-10 18:06:01', NULL),
(156, 1, 14, 87, 'sector', '66', '2023-07-10 18:06:01', '2023-07-10 18:06:01', NULL),
(157, 1, 14, 88, 'name', 'Horticulturist', '2023-07-10 18:06:12', '2023-07-10 18:06:12', NULL),
(158, 1, 14, 88, 'sector', '66', '2023-07-10 18:06:12', '2023-07-10 18:06:12', NULL),
(159, 1, 14, 89, 'name', 'Agricultural Engineer', '2023-07-10 18:06:24', '2023-07-10 18:06:24', NULL),
(160, 1, 14, 89, 'sector', '66', '2023-07-10 18:06:24', '2023-07-10 18:06:24', NULL),
(161, 1, 12, 90, 'name', 'Construction', '2023-07-10 18:08:07', '2023-07-10 18:08:07', NULL),
(162, 1, 14, 91, 'name', 'Carpenter', '2023-07-10 18:08:28', '2023-07-10 18:08:28', NULL),
(163, 1, 14, 91, 'sector', '90', '2023-07-10 18:08:28', '2023-07-10 18:08:28', NULL),
(164, 1, 14, 92, 'name', 'Electrician', '2023-07-10 18:08:42', '2023-07-10 18:08:42', NULL),
(165, 1, 14, 92, 'sector', '76', '2023-07-10 18:08:42', '2023-07-10 18:33:22', NULL),
(166, 1, 14, 93, 'name', 'Plumber', '2023-07-10 18:08:56', '2023-07-10 18:08:56', NULL),
(167, 1, 14, 93, 'sector', '90', '2023-07-10 18:08:56', '2023-07-10 18:08:56', NULL),
(168, 1, 14, 94, 'name', 'Construction Manager', '2023-07-10 18:09:10', '2023-07-10 18:09:10', NULL),
(169, 1, 14, 94, 'sector', '90', '2023-07-10 18:09:10', '2023-07-10 18:09:10', NULL),
(170, 1, 14, 95, 'name', 'Civil Engineer', '2023-07-10 18:09:24', '2023-07-10 18:09:24', NULL),
(171, 1, 14, 95, 'sector', '90', '2023-07-10 18:09:24', '2023-07-10 18:09:24', NULL),
(172, 1, 14, 96, 'name', 'Production Worker', '2023-07-10 18:09:49', '2023-07-10 18:09:49', NULL),
(173, 1, 14, 96, 'sector', '67', '2023-07-10 18:09:49', '2023-07-10 18:09:49', NULL),
(174, 1, 14, 97, 'name', 'Quality Control Inspector', '2023-07-10 18:09:59', '2023-07-10 18:09:59', NULL),
(175, 1, 14, 97, 'sector', '67', '2023-07-10 18:09:59', '2023-07-10 18:09:59', NULL),
(176, 1, 14, 98, 'name', 'Assembly Line Operator', '2023-07-10 18:10:10', '2023-07-10 18:10:10', NULL),
(177, 1, 14, 98, 'sector', '67', '2023-07-10 18:10:10', '2023-07-10 18:10:10', NULL),
(178, 1, 14, 99, 'name', 'Plant Manager', '2023-07-10 18:10:19', '2023-07-10 18:10:19', NULL),
(179, 1, 14, 99, 'sector', '67', '2023-07-10 18:10:19', '2023-07-10 18:10:19', NULL),
(180, 1, 14, 100, 'name', 'Industrial Engineer', '2023-07-10 18:10:29', '2023-07-10 18:10:29', NULL),
(181, 1, 14, 100, 'sector', '67', '2023-07-10 18:10:29', '2023-07-10 18:10:29', NULL),
(182, 1, 14, 101, 'name', 'Truck Driver', '2023-07-10 18:10:39', '2023-07-10 18:10:39', NULL),
(183, 1, 14, 101, 'sector', '68', '2023-07-10 18:10:39', '2023-07-10 18:10:39', NULL),
(184, 1, 14, 102, 'name', 'Warehouse Manager', '2023-07-10 18:10:48', '2023-07-10 18:10:48', NULL),
(185, 1, 14, 102, 'sector', '68', '2023-07-10 18:10:48', '2023-07-10 18:10:48', NULL),
(186, 1, 14, 103, 'name', 'Logistics Coordinator', '2023-07-10 18:10:58', '2023-07-10 18:10:58', NULL),
(187, 1, 14, 103, 'sector', '68', '2023-07-10 18:10:58', '2023-07-10 18:10:58', NULL),
(188, 1, 14, 104, 'name', 'Delivery Driver', '2023-07-10 18:11:09', '2023-07-10 18:11:09', NULL),
(189, 1, 14, 104, 'sector', '68', '2023-07-10 18:11:09', '2023-07-10 18:11:09', NULL),
(190, 1, 14, 105, 'name', 'Freight Broker', '2023-07-10 18:11:23', '2023-07-10 18:11:23', NULL),
(191, 1, 14, 105, 'sector', '68', '2023-07-10 18:11:23', '2023-07-10 18:11:23', NULL),
(192, 1, 14, 106, 'name', 'Sales Associate', '2023-07-10 18:11:41', '2023-07-10 18:11:41', NULL),
(193, 1, 14, 106, 'sector', '69', '2023-07-10 18:11:41', '2023-07-10 18:11:41', NULL),
(194, 1, 14, 107, 'name', 'Store Manager', '2023-07-10 18:11:51', '2023-07-10 18:11:51', NULL),
(195, 1, 14, 107, 'sector', '69', '2023-07-10 18:11:51', '2023-07-10 18:11:51', NULL),
(196, 1, 14, 108, 'name', 'Visual Merchandiser', '2023-07-10 18:12:01', '2023-07-10 18:12:01', NULL),
(197, 1, 14, 108, 'sector', '69', '2023-07-10 18:12:01', '2023-07-10 18:12:01', NULL),
(198, 1, 14, 109, 'name', 'Cashier', '2023-07-10 18:12:11', '2023-07-10 18:12:11', NULL),
(199, 1, 14, 109, 'sector', '69', '2023-07-10 18:12:11', '2023-07-10 18:12:11', NULL),
(200, 1, 14, 110, 'name', 'Retail Buyer', '2023-07-10 18:12:37', '2023-07-10 18:12:37', NULL),
(201, 1, 14, 110, 'sector', '69', '2023-07-10 18:12:37', '2023-07-10 18:12:37', NULL),
(202, 1, 14, 111, 'name', 'Doctor', '2023-07-10 18:12:48', '2023-07-10 18:12:48', NULL),
(203, 1, 14, 111, 'sector', '70', '2023-07-10 18:12:48', '2023-07-10 18:12:48', NULL),
(204, 1, 14, 112, 'name', 'Nurse', '2023-07-10 18:12:57', '2023-07-10 18:12:57', NULL),
(205, 1, 14, 112, 'sector', '70', '2023-07-10 18:12:57', '2023-07-10 18:12:57', NULL),
(206, 1, 14, 113, 'name', 'Pharmacist', '2023-07-10 18:13:07', '2023-07-10 18:13:07', NULL),
(207, 1, 14, 113, 'sector', '70', '2023-07-10 18:13:07', '2023-07-10 18:13:07', NULL),
(208, 1, 14, 114, 'name', 'Medical Technologist', '2023-07-10 18:13:16', '2023-07-10 18:13:16', NULL),
(209, 1, 14, 114, 'sector', '70', '2023-07-10 18:13:16', '2023-07-10 18:13:16', NULL),
(210, 1, 14, 115, 'name', 'Physical Therapist', '2023-07-10 18:13:25', '2023-07-10 18:13:25', NULL),
(211, 1, 14, 115, 'sector', '70', '2023-07-10 18:13:25', '2023-07-10 18:13:25', NULL),
(212, 1, 14, 116, 'name', 'Teacher', '2023-07-10 18:13:40', '2023-07-10 18:13:40', NULL),
(213, 1, 14, 116, 'sector', '71', '2023-07-10 18:13:40', '2023-07-10 18:13:40', NULL),
(214, 1, 14, 117, 'name', 'Principal', '2023-07-10 18:13:51', '2023-07-10 18:13:51', NULL),
(215, 1, 14, 117, 'sector', '71', '2023-07-10 18:13:51', '2023-07-10 18:13:51', NULL),
(216, 1, 14, 118, 'name', 'Librarian', '2023-07-10 18:14:11', '2023-07-10 18:14:11', NULL),
(217, 1, 14, 118, 'sector', '71', '2023-07-10 18:14:11', '2023-07-10 18:14:11', NULL),
(218, 1, 14, 119, 'name', 'School Counselor', '2023-07-10 18:14:23', '2023-07-10 18:14:23', NULL),
(219, 1, 14, 119, 'sector', '71', '2023-07-10 18:14:23', '2023-07-10 18:14:23', NULL),
(220, 1, 14, 120, 'name', 'Education Administrator', '2023-07-10 18:14:35', '2023-07-10 18:14:35', NULL),
(221, 1, 14, 120, 'sector', '71', '2023-07-10 18:14:35', '2023-07-10 18:14:35', NULL),
(222, 1, 14, 121, 'name', 'Software Developer', '2023-07-10 18:14:50', '2023-07-10 18:14:50', NULL),
(223, 1, 14, 121, 'sector', '72', '2023-07-10 18:14:50', '2023-07-10 18:14:50', NULL),
(224, 1, 14, 122, 'name', 'Network Administrator', '2023-07-10 18:15:03', '2023-07-10 18:15:03', NULL),
(225, 1, 14, 122, 'sector', '72', '2023-07-10 18:15:03', '2023-07-10 18:15:03', NULL),
(226, 1, 14, 123, 'name', 'Data Analyst', '2023-07-10 18:15:15', '2023-07-10 18:15:15', NULL),
(227, 1, 14, 123, 'sector', '72', '2023-07-10 18:15:15', '2023-07-10 18:15:15', NULL),
(228, 1, 14, 124, 'name', 'IT Project Manager', '2023-07-10 18:15:27', '2023-07-10 18:15:27', NULL),
(229, 1, 14, 124, 'sector', '72', '2023-07-10 18:15:27', '2023-07-10 18:15:27', NULL),
(230, 1, 14, 125, 'name', 'Cybersecurity Specialist', '2023-07-10 18:15:40', '2023-07-10 18:15:40', NULL),
(231, 1, 14, 125, 'sector', '72', '2023-07-10 18:15:40', '2023-07-10 18:15:40', NULL),
(232, 1, 14, 126, 'name', 'Accountant', '2023-07-10 18:16:03', '2023-07-10 18:16:03', NULL),
(233, 1, 14, 126, 'sector', '73', '2023-07-10 18:16:03', '2023-07-10 18:16:03', NULL),
(234, 1, 14, 127, 'name', 'Financial Analyst', '2023-07-10 18:16:16', '2023-07-10 18:16:16', NULL),
(235, 1, 14, 127, 'sector', '73', '2023-07-10 18:16:16', '2023-07-10 18:16:16', NULL),
(236, 1, 14, 128, 'name', 'Banker', '2023-07-10 18:16:27', '2023-07-10 18:16:27', NULL),
(237, 1, 14, 128, 'sector', '73', '2023-07-10 18:16:27', '2023-07-10 18:16:27', NULL),
(238, 1, 14, 129, 'name', 'Investment Advisor', '2023-07-10 18:16:39', '2023-07-10 18:16:39', NULL),
(239, 1, 14, 129, 'sector', '73', '2023-07-10 18:16:39', '2023-07-10 18:16:39', NULL),
(240, 1, 14, 130, 'name', 'Insurance Underwriter', '2023-07-10 18:16:51', '2023-07-10 18:16:51', NULL),
(241, 1, 14, 130, 'sector', '73', '2023-07-10 18:16:51', '2023-07-10 18:16:51', NULL),
(242, 1, 14, 131, 'name', 'Hotel Manager', '2023-07-10 18:17:10', '2023-07-10 18:17:10', NULL),
(243, 1, 14, 131, 'sector', '74', '2023-07-10 18:17:10', '2023-07-10 18:17:10', NULL),
(244, 1, 14, 132, 'name', 'Chef', '2023-07-10 18:17:23', '2023-07-10 18:17:23', NULL),
(245, 1, 14, 132, 'sector', '74', '2023-07-10 18:17:23', '2023-07-10 18:17:23', NULL),
(246, 1, 14, 133, 'name', 'Tour Guide', '2023-07-10 18:30:50', '2023-07-10 18:30:50', NULL),
(247, 1, 14, 133, 'sector', '74', '2023-07-10 18:30:50', '2023-07-10 18:30:50', NULL),
(248, 1, 14, 134, 'name', 'Event Planner', '2023-07-10 18:31:03', '2023-07-10 18:31:03', NULL),
(249, 1, 14, 134, 'sector', '74', '2023-07-10 18:31:03', '2023-07-10 18:31:03', NULL),
(250, 1, 14, 135, 'name', 'Travel Agent', '2023-07-10 18:31:23', '2023-07-10 18:31:23', NULL),
(251, 1, 14, 135, 'sector', '74', '2023-07-10 18:31:23', '2023-07-10 18:31:23', NULL),
(252, 1, 14, 136, 'name', 'Actor', '2023-07-10 18:31:35', '2023-07-10 18:31:35', NULL),
(253, 1, 14, 136, 'sector', '75', '2023-07-10 18:31:35', '2023-07-10 18:31:35', NULL),
(254, 1, 14, 137, 'name', 'Journalist', '2023-07-10 18:31:47', '2023-07-10 18:31:47', NULL),
(255, 1, 14, 137, 'sector', '75', '2023-07-10 18:31:47', '2023-07-10 18:31:47', NULL),
(256, 1, 14, 138, 'name', 'Film Director', '2023-07-10 18:32:00', '2023-07-10 18:32:00', NULL),
(257, 1, 14, 138, 'sector', '75', '2023-07-10 18:32:00', '2023-07-10 18:32:00', NULL),
(258, 1, 14, 139, 'name', 'Graphic Designer', '2023-07-10 18:32:11', '2023-07-10 18:32:11', NULL),
(259, 1, 14, 139, 'sector', '75', '2023-07-10 18:32:11', '2023-07-10 18:32:11', NULL),
(260, 1, 14, 140, 'name', 'Social Media Manager', '2023-07-10 18:32:22', '2023-07-10 18:32:22', NULL),
(261, 1, 14, 140, 'sector', '75', '2023-07-10 18:32:22', '2023-07-10 18:32:22', NULL),
(262, 1, 14, 141, 'name', 'Power Plant Operator', '2023-07-10 18:33:39', '2023-07-10 18:33:39', NULL),
(263, 1, 14, 141, 'sector', '76', '2023-07-10 18:33:39', '2023-07-10 18:33:39', NULL),
(264, 1, 14, 142, 'name', 'Environmental Engineer', '2023-07-10 18:33:51', '2023-07-10 18:33:51', NULL),
(265, 1, 14, 142, 'sector', '76', '2023-07-10 18:33:51', '2023-07-10 18:33:51', NULL),
(266, 1, 14, 143, 'name', 'Renewable Energy Technician', '2023-07-10 18:34:04', '2023-07-10 18:34:04', NULL),
(267, 1, 14, 143, 'sector', '76', '2023-07-10 18:34:04', '2023-07-10 18:34:04', NULL),
(268, 1, 14, 144, 'name', 'Oil Rig Worker', '2023-07-10 18:34:15', '2023-07-10 18:34:15', NULL),
(269, 1, 14, 144, 'sector', '76', '2023-07-10 18:34:15', '2023-07-10 18:34:15', NULL),
(270, 1, 14, 145, 'name', 'Politician', '2023-07-10 18:34:28', '2023-07-10 18:34:28', NULL),
(271, 1, 14, 145, 'sector', '77', '2023-07-10 18:34:28', '2023-07-10 18:34:28', NULL),
(272, 1, 14, 146, 'name', 'Civil Servant', '2023-07-10 18:34:38', '2023-07-10 18:34:38', NULL),
(273, 1, 14, 146, 'sector', '77', '2023-07-10 18:34:38', '2023-07-10 18:34:38', NULL),
(274, 1, 14, 147, 'name', 'Public Relations Officer', '2023-07-10 18:34:49', '2023-07-10 18:34:49', NULL),
(275, 1, 14, 147, 'sector', '77', '2023-07-10 18:34:49', '2023-07-10 18:34:49', NULL),
(276, 1, 14, 148, 'name', 'Policy Analyst', '2023-07-10 18:35:01', '2023-07-10 18:35:01', NULL),
(277, 1, 14, 148, 'sector', '77', '2023-07-10 18:35:01', '2023-07-10 18:35:01', NULL),
(278, 1, 14, 149, 'name', 'Human Resources Manager', '2023-07-10 18:35:15', '2023-07-10 18:35:15', NULL),
(279, 1, 14, 149, 'sector', '77', '2023-07-10 18:35:15', '2023-07-10 18:35:15', NULL),
(280, 1, 14, 150, 'name', 'Lawyer', '2023-07-10 18:35:42', '2023-07-10 18:35:42', NULL),
(281, 1, 14, 150, 'sector', '78', '2023-07-10 18:35:42', '2023-07-10 18:35:42', NULL),
(282, 1, 14, 151, 'name', 'Consultant', '2023-07-10 18:36:08', '2023-07-10 18:36:08', NULL),
(283, 1, 14, 151, 'sector', '78', '2023-07-10 18:36:08', '2023-07-10 18:36:08', NULL),
(284, 1, 14, 152, 'name', 'Auditor', '2023-07-10 18:36:26', '2023-07-10 18:36:26', NULL),
(285, 1, 14, 152, 'sector', '78', '2023-07-10 18:36:26', '2023-07-10 18:36:26', NULL),
(286, 1, 14, 153, 'name', 'Human Resources Consultant', '2023-07-10 18:36:38', '2023-07-10 18:36:38', NULL),
(287, 1, 14, 153, 'sector', '78', '2023-07-10 18:36:38', '2023-07-10 18:36:38', NULL),
(288, 1, 14, 154, 'name', 'Real Estate Agent', '2023-07-10 18:36:50', '2023-07-10 18:36:50', NULL),
(289, 1, 14, 154, 'sector', '79', '2023-07-10 18:36:50', '2023-07-10 18:36:50', NULL),
(290, 1, 14, 155, 'name', 'Property Manager', '2023-07-10 18:37:01', '2023-07-10 18:37:01', NULL),
(291, 1, 14, 155, 'sector', '79', '2023-07-10 18:37:01', '2023-07-10 18:37:01', NULL),
(292, 1, 14, 156, 'name', 'Appraiser', '2023-07-10 18:37:10', '2023-07-10 18:37:10', NULL),
(293, 1, 14, 156, 'sector', '79', '2023-07-10 18:37:10', '2023-07-10 18:37:10', NULL),
(294, 1, 14, 157, 'name', 'Leasing Consultant', '2023-07-10 18:37:24', '2023-07-10 18:37:24', NULL),
(295, 1, 14, 157, 'sector', '79', '2023-07-10 18:37:24', '2023-07-10 18:37:24', NULL),
(296, 1, 14, 158, 'name', 'Facilities Manager', '2023-07-10 18:37:34', '2023-07-10 18:37:34', NULL),
(297, 1, 14, 158, 'sector', '79', '2023-07-10 18:37:34', '2023-07-10 18:37:34', NULL),
(298, 1, 14, 159, 'name', 'Mechanic', '2023-07-10 18:37:44', '2023-07-10 18:37:44', NULL),
(299, 1, 14, 159, 'sector', '79', '2023-07-10 18:37:44', '2023-07-10 18:37:44', NULL),
(300, 1, 14, 160, 'name', 'Automotive Engineer', '2023-07-10 18:37:55', '2023-07-10 18:37:55', NULL),
(301, 1, 14, 160, 'sector', '80', '2023-07-10 18:37:55', '2023-07-10 18:37:55', NULL),
(302, 1, 14, 161, 'name', 'Salesperson', '2023-07-10 18:38:05', '2023-07-10 18:38:05', NULL),
(303, 1, 14, 161, 'sector', '80', '2023-07-10 18:38:05', '2023-07-10 18:38:05', NULL),
(304, 1, 14, 162, 'name', 'Car Detailer', '2023-07-10 18:38:18', '2023-07-10 18:38:18', NULL),
(305, 1, 14, 162, 'sector', '80', '2023-07-10 18:38:18', '2023-07-10 18:38:18', NULL),
(306, 1, 14, 163, 'name', 'Auto Body Technician', '2023-07-10 18:38:28', '2023-07-10 18:38:28', NULL),
(307, 1, 14, 163, 'sector', '80', '2023-07-10 18:38:28', '2023-07-10 18:38:28', NULL),
(308, 1, 14, 164, 'name', 'Aerospace Engineer', '2023-07-10 18:38:43', '2023-07-10 18:38:43', NULL),
(309, 1, 14, 164, 'sector', '81', '2023-07-10 18:38:43', '2023-07-10 18:38:43', NULL),
(310, 1, 14, 165, 'name', 'Pilot', '2023-07-10 18:38:53', '2023-07-10 18:38:53', NULL),
(311, 1, 14, 165, 'sector', '81', '2023-07-10 18:38:53', '2023-07-10 18:38:53', NULL),
(312, 1, 14, 166, 'name', 'Air Traffic Controller', '2023-07-10 18:39:03', '2023-07-10 18:39:03', NULL),
(313, 1, 14, 166, 'sector', '81', '2023-07-10 18:39:03', '2023-07-10 18:39:03', NULL),
(314, 1, 14, 167, 'name', 'Aircraft Mechanic', '2023-07-10 18:39:13', '2023-07-10 18:39:13', NULL),
(315, 1, 14, 167, 'sector', '81', '2023-07-10 18:39:13', '2023-07-10 18:39:13', NULL),
(316, 1, 14, 168, 'name', 'Defense Analyst', '2023-07-10 18:39:24', '2023-07-10 18:39:24', NULL),
(317, 1, 14, 168, 'sector', '81', '2023-07-10 18:39:24', '2023-07-10 18:39:24', NULL),
(318, 1, 14, 169, 'name', 'Network Engineer', '2023-07-10 18:39:37', '2023-07-10 18:39:37', NULL),
(319, 1, 14, 169, 'sector', '81', '2023-07-10 18:39:37', '2023-07-10 18:39:37', NULL),
(320, 1, 14, 170, 'name', 'Telecommunications Technician', '2023-07-10 18:39:50', '2023-07-10 18:39:50', NULL),
(321, 1, 14, 170, 'sector', '82', '2023-07-10 18:39:50', '2023-07-10 18:39:50', NULL),
(322, 1, 14, 171, 'name', 'Customer Service Representative', '2023-07-10 18:40:01', '2023-07-10 18:40:01', NULL),
(323, 1, 14, 171, 'sector', '82', '2023-07-10 18:40:01', '2023-07-10 18:40:01', NULL),
(324, 1, 14, 172, 'name', 'Telecommunications Manager', '2023-07-10 18:40:13', '2023-07-10 18:40:13', NULL),
(325, 1, 14, 172, 'sector', '82', '2023-07-10 18:40:13', '2023-07-10 18:40:13', NULL),
(326, 1, 14, 173, 'name', 'Telecom Sales Representative', '2023-07-10 18:40:24', '2023-07-10 18:40:24', NULL),
(327, 1, 14, 173, 'sector', '82', '2023-07-10 18:40:24', '2023-07-10 18:40:24', NULL),
(328, 1, 14, 174, 'name', 'Waiter/Waitress', '2023-07-10 18:40:44', '2023-07-10 18:40:44', NULL),
(329, 1, 14, 174, 'sector', '83', '2023-07-10 18:40:44', '2023-07-10 18:40:44', NULL),
(330, 1, 14, 175, 'name', 'Bartender', '2023-07-10 18:40:54', '2023-07-10 18:40:54', NULL),
(331, 1, 14, 175, 'sector', '83', '2023-07-10 18:40:54', '2023-07-10 18:40:54', NULL),
(332, 1, 14, 176, 'name', 'Sommelier', '2023-07-10 18:41:06', '2023-07-10 18:41:06', NULL),
(333, 1, 14, 176, 'sector', '83', '2023-07-10 18:41:06', '2023-07-10 18:41:06', NULL),
(334, 1, 14, 177, 'name', 'Food Scientist', '2023-07-10 18:41:16', '2023-07-10 18:41:16', NULL),
(335, 1, 14, 177, 'sector', '83', '2023-07-10 18:41:16', '2023-07-10 18:41:16', NULL),
(336, 1, 14, 178, 'name', 'Geologist', '2023-07-10 18:41:29', '2023-07-10 18:41:29', NULL),
(337, 1, 14, 178, 'sector', '84', '2023-07-10 18:41:29', '2023-07-10 18:41:29', NULL),
(338, 1, 14, 179, 'name', 'Miner', '2023-07-10 18:41:53', '2023-07-10 18:41:53', NULL),
(339, 1, 14, 179, 'sector', '84', '2023-07-10 18:41:53', '2023-07-10 18:41:53', NULL),
(340, 1, 14, 180, 'name', 'Petroleum Engineer', '2023-07-10 18:42:06', '2023-07-10 18:42:06', NULL),
(341, 1, 14, 180, 'sector', '84', '2023-07-10 18:42:06', '2023-07-10 18:42:06', NULL),
(342, 1, 14, 181, 'name', 'Blaster', '2023-07-10 18:42:17', '2023-07-10 18:42:17', NULL),
(343, 1, 14, 181, 'sector', '84', '2023-07-10 18:42:17', '2023-07-10 18:42:17', NULL),
(344, 1, 14, 182, 'name', 'Quarry Manager', '2023-07-10 18:42:27', '2023-07-10 18:42:27', NULL),
(345, 1, 14, 182, 'sector', '84', '2023-07-10 18:42:27', '2023-07-10 18:42:27', NULL),
(346, 1, 11, 183, 'name', 'Abia', '2023-07-10 18:43:40', '2023-07-10 18:43:40', NULL),
(347, 1, 11, 184, 'name', 'Adamawa', '2023-07-10 18:43:56', '2023-07-10 18:43:56', NULL),
(348, 1, 11, 185, 'name', 'Akwa Ibom', '2023-07-10 18:44:04', '2023-07-10 18:44:04', NULL),
(349, 1, 11, 186, 'name', 'Anambra', '2023-07-10 18:44:09', '2023-07-10 18:44:09', NULL),
(350, 1, 11, 187, 'name', 'Bauchi', '2023-07-10 18:44:13', '2023-07-10 18:44:13', NULL),
(351, 1, 11, 188, 'name', 'Bayelsa', '2023-07-10 18:44:17', '2023-07-10 18:44:17', NULL),
(352, 1, 11, 189, 'name', 'Benue', '2023-07-10 18:44:21', '2023-07-10 18:44:21', NULL),
(353, 1, 11, 190, 'name', 'Borno', '2023-07-10 18:44:25', '2023-07-10 18:44:25', NULL),
(354, 1, 11, 191, 'name', 'Cross River', '2023-07-10 18:44:30', '2023-07-10 18:44:30', NULL),
(355, 1, 11, 192, 'name', 'Delta', '2023-07-10 18:44:35', '2023-07-10 18:44:35', NULL),
(356, 1, 11, 193, 'name', 'Ebonyi', '2023-07-10 18:44:39', '2023-07-10 18:44:39', NULL),
(357, 1, 11, 194, 'name', 'Edo', '2023-07-10 18:44:43', '2023-07-10 18:44:43', NULL),
(358, 1, 11, 195, 'name', 'Ekiti', '2023-07-10 18:44:48', '2023-07-10 18:44:48', NULL),
(359, 1, 11, 196, 'name', 'Enugu', '2023-07-10 18:44:52', '2023-07-10 18:44:52', NULL),
(360, 1, 11, 197, 'name', 'Gombe', '2023-07-10 18:44:56', '2023-07-10 18:44:56', NULL),
(361, 1, 11, 198, 'name', 'Imo', '2023-07-10 18:45:01', '2023-07-10 18:45:01', NULL),
(362, 1, 11, 199, 'name', 'Jigawa', '2023-07-10 18:45:05', '2023-07-10 18:45:05', NULL),
(363, 1, 11, 200, 'name', 'Kaduna', '2023-07-10 18:45:10', '2023-07-10 18:45:10', NULL),
(364, 1, 11, 201, 'name', 'Kano', '2023-07-10 18:45:15', '2023-07-10 18:45:15', NULL),
(365, 1, 11, 202, 'name', 'Katsina', '2023-07-10 18:45:20', '2023-07-10 18:45:20', NULL),
(366, 1, 11, 203, 'name', 'Kebbi', '2023-07-10 18:45:24', '2023-07-10 18:45:24', NULL),
(367, 1, 11, 204, 'name', 'Kogi', '2023-07-10 18:45:29', '2023-07-10 18:45:29', NULL),
(368, 1, 11, 205, 'name', 'Kwara', '2023-07-10 18:45:34', '2023-07-10 18:45:34', NULL),
(369, 1, 11, 206, 'name', 'Lagos', '2023-07-10 18:45:38', '2023-07-10 18:45:38', NULL),
(370, 1, 11, 207, 'name', 'Nasarawa', '2023-07-10 18:45:43', '2023-07-10 18:45:43', NULL),
(371, 1, 11, 208, 'name', 'Niger', '2023-07-10 18:45:47', '2023-07-10 18:45:47', NULL),
(372, 1, 11, 209, 'name', 'Ogun', '2023-07-10 18:45:51', '2023-07-10 18:45:51', NULL),
(373, 1, 11, 210, 'name', 'Ondo', '2023-07-10 18:45:55', '2023-07-10 18:45:55', NULL),
(374, 1, 11, 211, 'name', 'Osun', '2023-07-10 18:45:59', '2023-07-10 18:45:59', NULL),
(375, 1, 11, 212, 'name', 'Oyo', '2023-07-10 18:46:05', '2023-07-10 18:46:05', NULL),
(376, 1, 11, 213, 'name', 'Plateau', '2023-07-10 18:46:09', '2023-07-10 18:46:09', NULL),
(377, 1, 11, 214, 'name', 'Rivers', '2023-07-10 18:46:13', '2023-07-10 18:46:13', NULL),
(378, 1, 11, 215, 'name', 'Sokoto', '2023-07-10 18:46:17', '2023-07-10 18:46:17', NULL),
(379, 1, 11, 216, 'name', 'Taraba', '2023-07-10 18:46:22', '2023-07-10 18:46:22', NULL),
(380, 1, 11, 217, 'name', 'Yobe', '2023-07-10 18:46:26', '2023-07-10 18:46:26', NULL),
(381, 1, 11, 218, 'name', 'Zamfara', '2023-07-10 18:46:33', '2023-07-10 18:46:33', NULL),
(382, 1, 11, 219, 'name', 'Federal Capital Territory', '2023-07-10 18:46:44', '2023-07-10 18:46:44', NULL),
(383, 1, 10, 220, 'year', '2019', '2023-08-24 10:44:22', '2023-08-24 10:44:22', NULL),
(384, 1, 10, 220, 'working-age-population', '6999', '2023-08-24 10:44:22', '2023-08-24 10:44:22', NULL),
(385, 1, 10, 220, 'indicator', '48', '2023-08-24 10:44:22', '2023-08-24 10:44:22', NULL),
(386, 1, 18, 221, 'name', 'Ministry of Labour', '2023-08-24 10:45:39', '2023-08-24 10:45:39', NULL),
(387, 1, 18, 221, 'category', '8', '2023-08-24 10:45:39', '2023-08-24 10:45:39', NULL),
(388, 1, 18, 221, 'description', 'Ministry of Labour', '2023-08-24 10:45:39', '2023-08-24 10:45:39', NULL),
(389, 1, 16, 222, 'name', 'Test', '2023-08-24 10:46:18', '2023-08-24 10:46:18', NULL),
(390, 1, 16, 222, 'category', '28', '2023-08-24 10:46:18', '2023-08-24 10:46:18', NULL),
(391, 1, 16, 222, 'source', '221', '2023-08-24 10:46:18', '2023-08-24 10:46:18', NULL),
(392, 1, 16, 222, 'publication-date', '2023-08-16T11:46:11.599Z', '2023-08-24 10:46:18', '2023-08-24 10:46:18', NULL),
(393, 1, 16, 222, 'description', '<p>Test</p>', '2023-08-24 10:46:18', '2023-08-24 10:46:18', NULL),
(394, 1, 8, 1, 'cover-image', '1', '2023-08-24 11:08:10', '2023-08-24 11:08:10', NULL),
(395, 1, 3, 223, 'title', 'Entertainment', '2023-08-24 11:18:22', '2023-08-24 11:18:22', NULL),
(396, 1, 3, 223, 'url', 'entertainment', '2023-08-24 11:18:22', '2023-08-24 11:18:22', NULL),
(397, 1, 4, 224, 'name', 'LMIS', '2023-08-24 11:18:47', '2023-08-24 11:19:10', NULL),
(398, 1, 2, 225, 'title', 'Enim est facere ver', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL),
(399, 1, 2, 225, 'url', 'Neque et aliqua Vol', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL),
(400, 1, 2, 225, 'excerpt', 'Officiis debitis fug', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL),
(401, 1, 2, 225, 'content', '<p>Mollitia harum in ma.</p>', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL),
(402, 1, 2, 225, 'category', '223', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL),
(403, 1, 2, 225, 'author', '224', '2023-08-24 11:19:28', '2023-08-24 11:19:28', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submit_btn_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Submit',
  `fields` json DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `caption` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `project_id`, `name`, `type`, `size`, `width`, `height`, `caption`, `disk`, `created_at`, `updated_at`) VALUES
(1, 1, 'dosl_logo.png', 'png', 30446, 1214, 388, NULL, 'local', '2023-07-10 21:51:31', '2023-07-10 21:51:31');

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
(81, '2014_10_12_000000_create_users_table', 1),
(82, '2014_10_12_100000_create_password_resets_table', 1),
(83, '2019_08_19_000000_create_failed_jobs_table', 1),
(84, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(85, '2021_03_07_200339_create_projects_table', 1),
(86, '2021_03_08_162324_create_collections_table', 1),
(87, '2021_08_05_094530_create_collection_fields_table', 1),
(88, '2021_08_06_120930_create_content_table', 1),
(89, '2021_08_18_113855_create_media_table', 1),
(90, '2021_08_26_082427_crate_content_meta_table', 1),
(91, '2021_08_28_150937_create_permission_tables', 1),
(92, '2022_03_06_162012_add_disk_field_to_media_table', 1),
(93, '2022_03_08_152849_add_disk_field_to_projects_table', 1),
(94, '2022_06_08_145410_create_webhooks_table', 1),
(95, '2022_06_09_120727_create_webhook_collections_table', 1),
(96, '2022_06_21_151142_create_webhook_logs_table', 1),
(97, '2022_10_07_134859_create_jobs_table', 1),
(98, '2022_12_07_100137_create_forms_table', 1),
(99, '2022_12_07_100217_add_form_id_to_content_table', 1),
(100, '2022_12_08_171001_add_public_api_field_to_projects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_locale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `locales` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `public_api` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `uuid`, `name`, `description`, `default_locale`, `locales`, `disk`, `public_api`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f3e15f173cd34515941fafc4a42fc139', 'LMIS', 'Labour Market Information System', 'en', 'en', 'local', 1, '2023-07-09 20:10:23', '2023-07-09 20:19:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2023-01-28 11:53:35', '2023-01-28 11:53:35'),
(2, 'admin1', 'web', '2023-07-09 20:10:23', '2023-07-09 20:10:23'),
(3, 'editor1', 'web', '2023-07-09 20:10:23', '2023-07-09 20:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$F4k.kO.Qzbz5j6CqUenRcupPiZbYN.dHXT1xDOKWphzD9AkW2/qrG', 'bRlpR86x64Dwce0nGhtTMawvih1NW67qizruRhaXyQawUNHdzdEzfvvg7aAS', '2023-01-28 11:53:35', '2023-01-28 11:53:35'),
(2, 'Omeiza Alabi', 'omeizaalabi@gmail.com', NULL, '$2y$10$U6rRwlno7YfsT3GfeaUM5eky/sMTWKPkmUMayeMreQR1mp3aBUE3G', NULL, '2023-07-09 22:11:31', '2023-07-09 22:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `webhooks`
--

CREATE TABLE `webhooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `events` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sources` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_collections`
--

CREATE TABLE `webhook_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `webhook_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_logs`
--

CREATE TABLE `webhook_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` json DEFAULT NULL,
  `response` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_fields`
--
ALTER TABLE `collection_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_meta`
--
ALTER TABLE `content_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forms_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_uuid_unique` (`uuid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webhooks`
--
ALTER TABLE `webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webhook_collections`
--
ALTER TABLE `webhook_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webhook_logs`
--
ALTER TABLE `webhook_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `collection_fields`
--
ALTER TABLE `collection_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `content_meta`
--
ALTER TABLE `content_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webhooks`
--
ALTER TABLE `webhooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_collections`
--
ALTER TABLE `webhook_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_logs`
--
ALTER TABLE `webhook_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
