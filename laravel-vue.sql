-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2022 at 08:20 AM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` enum('home_top','home_middle','home_down','sale_page','product_page') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `position`, `status`, `order_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, NULL, 'active', NULL, '2022-06-09 19:35:59', '2022-06-09 19:35:59', NULL),
(7, NULL, 'active', NULL, '2022-06-09 19:36:19', '2022-06-09 19:36:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
CREATE TABLE IF NOT EXISTS `ads_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ads_id` int NOT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads_translations`
--

INSERT INTO `ads_translations` (`id`, `ads_id`, `locale`, `descriptions`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 7, 'en', 'en kdf', '2022-06-09 19:36:19', '2022-06-09 19:36:19', NULL),
(12, 7, 'ar', 'ar kdf', '2022-06-09 19:36:19', '2022-06-09 19:36:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `mobile` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `branch_id`, `floor_id`, `table_id`, `name`, `created_by`, `mobile`, `note`, `address`, `gender`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'adcadv', 1, '13256464', 'davadvd', 'advvasvadv', 'Ms', 1, '2022-09-06 20:02:59', '2022-09-06 20:02:59'),
(2, 3, 1, 1, 'adcadv', 1, '13256464', 'davadvd', 'advvasvadv', 'Ms', 1, '2022-09-06 20:03:39', '2022-09-06 20:03:39'),
(3, 3, 1, 1, 'adcadv', 1, '13256464', 'davadvd', 'advvasvadv', 'Ms', 5, '2022-09-06 20:04:26', '2022-09-06 20:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `branchs`
--

DROP TABLE IF EXISTS `branchs`;
CREATE TABLE IF NOT EXISTS `branchs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `brand_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lon` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `self` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branchs`
--

INSERT INTO `branchs` (`id`, `company_id`, `brand_id`, `user_id`, `lon`, `lat`, `city_id`, `self`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, '1', '1', NULL, NULL, '13', 1, 'active', '2022-06-21 07:31:19', '2022-06-22 00:35:39', NULL),
(3, 1, '2', '1', NULL, NULL, '7', 1, 'active', '2022-06-22 00:56:42', '2022-06-22 00:56:42', NULL),
(4, 1, '3', '1', NULL, NULL, '7', NULL, 'active', '2022-06-22 01:17:54', '2022-06-22 01:19:33', NULL),
(5, 1, '2', '1', NULL, NULL, '15', NULL, 'active', '2022-06-22 01:49:34', '2022-06-22 01:49:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_translations`
--

DROP TABLE IF EXISTS `branch_translations`;
CREATE TABLE IF NOT EXISTS `branch_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branchs_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branch_translations`
--

INSERT INTO `branch_translations` (`id`, `branchs_id`, `locale`, `name`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'en', 'sdcdv', 'advv', '2022-06-21 07:31:19', '2022-06-21 07:31:19', NULL),
(2, 2, 'ar', 'mmmmmmmmm', 'adve', '2022-06-21 07:31:19', '2022-06-22 00:26:58', NULL),
(3, 3, 'en', 'تنبىلنق', 'تىيبتملىم', '2022-06-22 00:56:42', '2022-06-22 00:56:42', NULL),
(4, 3, 'ar', 'تىلنلاين', 'تمبىلميب', '2022-06-22 00:56:42', '2022-06-22 00:56:42', NULL),
(5, 4, 'en', 'شيؤش', 'شيرشسر', '2022-06-22 01:17:54', '2022-06-22 01:17:54', NULL),
(6, 4, 'ar', 'شيرشسر', 'شيرشسر', '2022-06-22 01:17:55', '2022-06-22 01:17:55', NULL),
(7, 5, 'en', 'jhvjh', 'bvgj', '2022-06-22 01:49:35', '2022-06-22 01:49:35', NULL),
(8, 5, 'ar', 'hkgkgk', 'jhkgjhh', '2022-06-22 01:49:35', '2022-06-22 01:49:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `logo` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_by` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `branch_id`, `logo`, `status`, `order_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'uploads/category/5b4b1bf7006e2.png', 'active', NULL, 0, '2018-07-15 14:03:35', '2018-09-22 17:40:57', '2018-09-22 17:40:57'),
(2, NULL, 'uploads/category/5b4b1da0ea75c.jpeg', 'active', NULL, 0, '2018-07-15 14:10:40', '2018-07-15 14:14:22', NULL),
(3, NULL, 'uploads/category/5b4f95ab0fed0.jpeg', 'active', NULL, 0, '2018-07-18 23:31:55', '2018-09-22 17:40:52', '2018-09-22 17:40:52'),
(4, NULL, 'uploads/category/5b571d62eb8fd.png', 'active', NULL, 0, '2018-07-24 16:36:50', '2018-09-12 03:42:48', NULL),
(5, NULL, 'uploads/category/5b5858b58a91a.jpeg', 'active', NULL, 0, '2018-07-25 15:02:13', '2018-09-12 03:42:48', NULL),
(6, NULL, 'uploads/category/5b8275e038f93.png', 'active', NULL, 0, '2018-08-26 21:41:52', '2018-09-12 03:42:48', NULL),
(7, NULL, 'uploads/category/5b8275f80574a.png', 'active', NULL, 0, '2018-08-26 21:42:16', '2018-09-12 03:42:48', NULL),
(8, NULL, 'uploads/category/5b8276147ffaf.png', 'active', NULL, 0, '2018-08-26 21:42:44', '2018-09-12 03:42:48', NULL),
(9, NULL, 'uploads/category/5b82762ebeea8.png', 'active', NULL, 0, '2018-08-26 21:43:10', '2018-09-12 03:42:48', NULL),
(10, NULL, 'uploads/category/5b8276470e52d.png', 'active', NULL, 0, '2018-08-26 21:43:35', '2018-09-12 03:42:48', NULL),
(11, NULL, 'uploads/category/5b82765cdde98.png', 'active', NULL, 0, '2018-08-26 21:43:56', '2018-09-12 03:42:48', NULL),
(12, NULL, 'uploads/category/5b82768a0483f.png', 'active', NULL, 0, '2018-08-26 21:44:42', '2018-09-18 20:18:04', NULL),
(13, NULL, 'uploads/category/5b8276e725dc9.png', 'active', NULL, 0, '2018-08-26 21:46:15', '2018-09-05 23:31:10', '2018-09-05 23:31:10'),
(14, NULL, 'uploads/category/5ba1f00f57c24.png', 'active', NULL, 0, '2018-09-19 18:43:27', '2018-09-19 18:49:33', '2018-09-19 18:49:33'),
(15, NULL, 'uploads/category/5ba1f016ac8e6.png', 'active', NULL, 0, '2018-09-19 18:43:34', '2018-09-19 18:43:34', NULL),
(16, 1, NULL, 'active', NULL, 1, '2022-09-06 20:38:42', '2022-09-06 20:38:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Food', '2018-07-15 14:03:35', '2018-07-15 14:03:35', NULL),
(2, 1, 'ar', 'طعام', '2018-07-15 14:03:35', '2018-07-15 14:03:35', NULL),
(3, 2, 'en', 'Clothes', '2018-07-15 14:10:41', '2018-07-15 14:10:41', NULL),
(4, 2, 'ar', 'ملابس', '2018-07-15 14:10:41', '2018-07-15 14:10:41', NULL),
(5, 3, 'en', 'First', '2018-07-18 23:31:55', '2018-07-18 23:31:55', NULL),
(6, 3, 'ar', 'First', '2018-07-18 23:31:55', '2018-07-18 23:31:55', NULL),
(7, 4, 'en', 'Fashing', '2018-07-24 16:36:51', '2018-07-24 16:36:51', NULL),
(8, 4, 'ar', 'Fashing', '2018-07-24 16:36:51', '2018-07-24 16:36:51', NULL),
(9, 5, 'en', 'Food Truck', '2018-07-25 15:02:13', '2018-08-26 21:40:34', NULL),
(10, 5, 'ar', 'سيارات الطعام', '2018-07-25 15:02:13', '2018-08-26 21:40:34', NULL),
(11, 6, 'en', 'Restaurants', '2018-08-26 21:41:52', '2018-08-26 21:41:52', NULL),
(12, 6, 'ar', 'مطاعم', '2018-08-26 21:41:52', '2018-08-26 21:41:52', NULL),
(13, 7, 'en', 'Coffee Shop', '2018-08-26 21:42:16', '2018-09-22 17:57:45', NULL),
(14, 7, 'ar', 'مقاهي', '2018-08-26 21:42:16', '2018-08-26 21:42:16', NULL),
(15, 8, 'en', 'Dress', '2018-08-26 21:42:44', '2018-08-26 21:42:44', NULL),
(16, 8, 'ar', 'ملابس', '2018-08-26 21:42:44', '2018-08-26 21:42:44', NULL),
(17, 9, 'en', 'Makeup', '2018-08-26 21:43:10', '2018-08-26 21:43:10', NULL),
(18, 9, 'ar', 'مكياج', '2018-08-26 21:43:10', '2018-08-26 21:43:10', NULL),
(19, 10, 'en', 'Bags', '2018-08-26 21:43:35', '2018-08-26 21:43:35', NULL),
(20, 10, 'ar', 'حقائب', '2018-08-26 21:43:35', '2018-08-26 21:43:35', NULL),
(21, 11, 'en', 'Bakery', '2018-08-26 21:43:56', '2018-08-26 21:43:56', NULL),
(22, 11, 'ar', 'مخابز', '2018-08-26 21:43:56', '2018-08-26 21:43:56', NULL),
(23, 12, 'en', 'Birthday', '2018-08-26 21:44:42', '2018-08-26 21:44:42', NULL),
(24, 12, 'ar', 'أعياد ميلاد', '2018-08-26 21:44:42', '2018-08-26 21:44:42', NULL),
(25, 13, 'en', 'Wedding', '2018-08-26 21:46:15', '2018-08-26 21:46:15', NULL),
(26, 13, 'ar', 'أعراس', '2018-08-26 21:46:15', '2018-08-26 21:46:15', NULL),
(27, 14, 'en', 'Wedding Planner', '2018-09-19 18:43:27', '2018-09-19 18:43:27', NULL),
(28, 14, 'ar', 'تخطيط حفلات الزفاف', '2018-09-19 18:43:27', '2018-09-19 18:43:27', NULL),
(29, 15, 'en', 'Wedding Planner', '2018-09-19 18:43:34', '2018-09-19 18:43:34', NULL),
(30, 15, 'ar', 'تخطيط حفلات الزفاف', '2018-09-19 18:43:34', '2018-09-19 18:43:34', NULL),
(31, 16, 'en', 'تتتت', '2022-09-06 20:38:42', '2022-09-06 20:38:42', NULL),
(32, 16, 'ar', 'تاراتتا', '2022-09-06 20:38:42', '2022-09-06 20:38:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_by` int NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `order_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'active', '2020-02-17 15:02:16', '2020-02-17 15:02:16', NULL),
(2, 0, 'active', '2020-02-17 15:05:43', '2020-02-17 15:05:43', NULL),
(3, 0, 'active', '2020-02-17 15:05:59', '2020-02-17 15:05:59', NULL),
(4, 0, 'active', '2020-02-17 15:06:18', '2020-02-17 15:06:18', NULL),
(5, 0, 'active', '2020-02-17 15:06:33', '2020-02-17 15:06:33', NULL),
(6, 0, 'active', '2020-02-17 15:08:37', '2020-02-17 15:08:37', NULL),
(7, 0, 'active', '2020-02-17 15:08:55', '2020-02-17 15:08:55', NULL),
(8, 0, 'active', '2020-02-17 15:09:18', '2020-02-17 15:09:18', NULL),
(9, 0, 'active', '2020-02-17 15:09:32', '2020-02-17 15:09:32', NULL),
(10, 0, 'active', '2020-02-17 15:09:46', '2020-02-17 15:09:46', NULL),
(11, 0, 'active', '2020-02-17 15:10:04', '2020-02-17 15:10:04', NULL),
(12, 0, 'active', '2020-02-17 15:10:17', '2020-02-17 15:10:17', NULL),
(13, 0, 'active', '2020-02-17 15:10:32', '2020-02-17 15:10:32', NULL),
(14, 0, 'active', '2020-02-17 15:10:46', '2020-02-17 15:10:46', NULL),
(15, 0, 'active', '2020-02-17 15:11:15', '2020-02-17 15:11:15', NULL),
(16, 0, 'active', '2020-02-17 15:11:50', '2020-02-17 15:11:50', NULL),
(17, 0, 'active', '2020-02-17 15:12:01', '2020-02-17 15:12:01', NULL),
(18, 0, 'active', '2020-02-17 15:12:13', '2020-02-17 15:12:13', NULL),
(19, 0, 'active', '2020-02-17 15:12:25', '2020-02-17 15:12:25', NULL),
(20, 0, 'active', '2020-02-17 15:12:39', '2020-02-17 15:12:39', NULL),
(21, 0, 'active', '2020-02-17 15:12:51', '2020-02-17 15:12:51', NULL),
(22, 0, 'active', '2020-02-17 15:13:02', '2020-02-17 15:13:02', NULL),
(23, 0, 'active', '2020-02-17 15:13:16', '2020-02-17 15:13:16', NULL),
(24, 0, 'active', '2020-02-17 15:13:28', '2020-02-17 15:13:28', NULL),
(25, 0, 'active', '2020-02-17 15:13:41', '2020-02-17 15:13:41', NULL),
(26, 0, 'active', '2020-02-17 15:13:53', '2020-02-17 15:13:53', NULL),
(27, 0, 'active', '2020-02-17 15:14:05', '2020-02-17 15:14:05', NULL),
(28, 0, 'active', '2020-02-17 15:14:23', '2020-02-17 15:14:23', NULL),
(29, 0, 'active', '2020-02-17 15:14:34', '2020-02-17 15:14:34', NULL),
(30, 0, 'active', '2020-02-17 15:17:02', '2020-02-17 15:17:02', NULL),
(31, 0, 'active', '2020-02-17 15:17:10', '2020-02-17 15:17:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

DROP TABLE IF EXISTS `city_translations`;
CREATE TABLE IF NOT EXISTS `city_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `locale` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `city_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Riyadh', '2020-02-17 15:02:16', '2020-02-17 15:02:16', NULL),
(2, 1, 'ar', 'الرياض', '2020-02-17 15:02:16', '2020-02-17 15:02:16', NULL),
(3, 2, 'en', 'Jeddah', '2020-02-17 15:05:43', '2020-02-17 15:05:43', NULL),
(4, 2, 'ar', 'جدة', '2020-02-17 15:05:43', '2020-02-17 15:05:43', NULL),
(5, 3, 'en', 'Dammam', '2020-02-17 15:06:00', '2020-02-17 15:06:00', NULL),
(6, 3, 'ar', 'الدمام', '2020-02-17 15:06:00', '2020-02-17 15:06:00', NULL),
(7, 4, 'en', 'Khobar', '2020-02-17 15:06:18', '2020-02-17 15:06:18', NULL),
(8, 4, 'ar', 'الخبر', '2020-02-17 15:06:18', '2020-02-17 15:06:18', NULL),
(9, 5, 'en', 'Abha', '2020-02-17 15:06:33', '2020-02-17 15:06:33', NULL),
(10, 5, 'ar', 'أبها', '2020-02-17 15:06:33', '2020-02-17 15:06:33', NULL),
(11, 6, 'en', 'Buraidah', '2020-02-17 15:08:37', '2020-02-17 15:08:37', NULL),
(12, 6, 'ar', 'بريده', '2020-02-17 15:08:37', '2020-02-17 15:08:37', NULL),
(13, 7, 'en', 'Madina', '2020-02-17 15:08:55', '2020-02-17 15:08:55', NULL),
(14, 7, 'ar', 'المدينة المنورة', '2020-02-17 15:08:55', '2020-02-17 15:08:55', NULL),
(15, 8, 'en', 'Ha\'il', '2020-02-17 15:09:18', '2020-02-17 15:09:18', NULL),
(16, 8, 'ar', 'حائل', '2020-02-17 15:09:19', '2020-02-17 15:09:19', NULL),
(17, 9, 'en', 'Khamis Mushait', '2020-02-17 15:09:32', '2020-02-17 15:09:32', NULL),
(18, 9, 'ar', 'خميس مشيط', '2020-02-17 15:09:32', '2020-02-17 15:09:32', NULL),
(19, 10, 'en', 'Tabuk', '2020-02-17 15:09:46', '2020-02-17 15:09:46', NULL),
(20, 10, 'ar', 'تبوك', '2020-02-17 15:09:46', '2020-02-17 15:09:46', NULL),
(21, 11, 'en', 'Najran', '2020-02-17 15:10:04', '2020-02-17 15:10:04', NULL),
(22, 11, 'ar', 'نجران', '2020-02-17 15:10:04', '2020-02-17 15:10:04', NULL),
(23, 12, 'en', 'Unaizah', '2020-02-17 15:10:17', '2020-02-17 15:10:17', NULL),
(24, 12, 'ar', 'عنيزة', '2020-02-17 15:10:17', '2020-02-17 15:10:17', NULL),
(25, 13, 'en', 'Makkah', '2020-02-17 15:10:32', '2020-02-17 15:10:32', NULL),
(26, 13, 'ar', 'مكة', '2020-02-17 15:10:33', '2020-02-17 15:10:33', NULL),
(27, 14, 'en', 'AlAhsa', '2020-02-17 15:10:46', '2020-02-17 15:10:46', NULL),
(28, 14, 'ar', 'الأحساء', '2020-02-17 15:10:46', '2020-02-17 15:10:46', NULL),
(29, 15, 'en', 'Qatif', '2020-02-17 15:11:15', '2020-02-17 15:11:15', NULL),
(30, 15, 'ar', 'القطيف', '2020-02-17 15:11:15', '2020-02-17 15:11:15', NULL),
(31, 16, 'en', 'Jubail', '2020-02-17 15:11:50', '2020-02-17 15:11:50', NULL),
(32, 16, 'ar', 'الجبيل', '2020-02-17 15:11:50', '2020-02-17 15:11:50', NULL),
(33, 17, 'en', 'Taif', '2020-02-17 15:12:01', '2020-02-17 15:12:01', NULL),
(34, 17, 'ar', 'الطائف', '2020-02-17 15:12:01', '2020-02-17 15:12:01', NULL),
(35, 18, 'en', 'Al Kharj', '2020-02-17 15:12:13', '2020-02-17 15:12:13', NULL),
(36, 18, 'ar', 'الخرج', '2020-02-17 15:12:13', '2020-02-17 15:12:13', NULL),
(37, 19, 'en', 'Majmaah', '2020-02-17 15:12:25', '2020-02-17 15:12:25', NULL),
(38, 19, 'ar', 'المجمعة', '2020-02-17 15:12:25', '2020-02-17 15:12:25', NULL),
(39, 20, 'en', 'Shaqra', '2020-02-17 15:12:39', '2020-02-17 15:12:39', NULL),
(40, 20, 'ar', 'شقراء', '2020-02-17 15:12:39', '2020-02-17 15:12:39', NULL),
(41, 21, 'en', 'Dawadmi', '2020-02-17 15:12:51', '2020-02-17 15:12:51', NULL),
(42, 21, 'ar', 'الدوادمي', '2020-02-17 15:12:51', '2020-02-17 15:12:51', NULL),
(43, 22, 'en', 'Hafar Al-Batin', '2020-02-17 15:13:02', '2020-02-17 15:13:02', NULL),
(44, 22, 'ar', 'حفر الباطن', '2020-02-17 15:13:02', '2020-02-17 15:13:02', NULL),
(45, 23, 'en', 'Yanbu', '2020-02-17 15:13:16', '2020-02-17 15:13:16', NULL),
(46, 23, 'ar', 'ينبع', '2020-02-17 15:13:16', '2020-02-17 15:13:16', NULL),
(47, 24, 'en', 'Sakakah', '2020-02-17 15:13:28', '2020-02-17 15:13:28', NULL),
(48, 24, 'ar', 'سكاكا', '2020-02-17 15:13:28', '2020-02-17 15:13:28', NULL),
(49, 25, 'en', 'Qurayyat', '2020-02-17 15:13:41', '2020-02-17 15:13:41', NULL),
(50, 25, 'ar', 'القريات', '2020-02-17 15:13:41', '2020-02-17 15:13:41', NULL),
(51, 26, 'en', 'Ar Rass', '2020-02-17 15:13:53', '2020-02-17 15:13:53', NULL),
(52, 26, 'ar', 'الرس', '2020-02-17 15:13:53', '2020-02-17 15:13:53', NULL),
(53, 27, 'en', 'Al Mithnab', '2020-02-17 15:14:05', '2020-03-28 16:31:19', NULL),
(54, 27, 'ar', 'المذنب', '2020-02-17 15:14:05', '2020-02-17 15:14:05', NULL),
(55, 28, 'en', 'Jizan', '2020-02-17 15:14:23', '2020-02-17 15:14:23', NULL),
(56, 28, 'ar', 'جازان', '2020-02-17 15:14:23', '2020-03-28 16:31:11', NULL),
(57, 29, 'en', 'Arar', '2020-02-17 15:14:34', '2020-02-17 15:14:34', NULL),
(58, 29, 'ar', 'عرعر', '2020-02-17 15:14:34', '2020-02-17 15:14:34', NULL),
(59, 30, 'en', 'Al Mubarraz', '2020-02-17 15:17:02', '2020-02-17 15:17:02', NULL),
(60, 30, 'ar', 'المبرز', '2020-02-17 15:17:02', '2020-02-17 15:17:02', NULL),
(61, 31, 'en', 'Al Hufuf', '2020-02-17 15:17:10', '2020-02-17 15:17:20', NULL),
(62, 31, 'ar', 'الهفوف', '2020-02-17 15:17:10', '2020-02-17 15:17:10', NULL),
(63, 32, 'en', 'Amman', '2020-02-17 15:49:23', '2020-03-28 18:39:52', NULL),
(64, 32, 'ar', 'عمان', '2020-02-17 15:49:23', '2020-02-17 15:49:23', NULL),
(65, 33, 'en', 'Irbid', '2020-02-17 15:49:59', '2020-02-17 15:49:59', NULL),
(66, 33, 'ar', 'إربد', '2020-02-17 15:49:59', '2020-02-17 15:49:59', NULL),
(67, 34, 'en', 'Ajloun', '2020-02-17 15:50:32', '2020-02-17 15:50:32', NULL),
(68, 34, 'ar', 'عجلون', '2020-02-17 15:50:32', '2020-03-28 18:39:41', NULL),
(69, 35, 'en', 'Abu Dhabi', '2020-02-17 15:51:19', '2020-02-17 15:51:19', NULL),
(70, 35, 'ar', 'أبو ظبي', '2020-02-17 15:51:19', '2020-02-17 15:51:19', NULL),
(71, 36, 'en', 'Ajman', '2020-02-17 15:51:31', '2020-02-17 15:51:31', NULL),
(72, 36, 'ar', 'عجمان', '2020-02-17 15:51:31', '2020-02-17 15:51:31', NULL),
(73, 37, 'en', 'Dubai', '2020-02-17 15:51:59', '2020-02-17 15:51:59', NULL),
(74, 37, 'ar', 'دبي', '2020-02-17 15:51:59', '2020-02-17 15:51:59', NULL),
(75, 38, 'en', 'Fujairah', '2020-02-17 15:52:06', '2020-02-17 15:52:06', NULL),
(76, 38, 'ar', 'الفجيرة', '2020-02-17 15:52:06', '2020-02-17 15:52:06', NULL),
(77, 39, 'en', 'Ras Al Khaimah', '2020-02-17 15:52:20', '2020-02-17 15:52:20', NULL),
(78, 39, 'ar', 'رأس الخيمة', '2020-02-17 15:52:20', '2020-02-17 15:52:20', NULL),
(79, 40, 'en', 'Sharjah', '2020-02-17 15:52:31', '2020-02-17 15:52:31', NULL),
(80, 40, 'ar', 'الشارقة', '2020-02-17 15:52:31', '2020-02-17 15:52:31', NULL),
(81, 41, 'en', 'Umm Al Quwain', '2020-02-17 15:52:48', '2020-02-17 15:52:48', NULL),
(82, 41, 'ar', 'أم القيوين', '2020-02-17 15:52:48', '2020-02-17 15:52:48', NULL),
(83, 42, 'en', 'Manama', '2020-02-17 15:53:59', '2020-02-17 15:53:59', NULL),
(84, 42, 'ar', 'المنامة', '2020-02-17 15:53:59', '2020-02-17 15:53:59', NULL),
(85, 43, 'en', 'Muharraq', '2020-02-17 15:57:46', '2020-02-17 15:57:46', NULL),
(86, 43, 'ar', 'المحرق', '2020-02-17 15:57:46', '2020-02-17 15:57:46', NULL),
(87, 44, 'en', 'Sitra (Bahrain)', '2020-02-17 15:58:09', '2020-02-17 15:58:09', NULL),
(88, 44, 'ar', 'سترة (البحرين)', '2020-02-17 15:58:09', '2020-02-17 15:58:09', NULL),
(89, 45, 'en', 'Riffa', '2020-02-17 16:04:05', '2020-02-17 16:04:05', NULL),
(90, 45, 'ar', 'الرفاع', '2020-02-17 16:04:06', '2020-02-17 16:04:06', NULL),
(91, 46, 'en', 'Hamad town', '2020-02-17 16:04:14', '2020-02-17 16:04:14', NULL),
(92, 46, 'ar', 'مدينة حمد', '2020-02-17 16:04:14', '2020-02-17 16:04:14', NULL),
(93, 47, 'en', 'Issa Town', '2020-02-17 16:04:25', '2020-02-17 16:04:25', NULL),
(94, 47, 'ar', 'مدينة عيسى', '2020-02-17 16:04:25', '2020-02-17 16:04:25', NULL),
(95, 48, 'en', 'Jid Hafs', '2020-02-17 16:04:35', '2020-02-17 16:04:35', NULL),
(96, 48, 'ar', 'جد حفص', '2020-02-17 16:04:35', '2020-02-17 16:04:35', NULL),
(97, 49, 'en', 'AlHad', '2020-02-17 16:04:51', '2020-02-17 16:04:51', NULL),
(98, 49, 'ar', 'الحد', '2020-02-17 16:04:51', '2020-02-17 16:04:51', NULL),
(99, 50, 'en', 'Aldraz', '2020-02-17 16:05:07', '2020-02-17 16:05:07', NULL),
(100, 50, 'ar', 'الدراز', '2020-02-17 16:05:07', '2020-02-17 16:05:07', NULL),
(101, 53, 'en', 'Aljaza’er', '2020-03-28 16:24:23', '2020-03-28 16:24:23', NULL),
(102, 53, 'ar', 'الجزائر', '2020-03-28 16:24:23', '2020-03-28 16:24:23', NULL),
(103, 54, 'en', 'Aljaza’er', '2020-03-28 16:24:24', '2020-03-28 16:24:24', NULL),
(104, 54, 'ar', 'الجزائر', '2020-03-28 16:24:24', '2020-03-28 16:24:24', NULL),
(105, 55, 'en', 'Cairo', '2020-03-28 16:26:53', '2020-03-28 16:26:53', NULL),
(106, 55, 'ar', 'القاهرة', '2020-03-28 16:26:53', '2020-03-28 16:26:53', NULL),
(107, 56, 'en', 'Baghdad', '2020-03-28 16:27:17', '2020-03-28 16:27:17', NULL),
(108, 56, 'ar', 'بغداد', '2020-03-28 16:27:17', '2020-03-28 16:27:17', NULL),
(109, 57, 'en', 'Baghdad', '2020-03-28 16:27:18', '2020-03-28 16:27:18', NULL),
(110, 57, 'ar', 'بغداد', '2020-03-28 16:27:19', '2020-03-28 16:27:19', NULL),
(111, 58, 'en', 'Beirut', '2020-03-28 16:30:38', '2020-03-28 16:30:38', NULL),
(112, 58, 'ar', 'بيروت', '2020-03-28 16:30:38', '2020-03-28 16:30:38', NULL),
(113, 59, 'en', 'Trablos', '2020-03-28 16:38:31', '2020-03-28 16:38:31', NULL),
(114, 59, 'ar', 'طرابلس', '2020-03-28 16:38:31', '2020-03-28 16:38:31', NULL),
(115, 60, 'en', 'Alrabat', '2020-03-28 18:24:16', '2020-03-28 18:24:16', NULL),
(116, 60, 'ar', 'الرباط', '2020-03-28 18:24:16', '2020-03-28 18:24:16', NULL),
(117, 61, 'en', 'Nouakchott', '2020-03-28 18:27:04', '2020-03-28 18:27:04', NULL),
(118, 61, 'ar', 'نواكشوط', '2020-03-28 18:27:05', '2020-03-28 18:27:05', NULL),
(119, 62, 'en', 'Masqat', '2020-03-28 18:27:56', '2020-03-28 18:27:56', NULL),
(120, 62, 'ar', 'مسقط', '2020-03-28 18:27:56', '2020-03-28 18:27:56', NULL),
(121, 63, 'en', 'Gaza', '2020-03-28 18:28:29', '2020-03-28 18:48:42', NULL),
(122, 63, 'ar', 'غزة', '2020-03-28 18:28:29', '2020-03-28 18:28:29', NULL),
(123, 64, 'en', 'Ghaza', '2020-03-28 18:28:31', '2020-03-28 18:47:48', '2020-03-28 18:47:48'),
(124, 64, 'ar', 'غزة', '2020-03-28 18:28:31', '2020-03-28 18:47:48', '2020-03-28 18:47:48'),
(125, 65, 'en', 'Alkhartom', '2020-03-28 18:29:17', '2020-03-28 18:29:17', NULL),
(126, 65, 'ar', 'الخرطوم', '2020-03-28 18:29:17', '2020-03-28 18:29:17', NULL),
(127, 66, 'en', 'Damascus', '2020-03-28 18:32:21', '2020-03-28 18:32:21', NULL),
(128, 66, 'ar', 'دمشق', '2020-03-28 18:32:21', '2020-03-28 18:32:21', NULL),
(129, 67, 'en', 'Tunis', '2020-03-28 18:32:46', '2020-03-28 18:32:46', NULL),
(130, 67, 'ar', 'تونس', '2020-03-28 18:32:46', '2020-03-28 18:32:46', NULL),
(131, 68, 'en', 'Sana’a', '2020-03-28 18:34:17', '2020-03-28 18:34:17', NULL),
(132, 68, 'ar', 'صنعاء', '2020-03-28 18:34:17', '2020-03-28 18:34:17', NULL),
(133, 69, 'en', 'Sana’a', '2020-03-28 18:34:19', '2020-03-28 18:47:40', '2020-03-28 18:47:40'),
(134, 69, 'ar', 'صنعاء', '2020-03-28 18:34:19', '2020-03-28 18:47:40', '2020-03-28 18:47:40'),
(135, 70, 'en', 'AlBaha', '2020-06-13 13:51:00', '2020-06-13 13:51:00', NULL),
(136, 70, 'ar', 'الباحه', '2020-06-13 13:51:00', '2020-06-13 13:51:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
CREATE TABLE IF NOT EXISTS `coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uses` int NOT NULL,
  `value` int NOT NULL,
  `fromDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `endDate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `branch_id`, `code`, `name`, `uses`, `value`, `fromDate`, `endDate`, `type`, `percentage`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', 'jkljkl', 'كوبون العيد', 5, 5, '2022-07-04', '2022-07-28', '1', 0, 1, 'active', '2022-07-06 02:23:20', '2022-07-06 02:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2022-06-13 08:16:12', '0000-00-00 00:00:00', NULL),
(2, 'active', '2022-06-13 08:16:15', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features_mark`
--

DROP TABLE IF EXISTS `features_mark`;
CREATE TABLE IF NOT EXISTS `features_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features_mark`
--

INSERT INTO `features_mark` (`id`, `feature_id`, `mark_id`, `created_at`, `updated_at`) VALUES
(17, '2', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21'),
(20, '1', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(19, '2', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(5, '2', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(6, '1', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(18, '1', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `feature_translations`
--

DROP TABLE IF EXISTS `feature_translations`;
CREATE TABLE IF NOT EXISTS `feature_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `feature_translations`
--

INSERT INTO `feature_translations` (`id`, `feature_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'adds one', '2022-06-13 08:15:12', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'اضافة اولى', '2022-06-13 08:15:14', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'adds two', '2022-06-13 08:15:25', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'اضافة تانية', '2022-06-13 08:15:27', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
CREATE TABLE IF NOT EXISTS `floors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int NOT NULL,
  `number_floor` int NOT NULL,
  `number_table` int NOT NULL,
  `space` int NOT NULL,
  `features` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `branch_id`, `number_floor`, `number_table`, `space`, `features`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 4, 240, 'kdnlfg\nskfgns,', 'active', '1', '2022-07-14 03:39:34', '2022-07-14 03:45:28'),
(2, 3, 2, 3, 250, 'kljklk\njkljl', 'active', '1', '2022-07-14 19:13:51', '2022-07-14 19:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 'uploads/language/m.png', '2017-10-18 10:36:27', '0000-00-00 00:00:00', NULL),
(2, 'ar', 'uploads/language/s.png', '2017-10-18 10:36:38', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

DROP TABLE IF EXISTS `language_translations`;
CREATE TABLE IF NOT EXISTS `language_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `language_translations`
--

INSERT INTO `language_translations` (`id`, `language_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'English', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'إنجليزي', '2017-10-19 08:04:44', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'Arabic', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'عربي', '2017-10-19 08:05:27', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int NOT NULL,
  `price` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `clothes` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `company_id`, `price`, `clothes`, `mobile`, `link`, `logo`, `cover`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '5', '2', '2356487924', 'https://stackoverflow.com/', 'uploads/mark/62a774f5037a9.jpg', 'uploads/mark/62a774f503dfa.jpg', 'active', '2022-06-14 03:33:41', '2022-06-19 04:14:39', NULL),
(2, 1, '10', '4', '2568974521', 'google', 'uploads/mark/62a899b03d034.jpg', 'uploads/mark/62a899b03d869.jpg', 'active', '2022-06-15 00:22:40', '2022-06-15 00:22:40', NULL),
(3, 1, '10', '1', '2354698541', 'ننننن', 'uploads/mark/62b1dd7cefdac.png', 'uploads/mark/62b1dd7cf0356.png', 'active', '2022-06-22 01:02:20', '2022-06-22 01:02:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mark_translations`
--

DROP TABLE IF EXISTS `mark_translations`;
CREATE TABLE IF NOT EXISTS `mark_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marks_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `privacy` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `mark_translations`
--

INSERT INTO `mark_translations` (`id`, `marks_id`, `locale`, `name`, `descriptions`, `privacy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'mmشيؤرشير', 'تتيسسيسينمب', 'سيبسيبسي', '2022-06-14 03:33:41', '2022-06-26 02:47:27', NULL),
(2, 1, 'ar', 'mmmmm', 'سينمبسينمبنمسيمبسيب', 'لالباايبيايب', '2022-06-14 03:33:41', '2022-06-16 00:48:33', NULL),
(3, 2, 'en', 'cool', 'هنا وصف باللغة الانجليزية', 'هنا وصف باللغة الانجليزية', '2022-06-15 00:22:40', '2022-06-15 00:22:40', NULL),
(4, 2, 'ar', 'كووول', 'هنا وصف باللغة العربية', 'هنا بالعربي', '2022-06-15 00:22:40', '2022-06-15 00:22:40', NULL),
(5, 3, 'en', 'شركة هاجر', 'شيؤشير', 'نباليبتنن', '2022-06-22 01:02:21', '2022-06-22 01:02:21', NULL),
(6, 3, 'ar', 'هاجر', 'شيرسرشر', 'قعهبستسبتى', '2022-06-22 01:02:21', '2022-06-22 01:02:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohamed.alijla@gmail.com', '$2y$10$/4qBwCFbOO0OpMUFWJg4w.lRs1x3pZ7F8fQeiuR3nwJ5cBoQCNIu6', '2022-05-16 23:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2022-06-12 06:17:00', '0000-00-00 00:00:00', NULL),
(2, 'active', '2022-06-12 06:17:04', '0000-00-00 00:00:00', NULL),
(3, 'active', '2022-06-12 06:17:10', '0000-00-00 00:00:00', NULL),
(4, 'active', '2022-06-12 06:17:13', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments_mark`
--

DROP TABLE IF EXISTS `payments_mark`;
CREATE TABLE IF NOT EXISTS `payments_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_mark`
--

INSERT INTO `payments_mark` (`id`, `payment_id`, `mark_id`, `created_at`, `updated_at`) VALUES
(18, '4', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(17, '2', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(3, '2', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(4, '3', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(15, '3', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21'),
(16, '2', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `payment_translations`
--

DROP TABLE IF EXISTS `payment_translations`;
CREATE TABLE IF NOT EXISTS `payment_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `payment_translations`
--

INSERT INTO `payment_translations` (`id`, `payment_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'paypal', '2022-06-12 06:17:28', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'باي بال', '2022-06-12 06:17:30', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'Express', '2022-06-12 06:17:43', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'اكسبرس', '2022-06-12 06:17:46', '0000-00-00 00:00:00', NULL),
(5, 3, 'en', 'visa', '2022-06-12 06:17:55', '0000-00-00 00:00:00', NULL),
(6, 3, 'ar', 'فيزا', '2022-06-12 06:17:58', '0000-00-00 00:00:00', NULL),
(7, 4, 'en', 'master', '2022-06-12 06:18:17', '0000-00-00 00:00:00', NULL),
(8, 4, 'ar', 'ماستر', '2022-06-12 06:18:19', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `logo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `order_number` int NOT NULL,
  `delivery_status` int NOT NULL DEFAULT '1' COMMENT 'بيك اب او دليفري او داخل المطعم',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `branch_id`, `category_id`, `price`, `offer`, `logo`, `cover`, `status`, `order_number`, `delivery_status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 7, '50', '45', 'uploads/products/631769c16c148.png', 'uploads/products/631769c16c758.png', 'active', 1, 1, 1, '2022-09-07 01:39:45', '2022-09-07 02:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
CREATE TABLE IF NOT EXISTS `product_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `locale` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `descriptions`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'acasv', 'advasv', '2022-09-07 01:39:45', '2022-09-07 01:39:45', NULL),
(2, 1, 'ar', 'ad', 'avasvsav', '2022-09-07 01:39:45', '2022-09-07 01:39:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `logo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `logo`, `order_by`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 4, 'uploads/subcategory/5b571d809ffe8.jpeg', 0, 0, 'active', '2018-07-24 16:37:20', '2018-09-22 17:41:32', '2018-09-22 17:41:32'),
(5, 4, 'uploads/subcategory/5b571ddbd1f03.png', 0, 0, 'active', '2018-07-24 16:38:51', '2018-09-22 17:41:41', '2018-09-22 17:41:41'),
(6, 5, 'uploads/subcategory/5b5858de31ac6.jpeg', 0, 0, 'active', '2018-07-25 15:02:54', '2018-09-22 17:41:16', '2018-09-22 17:41:16'),
(7, 5, 'uploads/subcategory/5b5858f36bd42.png', 0, 0, 'active', '2018-07-25 15:03:15', '2018-09-22 17:41:11', '2018-09-22 17:41:11'),
(8, 1, 'uploads/subcategory/5ba1f0466c81d.png', 0, 0, 'active', '2018-09-19 18:44:22', '2018-09-19 18:44:22', NULL),
(9, 1, 'uploads/subcategory/5ba1f0714275b.png', 0, 0, 'active', '2018-09-19 18:45:05', '2018-09-19 18:45:05', NULL),
(10, 1, 'uploads/subcategory/5ba1f086f2fc8.png', 0, 0, 'active', '2018-09-19 18:45:26', '2018-09-19 18:45:26', NULL),
(11, 2, 'uploads/subcategory/5ba1f0a63963b.png', 0, 0, 'active', '2018-09-19 18:45:58', '2018-09-19 18:45:58', NULL),
(12, 2, 'uploads/subcategory/5ba1f0b8d382b.png', 0, 0, 'active', '2018-09-19 18:46:16', '2018-09-19 18:46:16', NULL),
(13, 2, 'uploads/subcategory/5ba1f0d8a1265.png', 0, 0, 'active', '2018-09-19 18:46:48', '2018-09-19 18:46:48', NULL),
(14, 9, 'uploads/subcategory/5ba1f1318034b.png', 0, 0, 'active', '2018-09-19 18:48:17', '2018-09-19 18:48:17', NULL),
(15, 9, 'uploads/subcategory/5ba1f146a0d30.png', 0, 0, 'active', '2018-09-19 18:48:38', '2018-09-19 18:48:38', NULL),
(16, 9, 'uploads/subcategory/5ba1f16202da1.png', 0, 0, 'active', '2018-09-19 18:49:06', '2018-09-19 18:49:06', NULL),
(17, 15, NULL, 0, 0, 'active', '2018-09-20 01:00:23', '2018-09-20 01:00:23', NULL),
(18, 7, NULL, 0, 0, 'active', '2018-09-22 17:56:34', '2018-09-22 17:56:34', NULL),
(19, 6, NULL, 0, 0, 'active', '2018-09-22 17:56:51', '2018-09-22 17:56:51', NULL),
(20, 6, NULL, 0, 0, 'active', '2018-09-22 17:57:04', '2018-09-22 17:57:04', NULL),
(21, 6, NULL, 0, 0, 'active', '2018-09-22 17:57:18', '2018-09-22 17:57:18', NULL),
(22, 11, NULL, 0, 0, 'active', '2018-09-22 18:39:03', '2018-09-22 18:39:03', NULL),
(23, 11, NULL, 0, 0, 'active', '2018-09-22 18:39:27', '2018-09-22 18:39:27', NULL),
(24, 5, NULL, 0, 0, 'active', '2018-09-22 19:05:35', '2018-09-22 19:05:35', NULL),
(25, 7, NULL, NULL, 1, 'active', '2022-09-06 20:40:27', '2022-09-06 20:40:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_translations`
--

DROP TABLE IF EXISTS `sub_category_translations`;
CREATE TABLE IF NOT EXISTS `sub_category_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_category_id` int NOT NULL,
  `locale` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_category_translations`
--

INSERT INTO `sub_category_translations` (`id`, `sub_category_id`, `locale`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Food Big', '2018-07-15 14:24:59', '2018-07-15 14:24:59', NULL),
(2, 1, 'ar', 'ملابس كبيرة', '2018-07-15 14:24:59', '2018-07-15 14:24:59', NULL),
(3, 2, 'en', 'Food Hot', '2018-07-19 11:08:20', '2018-07-19 11:08:20', NULL),
(4, 2, 'ar', 'Food Hot', '2018-07-19 11:08:20', '2018-07-19 11:08:20', NULL),
(5, 3, 'en', 'Third Sub', '2018-07-19 17:12:19', '2018-07-19 17:12:19', NULL),
(6, 3, 'ar', 'Third Sub', '2018-07-19 17:12:19', '2018-07-19 17:12:19', NULL),
(7, 4, 'en', 'Fashing Mazda', '2018-07-24 16:37:20', '2018-07-24 16:37:20', NULL),
(8, 4, 'ar', 'Fashing Mazda', '2018-07-24 16:37:20', '2018-07-24 16:37:20', NULL),
(9, 5, 'en', 'Fashing Lion', '2018-07-24 16:38:51', '2018-07-24 16:38:51', NULL),
(10, 5, 'ar', 'Fashing Lion', '2018-07-24 16:38:51', '2018-07-24 16:38:51', NULL),
(11, 6, 'en', 'Ser One', '2018-07-25 15:02:54', '2018-07-25 15:02:54', NULL),
(12, 6, 'ar', 'Ser One', '2018-07-25 15:02:54', '2018-07-25 15:02:54', NULL),
(13, 7, 'en', 'Ser Tow', '2018-07-25 15:03:15', '2018-07-25 15:03:15', NULL),
(14, 7, 'ar', 'Ser Tow', '2018-07-25 15:03:15', '2018-07-25 15:03:15', NULL),
(15, 8, 'en', 'Breakfast', '2018-09-19 18:44:22', '2018-09-19 18:44:22', NULL),
(16, 8, 'ar', 'أفطار', '2018-09-19 18:44:22', '2018-09-19 18:44:22', NULL),
(17, 9, 'en', 'Dinar', '2018-09-19 18:45:05', '2018-09-19 18:45:05', NULL),
(18, 9, 'ar', 'وجبة عشاء', '2018-09-19 18:45:05', '2018-09-19 18:45:05', NULL),
(19, 10, 'en', 'Lanch', '2018-09-19 18:45:26', '2018-09-19 18:45:26', NULL),
(20, 10, 'ar', 'غداء', '2018-09-19 18:45:26', '2018-09-19 18:45:26', NULL),
(21, 11, 'en', 'Men', '2018-09-19 18:45:58', '2018-09-19 18:45:58', NULL),
(22, 11, 'ar', 'رجال', '2018-09-19 18:45:58', '2018-09-19 18:45:58', NULL),
(23, 12, 'en', 'WOMAN', '2018-09-19 18:46:16', '2018-09-19 18:46:16', NULL),
(24, 12, 'ar', 'نساء', '2018-09-19 18:46:16', '2018-09-19 18:46:16', NULL),
(25, 13, 'en', 'KIDS', '2018-09-19 18:46:48', '2018-09-19 18:46:48', NULL),
(26, 13, 'ar', 'أطفال', '2018-09-19 18:46:48', '2018-09-19 18:46:48', NULL),
(27, 14, 'en', 'Foundation', '2018-09-19 18:48:17', '2018-09-19 18:48:17', NULL),
(28, 14, 'ar', 'Foundation', '2018-09-19 18:48:17', '2018-09-19 18:48:17', NULL),
(29, 15, 'en', 'Nail Polish', '2018-09-19 18:48:38', '2018-09-19 18:48:38', NULL),
(30, 15, 'ar', 'Nail Polish', '2018-09-19 18:48:38', '2018-09-19 18:48:38', NULL),
(31, 16, 'en', 'Face Powder', '2018-09-19 18:49:06', '2018-09-19 18:49:06', NULL),
(32, 16, 'ar', 'Face Powder', '2018-09-19 18:49:06', '2018-09-19 18:49:06', NULL),
(33, 17, 'en', 'WEDDING', '2018-09-20 01:00:23', '2018-09-20 01:00:23', NULL),
(34, 17, 'ar', 'WEDDING', '2018-09-20 01:00:23', '2018-09-20 01:00:23', NULL),
(35, 18, 'en', 'Sidewalk Cafe', '2018-09-22 17:56:34', '2018-09-22 18:00:03', NULL),
(36, 18, 'ar', 'Sidewalk Cafe', '2018-09-22 17:56:34', '2018-09-22 18:00:03', NULL),
(37, 19, 'en', 'Breakfast', '2018-09-22 17:56:51', '2018-09-22 17:56:51', NULL),
(38, 19, 'ar', 'أفطار', '2018-09-22 17:56:51', '2018-09-22 17:56:51', NULL),
(39, 20, 'en', 'Dinar', '2018-09-22 17:57:04', '2018-09-22 17:57:04', NULL),
(40, 20, 'ar', 'وجبة عشاء', '2018-09-22 17:57:04', '2018-09-22 17:57:04', NULL),
(41, 21, 'en', 'Lanch', '2018-09-22 17:57:18', '2018-09-22 17:57:18', NULL),
(42, 21, 'ar', 'وجبة افطار', '2018-09-22 17:57:18', '2018-09-22 17:57:18', NULL),
(43, 22, 'en', 'Bread', '2018-09-22 18:39:03', '2018-09-22 18:39:03', NULL),
(44, 22, 'ar', 'خـبز', '2018-09-22 18:39:03', '2018-09-22 18:39:03', NULL),
(45, 23, 'en', 'Cakes', '2018-09-22 18:39:27', '2018-09-22 18:39:27', NULL),
(46, 23, 'ar', 'كيك', '2018-09-22 18:39:27', '2018-09-22 18:39:27', NULL),
(47, 24, 'en', 'Wedding', '2018-09-22 19:05:35', '2018-09-22 19:05:35', NULL),
(48, 24, 'ar', 'مناسبات زواج', '2018-09-22 19:05:35', '2018-09-22 19:05:35', NULL),
(49, 25, 'en', 'adcadcv', '2022-09-06 20:40:27', '2022-09-06 20:40:27', NULL),
(50, 25, 'ar', 'advadvas', '2022-09-06 20:40:27', '2022-09-06 20:40:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
CREATE TABLE IF NOT EXISTS `tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `floor_id` int NOT NULL,
  `number_table` int NOT NULL,
  `persons_number` int NOT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `floor_id`, `number_table`, `persons_number`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 4, 'active', 1, '2022-07-16 02:43:13', '2022-07-16 02:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2022-06-12 06:19:33', '0000-00-00 00:00:00', NULL),
(2, 'active', '2022-06-12 06:19:35', '0000-00-00 00:00:00', NULL),
(3, 'active', '2022-06-12 06:19:38', '0000-00-00 00:00:00', NULL),
(4, 'active', '2022-06-12 06:19:41', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags_mark`
--

DROP TABLE IF EXISTS `tags_mark`;
CREATE TABLE IF NOT EXISTS `tags_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tags_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags_mark`
--

INSERT INTO `tags_mark` (`id`, `tags_id`, `mark_id`, `created_at`, `updated_at`) VALUES
(17, '3', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21'),
(21, '1', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(20, '2', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(5, '3', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(6, '1', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(18, '2', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21'),
(19, '1', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

DROP TABLE IF EXISTS `tag_translations`;
CREATE TABLE IF NOT EXISTS `tag_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'romance', '2022-06-12 06:20:14', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'رومانسي', '2022-06-12 06:20:17', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'family', '2022-06-12 06:20:28', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'عائلي', '2022-06-12 06:20:30', '0000-00-00 00:00:00', NULL),
(5, 3, 'en', 'drame', '2022-06-13 08:09:05', '0000-00-00 00:00:00', NULL),
(6, 3, 'ar', 'درامي', '2022-06-13 08:09:08', '0000-00-00 00:00:00', NULL),
(7, 4, 'en', 'nice', '2022-06-13 08:09:44', '0000-00-00 00:00:00', NULL),
(8, 4, 'ar', 'جمال', '2022-06-13 08:09:47', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_work`
--

DROP TABLE IF EXISTS `time_work`;
CREATE TABLE IF NOT EXISTS `time_work` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `startTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `endTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `time_work`
--

INSERT INTO `time_work` (`id`, `user_id`, `branch_id`, `day`, `startTime`, `endTime`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, '1', '2', '1', '11:44', '01:44', 'normal', 'active', '2022-06-23 02:50:51', '2022-06-23 02:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('active','not_active') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2022-06-11 17:31:24', '0000-00-00 00:00:00', NULL),
(2, 'active', '2022-06-11 17:31:27', '0000-00-00 00:00:00', NULL),
(3, 'active', '2022-06-11 17:31:37', '0000-00-00 00:00:00', NULL),
(4, 'active', '2022-06-11 17:31:39', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_mark`
--

DROP TABLE IF EXISTS `types_mark`;
CREATE TABLE IF NOT EXISTS `types_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `types_mark`
--

INSERT INTO `types_mark` (`id`, `type_id`, `mark_id`, `created_at`, `updated_at`) VALUES
(17, '3', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21'),
(20, '3', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(19, '2', '1', '2022-06-26 02:47:27', '2022-06-26 02:47:27'),
(5, '3', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(6, '2', '2', '2022-06-15 00:22:40', '2022-06-15 00:22:40'),
(18, '2', '3', '2022-06-22 01:02:21', '2022-06-22 01:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `type_translations`
--

DROP TABLE IF EXISTS `type_translations`;
CREATE TABLE IF NOT EXISTS `type_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_id` int NOT NULL,
  `locale` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `type_translations`
--

INSERT INTO `type_translations` (`id`, `type_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'chain', '2022-06-11 17:32:06', '0000-00-00 00:00:00', NULL),
(2, 1, 'ar', 'صيني', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(3, 2, 'en', 'arabic', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(4, 2, 'ar', 'عربي', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(5, 3, 'en', 'brazil', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(6, 3, 'ar', 'برازيلي', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(7, 4, 'en', 'see', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL),
(8, 4, 'ar', 'بحري', '2022-06-11 17:32:19', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ar` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cafe` int NOT NULL DEFAULT '0',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `commercial_registration_number` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification` int NOT NULL DEFAULT '0',
  `status` enum('active','not_active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `rate` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_file` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `name_en`, `name_ar`, `email`, `mobile`, `pwd`, `password`, `remember_token`, `cafe`, `address`, `commercial_registration_number`, `tax_number`, `verification`, `status`, `rate`, `code`, `commercial_file`, `national_file`, `tax_file`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'moh sab', 'moh', 'sab', 'betak', 'بيتك', 'moh@gmail.com', '0599895357', NULL, '$2y$10$LKHYkfuvYBm7mI4GZAD90OnN8NtD7nA7iZyuJpEUePm1uRx/WDmXi', NULL, 1, 'sudia ju', '5645646', '564444', 0, 'active', '0', '1111', 'uploads/users/commercial_file/629c7a21e9471.png', 'uploads/users/national_file/629f0e1e27c72.jpg', 'uploads/users/tax_file/629c7a21e9cd0.png', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', NULL, '2022-06-05 19:40:49', '2022-06-14 01:21:55', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
