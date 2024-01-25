-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2022 at 12:37 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buybazar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT '1',
  `image` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 11, '977,16.Adabor,Mohammodpur,Dhaka', 'Bangladesh', 'Dhaka', '1207', '01686799560', 0, '2020-11-03 08:46:43', '2020-11-03 08:46:43'),
(2, 13, '29/2-3, Block-F, Babar Road\r\nMohammadpur', 'Bangladesh', 'Dhaka', '1207', '01728525589', 1, '2020-11-05 17:22:39', '2020-11-05 18:19:41'),
(3, 9, 'werwer', 'Bangladesh', 'weqr', 'wer2314', '02314898', 0, '2020-11-12 19:44:02', '2020-11-12 19:44:02'),
(4, 23, '390/1, North Shahjahanpur', 'Bangladesh', 'Dhaka', '1217', '+8801934328180', 0, '2020-11-19 16:03:34', '2020-11-19 16:03:34'),
(5, 31, 'House-3/2, road-7, Dhanmondi', 'Bangladesh', 'Dhaka', '1205', '01916946459', 0, '2020-12-23 11:10:21', '2020-12-23 11:10:21'),
(6, 30, '29/2-3, blick-F, babor road, mohammadpur', 'Bangladesh', 'Dhaka', '1207', '01789595880', 0, '2020-12-24 14:40:09', '2020-12-24 14:40:09'),
(7, 33, '967', 'Bangladesh', 'Dhaka', '1207', '01723455248', 0, '2021-01-05 15:00:50', '2021-01-05 15:00:50'),
(8, 35, 'test', 'Bangladesh', 'dhaka', '1234', '01934884990', 0, '2021-01-08 06:02:51', '2021-01-08 06:02:51'),
(9, 40, 'Bowbazar panirkol', 'Bangladesh', 'Chittagong', '4202', '01643000604', 0, '2021-01-19 08:42:30', '2021-01-19 08:42:30'),
(10, 42, 'Bondor Bazar, Sylhet', 'Bangladesh', 'Sylhet', '3100', '01756018279', 0, '2021-01-25 07:54:10', '2021-01-25 07:54:10'),
(11, 61, 'Modinapara, Tongi Railgate,', 'Bangladesh', 'Tongi', '1710', '01746273766', 0, '2021-08-24 02:48:43', '2021-08-24 02:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf32_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `published` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(4, 'uploads/banners/lgGktd1ruimDUiAmAWZjkHl5RHIpEjaagMPX6qzB.jpeg', '#', 1, 0, '2019-03-12 05:58:23', '2020-11-09 09:21:03'),
(5, 'uploads/banners/b8rh2uhVm3AENW6SpvQRYFDsYMD4ijoRrcINosEa.jpeg', '#', 1, 0, '2019-03-12 05:58:41', '2020-11-09 09:21:00'),
(9, 'uploads/banners/hhlPjyb5iuOEzINSBWokD0bPETSk4GHacJKyREYU.jpeg', '#', 1, 0, '2019-06-11 05:00:15', '2020-11-09 09:21:00'),
(10, 'uploads/banners/banner.jpg', '#', 1, 0, '2019-06-11 05:00:24', '2019-06-11 05:01:56'),
(11, 'uploads/banners/7xfm6QuF3NdziGNnyTwhX09QMXcNfCcGKKAueesh.jpeg', 'https://buybazar.com.bd/search?category=Womens-Fashion-RQiy5', 1, 1, '2020-11-09 09:21:30', '2020-11-09 09:21:42'),
(12, 'uploads/banners/rvZWMTrqiTo5uKkQEkWqLnsyA9Bwyjq888MQCdXK.jpeg', 'https://buybazar.com.bd/shops/create', 1, 1, '2020-11-09 09:22:09', '2020-11-09 09:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Demo brand', 'uploads/brands/brand.jpg', 1, 'Demo-brand-12', 'Demo brand', NULL, '2019-03-12 06:05:56', '2019-08-06 06:52:40'),
(2, 'Demo brand1', 'uploads/brands/brand.jpg', 1, 'Demo-brand1', 'Demo brand1', NULL, '2019-03-12 06:06:13', '2019-08-06 06:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '27', '2018-10-16 01:35:52', '2020-11-02 13:00:08'),
(2, 'system_default_currency', '27', '2018-10-16 01:36:58', '2020-11-02 13:00:08'),
(3, 'currency_format', '1', '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', '2018-10-17 03:01:59', '2020-11-12 19:14:12'),
(5, 'no_of_decimals', '1', '2018-10-17 03:01:59', '2020-11-12 19:13:03'),
(6, 'product_activation', '1', '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '0', '2018-10-28 07:45:16', '2019-01-31 05:09:10'),
(10, 'stripe_payment', '0', '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '1', '2018-10-28 07:46:05', '2019-01-24 03:40:18'),
(12, 'payumoney_payment', '0', '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', '2019-01-24 09:39:07', '2020-11-05 16:55:04'),
(17, 'vendor_commission', '5', '2019-01-31 06:18:04', '2020-11-03 01:54:49'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"}]', '2019-02-03 11:36:58', '2020-11-03 08:17:08'),
(19, 'google_analytics', '0', '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '1', '2019-02-07 12:51:59', '2020-11-03 08:14:16'),
(21, 'google_login', '0', '2019-02-07 12:52:10', '2019-02-08 19:41:14'),
(22, 'twitter_login', '0', '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', '2019-04-15 11:45:04', '2020-11-11 15:05:37'),
(37, 'email_verification', '0', '2019-04-30 07:30:07', '2019-04-30 07:30:07'),
(38, 'wallet_system', '0', '2019-05-19 08:05:44', '2019-05-19 02:11:57'),
(39, 'coupon_system', '0', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(40, 'current_version', '3.5', '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '1', '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', '2020-05-13 13:01:05', '2020-05-13 13:01:05'),
(56, 'pos_activation_for_seller', '1', '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'flat_rate', '2020-07-01 13:49:56', '2020-11-11 14:59:22'),
(58, 'flat_rate_shipping_cost', '60', '2020-07-01 13:49:56', '2020-11-03 08:07:12'),
(59, 'shipping_cost_admin', '59', '2020-07-01 13:49:56', '2020-11-10 18:09:12'),
(60, 'payhere_sandbox', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', '2020-09-22 10:58:21', '2020-09-22 10:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `digital` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(4, 'TV, Appliances, Electronics', 0.00, 'uploads/categories/banner/YLHhKF6dup45774kDZ1MYwbJjvgtVns0N6Pxy3Yy.png', 'uploads/categories/icon/5FtY2ymE6bkJkwfQ3tV0HKuddwCic33b9IM1ZEw1.png', 1, 0, 0, 'Electronic-Devices-Pf8Dm', 'TV, Appliances, Electronics', NULL, '2020-11-09 09:52:11', '2020-11-09 09:52:11'),
(5, 'Men\'s Fashion', 0.00, 'uploads/categories/banner/drzad0yHYHeUa5ekHmR0YNzxWqN7cv0oAnJI4okM.png', 'uploads/categories/icon/zFSSYlhVuEG1apDKCrcZwt5dF9Km5XissYWH7PpK.png', 1, 0, 0, 'Mens-Fashion-40tq2', 'Men\'s Fashion', NULL, '2020-11-09 10:10:57', '2020-11-09 10:10:57'),
(6, 'Women\'s Fashion', 0.00, 'uploads/categories/banner/JOMdaQb5DIk65Jl8cTUvOrGMxAH8oKr1auM5aSE2.png', 'uploads/categories/icon/Nan05iaOghtoT9Im0Fk5O0zgEcjzlGnhXNZtpTN4.png', 1, 0, 0, 'Womens-Fashion-RQiy5', 'Women\'s Fashion', NULL, '2020-11-09 10:09:20', '2020-11-09 10:09:20'),
(7, 'Beauty, Health', 0.00, 'uploads/categories/banner/jTtcNkZS1N9i5PCLo5MZXuyvcgIQlQZigM3WRoqP.png', 'uploads/categories/icon/CbbmyQ8qW3bKkBXkWKmBC5GMJPj72dxfI6bsMwRj.png', 1, 0, 0, 'Beauty-Health-QtTR8', 'Beauty, Health', NULL, '2020-11-09 10:13:03', '2020-11-09 10:13:03'),
(8, 'Home, Kitchen, Pets, Furniture', 0.00, 'uploads/categories/banner/mHAqf2LDmTjRbMVwajrFfHflhfVWh1DSd9VWqNPS.png', 'uploads/categories/icon/sKmWF4uqxrB7L9GD0uDd9wP1H4qCukku0GCXeCay.png', 0, 0, 0, 'Home-Kitchen-Pets-Furniture-AKnaR', 'Home, Kitchen, Pets, Furniture', NULL, '2020-11-09 10:03:29', '2020-11-09 10:03:29'),
(9, 'Grocery & Household Supplies', 0.00, 'uploads/categories/banner/WxBSXFVxf11sKliSarImaOlS4eMRFDpVMRYDUbNR.png', 'uploads/categories/icon/5VdipjZsUZsKL8x0P8C1FCDA2Ae8UuoeDhTMaYlN.png', 0, 0, 0, 'Grocery--Household-Supplies-lhfA8', 'Grocery & Household Supplies', NULL, '2020-11-09 10:20:46', '2020-11-09 10:20:46'),
(10, 'Bags, Luggage', 0.00, 'uploads/categories/banner/XMAD8lXQOuZZFWxrY9vYrOpGo1RezW0H8MDvpbVi.png', 'uploads/categories/icon/Zd2tf8tnprZRza3P40MYKQavGj21duDoJ6izOASg.png', 0, 0, 0, 'Bags-Luggage-C7N8Z', 'Bags, Luggage', NULL, '2020-11-09 10:18:10', '2020-11-09 10:18:10'),
(11, 'Sports & Fitness', 0.00, 'uploads/categories/banner/88NruJJclQYkOR0x8TP85LYfHpNF4YpR9y6ZuRRb.png', 'uploads/categories/icon/XW0oKuuotmB1OTjN8nvK8OGhIW0ejdJNc1etHmz3.png', 0, 0, 0, 'Sports--Fitness-3Cr45', 'Sports & Fitness', NULL, '2020-11-09 10:00:07', '2020-11-09 10:00:07'),
(12, 'Car, Motorbike', 0.00, 'uploads/categories/banner/Uc9WbOgP2WwjYVy5Wr3rMa1knBtMMetjt0AYbFOY.png', 'uploads/categories/icon/DLvOTxR0drMeoK0vrPmocEJbJgSj9NHkqabFRPLp.png', 0, 0, 0, 'Car-Motorbike-Ic3cy', 'Car, Motorbike', NULL, '2020-11-09 10:20:13', '2020-11-09 10:20:13'),
(13, 'Kids Zone', 0.00, 'uploads/categories/banner/NxcXFBfT8BwaIBn0zdpYiCejo8SfgbJwyi1AzLUN.png', 'uploads/categories/icon/B38khLdFBfxjDjhWZIXN9Th0Unbeg1VPsv6J1efv.png', 1, 0, 0, 'Kids-Zone-bm0oj', 'Kids Zone', NULL, '2020-11-09 10:16:43', '2020-11-09 10:16:43'),
(14, 'Art, Handicrafts, Collectibles', 0.00, 'uploads/categories/banner/9bOJSbLPXy2ZwSU7yNMboPTL7Xqczu67LA88ugg0.png', 'uploads/categories/icon/EzDLQv21VFoI8FI4ZyRWqHO68bBU3pZj4J9RC7Ig.png', 0, 0, 0, 'Art-Handicrafts-Collectibles-UTI5B', 'Art, Handicrafts, Collectibles', NULL, '2020-11-09 09:57:56', '2020-11-09 09:57:56'),
(15, 'Mobiles, Computers', 0.00, 'uploads/categories/banner/iUudMhckACdBeFPwuC0mSIjsAVtUdvFPXy8Ef5wq.png', 'uploads/categories/icon/etOcrTVRdd30hREKfJyYe1pdhwKa62ofduOzX7aD.png', 1, 0, 0, 'Mobiles-Computers-GplRR', 'Mobiles, Computers', NULL, '2020-11-09 10:20:52', '2020-11-09 10:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf32_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT '1',
  `receiver_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(1, 31, 9, 'Full sleev T-Shirt', 1, 0, '2021-01-05 12:14:57', '2021-01-05 12:14:57'),
(2, 31, 9, 'Full sleev T-Shirt', 1, 0, '2021-01-05 12:16:22', '2021-01-05 12:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 0, NULL, NULL),
(2, 'AL', 'Albania', 0, NULL, NULL),
(3, 'DZ', 'Algeria', 0, NULL, NULL),
(4, 'DS', 'American Samoa', 0, NULL, NULL),
(5, 'AD', 'Andorra', 0, NULL, NULL),
(6, 'AO', 'Angola', 0, NULL, NULL),
(7, 'AI', 'Anguilla', 0, NULL, NULL),
(8, 'AQ', 'Antarctica', 0, NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 0, NULL, NULL),
(10, 'AR', 'Argentina', 0, NULL, NULL),
(11, 'AM', 'Armenia', 0, NULL, NULL),
(12, 'AW', 'Aruba', 0, NULL, NULL),
(13, 'AU', 'Australia', 0, NULL, NULL),
(14, 'AT', 'Austria', 0, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 0, NULL, NULL),
(16, 'BS', 'Bahamas', 0, NULL, NULL),
(17, 'BH', 'Bahrain', 0, NULL, NULL),
(18, 'BD', 'Bangladesh', 1, NULL, NULL),
(19, 'BB', 'Barbados', 0, NULL, NULL),
(20, 'BY', 'Belarus', 0, NULL, NULL),
(21, 'BE', 'Belgium', 0, NULL, NULL),
(22, 'BZ', 'Belize', 0, NULL, NULL),
(23, 'BJ', 'Benin', 0, NULL, NULL),
(24, 'BM', 'Bermuda', 0, NULL, NULL),
(25, 'BT', 'Bhutan', 0, NULL, NULL),
(26, 'BO', 'Bolivia', 0, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 0, NULL, NULL),
(28, 'BW', 'Botswana', 0, NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, NULL, NULL),
(30, 'BR', 'Brazil', 0, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 0, NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 0, NULL, NULL),
(33, 'BG', 'Bulgaria', 0, NULL, NULL),
(34, 'BF', 'Burkina Faso', 0, NULL, NULL),
(35, 'BI', 'Burundi', 0, NULL, NULL),
(36, 'KH', 'Cambodia', 0, NULL, NULL),
(37, 'CM', 'Cameroon', 0, NULL, NULL),
(38, 'CA', 'Canada', 0, NULL, NULL),
(39, 'CV', 'Cape Verde', 0, NULL, NULL),
(40, 'KY', 'Cayman Islands', 0, NULL, NULL),
(41, 'CF', 'Central African Republic', 0, NULL, NULL),
(42, 'TD', 'Chad', 0, NULL, NULL),
(43, 'CL', 'Chile', 0, NULL, NULL),
(44, 'CN', 'China', 0, NULL, NULL),
(45, 'CX', 'Christmas Island', 0, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 0, NULL, NULL),
(47, 'CO', 'Colombia', 0, NULL, NULL),
(48, 'KM', 'Comoros', 0, NULL, NULL),
(49, 'CG', 'Congo', 0, NULL, NULL),
(50, 'CK', 'Cook Islands', 0, NULL, NULL),
(51, 'CR', 'Costa Rica', 0, NULL, NULL),
(52, 'HR', 'Croatia (Hrvatska)', 0, NULL, NULL),
(53, 'CU', 'Cuba', 0, NULL, NULL),
(54, 'CY', 'Cyprus', 0, NULL, NULL),
(55, 'CZ', 'Czech Republic', 0, NULL, NULL),
(56, 'DK', 'Denmark', 0, NULL, NULL),
(57, 'DJ', 'Djibouti', 0, NULL, NULL),
(58, 'DM', 'Dominica', 0, NULL, NULL),
(59, 'DO', 'Dominican Republic', 0, NULL, NULL),
(60, 'TP', 'East Timor', 0, NULL, NULL),
(61, 'EC', 'Ecuador', 0, NULL, NULL),
(62, 'EG', 'Egypt', 0, NULL, NULL),
(63, 'SV', 'El Salvador', 0, NULL, NULL),
(64, 'GQ', 'Equatorial Guinea', 0, NULL, NULL),
(65, 'ER', 'Eritrea', 0, NULL, NULL),
(66, 'EE', 'Estonia', 0, NULL, NULL),
(67, 'ET', 'Ethiopia', 0, NULL, NULL),
(68, 'FK', 'Falkland Islands (Malvinas)', 0, NULL, NULL),
(69, 'FO', 'Faroe Islands', 0, NULL, NULL),
(70, 'FJ', 'Fiji', 0, NULL, NULL),
(71, 'FI', 'Finland', 0, NULL, NULL),
(72, 'FR', 'France', 0, NULL, NULL),
(73, 'FX', 'France, Metropolitan', 0, NULL, NULL),
(74, 'GF', 'French Guiana', 0, NULL, NULL),
(75, 'PF', 'French Polynesia', 0, NULL, NULL),
(76, 'TF', 'French Southern Territories', 0, NULL, NULL),
(77, 'GA', 'Gabon', 0, NULL, NULL),
(78, 'GM', 'Gambia', 0, NULL, NULL),
(79, 'GE', 'Georgia', 0, NULL, NULL),
(80, 'DE', 'Germany', 0, NULL, NULL),
(81, 'GH', 'Ghana', 0, NULL, NULL),
(82, 'GI', 'Gibraltar', 0, NULL, NULL),
(83, 'GK', 'Guernsey', 0, NULL, NULL),
(84, 'GR', 'Greece', 0, NULL, NULL),
(85, 'GL', 'Greenland', 0, NULL, NULL),
(86, 'GD', 'Grenada', 0, NULL, NULL),
(87, 'GP', 'Guadeloupe', 0, NULL, NULL),
(88, 'GU', 'Guam', 0, NULL, NULL),
(89, 'GT', 'Guatemala', 0, NULL, NULL),
(90, 'GN', 'Guinea', 0, NULL, NULL),
(91, 'GW', 'Guinea-Bissau', 0, NULL, NULL),
(92, 'GY', 'Guyana', 0, NULL, NULL),
(93, 'HT', 'Haiti', 0, NULL, NULL),
(94, 'HM', 'Heard and Mc Donald Islands', 0, NULL, NULL),
(95, 'HN', 'Honduras', 0, NULL, NULL),
(96, 'HK', 'Hong Kong', 0, NULL, NULL),
(97, 'HU', 'Hungary', 0, NULL, NULL),
(98, 'IS', 'Iceland', 0, NULL, NULL),
(99, 'IN', 'India', 0, NULL, NULL),
(100, 'IM', 'Isle of Man', 0, NULL, NULL),
(101, 'ID', 'Indonesia', 0, NULL, NULL),
(102, 'IR', 'Iran (Islamic Republic of)', 0, NULL, NULL),
(103, 'IQ', 'Iraq', 0, NULL, NULL),
(104, 'IE', 'Ireland', 0, NULL, NULL),
(105, 'IL', 'Israel', 0, NULL, NULL),
(106, 'IT', 'Italy', 0, NULL, NULL),
(107, 'CI', 'Ivory Coast', 0, NULL, NULL),
(108, 'JE', 'Jersey', 0, NULL, NULL),
(109, 'JM', 'Jamaica', 0, NULL, NULL),
(110, 'JP', 'Japan', 0, NULL, NULL),
(111, 'JO', 'Jordan', 0, NULL, NULL),
(112, 'KZ', 'Kazakhstan', 0, NULL, NULL),
(113, 'KE', 'Kenya', 0, NULL, NULL),
(114, 'KI', 'Kiribati', 0, NULL, NULL),
(115, 'KP', 'Korea, Democratic People\'s Republic of', 0, NULL, NULL),
(116, 'KR', 'Korea, Republic of', 0, NULL, NULL),
(117, 'XK', 'Kosovo', 0, NULL, NULL),
(118, 'KW', 'Kuwait', 0, NULL, NULL),
(119, 'KG', 'Kyrgyzstan', 0, NULL, NULL),
(120, 'LA', 'Lao People\'s Democratic Republic', 0, NULL, NULL),
(121, 'LV', 'Latvia', 0, NULL, NULL),
(122, 'LB', 'Lebanon', 0, NULL, NULL),
(123, 'LS', 'Lesotho', 0, NULL, NULL),
(124, 'LR', 'Liberia', 0, NULL, NULL),
(125, 'LY', 'Libyan Arab Jamahiriya', 0, NULL, NULL),
(126, 'LI', 'Liechtenstein', 0, NULL, NULL),
(127, 'LT', 'Lithuania', 0, NULL, NULL),
(128, 'LU', 'Luxembourg', 0, NULL, NULL),
(129, 'MO', 'Macau', 0, NULL, NULL),
(130, 'MK', 'Macedonia', 0, NULL, NULL),
(131, 'MG', 'Madagascar', 0, NULL, NULL),
(132, 'MW', 'Malawi', 0, NULL, NULL),
(133, 'MY', 'Malaysia', 0, NULL, NULL),
(134, 'MV', 'Maldives', 0, NULL, NULL),
(135, 'ML', 'Mali', 0, NULL, NULL),
(136, 'MT', 'Malta', 0, NULL, NULL),
(137, 'MH', 'Marshall Islands', 0, NULL, NULL),
(138, 'MQ', 'Martinique', 0, NULL, NULL),
(139, 'MR', 'Mauritania', 0, NULL, NULL),
(140, 'MU', 'Mauritius', 0, NULL, NULL),
(141, 'TY', 'Mayotte', 0, NULL, NULL),
(142, 'MX', 'Mexico', 0, NULL, NULL),
(143, 'FM', 'Micronesia, Federated States of', 0, NULL, NULL),
(144, 'MD', 'Moldova, Republic of', 0, NULL, NULL),
(145, 'MC', 'Monaco', 0, NULL, NULL),
(146, 'MN', 'Mongolia', 0, NULL, NULL),
(147, 'ME', 'Montenegro', 0, NULL, NULL),
(148, 'MS', 'Montserrat', 0, NULL, NULL),
(149, 'MA', 'Morocco', 0, NULL, NULL),
(150, 'MZ', 'Mozambique', 0, NULL, NULL),
(151, 'MM', 'Myanmar', 0, NULL, NULL),
(152, 'NA', 'Namibia', 0, NULL, NULL),
(153, 'NR', 'Nauru', 0, NULL, NULL),
(154, 'NP', 'Nepal', 0, NULL, NULL),
(155, 'NL', 'Netherlands', 0, NULL, NULL),
(156, 'AN', 'Netherlands Antilles', 0, NULL, NULL),
(157, 'NC', 'New Caledonia', 0, NULL, NULL),
(158, 'NZ', 'New Zealand', 0, NULL, NULL),
(159, 'NI', 'Nicaragua', 0, NULL, NULL),
(160, 'NE', 'Niger', 0, NULL, NULL),
(161, 'NG', 'Nigeria', 0, NULL, NULL),
(162, 'NU', 'Niue', 0, NULL, NULL),
(163, 'NF', 'Norfolk Island', 0, NULL, NULL),
(164, 'MP', 'Northern Mariana Islands', 0, NULL, NULL),
(165, 'NO', 'Norway', 0, NULL, NULL),
(166, 'OM', 'Oman', 0, NULL, NULL),
(167, 'PK', 'Pakistan', 0, NULL, NULL),
(168, 'PW', 'Palau', 0, NULL, NULL),
(169, 'PS', 'Palestine', 0, NULL, NULL),
(170, 'PA', 'Panama', 0, NULL, NULL),
(171, 'PG', 'Papua New Guinea', 0, NULL, NULL),
(172, 'PY', 'Paraguay', 0, NULL, NULL),
(173, 'PE', 'Peru', 0, NULL, NULL),
(174, 'PH', 'Philippines', 0, NULL, NULL),
(175, 'PN', 'Pitcairn', 0, NULL, NULL),
(176, 'PL', 'Poland', 0, NULL, NULL),
(177, 'PT', 'Portugal', 0, NULL, NULL),
(178, 'PR', 'Puerto Rico', 0, NULL, NULL),
(179, 'QA', 'Qatar', 0, NULL, NULL),
(180, 'RE', 'Reunion', 0, NULL, NULL),
(181, 'RO', 'Romania', 0, NULL, NULL),
(182, 'RU', 'Russian Federation', 0, NULL, NULL),
(183, 'RW', 'Rwanda', 0, NULL, NULL),
(184, 'KN', 'Saint Kitts and Nevis', 0, NULL, NULL),
(185, 'LC', 'Saint Lucia', 0, NULL, NULL),
(186, 'VC', 'Saint Vincent and the Grenadines', 0, NULL, NULL),
(187, 'WS', 'Samoa', 0, NULL, NULL),
(188, 'SM', 'San Marino', 0, NULL, NULL),
(189, 'ST', 'Sao Tome and Principe', 0, NULL, NULL),
(190, 'SA', 'Saudi Arabia', 0, NULL, NULL),
(191, 'SN', 'Senegal', 0, NULL, NULL),
(192, 'RS', 'Serbia', 0, NULL, NULL),
(193, 'SC', 'Seychelles', 0, NULL, NULL),
(194, 'SL', 'Sierra Leone', 0, NULL, NULL),
(195, 'SG', 'Singapore', 0, NULL, NULL),
(196, 'SK', 'Slovakia', 0, NULL, NULL),
(197, 'SI', 'Slovenia', 0, NULL, NULL),
(198, 'SB', 'Solomon Islands', 0, NULL, NULL),
(199, 'SO', 'Somalia', 0, NULL, NULL),
(200, 'ZA', 'South Africa', 0, NULL, NULL),
(201, 'GS', 'South Georgia South Sandwich Islands', 0, NULL, NULL),
(202, 'SS', 'South Sudan', 0, NULL, NULL),
(203, 'ES', 'Spain', 0, NULL, NULL),
(204, 'LK', 'Sri Lanka', 0, NULL, NULL),
(205, 'SH', 'St. Helena', 0, NULL, NULL),
(206, 'PM', 'St. Pierre and Miquelon', 0, NULL, NULL),
(207, 'SD', 'Sudan', 0, NULL, NULL),
(208, 'SR', 'Suriname', 0, NULL, NULL),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', 0, NULL, NULL),
(210, 'SZ', 'Swaziland', 0, NULL, NULL),
(211, 'SE', 'Sweden', 0, NULL, NULL),
(212, 'CH', 'Switzerland', 0, NULL, NULL),
(213, 'SY', 'Syrian Arab Republic', 0, NULL, NULL),
(214, 'TW', 'Taiwan', 0, NULL, NULL),
(215, 'TJ', 'Tajikistan', 0, NULL, NULL),
(216, 'TZ', 'Tanzania, United Republic of', 0, NULL, NULL),
(217, 'TH', 'Thailand', 0, NULL, NULL),
(218, 'TG', 'Togo', 0, NULL, NULL),
(219, 'TK', 'Tokelau', 0, NULL, NULL),
(220, 'TO', 'Tonga', 0, NULL, NULL),
(221, 'TT', 'Trinidad and Tobago', 0, NULL, NULL),
(222, 'TN', 'Tunisia', 0, NULL, NULL),
(223, 'TR', 'Turkey', 0, NULL, NULL),
(224, 'TM', 'Turkmenistan', 0, NULL, NULL),
(225, 'TC', 'Turks and Caicos Islands', 0, NULL, NULL),
(226, 'TV', 'Tuvalu', 0, NULL, NULL),
(227, 'UG', 'Uganda', 0, NULL, NULL),
(228, 'UA', 'Ukraine', 0, NULL, NULL),
(229, 'AE', 'United Arab Emirates', 0, NULL, NULL),
(230, 'GB', 'United Kingdom', 0, NULL, NULL),
(231, 'US', 'United States', 0, NULL, NULL),
(232, 'UM', 'United States minor outlying islands', 0, NULL, NULL),
(233, 'UY', 'Uruguay', 0, NULL, NULL),
(234, 'UZ', 'Uzbekistan', 0, NULL, NULL),
(235, 'VU', 'Vanuatu', 0, NULL, NULL),
(236, 'VA', 'Vatican City State', 0, NULL, NULL),
(237, 'VE', 'Venezuela', 0, NULL, NULL),
(238, 'VN', 'Vietnam', 0, NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 0, NULL, NULL),
(240, 'VI', 'Virgin Islands (U.S.)', 0, NULL, NULL),
(241, 'WF', 'Wallis and Futuna Islands', 0, NULL, NULL),
(242, 'EH', 'Western Sahara', 0, NULL, NULL),
(243, 'YE', 'Yemen', 0, NULL, NULL),
(244, 'ZR', 'Zaire', 0, NULL, NULL),
(245, 'ZM', 'Zambia', 0, NULL, NULL),
(246, 'ZW', 'Zimbabwe', 0, NULL, NULL),
(247, 'AF', 'Afghanistan', 0, NULL, NULL),
(248, 'AL', 'Albania', 0, NULL, NULL),
(249, 'DZ', 'Algeria', 0, NULL, NULL),
(250, 'DS', 'American Samoa', 0, NULL, NULL),
(251, 'AD', 'Andorra', 0, NULL, NULL),
(252, 'AO', 'Angola', 0, NULL, NULL),
(253, 'AI', 'Anguilla', 0, NULL, NULL),
(254, 'AQ', 'Antarctica', 0, NULL, NULL),
(255, 'AG', 'Antigua and Barbuda', 0, NULL, NULL),
(256, 'AR', 'Argentina', 0, NULL, NULL),
(257, 'AM', 'Armenia', 0, NULL, NULL),
(258, 'AW', 'Aruba', 0, NULL, NULL),
(259, 'AU', 'Australia', 0, NULL, NULL),
(260, 'AT', 'Austria', 0, NULL, NULL),
(261, 'AZ', 'Azerbaijan', 0, NULL, NULL),
(262, 'BS', 'Bahamas', 0, NULL, NULL),
(263, 'BH', 'Bahrain', 0, NULL, NULL),
(264, 'BD', 'Bangladesh', 0, NULL, NULL),
(265, 'BB', 'Barbados', 0, NULL, NULL),
(266, 'BY', 'Belarus', 0, NULL, NULL),
(267, 'BE', 'Belgium', 0, NULL, NULL),
(268, 'BZ', 'Belize', 0, NULL, NULL),
(269, 'BJ', 'Benin', 0, NULL, NULL),
(270, 'BM', 'Bermuda', 0, NULL, NULL),
(271, 'BT', 'Bhutan', 0, NULL, NULL),
(272, 'BO', 'Bolivia', 0, NULL, NULL),
(273, 'BA', 'Bosnia and Herzegovina', 0, NULL, NULL),
(274, 'BW', 'Botswana', 0, NULL, NULL),
(275, 'BV', 'Bouvet Island', 0, NULL, NULL),
(276, 'BR', 'Brazil', 0, NULL, NULL),
(277, 'IO', 'British Indian Ocean Territory', 0, NULL, NULL),
(278, 'BN', 'Brunei Darussalam', 0, NULL, NULL),
(279, 'BG', 'Bulgaria', 0, NULL, NULL),
(280, 'BF', 'Burkina Faso', 0, NULL, NULL),
(281, 'BI', 'Burundi', 0, NULL, NULL),
(282, 'KH', 'Cambodia', 0, NULL, NULL),
(283, 'CM', 'Cameroon', 0, NULL, NULL),
(284, 'CA', 'Canada', 0, NULL, NULL),
(285, 'CV', 'Cape Verde', 0, NULL, NULL),
(286, 'KY', 'Cayman Islands', 0, NULL, NULL),
(287, 'CF', 'Central African Republic', 0, NULL, NULL),
(288, 'TD', 'Chad', 0, NULL, NULL),
(289, 'CL', 'Chile', 0, NULL, NULL),
(290, 'CN', 'China', 0, NULL, NULL),
(291, 'CX', 'Christmas Island', 0, NULL, NULL),
(292, 'CC', 'Cocos (Keeling) Islands', 0, NULL, NULL),
(293, 'CO', 'Colombia', 0, NULL, NULL),
(294, 'KM', 'Comoros', 0, NULL, NULL),
(295, 'CG', 'Congo', 0, NULL, NULL),
(296, 'CK', 'Cook Islands', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'U.S. Dollar', '$', 1.00000, 1, 'USD', '2018-10-09 11:35:08', '2018-10-17 05:50:52'),
(2, 'Australian Dollar', '$', 1.28000, 0, 'AUD', '2018-10-09 11:35:08', '2019-02-04 05:51:55'),
(5, 'Brazilian Real', 'R$', 3.25000, 0, 'BRL', '2018-10-09 11:35:08', '2018-10-17 05:51:00'),
(6, 'Canadian Dollar', '$', 1.27000, 0, 'CAD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(7, 'Czech Koruna', 'Kč', 20.65000, 0, 'CZK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(8, 'Danish Krone', 'kr', 6.05000, 0, 'DKK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(9, 'Euro', '€', 0.85000, 0, 'EUR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(10, 'Hong Kong Dollar', '$', 7.83000, 0, 'HKD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(11, 'Hungarian Forint', 'Ft', 255.24000, 0, 'HUF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(12, 'Israeli New Sheqel', '₪', 3.48000, 0, 'ILS', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(13, 'Japanese Yen', '¥', 107.12000, 0, 'JPY', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(14, 'Malaysian Ringgit', 'RM', 3.91000, 0, 'MYR', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(15, 'Mexican Peso', '$', 18.72000, 0, 'MXN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(16, 'Norwegian Krone', 'kr', 7.83000, 0, 'NOK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(17, 'New Zealand Dollar', '$', 1.38000, 0, 'NZD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(18, 'Philippine Peso', '₱', 52.26000, 0, 'PHP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(19, 'Polish Zloty', 'zł', 3.39000, 0, 'PLN', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(20, 'Pound Sterling', '£', 0.72000, 0, 'GBP', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(21, 'Russian Ruble', 'руб', 55.93000, 0, 'RUB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(22, 'Singapore Dollar', '$', 1.32000, 0, 'SGD', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(23, 'Swedish Krona', 'kr', 8.19000, 0, 'SEK', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(24, 'Swiss Franc', 'CHF', 0.94000, 0, 'CHF', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(26, 'Thai Baht', '฿', 31.39000, 0, 'THB', '2018-10-09 11:35:08', '2018-10-09 11:35:08'),
(27, 'Taka', '৳', 84.00000, 1, 'BDT', '2018-10-09 11:35:08', '2018-12-02 05:16:13'),
(28, 'Indian Rupee', 'Rs', 68.45000, 0, 'Rupee', '2019-07-07 10:33:46', '2019-07-07 10:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09'),
(5, 11, '2020-11-03 08:44:21', '2020-11-03 08:44:21'),
(6, 13, '2020-11-05 17:19:40', '2020-11-05 17:19:40'),
(7, 28, '2020-12-16 08:21:54', '2020-12-16 08:21:54'),
(8, 29, '2020-12-19 19:01:37', '2020-12-19 19:01:37'),
(9, 30, '2020-12-21 13:14:47', '2020-12-21 13:14:47'),
(10, 31, '2020-12-23 11:08:27', '2020-12-23 11:08:27'),
(11, 33, '2021-01-05 14:58:52', '2021-01-05 14:58:52'),
(12, 34, '2021-01-05 15:49:46', '2021-01-05 15:49:46'),
(13, 35, '2021-01-08 06:02:24', '2021-01-08 06:02:24'),
(14, 39, '2021-01-17 05:50:00', '2021-01-17 05:50:00'),
(15, 41, '2021-01-19 12:06:40', '2021-01-19 12:06:40'),
(16, 43, '2021-04-25 10:44:39', '2021-04-25 10:44:39'),
(17, 44, '2021-05-02 21:57:43', '2021-05-02 21:57:43'),
(18, 45, '2021-05-11 06:39:41', '2021-05-11 06:39:41'),
(19, 46, '2021-05-17 07:31:26', '2021-05-17 07:31:26'),
(20, 47, '2021-05-21 10:19:37', '2021-05-21 10:19:37'),
(21, 48, '2021-05-21 13:08:01', '2021-05-21 13:08:01'),
(22, 49, '2021-05-21 14:58:25', '2021-05-21 14:58:25'),
(23, 50, '2021-05-21 15:23:51', '2021-05-21 15:23:51'),
(24, 51, '2021-05-23 05:55:22', '2021-05-23 05:55:22'),
(25, 52, '2021-05-23 11:06:41', '2021-05-23 11:06:41'),
(26, 53, '2021-05-23 12:41:49', '2021-05-23 12:41:49'),
(27, 54, '2021-05-24 12:05:07', '2021-05-24 12:05:07'),
(28, 55, '2021-05-27 18:03:32', '2021-05-27 18:03:32'),
(29, 56, '2021-06-22 08:01:43', '2021-06-22 08:01:43'),
(30, 57, '2021-06-22 16:03:47', '2021-06-22 16:03:47'),
(31, 58, '2021-06-22 16:37:42', '2021-06-22 16:37:42'),
(32, 59, '2021-06-24 08:21:50', '2021-06-24 08:21:50'),
(33, 60, '2021-08-06 00:46:49', '2021-08-06 00:46:49'),
(34, 61, '2021-08-24 02:47:07', '2021-08-24 02:47:07'),
(35, 62, '2021-08-24 14:13:03', '2021-08-24 14:13:03'),
(36, 64, '2021-09-29 00:56:32', '2021-09-29 00:56:32'),
(37, 65, '2021-10-02 16:15:30', '2021-10-02 16:15:30'),
(38, 68, '2022-05-06 22:22:50', '2022-05-06 22:22:50'),
(39, 69, '2022-06-01 12:52:13', '2022-06-01 12:52:13'),
(40, 70, '2022-08-07 09:42:52', '2022-08-07 09:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(28,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `unit_price` double(28,2) DEFAULT '0.00',
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `featured` int(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mac book', 1604512800, 1607709600, 1, 1, '#fff', 'dark', NULL, 'mac-book-5spe5', '2020-11-05 14:53:09', '2020-12-08 18:48:50'),
(2, 'Flash Sale!!!', 1604772000, 1604944800, 1, 0, '#ggg', 'dark', 'uploads/offers/banner/jd7q53yOpFXaArrRoPkgEOZGRCTMf5K7NcDriNxj.jpeg', 'flash-sale!!!-uzkyy', '2020-11-07 18:07:45', '2020-12-08 18:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(3, 2, 7, 50.00, 'percent', '2020-11-07 18:10:29', '2020-11-07 18:10:29'),
(8, 1, 4, 0.00, 'amount', '2020-12-08 18:49:34', '2020-12-08 18:49:34'),
(9, 1, 5, 10.00, 'percent', '2020-12-08 18:49:34', '2020-12-08 18:49:34'),
(10, 1, 8, 0.00, 'amount', '2020-12-08 18:49:34', '2020-12-08 18:49:34'),
(11, 1, 9, 20.00, 'percent', '2020-12-08 18:49:34', '2020-12-08 18:49:34'),
(12, 1, 10, 20.00, 'percent', '2020-12-08 18:49:34', '2020-12-08 18:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `footer_logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/MCesGHMyzFyS0W24MP61qvEhJlIISMckcfL46gNA.png', 'uploads/logo/z17S5dnbMqOzsTzVDruXDOmHMrYvGERvwOv9vxbL.png', 'uploads/admin_logo/GIc7NYOaeJWPXPosZnuOi2yel2D2u8cut2WeWW28.png', NULL, 'uploads/admin_login_sidebar/qe5R5N2LDWKzefKp7VZfSHGwqJDZag0h9x036Te2.jpeg', 'uploads/favicon/bRunNRDdPLawkPHM6zPwHlVD2GCXBxA7B2vzdXL4.png', 'Buy Bazar', 'Dhanmondi, Dhaka-1205', 'Buy Bazar is a startup online marketplace. It is an initiative to empower thousands of sellers to connect with millions of customers. Buy Bazar is aiming to provide easy access to millions of products.', '+8801841899001', 'info@buybazar.com.bd', 'https://www.facebook.com/buybazar20', 'https://www.instagram.com/buybazarbd/', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2020-12-08 18:51:14', '2020-12-08 18:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'null', 1, '2020-11-09 16:19:22', '2020-11-09 16:19:22'),
(2, 6, 'null', 1, '2020-12-09 09:37:28', '2020-12-09 09:37:28'),
(3, 13, 'null', 1, '2020-12-23 15:40:59', '2020-12-23 15:40:59'),
(4, 9, 'null', 1, '2021-01-13 16:05:56', '2021-01-13 16:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(3, 'Bangla', 'bd', 0, '2019-02-17 06:35:37', '2020-11-03 16:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf32_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 31, 'https://buybazar.com.bd/product/Full-sleev-T-Shirt-aVzUE\r\nKom hobe?', '2021-01-05 12:14:57', '2021-01-05 12:14:57'),
(2, 2, 31, 'https://buybazar.com.bd/product/Full-sleev-T-Shirt-aVzUE\r\nKom hobe?', '2021-01-05 12:16:22', '2021-01-05 12:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `grand_total` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext COLLATE utf8_unicode_ci,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT '0',
  `delivery_viewed` int(1) NOT NULL DEFAULT '1',
  `payment_status_viewed` int(1) DEFAULT '1',
  `commission_calculated` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `shipping_address`, `payment_type`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(1, 11, NULL, '{\"name\":\"shahed\",\"email\":\"shahed2@gmail.com\",\"address\":\"977,16.Adabor,Mohammodpur,Dhaka\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01686799560\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 5060.00, 0.00, '20201103-14472952', 1604393249, 1, 0, 0, 0, '2020-11-03 08:47:29', '2020-11-10 18:01:02'),
(2, 13, NULL, '{\"name\":\"Md. Imdadul Haque\",\"email\":\"milon16893@gmail.com\",\"address\":\"29\\/2-3, Block-F, Babar Road\\r\\nMohammadpur\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01728525589\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 37560.00, 0.00, '20201106-00263519', 1604600795, 1, 0, 0, 0, '2020-11-05 18:26:35', '2020-11-10 18:04:06'),
(3, NULL, 564034, '{\"name\":\"Sadia Al kadri\",\"email\":\"alkadrisadia@gmail.com\",\"address\":\"27\\/2 Babor road, block-f, Mohammadpur, Dhaka\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01789595880\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'paid', NULL, 4759.20, 0.00, '20201110-23535982', 1605030839, 1, 0, 0, 1, '2020-11-10 17:53:59', '2020-12-14 07:07:20'),
(4, 9, NULL, '{\"name\":\"buybazar\",\"email\":\"cseshahed@gmail.com\",\"address\":\"werwer\",\"country\":\"Bangladesh\",\"city\":\"weqr\",\"postal_code\":\"wer2314\",\"phone\":\"02314898\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 260.00, 0.00, '20201113-01443495', 1605210274, 1, 0, 0, 1, '2020-11-12 19:44:34', '2020-12-14 07:07:10'),
(5, 13, NULL, '{\"name\":\"Md. Imdadul Haque\",\"email\":\"milon16893@gmail.com\",\"address\":\"29\\/2-3, Block-F, Babar Road\\r\\nMohammadpur\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01728525589\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 2760.00, 0.00, '20201209-15282694', 1607506106, 1, 0, 0, 1, '2020-12-09 09:28:26', '2020-12-14 07:06:38'),
(6, 31, NULL, '{\"name\":\"Buy Bazar\",\"email\":\"buybazarbd@gmail.com\",\"address\":\"House-3\\/2, road-7, Dhanmondi\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01916946459\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, 847.50, 0.00, '20201223-17121098', 1608721930, 1, 0, 0, 1, '2020-12-23 11:12:10', '2020-12-24 11:20:10'),
(7, 30, NULL, '{\"name\":\"H\\u00f6\\u015f\\u015f\\u0105\\u1ecb\\u0144 \\u015c\\u00e5\\u00f0\\u012f\\u00e5 Q\\u0173\\u00e0\\u0111\\u0159\\u1ecb\",\"email\":\"cutiepiekashfia@gmail.com\",\"address\":\"29\\/2-3, blick-F, babor road, mohammadpur\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01789595880\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, NULL, 0.00, '20201224-20403012', 1608820830, 1, 0, 0, 1, '2020-12-24 14:40:30', '2021-01-07 09:53:20'),
(8, 30, NULL, '{\"name\":\"H\\u00f6\\u015f\\u015f\\u0105\\u1ecb\\u0144 \\u015c\\u00e5\\u00f0\\u012f\\u00e5 Q\\u0173\\u00e0\\u0111\\u0159\\u1ecb\",\"email\":\"cutiepiekashfia@gmail.com\",\"address\":\"29\\/2-3, blick-F, babor road, mohammadpur\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01789595880\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, NULL, 0.00, '20201224-20413229', 1608820892, 1, 0, 0, 1, '2020-12-24 14:41:32', '2021-01-07 09:53:58'),
(9, 30, NULL, '{\"name\":\"H\\u00f6\\u015f\\u015f\\u0105\\u1ecb\\u0144 \\u015c\\u00e5\\u00f0\\u012f\\u00e5 Q\\u0173\\u00e0\\u0111\\u0159\\u1ecb\",\"email\":\"cutiepiekashfia@gmail.com\",\"address\":\"29\\/2-3, blick-F, babor road, mohammadpur\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01789595880\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'paid', NULL, NULL, 0.00, '20201224-20415780', 1608820917, 1, 0, 0, 1, '2020-12-24 14:41:57', '2021-01-07 09:53:48'),
(10, NULL, 379374, '{\"name\":\"shahed\",\"email\":\"shahed@example.com\",\"address\":\"Dhanmondi, Dhaka-1205\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"1723455252\",\"checkout_type\":\"guest\"}', 'cash_on_delivery', 'paid', NULL, 6497.70, 0.00, '20201224-23134641', 1608830026, 1, 0, 0, 1, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(11, 31, NULL, '{\"name\":\"Buy Bazar\",\"email\":\"buybazarbd@gmail.com\",\"address\":\"House-3\\/2, road-7, Dhanmondi\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1205\",\"phone\":\"01916946459\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, NULL, 0.00, '20210105-18165124', 1609849011, 0, 0, 0, 0, '2021-01-05 12:16:51', '2021-01-05 12:16:51'),
(17, 33, NULL, '{\"name\":\"Ojana Pothik\",\"email\":\"shahedshikder4@gmail.com\",\"address\":\"967\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01723455248\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 260.00, 0.00, '20210105-21010480', 1609858864, 0, 0, 0, 0, '2021-01-05 15:01:04', '2021-01-05 15:01:04'),
(18, 33, NULL, '{\"name\":\"Ojana Pothik\",\"email\":\"shahedshikder4@gmail.com\",\"address\":\"967\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01723455248\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 195.00, 0.00, '20210106-02514237', 1609879902, 0, 0, 0, 0, '2021-01-05 20:51:42', '2021-01-05 20:51:42'),
(19, 33, NULL, '{\"name\":\"Ojana Pothik\",\"email\":\"shahedshikder4@gmail.com\",\"address\":\"967\",\"country\":\"Bangladesh\",\"city\":\"Dhaka\",\"postal_code\":\"1207\",\"phone\":\"01723455248\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 526.20, 0.00, '20210106-02594941', 1609880389, 1, 0, 0, 0, '2021-01-05 20:59:49', '2021-01-07 09:52:14'),
(20, 35, NULL, '{\"name\":\"bilton\",\"email\":\"bilton@gmail.com\",\"address\":\"test\",\"country\":\"Bangladesh\",\"city\":\"dhaka\",\"postal_code\":\"1234\",\"phone\":\"01934884990\",\"checkout_type\":\"logged\"}', 'cash_on_delivery', 'unpaid', NULL, 195.00, 0.00, '20210108-12030438', 1610085784, 0, 0, 0, 0, '2021-01-08 06:03:04', '2021-01-08 06:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT NULL,
  `tax` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, '', 5000.00, 0.00, 60.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-03 08:47:29', '2020-11-10 18:01:06'),
(3, 2, 9, 1, '', 5000.00, 0.00, 20.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-05 18:26:35', '2020-11-10 18:04:06'),
(4, 2, 9, 3, 'Aqua', 10000.00, 0.00, 20.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-05 18:26:35', '2020-11-10 18:04:06'),
(5, 3, 16, 9, 'DarkViolet', 2399.20, 0.00, 30.00, 1, 'paid', 'on_review', 'home_delivery', NULL, NULL, '2020-11-10 17:53:59', '2020-12-14 07:07:20'),
(6, 3, 12, 8, 'Yellow', 2300.00, 0.00, 30.00, 1, 'paid', 'on_review', 'home_delivery', NULL, NULL, '2020-11-10 17:53:59', '2020-12-14 07:07:20'),
(7, 4, 12, 7, 'Chocolate', 200.00, 0.00, 60.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-11-12 19:44:34', '2020-12-14 07:07:10'),
(8, 5, 12, 7, 'Chocolate', 400.00, 0.00, 30.00, 2, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-09 09:28:26', '2020-12-14 07:06:38'),
(9, 5, 12, 8, 'Yellow', 2300.00, 0.00, 30.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-09 09:28:26', '2020-12-14 07:06:38'),
(10, 6, 9, 14, '8years', 787.50, 0.00, 60.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-23 11:12:10', '2020-12-24 11:20:10'),
(11, 7, 9, 13, '2-3years', 799.20, 0.00, 10.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 14:40:30', '2021-01-07 09:54:07'),
(12, 8, 9, 13, '2-3years', 799.20, 0.00, 10.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 14:41:32', '2021-01-07 09:53:58'),
(13, 9, 9, 13, '2-3years', 799.20, 0.00, 10.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 14:41:57', '2021-01-07 09:53:48'),
(14, 10, 9, 23, '', 699.30, 0.00, 12.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(15, 10, 9, 12, '2-3Years', 799.20, 0.00, 12.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(16, 10, 9, 17, '', 240.00, 0.00, 12.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(17, 10, 16, 9, 'DarkViolet', 2399.20, 0.00, 12.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(18, 10, 12, 8, 'Yellow', 2300.00, 0.00, 12.00, 1, 'paid', 'delivered', 'home_delivery', NULL, NULL, '2020-12-24 17:13:46', '2021-01-07 09:53:36'),
(19, 17, 12, 7, 'Chocolate', 200.00, 0.00, 60.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-01-05 15:01:04', '2021-01-05 15:01:04'),
(20, 18, 12, 6, '100GM', 135.00, 0.00, 60.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-01-05 20:51:42', '2021-01-05 20:51:42'),
(21, 19, 9, 20, '', 466.20, 0.00, 60.00, 1, 'unpaid', 'on_delivery', 'home_delivery', NULL, NULL, '2021-01-05 20:59:49', '2021-01-07 09:52:58'),
(22, 20, 12, 6, '100GM', 135.00, 0.00, 60.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-01-08 06:03:04', '2021-01-08 06:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br>', '2020-11-03 08:01:09', '2020-11-03 02:01:09'),
(2, 'return_policy', '<p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\">\r\n\r\n\r\n    <b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;\">Issuance of Refunds</span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\">If\r\nyour product is eligible for a refund, you can choose your preferred refund\r\nmethod based on the table below. The shipping fee is refunded along with the\r\namount paid for your returned product.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\">The\r\ntime required to complete a refund depends on the refund method you have\r\nselected. Once we have received your product (2-3 working days) and it has\r\nundergone a quality control (1-2 working days), the expected refund processing\r\ntimes are as follows:</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\">Please\r\nnote that this policy does not apply to Buy Bazar Global products.</span></p>\r\n\r\n<table class=\"MsoNormalTable\" border=\"0\" cellpadding=\"0\" style=\"mso-cellspacing:1.5pt;\r\n mso-yfti-tbllook:1184\">\r\n    <tbody>\r\n        <tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes\">\r\n            <td style=\"padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Payment Method</span></b></p>\r\n            </td>\r\n            <td style=\"padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Refund Option</span></b></p>\r\n            </td>\r\n            <td width=\"34%\" style=\"width:34.0%;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Refund Time</span></b></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\"mso-yfti-irow:1\">\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">All</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Refund Voucher</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">1-2 working days</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\"mso-yfti-irow:2\">\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Debit or Credit Card</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Debit or Credit Card Payment\r\n  Reversal</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">9-10 working days</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\"mso-yfti-irow:3\">\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">bKash</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Bank Deposit / Mobile Payment\r\n  Reversal</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">7 working days</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\"mso-yfti-irow:4\">\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Cash on Delivery (COD)</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Bank Deposit</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">4-5 working days</span></p>\r\n            </td>\r\n        </tr>\r\n        <tr style=\"mso-yfti-irow:5;mso-yfti-lastrow:yes\">\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Buy Bazar Voucher</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">Refund Voucher</span></p>\r\n            </td>\r\n            <td width=\"208\" style=\"width:156.0pt;padding:.75pt .75pt .75pt .75pt\">\r\n                <p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\n  mso-fareast-font-family:&quot;Times New Roman&quot;\">1-2 working days</span></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 11pt; font-family: Calibri, sans-serif;\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;\">Important Note: The Voucher discount\r\ncode can only be applied once. The leftover amount will not be refunded or used\r\nfor next purchase even if the value of order is smaller than voucher value.</span></p>', '2020-11-06 06:49:03', '2020-11-06 06:49:03'),
(4, 'seller_policy', '<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\">\r\n\r\n\r\n    </h4><h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold; text-align: center; font-size: 12pt;\"><span style=\"font-family: Arial, sans-serif; color: rgb(51, 51, 51);\">SELLER POLICY</span></h4><h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Business Integrity, Anti Bribery</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i0.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Business\r\nmust be carried out with a high degree of ethics, honesty and fair dealings;\r\nensuring staff is familiar with such policies/procedures and does not engage in\r\nthreats, bribery or corruption practices. The offering, paying, soliciting or\r\naccepting of bribes or kick-backs, including facilitation payments, is strictly\r\nprohibited.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Child Labor</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i1.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Employment\r\nof children in any form is strictly prohibited. Business partners and suppliers\r\nshall employ only those workers, who meet the minimum age criterion of 14 years\r\nor legal minimum age for working in any specific country, whichever is greater.\r\nFurther, workers below 18 years of age should not be employed night shifts and\r\nin hazardous conditions. All applicable laws relating to young labor including\r\nemployment, wages, working hours, overtime and working conditions shall be\r\ncomplied with.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Forced Labor</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i2.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">All\r\nforms of forced and bonded labor are prohibited including compulsory overtime.\r\nWorkers should be able to voluntarily end their employment without any\r\nrestrictions. Any restrictions on employees to voluntarily end their\r\nemployment, such as excessive notice periods or substantial fines for\r\nterminating their employment contracts, are prohibited.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Harassment &amp; Abuse</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i3.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Employees\r\nshould be treated with respect and dignity and should not be subjected to any\r\nform of physical abuse or discipline, the threat of physical abuse, sexual or\r\nother harassment and verbal abuse or other forms of intimidation.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Discrimination</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i4.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Employees\r\nshould not be subjected to discrimination in employment, including hiring,\r\ncompensation, promotion or discipline, on the basis of gender, race, religion,\r\ncaste, age, disability, sexual orientation, pregnancy, marital status,\r\nnationality, political opinion, trade union affiliation, social or ethnic\r\norigin or other status protected by law</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Freedom of Association and Right to Collective Bargaining</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i5.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">The\r\nrights of employees to lawfully associate or not to associate with groups of\r\ntheir choosing shall be respected, as per applicable laws. The right of\r\nemployees to engage in collective bargaining as permissible by law shall also\r\nbe recognized.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Regular Employment</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i6.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">To\r\nevery extent possible work performed should be on the basis of recognized\r\nemployment relationship established through national law and practice.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Wages &amp; Benefits</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i7.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Employees\r\nshould be paid in a timely manner and at a rate not less than the minimum wage\r\nas required by State &amp; Regional laws. Employees should also be provided\r\nwith legally-mandated benefits, including holidays and leaves, and statutory\r\ncompensations at the time of ending employment. There should not be any\r\ndisciplinary deductions from their pay.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Working Hours</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i8.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">The\r\nduration of working hours including overtime shall not exceed 60 hours per\r\nweek. Suppliers should comply with applicable laws governing regular working\r\nhours and overtime hours. All overtime hours are voluntary and should be\r\ncompensated as per legal requirements. Employees should be provided with at\r\nleast 24 consecutive hours of rest in every 7 day periods.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;line-height:115%;font-family:\r\n&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white\">&nbsp;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><b><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#333333\">Health &amp; Safety</span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#333333\">Employees should be\r\nprovided with appropriate safe and healthy working conditions including first\r\naid, fire safety, emergency evacuation and other basic requirements such as\r\ncanteen / dining area, drinking water, sanitation etc. A system in place to\r\nidentify and mitigate work place hazards which can result in illness or\r\nphysical harm to the employees, visitor or communities.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Environment</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i10.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Environmental\r\ninitiatives are considered an integral part of responsible manufacturing.\r\nReasonable measures should be taken to avoid any adverse impact on human health\r\nand/or the environment by avoiding or minimizing pollution from manufacturing\r\nactivities, and promoting sustainable use of such resources as energy and\r\nwater.</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Compliance with Local Law</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i11.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Business\r\npartners &amp; Suppliers shall comply with all local and national laws and\r\nregulations of the jurisdictions in which we are doing business as well as the\r\npractices of respective industry. Business partners and suppliers shall further\r\nwork with suppliers who are committed to meeting required standards as per\r\nlocal &amp; national laws.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">&nbsp;</span></p>\r\n\r\n<h4 style=\"line-height: 18pt; background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Right of Inspection/Audit</span></h4>\r\n\r\n<p style=\"line-height: 15pt; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\" data-spm-anchor-id=\"a2a0e.11880328.7700081240.i12.603f7a6fxMFTjd\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333\">Buy\r\nBazar or a third party designated by Buy Bazar will take certain actions, such\r\nas announced or unannounced inspection/audit of production facilities of its\r\nSuppliers, to implement and monitor these standards. All observations,\r\ndiscussions and written information received from the supplier are to be\r\ntreated confidentially by Buy Bazar, its employees and any third party\r\norganizations appointed by Buy Bazar for this purpose.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:14.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">&nbsp;</span></p>', '2020-11-06 07:13:40', '2020-11-06 07:13:40');
INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(5, 'terms', '<h1 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 24pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\">\r\n\r\n\r\n    <span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">Terms and Conditions</span></h1>\r\n\r\n<h4 style=\"background: white; box-sizing: border-box; color: inherit; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;color:#333333\">1. INTRODUCTION</span></h4>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Welcome to buybazar.com.bd also hereby known as “we\",\r\n\"us\" or \"Buy Bazar\". We are an online marketplace and these\r\nare the terms and conditions governing your access and use of Buy Bazar along\r\nwith its related sub-domains, sites, mobile app, services and tools (the\r\n\"Site\"). By using the Site, you hereby accept these terms and\r\nconditions (including the linked information herein) and represent that you\r\nagree to comply with these terms and conditions (the \"User\r\nAgreement\"). This User Agreement is deemed effective upon your use of the\r\nSite which signifies your acceptance of these terms. If you do not agree to be\r\nbound by this User Agreement please do not access, register with or use this\r\nSite. This Site is owned and operated by&nbsp;<strong style=\"box-sizing: border-box\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\">Buy Bazar.</span></strong><br style=\"box-sizing: border-box\">\r\n    <br style=\"box-sizing: border-box\"> The Site reserves the right to change, modify, add, or remove portions of these Terms and Conditions at any time without any prior notification. Changes will be effective when posted on the Site with no other notice\r\n    provided. Please check these Terms and Conditions regularly for updates. Your continued use of the Site following the posting of changes to Terms and Conditions of use constitutes your acceptance of those changes.</span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">2. CONDITIONS OF USE</span></h4>\r\n\r\n<h4 style=\"background: white; box-sizing: border-box; color: inherit; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;color:#333333\">A. YOUR ACCOUNT</span></h4>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">To access certain services offered by the platform, we may\r\nrequire that you create an account with us or provide personal information to\r\ncomplete the creation of an account. We may at any time in our sole and\r\nabsolute discretion, invalidate the username and/or password without giving any\r\nreason or prior notice and shall not be liable or responsible for any losses\r\nsuffered by, caused by, arising out of, in connection with or by reason of such\r\nrequest or invalidation.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou are responsible for maintaining the confidentiality of your user\r\nidentification, password, account details and related private information. You\r\nagree to accept this responsibility and ensure your account and its related\r\ndetails are maintained securely at all times and all necessary steps are taken\r\nto prevent misuse of your account. You should inform us immediately if you have\r\nany reason to believe that your password has become known to anyone else, or if\r\nthe password is being, or is likely to be, used in an unauthorized manner. You\r\nagree and acknowledge that any use of the Site and related services offered\r\nand/or any access to private information, data or communications using your\r\naccount and password shall be deemed to be either performed by you or\r\nauthorized by you as the case may be. You agree to be bound by any access of\r\nthe Site and/or use of any services offered by the Site (whether such access or\r\nuse are authorized by you or not). You agree that we shall be entitled (but not\r\nobliged) to act upon, rely on or hold you solely responsible and liable in respect\r\nthereof as if the same were carried out or transmitted by you. You further\r\nagree and acknowledge that you shall be bound by and agree to fully indemnify\r\nus against any and all losses arising from the use of or access to the Site\r\nthrough your account.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nPlease ensure that the details you provide us with are correct and complete at\r\nall times. You are obligated to update details about your account in real time\r\nby accessing your account online. For pieces of information you are not able to\r\nupdate by accessing Your Account on the Site, you must inform us via our\r\ncustomer service communication channels to assist you with these changes. We\r\nreserve the right to refuse access to the Site, terminate accounts, remove or\r\nedit content at any time without prior notice to you. We may at any time in our\r\nsole and absolute discretion, request that you update your Personal Data or\r\nforthwith invalidate the account or related details without giving any reason\r\nor prior notice and shall not be liable or responsible for any losses suffered\r\nby or caused by you or arising out of or in connection with or by reason of\r\nsuch request or invalidation. You hereby agree to change your password from\r\ntime to time and to keep your account secure and also shall be responsible for\r\nthe confidentiality of your account and liable for any disclosure or use\r\n(whether such use is authorised or not) of the username and/or password.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">B. PRIVACY</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Please review our Privacy\r\nAgreement, which also governs your visit to the Site. The personal information\r\n/ data provided to us by you or your use of the Site will be treated as\r\nstrictly confidential, in accordance with the Privacy Agreement and applicable\r\nlaws and regulations. If you object to your information being transferred or\r\nused in the manner specified in the Privacy Agreement, please do not use the\r\nSite.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">C. PLATFORM FOR COMMUNICATION</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You agree, understand and\r\nacknowledge that the Site is an online platform that enables you to purchase\r\nproducts listed at the price indicated therein at any time from any location\r\nusing a payment method of your choice. You further agree and acknowledge that\r\nwe are only a facilitator and cannot be a party to or control in any manner any\r\ntransactions on the Site or on a payment gateway as made available to you by an\r\nindependent service provider. Accordingly, the contract of sale of products on\r\nthe Site shall be a strictly bipartite contract between you and the sellers on\r\nour Site while the payment processing occurs between you, the service provider\r\nand in case of prepayments with electronic cards your issuer bank. Accordingly,\r\nthe contract of payment on the Site shall be strictly a bipartite contract\r\nbetween you and the service provider as listed on our Site.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">D. CONTINUED AVAILABILITY OF THE SITE</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We will do our utmost to\r\nensure that access to the Site is consistently available and is uninterrupted\r\nand error-free. However, due to the nature of the Internet and the nature of\r\nthe Site, this cannot be guaranteed. Additionally, your access to the Site may\r\nalso be occasionally suspended or restricted to allow for repairs, maintenance,\r\nor the introduction of new facilities or services at any time without prior\r\nnotice. We will attempt to limit the frequency and duration of any such\r\nsuspension or restriction.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">E. LICENSE TO ACCESS THE SITE</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We require that by\r\naccessing the Site, you confirm that you can form legally binding contracts and\r\ntherefore you confirm that you are at least 18 years of age or are accessing\r\nthe Site under the supervision of a parent or legal guardian. We grant you a\r\nnon-transferable, revocable and non-exclusive license to use the Site, in\r\naccordance with the Terms and Conditions described herein, for the purposes of\r\nshopping for personal items and services as listed to be sold on the Site.\r\nCommercial use or use on behalf of any third party is prohibited, except as\r\nexplicitly permitted by us in advance. If you are registering as a business\r\nentity, you represent that you have the authority to bind that entity to this\r\nUser Agreement and that you and the business entity will comply with all\r\napplicable laws relating to online trading. No person or business entity may\r\nregister as a member of the Site more than once. Any breach of these Terms and\r\nConditions shall result in the immediate revocation of the license granted in\r\nthis paragraph without notice to you.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nContent provided on this Site is solely for informational purposes. Product\r\nrepresentations including price, available stock, features, add-ons and any\r\nother details as expressed on this Site are the responsibility of the vendors\r\ndisplaying them and is not guaranteed as completely accurate by us. Submissions\r\nor opinions expressed on this Site are those of the individual(s) posting such\r\ncontent and may not reflect our opinions.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe grant you a limited license to access and make personal use of this Site,\r\nbut not to download (excluding page caches) or modify the Site or any portion\r\nof it in any manner. This license does not include any resale or commercial use\r\nof this Site or its contents; any collection and use of any product listings,\r\ndescriptions, or prices; any derivative use of this Site or its contents; any\r\ndownloading or copying of account information for the benefit of another\r\nseller; or any use of data mining, robots, or similar data gathering and\r\nextraction tools.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nThis Site or any portion of it (including but not limited to any copyrighted\r\nmaterial, trademarks, or other proprietary information) may not be reproduced,\r\nduplicated, copied, sold, resold, visited, distributed or otherwise exploited\r\nfor any commercial purpose without express written consent by us as may be\r\napplicable.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou may not frame or use framing techniques to enclose any trademark, logo, or\r\nother proprietary information (including images, text, page layout, or form)\r\nwithout our express written consent. You may not use any meta tags or any other\r\ntext utilizing our name or trademark without our express written consent, as\r\napplicable. Any unauthorized use terminates the permission or license granted\r\nby us to you for access to the Site with no prior notice. You may not use our\r\nlogo or other proprietary graphic or trademark as part of an external link for\r\ncommercial or other purposes without our express written consent, as may be\r\napplicable.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou agree and undertake not to perform restricted activities listed within this\r\nsection; undertaking these activities will result in an immediate cancellation\r\nof your account, services, reviews, orders or any existing incomplete\r\ntransaction with us and in severe cases may also result in legal action:<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Refusal to comply with the Terms and Conditions described herein\r\nor any other guidelines and policies related to the use of the Site as\r\navailable on the Site at all times.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Impersonate any person or entity or to falsely state or\r\notherwise misrepresent your affiliation with any person or entity.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Use the Site for illegal purposes.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Attempt to gain unauthorized access to or otherwise interfere or\r\ndisrupt other computer systems or networks connected to the Platform or\r\nServices.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Interfere with another’s utilization and enjoyment of the Site;</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Post, promote or transmit through the Site any prohibited\r\nmaterials as deemed illegal by The People\'s Republic of Bangladesh.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Use or upload, in any way, any software or material that\r\ncontains, or which you have reason to suspect that contains, viruses, damaging\r\ncomponents, malicious code or harmful components which may impair or corrupt\r\nthe Site’s data or damage or interfere with the operation of another Customer’s\r\ncomputer or mobile device or the Site and use the Site other than in\r\nconformance with the acceptable use policies of any connected computer\r\nnetworks, any applicable Internet standards and any other applicable laws.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">F. YOUR CONDUCT</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You must not use the website\r\nin any way that causes, or is likely to cause, the Site or access to it to be\r\ninterrupted, damaged or impaired in any way. You must not engage in activities\r\nthat could harm or potentially harm the Site, its employees, officers,\r\nrepresentatives, stakeholders or any other party directly or indirectly\r\nassociated with the Site or access to it to be interrupted, damaged or impaired\r\nin any way. You understand that you, and not us, are responsible for all\r\nelectronic communications and content sent from your computer to us and you\r\nmust use the Site for lawful purposes only. You are strictly prohibited from\r\nusing the Site<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:Symbol;mso-ascii-font-family:Helvetica;color:#333333\">·</span><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\"><span style=\"mso-spacerun:yes\">&nbsp; </span>for fraudulent purposes, or in connection with a criminal offense or other unlawful activity</span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:Symbol;mso-ascii-font-family:Helvetica;color:#333333\">·</span><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\"><span style=\"mso-spacerun:yes\">&nbsp; </span>to send, use or reuse any material that does not belong to you; or is illegal, offensive (including but not limited to material that is sexually explicit content or which promotes racism, bigotry,\r\n    hatred or physical harm), deceptive, misleading, abusive, indecent, harassing, blasphemous, defamatory, libellous, obscene, pornographic, paedophilic or menacing; ethnically objectionable, disparaging or in breach of copyright, trademark, confidentiality,\r\n    privacy or any other proprietary information or right; or is otherwise injurious to third parties; or relates to or promotes money laundering or gambling; or is harmful to minors in any way; or impersonates another person; or threatens the unity,\r\n    integrity, security or sovereignty of Bangladesh or friendly relations with foreign States; or objectionable or otherwise unlawful in any manner whatsoever; or which consists of or contains software viruses, political campaigning, commercial solicitation,\r\n    chain letters, mass mailings or any \"spam”</span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:Symbol;mso-ascii-font-family:Helvetica;color:#333333\">·</span><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\"><span style=\"mso-spacerun:yes\">&nbsp; </span>Use the Site for illegal purposes.\r\n    </span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:Symbol;mso-ascii-font-family:Helvetica;color:#333333\">·</span><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\"><span style=\"mso-spacerun:yes\">&nbsp; </span>to cause annoyance, inconvenience or needless anxiety</span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:Symbol;mso-ascii-font-family:Helvetica;color:#333333\">·</span><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\"><span style=\"mso-spacerun:yes\">&nbsp; </span>for any other purposes that is other than what is intended by us<br>\r\n    <br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n    <br style=\"mso-special-character:line-break\">\r\n    </span>\r\n</p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">G. YOUR SUBMISSION</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Anything that you submit to\r\nthe Site and/or provide to us, including but not limited to, questions,\r\nreviews, comments, and suggestions (collectively, \"Submissions\") will\r\nbecome our sole and exclusive property and shall not be returned to you. In\r\naddition to the rights applicable to any Submission, when you post comments or\r\nreviews to the Site, you also grant us the right to use the name that you\r\nsubmit, in connection with such review, comment, or other content. You shall\r\nnot use a false e-mail address, pretend to be someone other than yourself or\r\notherwise mislead us or third parties as to the origin of any Submissions. We\r\nmay, but shall not be obligated to, remove or edit any Submissions without any\r\nnotice or legal course applicable to us in this regard.<br style=\"mso-special-character:\r\nline-break\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">H. CLAIMS AGAINST OBJECTIONABLE CONTENT</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We list thousands of\r\nproducts for sale offered by numerous sellers on the Site and host multiple\r\ncomments on listings, it is not possible for us to be aware of the contents of\r\neach product listed for sale, or each comment or review that is displayed.\r\nAccordingly, we operate on a \"claim, review and takedown\" basis. If\r\nyou believe that any content on the Site is illegal, offensive (including but\r\nnot limited to material that is sexually explicit content or which promotes\r\nracism, bigotry, hatred or physical harm), deceptive, misleading, abusive,\r\nindecent, harassing, blasphemous, defamatory, libelous, obscene, pornographic, pedophilic\r\nor menacing; ethnically objectionable, disparaging; or is otherwise injurious\r\nto third parties; or relates to or promotes money laundering or gambling; or is\r\nharmful to minors in any way; or impersonates another person; or threatens the\r\nunity, integrity, security or sovereignty of Bangladesh or friendly relations\r\nwith foreign States; or objectionable or otherwise unlawful in any manner\r\nwhatsoever; or which consists of or contains software viruses, (\"\r\nobjectionable content \"), please notify us immediately by following by\r\nwriting to us on legal@buybazar.com.bd. We will make all practical endeavours\r\nto investigate and remove valid objectionable content complained about within a\r\nreasonable amount of time.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nPlease ensure to provide your name, address, contact information and as many\r\nrelevant details of the claim including name of objectionable content party,\r\ninstances of objection, proof of objection amongst other. Please note that\r\nproviding incomplete details will render your claim invalid and unusable for\r\nlegal purposes.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">I. CLAIMS AGAINST INFRINGING CONTENT</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We respect the intellectual\r\nproperty of others. If you believe that your intellectual property rights have\r\nbeen used in a way that gives rise to concerns of infringement, please write to\r\nus at legal@buybazar.com.bd and we will make all reasonable efforts to address\r\nyour concern within a reasonable amount of time. Please ensure to provide your\r\nname, address, contact information and as many relevant details of the claim\r\nincluding name of infringing party, instances of infringement, proof of\r\ninfringement amongst other. Please note that providing incomplete details will\r\nrender your claim invalid and unusable for legal purposes. In addition,\r\nproviding false or misleading information may be considered a legal offense and\r\nmay be followed by legal proceedings.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe also respect a manufacturer\'s right to enter into exclusive distribution or\r\nresale agreements for its products. However, violations of such agreements do\r\nnot constitute intellectual property rights infringement. As the enforcement of\r\nthese agreements is a matter between the manufacturer, distributor and/or respective\r\nreseller, it would not be appropriate for us to assist in the enforcement of\r\nsuch activities. While we cannot provide legal advice, nor share private\r\ninformation as protected by the law, we recommend that any questions or\r\nconcerns regarding your rights may be routed to a legal specialist.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">J. TRADEMARKS AND COPYRIGHTS</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">buybazar.com.bd, Buy Bazar\r\nlogo, BB for Buy Bazar logo, Buy Bazar and other marks indicated on our Site\r\nare trademarks or registered trademarks in the relevant jurisdiction(s). Our\r\ngraphics, logos, page headers, button icons, scripts and service names are the\r\ntrademarks or trade dress and may not be used in connection with any product or\r\nservice that does not belong to us or in any manner that is likely to cause\r\nconfusion among customers, or in any manner that disparages or discredits us.\r\nAll other trademarks that appear on this Site are the property of their\r\nrespective owners, who may or may not be affiliated with, connected to, or\r\nsponsored by us.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nAll intellectual property rights, whether registered or unregistered, in the\r\nSite, information content on the Site and all the website design, including,\r\nbut not limited to text, graphics, software, photos, video, music, sound, and\r\ntheir selection and arrangement, and all software compilations, underlying\r\nsource code and software shall remain our property. The entire contents of the\r\nSite also are protected by copyright as a collective work under Bangladeshi\r\ncopyright laws and international conventions. All rights are reserved.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">K. DISCLAIMER</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You acknowledge and\r\nundertake that you are accessing the services on the Site and transacting at\r\nyour own risk and are using your best and prudent judgment before entering into\r\nany transactions through the Site. We shall neither be liable nor responsible\r\nfor any actions or inactions of sellers nor any breach of conditions,\r\nrepresentations or warranties by the sellers or manufacturers of the products\r\nand hereby expressly disclaim and any all responsibility and liability in that\r\nregard. We shall not mediate or resolve any dispute or disagreement between you\r\nand the sellers or manufacturers of the products.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe further expressly disclaim any warranties or representations (express or\r\nimplied) in respect of quality, suitability, accuracy, reliability,\r\ncompleteness, timeliness, performance, safety, merchantability, fitness for a particular\r\npurpose, or legality of the products listed or displayed or transacted or the\r\ncontent (including product or pricing information and/or specifications) on the\r\nSite. While we have taken precautions to avoid inaccuracies in content, this\r\nSite, all content, information (including the price of products), software,\r\nproducts, services and related graphics are provided as is basis, without\r\nwarranty of any kind. We do not implicitly or explicitly support or endorse the\r\nsale or purchase of any products on the Site. At no time shall any right, title\r\nor interest in the products sold through or displayed on the Site vest with us\r\nnor shall Buy Bazar have any obligations or liabilities in respect of any\r\ntransactions on the Site.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe shall neither be liable or responsible for any actions or inactions of any\r\nother service provider as listed on our Site which includes but is not limited\r\nto payment providers, instalment offerings, warranty services amongst others.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">L. INDEMNITY</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You shall indemnify and hold\r\nharmless Buy Bazar as owned by Buy Bazar, its subsidiaries, affiliates and\r\ntheir respective officers, directors, agents and employees, from any claim or\r\ndemand, or actions including reasonable attorney\'s fees, made by any third\r\nparty or penalty imposed due to or arising out of your breach of these Terms\r\nand Conditions or any document incorporated by reference, or your violation of\r\nany law, rules, regulations or the rights of a third party.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou hereby expressly release Buy Bazar as owned by Buy Bazar and/or its\r\naffiliates and/or any of its officers and representatives from any cost,\r\ndamage, liability or other consequence of any of the actions/inactions of the\r\nsellers or other service providers and specifically waiver any claims or\r\ndemands that you may have in this behalf under any statute, contract or\r\notherwise.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">M. THIRD PARTY BUSINESSES</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Parties other than Buy\r\nBazar and its affiliates may operate stores, provide services, or sell product\r\nlines on the Site. For example, businesses and individuals offer products via\r\nMarketplace. In addition, we provide links to the websites of affiliated\r\ncompanies and certain other businesses. We are not responsible for examining or\r\nevaluating, and we do not warrant or endorse the offerings of any of these\r\nbusinesses or individuals, or the content of their websites. We do not assume\r\nany responsibility or liability for the actions, products, and content of any\r\nof these and any other third-parties. You can tell when a third-party is\r\ninvolved in your transactions by reviewing your transaction carefully, and we\r\nmay share customer information related to those transactions with that\r\nthird-party. You should carefully review their privacy statements and related\r\nterms and conditions.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">N. COMMUNICATING WITH US</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">When you visit the Site, or\r\nsend e-mails to us, you are communicating with us electronically. You will be\r\nrequired to provide a valid phone number while placing an order with us. We may\r\ncommunicate with you by e-mail, SMS, phone call or by posting notices on the\r\nSite or by any other mode of communication we choose to employ. For contractual\r\npurposes, you consent to receive communications (including transactional,\r\npromotional and/or commercial messages), from us with respect to your use of\r\nthe website (and/or placement of your order) and agree to treat all modes of\r\ncommunication with the same importance.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">O. LOSSES</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We will not be responsible\r\nfor any business or personal losses (including but not limited to loss of\r\nprofits, revenue, contracts, anticipated savings, data, goodwill, or wasted\r\nexpenditure) or any other indirect or consequential loss that is not reasonably\r\nforeseeable to both you and us when you commenced using the Site.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">P. AMENDMENTS TO CONDITIONS OR ALTERATIONS OF SERVICE AND\r\nRELATED PROMISE</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We reserve the right to\r\nmake changes to the Site, its policies, these terms and conditions and any\r\nother publicly displayed condition or service promise at any time. You will be\r\nsubject to the policies and terms and conditions in force at the time you used\r\nthe Site unless any change to those policies or these conditions is required to\r\nbe made by law or government authority (in which case it will apply to orders\r\npreviously placed by you). If any of these conditions is deemed invalid, void,\r\nor for any reason unenforceable, that condition will be deemed severable and\r\nwill not affect the validity and enforceability of any remaining condition.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">Q. EVENTS BEYOND OUR CONTROL</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We will not be held\r\nresponsible for any delay or failure to comply with our obligations under these\r\nconditions if the delay or failure arises from any cause which is beyond our\r\nreasonable control. This condition does not affect your statutory rights.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">R. WAIVER</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You acknowledge and\r\nrecognize that we are a private commercial enterprise and reserve the right to\r\nconduct business to achieve our objectives in a manner we deem fit. You also\r\nacknowledge that if you breach the conditions stated on our Site and we take no\r\naction, we are still entitled to use our rights and remedies in any other\r\nsituation where you breach these conditions.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">S. TERMINATION</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">In addition to any other\r\nlegal or equitable remedies, we may, without prior notice to you, immediately\r\nterminate the Terms and Conditions or revoke any or all of your rights granted\r\nunder the Terms and Conditions. Upon any termination of this Agreement, you\r\nshall immediately cease all access to and use of the Site and we shall, in\r\naddition to any other legal or equitable remedies, immediately revoke all password(s)\r\nand account identification issued to you and deny your access to and use of\r\nthis Site in whole or in part. Any termination of this agreement shall not\r\naffect the respective rights and obligations (including without limitation,\r\npayment obligations) of the parties arising before the date of termination. You\r\nfurthermore agree that the Site shall not be liable to you or to any other\r\nperson as a result of any such suspension or termination. If you are\r\ndissatisfied with the Site or with any terms, conditions, rules, policies,\r\nguidelines, or practices in operating the Site, your sole and exclusive remedy\r\nis to discontinue using the Site.<br style=\"mso-special-character:line-break\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">T. GOVERNING LAW AND JURISDICTION</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">These terms and conditions\r\nare governed by and construed in accordance with the laws of The People\'s\r\nRepublic of Bangladesh. You agree that the courts, tribunals and/or\r\nquasi-judicial bodies located in Dhaka, Bangladesh shall have the exclusive\r\njurisdiction on any dispute arising inside Bangladesh under this Agreement.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">V. OUR SOFTWARE</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Our software includes any\r\nsoftware (including any updates or upgrades to the software and any related\r\ndocumentation) that we make available to you from time to time for your use in\r\nconnection with the Site (the \"Software\").<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou may use the software solely for purposes of enabling you to use and enjoy\r\nour services as permitted by the Terms and Conditions and any related\r\napplicable terms as available on the Site. You may not incorporate any portion\r\nof the Software into your own programs or compile any portion of it in\r\ncombination with your own programs, transfer it for use with another service,\r\nor sell, rent, lease, lend, loan, distribute or sub-license the Software or\r\notherwise assign any rights to the Software in whole or in part. You may not\r\nuse the Software for any illegal purpose. We may cease providing you service\r\nand we may terminate your right to use the Software at any time. Your rights to\r\nuse the Software will automatically terminate without notice from us if you\r\nfail to comply with any of the Terms and Conditions listed here or across the\r\nSite. Additional third party terms contained within the Site or distributed as\r\nsuch that are specifically identified in related documentation may apply and\r\nwill govern the use of such software in the event of a conflict with these\r\nTerms and Conditions. All software used in any of our services is our property\r\nand/or our affiliates or its software suppliers and protected by the laws of\r\nBangladesh including but not limited to any other applicable copyright laws.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWhen you use the Site, you may also be using the services of one or more third\r\nparties, such as a wireless carrier or a mobile platform provider. Your use of\r\nthese third party services may be subject to separate policies, terms of use,\r\nand fees of these third parties.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou may not, and you will not encourage, assist or authorize any other person\r\nto copy, modify, reverse engineer, decompile or disassemble, or otherwise tamper\r\nwith our software whether in whole or in part, or create any derivative works\r\nfrom or of the Software.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nIn order to keep the Software up-to-date, we may offer automatic or manual\r\nupdates at any time and without notice to you.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">3. CONDITIONS OF SALE (BETWEEN SELLERS AND CUSTOMERS)</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Please read these\r\nconditions carefully before placing an order for any products with the Sellers\r\n(“We” or “Our” or “Us”, wherever applicable) on the Site. These conditions\r\nsignify your agreement to be bound by these conditions.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">A. CONDITIONS RELATED TO SALE OF THE PRODUCT OR SERVICE</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">This section deals with\r\nconditions relating to the sale of products or services on the Site.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">B. THE CONTRACT</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Your order is a legal offer\r\nto the seller to buy the product or service displayed on our Site. When you\r\nplace an order to purchase a product, any confirmations or status updates\r\nreceived prior to the dispatch of your order serves purely to validate the order\r\ndetails provided and in no way implies the confirmation of the order itself.\r\nThe acceptance of your order is considered confirmed when the product is\r\ndispatched to you. If your order is dispatched in more than one package, you\r\nmay receive separate dispatch confirmations. Upon time of placing the order, we\r\nindicate an approximate timeline that the processing of your order will take\r\nhowever we cannot guarantee this timeline to be rigorously precise in every\r\ninstance as we are dependent on third party service providers to preserve this\r\ncommitment. We commit to you to make every reasonable effort to ensure that the\r\nindicative timeline is met. All commercial/contractual terms are offered by and\r\nagreed to between you and the sellers alone. The commercial/contractual terms\r\ninclude without limitation price, shipping costs, payment methods, payment\r\nterms, date, period and mode of delivery, warranties related to products and\r\nservices and after sales services related to products and services. Buy Bazar\r\ndoes not have any control or does not determine or advise or in any way involve\r\nitself in the offering or acceptance of such commercial/contractual terms\r\nbetween the you and the Sellers. The seller retains the right to cancel any\r\norder at its sole discretion prior to dispatch. We will ensure that there is\r\ntimely intimation to you of such cancellation via an email or sms. Any\r\nprepayments made in case of such cancellation(s), shall be refunded to you\r\nwithin the time frames stipulated&nbsp;<a href=\"https://buybazar.com.bd/returnpolicy\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: blue; text-decoration: underline;\">here</a>.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; box-sizing: border-box; color: inherit; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;color:#333333\">D. RETURNS</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Please review our Returns\r\nPolicy&nbsp;<a href=\"https://buybazar.com.bd/returnpolicy\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: blue; text-decoration: underline;\">here</a>.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">E. PRICING, AVAILABILITY AND ORDER PROCESSING</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">All prices are listed in\r\nBangladeshi Taka (BDT) and are inclusive of VAT and are listed on the Site by\r\nthe seller that is selling the product or service. Items in your Shopping Cart\r\nwill always reflect the most recent price displayed on the item\'s product\r\ndetail page. Please note that this price may differ from the price shown for\r\nthe item when you first placed it in your cart. Placing an item in your cart\r\ndoes not reserve the price shown at that time. It is also possible that an\r\nitem\'s price may decrease between the time you place it in your basket and the\r\ntime you purchase it.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe do not offer price matching for any items sold by any seller on our Site or\r\nother websites.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe are determined to provide the most accurate pricing information on the Site\r\nto our users; however, errors may still occur, such as cases when the price of\r\nan item is not displayed correctly on the Site. As such, we reserve the right\r\nto refuse or cancel any order. In the event that an item is mispriced, we may,\r\nat our own discretion, either contact you for instructions or cancel your order\r\nand notify you of such cancellation. We shall have the right to refuse or\r\ncancel any such orders whether or not the order has been confirmed and your\r\nprepayment processed. If such a cancellation occurs on your prepaid order, our\r\npolicies for refund will apply. Please note that Buy Bazar posses 100% right on\r\nthe refund amount. Usually refund amount is calculated based on the customer\r\npaid price after deducting any sort of discount and shipping fee.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe list availability information for products listed on the Site, including on\r\neach product information page. Beyond what we say on that page or otherwise on\r\nthe Site, we cannot be more specific about availability. Please note that\r\ndispatch estimates are just that. They are not guaranteed dispatch times and\r\nshould not be relied upon as such. As we process your order, you will be\r\ninformed by e-mail or sms if any products you order turn out to be unavailable.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nPlease note that there are cases when an order cannot be processed for various\r\nreasons. The Site reserves the right to refuse or cancel any order for any\r\nreason at any given time. You may be asked to provide additional verifications\r\nor information, including but not limited to phone number and address, before\r\nwe accept the order.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nIn order to avoid any fraud with credit or debit cards, we reserve the right to\r\nobtain validation of your payment details before providing you with the product\r\nand to verify the personal information you shared with us. This verification\r\ncan take the shape of an identity, place of residence, or banking information\r\ncheck. The absence of an answer following such an inquiry will automatically\r\ncause the cancellation of the order within a reasonable timeline. We reserve\r\nthe right to proceed to direct cancellation of an order for which we suspect a\r\nrisk of fraudulent use of banking instruments or other reasons without prior\r\nnotice or any subsequent legal liability.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\n<strong style=\"box-sizing: border-box\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\">Refund\r\nVoucher</span></strong>\r\n    </span>\r\n</p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Refund voucher can be redeemed on our Website, as full or part\r\npayment of products from our Website within the given timeline.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Refund voucher cannot be used from different account.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Vouchers are not replaceable if expired.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Refund Voucher code can be applied only once. The residual\r\namount of the Refund Voucher after applying it once, if any, will not be\r\nrefunded and cannot be used for next purchases even if the value of order is\r\nsmaller than remaining voucher value.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><strong style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:#333333\">Promotional Vouchers</span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Each issued promotional voucher (App voucher and New customer\r\nvoucher) will be valid for use by a customer only once. Multiple usages\r\nchanging the identity is illegal.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Both promotional voucher and cart rule discount may not be added\r\nat the same time.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Promotional voucher is non-refundable and cannot be exchanged\r\nfor cash in part or full and is valid for a single transaction only.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Promotional voucher may not be valid during sale or in\r\nconjunction with any special promotion.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Voucher will work only if minimum purchase amount and other\r\nconditions are met.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Buy Bazar reserves the right to vary or terminate the operation\r\nof any voucher at any time without notice.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Buy Bazar shall not be liable to any customer or household for\r\nany financial loss arising out of the refusal, cancellation or withdrawal of\r\nany voucher or any failure or inability of a customer to use a voucher for any\r\nreason.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Vouchers are not replaceable if expired.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">No promotional offer can be made for baby nutrition products.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><strong style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:#333333\">Reward Vouchers</span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">Customers who have already been listed in Buy Bazar for\r\nfraudulent activities will not be eligible to avail any voucher and will not be\r\neligible to participate in any campaign.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">A customer shall not operate more than one account in a single\r\ndevice.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><strong style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:#333333\">Promotional Items</span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">One customer will be able to purchase one 11tk deal and mystery\r\nbox during the promotional period.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><strong style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;line-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\ncolor:#333333\">Security and Fraud</span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">When you use a voucher, you warrant to Buy Bazar that you are\r\nthe duly authorized recipient of the voucher and that you are using it in good\r\nfaith.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">If you redeem, attempt to redeem or encourage the redemption of\r\nvoucher to obtain discounts to which you are not entitled you may be committing\r\na civil or criminal offence</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">If we reasonably believe that any voucher is being used\r\nunlawfully or illegally we may reject or cancel any voucher/order and you agree\r\nthat you will have no claim against us in respect of any rejection or\r\ncancellation. Buy Bazar reserves the right to take any further action it deems\r\nappropriate in such instances<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">F. RESELLING BUY BAZAR PRODUCTS</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Reselling Buy Bazar\r\nproducts for business purpose is strictly prohibited. If any unauthorized\r\npersonnel is found committing the above act, legal action may be taken against\r\nhim/her.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">G. TAXES</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">You shall be responsible\r\nfor payment of all fees/costs/charges associated with the purchase of products\r\nfrom the Site and you agree to bear any and all applicable taxes as per\r\nprevailing law.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">H. REPRESENTATIONS AND WARRANTIES</span></h4>\r\n\r\n<p style=\"background: white; box-sizing: border-box; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nfont-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">We do not make any\r\nrepresentation or warranty as to specifics (such as quality, value,\r\nsaleability, etc) of the products or services listed to be sold on the Site\r\nwhen products or services are sold by third parties. We do not implicitly or\r\nexplicitly support or endorse the sale or purchase of any products or services\r\non the Site. We accept no liability for any errors or omissions, whether on\r\nbehalf of itself or third parties.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe are not responsible for any non-performance or breach of any contract\r\nentered into between you and the sellers. We cannot and do not guarantee your\r\nactions or those of the sellers as they conclude transactions on the Site. We\r\nare not required to mediate or resolve any dispute or disagreement arising from\r\ntransactions occurring on our Site.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nWe do not at any point of time during any transaction as entered into by you\r\nwith a third party on our Site, gain title to or have any rights or claims over\r\nthe products or services offered by a seller. Therefore, we do not have any\r\nobligations or liabilities in respect of such contract(s) entered into between\r\nyou and the seller(s). We are not responsible for unsatisfactory or delayed\r\nperformance of services or damages or delays as a result of products which are\r\nout of stock, unavailable or back ordered.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nPricing on any product(s) or related information as reflected on the Site may\r\ndue to some technical issue, typographical error or other reason by incorrect\r\nas published and as a result you accept that in such conditions the seller or\r\nthe Site may cancel your order without prior notice or any liability arising as\r\na result. Any prepayments made for such orders will be refunded to you per our\r\nrefund policy as stipulated&nbsp;<a href=\"https://buybazar.com.bd/returnpolicy\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: blue; text-decoration: underline;\">here</a>.<br>\r\n<br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<h4 style=\"background: white; margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif; font-weight: bold;\"><span style=\"font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\ncolor:#333333\">I. OTHERS</span></h4>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><b style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Stock\r\navailability:</span></b><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">&nbsp;The orders are subject to availability of stock.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><b style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Delivery\r\nTimeline:</span></b><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">&nbsp;The delivery might take longer than usual timeframe/line\r\nto be followed by Buy Bazar.<br style=\"box-sizing: border-box\">\r\nDelivery might be delayed due to force majeure event which includes, but not\r\nlimited to, political unrest, political event, national/public holidays,etc</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><b style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Cancellation:</span></b><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">&nbsp;Buy\r\nBazar retains unqualified right to cancel any order at its sole discretion\r\nprior to dispatch and for any reason which may include, but not limited to, the\r\nproduct being mispriced, out of stock, expired, defective, malfunctioned, and\r\ncontaining incorrect information or description arising out of technical or\r\ntypographical error or for any other reason.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.5pt;\r\nline-height:115%;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\"><br style=\"mso-special-character:line-break;box-sizing: border-box\">\r\n<br style=\"mso-special-character:line-break\">\r\n</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-indent: -0.25in; background: white; margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><span style=\"font-size:10.0pt;mso-bidi-font-size:10.5pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;color:#333333\"><span style=\"mso-list:Ignore\">·<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span>\r\n    </span><b style=\"box-sizing: border-box\"><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;color:#333333\">Refund\r\nTimeline:</span></b><span style=\"font-size:10.5pt;font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;;\r\ncolor:#333333\">&nbsp;If any order is canceled, the payment against such order\r\nshall be refunded within 10 to 15 working days, but it may take longer time in\r\nexceptional cases. Provided that received cash back amount, if any, will be\r\nadjusted with the refund amount.<br>\r\n<br style=\"box-sizing: border-box\">\r\nYou confirm that the product(s) or service(s) ordered by you are purchased for\r\nyour internal / personal consumption and not for commercial re-sale. You\r\nauthorize us to declare and provide declaration to any governmental authority\r\non your behalf stating the aforesaid purpose for your orders on the Site. The\r\nSeller or the Site may cancel an order wherein the quantities exceed the\r\ntypical individual consumption. This applies both to the number of products\r\nordered within a single order and the placing of several orders for the same\r\nproduct where the individual orders comprise a quantity that exceeds the\r\ntypical individual consumption. What comprises a typical individual\'s\r\nconsumption quantity limit shall be based on various factors and at the sole\r\ndiscretion of the Seller or ours and may vary from individual to individual.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nYou may cancel your order at no cost any time before the item is dispatched to\r\nyou.<br style=\"box-sizing: border-box\">\r\n<br style=\"box-sizing: border-box\">\r\nPlease note that we sell products only in quantities which correspond to the\r\ntypical needs of an average household. This applies both to the number of\r\nproducts ordered within a single order and the placing of several orders for\r\nthe same product where the individual orders comprise a quantity typical for a\r\nnormal household.Please review our Refund Policy&nbsp;<a href=\"https://buybazar.com.bd/returnpolicy\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; color: blue; text-decoration: underline;\">here</a>.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 10pt; line-height: 115%; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;</p><br>', '2020-11-06 06:56:48', '2020-11-06 06:56:48');
INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(6, 'privacy_policy', '<h1 style=\"margin: 21px 0px !important; padding: 0px; font-size: 32px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Privacy Policy</h1><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Welcome to the buybazar.com.bd website (the \"Site\") operated by Buy Bazar. We respect your privacy and want to protect your personal information. To learn more, please read this Privacy Policy.<br><br>This Privacy Policy explains how we collect, use and (under certain conditions) disclose your personal information. This Privacy Policy also explains the steps we have taken to secure your personal information. Finally, this Privacy Policy explains your options regarding the collection, use and disclosure of your personal information. By visiting the Site directly or through another site, you accept the practices described in this Policy.<br><br>Data protection is a matter of trust and your privacy is important to us. We shall therefore only use your name and other information which relates to you in the manner set out in this Privacy Policy. We will only collect information where it is necessary for us to do so and we will only collect information if it is relevant to our dealings with you.<br><br>We will only keep your information for as long as we are either required to by law or as is relevant for the purposes for which it was collected.<br><br>You can visit the Site and browse without having to provide personal details. During your visit to the Site you remain anonymous and at no time can we identify you unless you have an account on the Site and log on with your user name and password.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">1. Data that we collect</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">We may collect various pieces of information if you seek to place an order for a product with us on the Site.<br><br>We collect, store and process your data for processing your purchase on the Site and any possible later claims, and to provide you with our services. We may collect personal information including, but not limited to, your title, name, gender, date of birth, email address, postal address, delivery address (if different), telephone number, mobile number, fax number, payment details, payment card details or bank account details.<br><br>We will use the information you provide to enable us to process your orders and to provide you with the services and information offered through our website and which you request. Further, we will use the information you provide to administer your account with us; verify and carry out financial transactions in relation to payments you make; audit the downloading of data from our website; improve the layout and/or content of the pages of our website and customize them for users; identify visitors on our website; carry out research on our users\' demographics; send you information we think you may find useful or which you have requested from us, including information about our products and services, provided you have indicated that you have not objected to being contacted for these purposes. Subject to obtaining your consent we may contact you by email with details of other products and services. If you prefer not to receive any marketing communications from us, you can opt out at any time.<br><br>We may pass your name and address on to a third party in order to make delivery of the product to you (for example to our courier or supplier). You must only submit to us the Site information which is accurate and not misleading and you must keep it up to date and inform us of changes.<br><br>Your actual order details may be stored with us but for security reasons cannot be retrieved directly by us. However, you may access this information by logging into your account on the Site. Here you can view the details of your orders that have been completed, those which are open and those which are shortly to be dispatched and administer your address details, bank details ( for refund purposes) and any newsletter to which you may have subscribed. You undertake to treat the personal access data confidentially and not make it available to unauthorized third parties. We cannot assume any liability for misuse of passwords unless this misuse is our fault.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Other uses of your Personal Information</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">We may use your personal information for opinion and market research. Your details are anonymous and will only be used for statistical purposes. You can choose to opt out of this at any time. Any answers to surveys or opinion polls we may ask you to complete will not be forwarded on to third parties. Disclosing your email address is only necessary if you would like to take part in competitions. We save the answers to our surveys separately from your email address.<br><br>We may also send you other information about us, the Site, our other websites, our products, sales promotions, our newsletters, anything relating to other companies in our group or our business partners. If you would prefer not to receive any of this additional information as detailed in this paragraph (or any part of it) please click the \'unsubscribe\' link in any email that we send to you. Within 7 working days (days which are neither (i) a Sunday, nor (ii) a public holiday anywhere in Bangladesh) of receipt of your instruction we will cease to send you information as requested. If your instruction is unclear we will contact you for clarification.<br><br>We may further anonymize data about users of the Site generally and use it for various purposes, including ascertaining the general location of the users and usage of certain aspects of the Site or a link contained in an email to those registered to receive them, and supplying that anonymized data to third parties such as publishers. However, that anonymized data will not be capable of identifying you personally.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Competitions</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">For any competition we use the data to notify winners and advertise our offers. You can find more details where applicable in our participation terms for the respective competition.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">Third Parties and Links</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">We may pass your details to other companies in our group. We may also pass your details to our agents and subcontractors to help us with any of our uses of your data set out in our Privacy Policy. For example, we may use third parties to assist us with delivering products to you, to help us to collect payments from you, to analyze data and to provide us with marketing or customer service assistance.<br><br>We may exchange information with third parties for the purposes of fraud protection and credit risk reduction. We may transfer our databases containing your personal information if we sell our business or part of it. Other than as set out in this Privacy Policy, we shall NOT sell or disclose your personal data to third parties without obtaining your prior consent unless this is necessary for the purposes set out in this Privacy Policy or unless we are required to do so by law. The Site may contain advertising of third parties and links to other sites or frames of other sites. Please be aware that we are not responsible for the privacy practices or content of those third parties or other sites, nor for any third party to whom we transfer your data in accordance with our Privacy Policy.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">2. Cookies</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">The acceptance of cookies is not a requirement for visiting the Site. However we would like to point out that the use of the \'basket\' functionality on the Site and ordering is only possible with the activation of cookies. Cookies are tiny text files which identify your computer to our server as a unique user when you visit certain pages on the Site and they are stored by your Internet browser on your computer\'s hard drive. Cookies can be used to recognize your Internet Protocol address, saving you time while you are on, or want to enter, the Site. We only use cookies for your convenience in using the Site (for example to remember who you are when you want to amend your shopping cart without having to re-enter your email address) and not for obtaining or using any other information about you (for example targeted advertising). Your browser can be set to not accept cookies, but this would restrict your use of the Site. Please accept our assurance that our use of cookies does not contain any personal or private details and are free from viruses. If you want to find out more information about cookies, go to http://www.allaboutcookies.org or to find out about removing them from your browser, go to http://www.allaboutcookies.org/manage-cookies/index.html.<br><br>This website uses Google Analytics, a web analytics service provided by Google, Inc. (\"Google\"). Google Analytics uses cookies, which are text files placed on your computer, to help the website analyze how users use the site. The information generated by the cookie about your use of the website (including your IP address) will be transmitted to and stored by Google on servers in the United States. Google will use this information for the purpose of evaluating your use of the website, compiling reports on website activity for website operators and providing other services relating to website activity and internet usage. Google may also transfer this information to third parties where required to do so by law, or where such third parties process the information on Google\'s behalf. Google will not associate your IP address with any other data held by Google. You may refuse the use of cookies by selecting the appropriate settings on your browser, however please note that if you do this you may not be able to use the full functionality of this website. By using this website, you consent to the processing of data about you by Google in the manner and for the purposes set out above.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">3. Security</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">We have in place appropriate technical and security measures to prevent unauthorized or unlawful access to or accidental loss of or destruction or damage to your information. When we collect data through the Site, we collect your personal details on a secure server. We use firewalls on our servers. Our security procedures mean that we may occasionally request proof of identity before we disclose personal information to you. You are responsible for protecting against unauthorized access to your password and to your computer.</p><br style=\"color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><h4 style=\"margin: 21px 0px !important; padding: 0px; font-size: 16px !important; font-weight: 700 !important; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">4. Your rights</h4><p style=\"margin: 12px 0px !important; padding: 0px; clear: both; line-height: 1.5; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">If you are concerned about your data you have the right to request access to the personal data which we may hold or process about you. You have the right to require us to correct any inaccuracies in your data free of charge. At any stage you also have the right to ask us to stop using your personal data for direct marketing purposes.</p>', '2020-11-06 06:23:47', '2020-11-06 06:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `unit_price` double(8,2) NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `variant_product` int(1) NOT NULL DEFAULT '0',
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci,
  `colors` mediumtext COLLATE utf8_unicode_ci,
  `variations` text COLLATE utf8_unicode_ci,
  `todays_deal` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) NOT NULL DEFAULT '0',
  `current_stock` int(10) NOT NULL DEFAULT '0',
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT '1',
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET latin1 DEFAULT 'flat_rate',
  `shipping_cost` double(8,2) DEFAULT '0.00',
  `num_of_sale` int(11) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `featured`, `current_stock`, `unit`, `min_qty`, `discount`, `discount_type`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(4, 'Flax Seed (তিশি বীজ)', 'seller', 12, 9, 90, NULL, NULL, '[\"uploads\\/products\\/photos\\/pGQgTRDt8JJTrtRitmFEW9lzdbbrCj91F0hQqGys.png\",\"uploads\\/products\\/photos\\/4lXpmbbG1PTVwWZme0kr3d52FD4UqxDOqPpa1UDW.jpeg\",\"uploads\\/products\\/photos\\/jz9XryuMIyxsaFaFGmgniPeDaE2gN7UnP06UD7UH.jpeg\"]', 'uploads/products/thumbnail/0civ4lobVdYixpL3DrrG7zI4AsVMxBRAGrmur7AO.jpeg', 'youtube', NULL, 'Flax Seed', 'Fresh premium quality flax seed.', 60.00, 60.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"250 Gram\",\"500 Gram\",\"1 Kg\"]}]', '[]', NULL, 0, 1, 0, 0, 'KG', 1, 0.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, 'Flax Seed (তিশি বীজ)', 'Fresh premium quality flax seed.', 'uploads/products/meta/SyxBe1t74ywJr9tvYsCBFxwPvyCjC4LCQOriHyoA.jpeg', NULL, 'Flax-Seed---9XAXW', 0.00, NULL, 0, NULL, NULL, '2020-11-07 15:11:21', '2020-11-07 17:29:31'),
(5, 'Almond (কাঠ বাদাম)', 'seller', 12, 9, 90, NULL, NULL, '[\"uploads\\/products\\/photos\\/T9F3iUf4zj9GCGOYP7e83Tjgn0I8SbhP7BQ3ttrM.jpeg\",\"uploads\\/products\\/photos\\/08N7WjIT4WRefKsi6Bfic2mL0O2Ieb71ejJ39FAJ.jpeg\"]', 'uploads/products/thumbnail/R2OqjlxrWkEEjzaeNzpaAEzV2zTaIpbmAvthuTOt.jpeg', 'youtube', NULL, 'Almond', NULL, 220.00, 220.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"250 GM\",\"500 GM\",\"1000GM\"]}]', '[]', NULL, 0, 1, 0, 0, 'GM', 1, 10.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Almond', 'Premium quality fresh Almond.', 'uploads/products/meta/fWRhebAicj40AExOcuwuDztw5yiDOEObtUrp3tCM.jpeg', NULL, 'Almond---B5Gyv', 0.00, NULL, 0, NULL, NULL, '2020-11-07 17:23:25', '2020-11-07 17:23:25'),
(6, 'Chia seed (চিয়া সিড)', 'seller', 12, 9, 90, NULL, NULL, '[\"uploads\\/products\\/photos\\/5P7gouvypVx5A7bR7cANssGsyIVhVyP7Yi71SZgG.jpeg\",\"uploads\\/products\\/photos\\/wrAxUqJYRv6j6zqFzDSymPgecJ5ros186yRDS6kK.jpeg\",\"uploads\\/products\\/photos\\/ZorUAZeLDcs3ix27gl5G6uV75oVHPSwL7RjvoSSj.jpeg\",\"uploads\\/products\\/photos\\/wk56VoptzaGyGhJqXPG2tYoXmHDxVeRqhjHEUH6P.jpeg\"]', 'uploads/products/thumbnail/ELLcX5mjuwsQ0H7Mxzha7p1INxqRKbhENKJS4kKh.jpeg', 'youtube', NULL, 'Chia seed', NULL, 150.00, 150.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"100GM\",\"250Gm\",\"500GM\",\"1000GM\"]}]', '[]', NULL, 0, 1, 1, 0, 'GM', 1, 10.00, 'percent', 0.00, 'amount', NULL, 0.00, 2, 'Chia seed', 'Premium quality fresh chia seed.', 'uploads/products/meta/yXQScA52yuQ9svYwULtb22t48ttmUYIUqtFj3BUz.jpeg', NULL, 'Chia-seed---Zjuya', 0.00, NULL, 0, NULL, NULL, '2020-11-07 17:46:08', '2021-01-08 06:03:04'),
(7, 'Fuerdani men\'s wallet', 'seller', 12, 5, 33, NULL, NULL, '[\"uploads\\/products\\/photos\\/3VpJ101p73pr8i0w8LUE0ou1Ql0INxdaJSiTcQ5L.jpeg\",\"uploads\\/products\\/photos\\/UmQukdihrwzPyhsykU27WO8i5aKskQDcEOR746nr.jpeg\",\"uploads\\/products\\/photos\\/EAFigJKAMkW2hjj9ZCVGW7WiHLLyD8OViTbJEfuy.jpeg\"]', 'uploads/products/thumbnail/DvOjFOJmZHAX41KkUHsSHRhsWXIW6qnGvzP96wf8.jpeg', 'youtube', NULL, 'Men\'s wallet', '<ul><li>Fuerdani Men\'s wallet.</li><li>Metarial PU leather.</li><li>Made in china.</li></ul>', 400.00, 400.00, 1, '[]', '[]', '[\"#D2691E\",\"#000080\",\"#8B4513\"]', NULL, 1, 1, 1, 0, 'Piece', 1, 50.00, 'percent', 0.00, 'amount', NULL, 0.00, 3, 'Fuerdani men\'s wallet', '<ul><li>Fuerdani Men\'s wallet.</li><li>Metarial PU leather.</li><li>Made in china.</li></ul>', 'uploads/products/meta/3Xr0LKzpuvruQHKRzXLLupZLR8YiimvNegZNCk86.jpeg', NULL, 'Fuerdani-mens-wallet-L6kJ9', 0.00, NULL, 0, NULL, NULL, '2020-11-07 17:56:54', '2021-01-05 15:01:04'),
(8, 'Women’s yellow sleevless tops', 'seller', 12, 6, 36, NULL, NULL, '[\"uploads\\/products\\/photos\\/O4GGYlaLcznyaeOtMPShm4aoPTzuCSUaPagNW0UN.png\"]', 'uploads/products/thumbnail/kWESxUtNlziYjObrVvpf2WcdkA5x5pAQutXDPeH9.png', 'youtube', NULL, 'Tops', 'Best quality tops.', 2300.00, 2300.00, 1, '[]', '[]', '[\"#FFFF00\"]', NULL, 0, 1, 0, 0, '3', 1, 0.00, 'amount', 0.00, 'amount', NULL, 0.00, 3, 'Women’s yellow sleevless tops', 'Best quality tops.', 'uploads/products/meta/zIsAxvRcmQVYsD5l1YPHjXneXCDVqHGxzIkArc9D.png', NULL, 'Womens-yellow-sleevless-tops-dgmZy', 0.00, NULL, 0, NULL, NULL, '2020-11-10 06:36:37', '2020-12-24 17:13:46'),
(9, 'Chanderi silk saree', 'seller', 16, 6, 36, NULL, NULL, '[\"uploads\\/products\\/photos\\/HHaE4wacaaSVBQ5HCGXnZVn0F4qfFX4D05xI2QJj.png\"]', 'uploads/products/thumbnail/KQVYzi6WUrv1WKh8QobKYsqfXutqkvJVIBMJ2Qv5.png', 'youtube', NULL, 'Saree,Sari', 'Chanderi Silk Saree \r\nLight And Easy to wear.\r\nMaterial - Chanderi Pure Handloom Silk \r\nTotal Saree Length 6:30 meter/5.50 meter Saree\r\nBlouse - 80cm( Running blouse)\r\nExchange Policy - 7 days', 2999.00, 2999.00, 1, '[]', '[]', '[\"#9400D3\"]', NULL, 0, 1, 0, 0, '1', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 2, 'Chanderi silk saree', 'Chanderi Silk Saree \r\nLight And Easy to wear.\r\nMaterial - Chanderi Pure Handloom Silk \r\nTotal Saree Length 6:30 meter/5.50 meter Saree\r\nBlouse - 80cm( Running blouse)\r\nExchange Policy - 7 days', 'uploads/products/meta/1OcmpZYpvm6PQ7z95t5wXPY002FAjwhkVHd513Se.png', NULL, 'Chanderi-silk-saree-EIs7G', 0.00, NULL, 0, NULL, NULL, '2020-11-10 17:11:55', '2020-12-24 17:13:46'),
(10, 'Green, black & golden katan', 'seller', 16, 6, 36, NULL, NULL, '[\"uploads\\/products\\/photos\\/FwOSE0bPfzqpG042LvshwsRbn72I4Fbasy6afAeO.png\"]', 'uploads/products/thumbnail/qGO03qwS5gWLZVV3axTLLweDFp90zAhbluVnTOCO.png', 'youtube', NULL, 'Saree,Sari', 'Katan Saree Light And Easy to wear. Material - Pure katan Silk Total Saree Length 6:30 meter/5.50 meter Saree Blouse - 80cm( Running blouse) Exchange Policy - 7 days', 2700.00, 2700.00, 1, '[]', '[]', '[\"#008000\"]', NULL, 0, 1, 0, 0, '1', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Green, black & golden katan', 'Katan Saree Light And Easy to wear. Material - Pure katan Silk Total Saree Length 6:30 meter/5.50 meter Saree Blouse - 80cm( Running blouse) Exchange Policy - 7 days', 'uploads/products/meta/3jdhc9JQjFw2uyAWGO23Rvc1auiTKlTmw7N4y4a8.png', NULL, 'Green-black--golden-katan-VSqMH', 0.00, NULL, 0, NULL, NULL, '2020-11-10 17:28:08', '2020-11-10 17:28:08'),
(11, 'Ghee (ঘি)', 'seller', 12, 9, 60, NULL, NULL, '[\"uploads\\/products\\/photos\\/duoDRDgYnWqhw5as9G61n68mIKpLU9ueAUFUluGP.jpeg\",\"uploads\\/products\\/photos\\/f4wWSokrcPWN2zzim7pnJf46Xe30JJEDoKZI2ITG.jpeg\",\"uploads\\/products\\/photos\\/HohMVBnLFxzaSkU7ID4UuVKEAap1gOacJ43yew1Z.jpeg\"]', 'uploads/products/thumbnail/W4fnnTynGH4yUbBkRaUKMncd3MP2polmHtrepSEH.jpeg', 'youtube', NULL, 'Ghee,ঘি', 'খাটি গাওয়া ঘি।', 700.00, 700.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"500 GM \",\"1000 GM\"]}]', '[]', NULL, 0, 1, 0, 0, '500 GM', 1, 10.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Ghee (ঘি)', 'Pure ghee.', 'uploads/products/meta/px1xIpBdbTKjQwugwIXVdsUyBPGWMLhgH3lGRZZi.jpeg', NULL, 'Ghee--ReZYs', 0.00, NULL, 0, NULL, NULL, '2020-11-10 17:46:39', '2020-11-10 17:48:04'),
(12, 'Kids sweater', 'admin', 9, 13, 93, NULL, NULL, '[\"uploads\\/products\\/photos\\/b65eWUgGwPhdGQaovG4vE99fqR1AP0WiVqnKJzJ2.png\"]', 'uploads/products/thumbnail/dJBjnTAqLLpDBrM3t60N4zmX0SBE3C5YYYjMq2tE.png', 'youtube', NULL, 'sweater,Kidssweater,Kidswears', '<ol><li>Fabric type: Acrylic wool</li><li>Size: 24-36 Months</li><li>7 Days return</li></ol>', 999.00, 600.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"2-3 Years\"]}]', '[]', NULL, 1, 1, 0, 0, '1', 1, 20.00, 'percent', 0.00, 'percent', NULL, 0.00, 1, 'Not Available', 'Not Available', 'uploads/products/thumbnail/dJBjnTAqLLpDBrM3t60N4zmX0SBE3C5YYYjMq2tE.png', NULL, 'Kids-sweater-GpYVk', 0.00, NULL, 0, NULL, NULL, '2020-12-23 10:54:36', '2020-12-24 17:13:46'),
(13, 'Kids sweater', 'admin', 9, 13, 93, NULL, NULL, '[\"uploads\\/products\\/photos\\/nsYtyhpzsOnH0GOHYJSMIFldkat40E2ubc7b96ae.png\"]', 'uploads/products/thumbnail/synIfOim7NkaXPE69axfk8g73AwL40ot5nxpKTOp.png', 'youtube', NULL, 'Sweater,Kidswears', '<p><br></p><ol><li>Fabric type : Acrylic wool</li><li>size : 24-36 months</li><li>7 Days return</li></ol>', 999.00, 600.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"2-3 years\"]}]', '[]', NULL, 0, 1, 1, 0, 'Piece', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 3, 'Not Available', 'Not Available', 'uploads/products/thumbnail/synIfOim7NkaXPE69axfk8g73AwL40ot5nxpKTOp.png', NULL, 'Kids-sweater-Gdmmf', 0.00, NULL, 0, NULL, NULL, '2020-12-23 11:00:40', '2020-12-24 14:41:57'),
(14, 'Kids sweater', 'admin', 9, 13, 93, NULL, NULL, '[\"uploads\\/products\\/photos\\/PPmaWXYr5OiMsIBRXnp0BFnssidX9ayLNxvOCAT7.png\"]', 'uploads/products/thumbnail/ssanERqdd3ZnHD5amu4b92R9GSfjboyAgW9gcK06.png', 'youtube', NULL, 'Kidswears,Sweater', '<p>Fabric type: Acrylic wool</p><p>size: 8 years</p><p>Return policy: 7 days return<br></p>', 1050.00, 650.00, 1, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"8 years\"]}]', '[]', NULL, 0, 1, 1, 0, 'Piece', 1, 25.00, 'percent', 0.00, 'amount', NULL, 0.00, 1, 'Not Available', 'Not Available', 'uploads/products/thumbnail/ssanERqdd3ZnHD5amu4b92R9GSfjboyAgW9gcK06.png', NULL, 'Kids-sweater-ygCsz', 0.00, NULL, 0, NULL, NULL, '2020-12-23 11:05:10', '2020-12-23 16:15:28'),
(15, 'Woolen gloves', 'admin', 9, 5, 91, NULL, NULL, '[\"uploads\\/products\\/photos\\/oLHy2gOvWhbq9RoGnCJNOyS1OG3Ao5tlodOK2EZI.png\"]', 'uploads/products/thumbnail/9xsijKCufQGt5SuZ0hb0A8PTfxwg9v1HiPE9uFXA.png', 'youtube', NULL, 'Gloves,Hand gloves', '<ol><li>Woolen gloves</li><li>Unisex product</li><li>standard size</li><li>7 Days return&nbsp;<br></li></ol>', 200.00, 120.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 30.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/9xsijKCufQGt5SuZ0hb0A8PTfxwg9v1HiPE9uFXA.png', NULL, 'Woolen-gloves-Y6lvz', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:20:33', '2020-12-23 16:20:33'),
(16, 'Hand gloves for cold', 'admin', 9, 5, 91, NULL, NULL, '[\"uploads\\/products\\/photos\\/8YbJ5qFvEYetvx0iXeEaeSOzUF433O1QKJ3QmaUT.png\"]', 'uploads/products/thumbnail/IGa0K3kH3kEsT5uE8gkTFBQCP1ly8C7QysWtPF6q.png', 'youtube', NULL, 'Hand gloves,Gloves', '7 days return policy&nbsp;', 160.00, 100.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/IGa0K3kH3kEsT5uE8gkTFBQCP1ly8C7QysWtPF6q.png', NULL, 'Hand-gloves-for-cold-D2Hej', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:23:05', '2020-12-23 16:23:05'),
(17, 'Cap for cold', 'admin', 9, 6, 92, NULL, NULL, '[\"uploads\\/products\\/photos\\/DYP9UfeSrkZXuwg69R5htsLEYsIWslfz5SSPayp4.png\"]', 'uploads/products/thumbnail/mrLJ9kEyUjKEGHOW6WyyIW8yKxZWZaGSYNMaKAYl.png', 'youtube', NULL, 'Woolen cap,Cap for winter', '<p>Fabric type : wool</p><p>size : standard size&nbsp;</p><p>Return policy : 7 Days return<br></p>', 300.00, 200.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 'Piece', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 1, 'Not Available', 'Not Available', 'uploads/products/thumbnail/mrLJ9kEyUjKEGHOW6WyyIW8yKxZWZaGSYNMaKAYl.png', NULL, 'Cap-for-cold-9SnOW', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:26:05', '2020-12-24 17:13:46'),
(18, 'Cap for cold', 'admin', 9, 6, 92, NULL, NULL, '[\"uploads\\/products\\/photos\\/MiRVx97wEROF3R5tq33l3JE2YCS5x1LlGdKKUDYL.png\"]', 'uploads/products/thumbnail/iTnKxuYJE5BZAlXQjtGdojRjhWrmTAXVa3aSekI7.png', 'youtube', NULL, 'Cap for winter', '<p>Fabric type : wool</p><p>Size : Standard size&nbsp;</p><p>Return policy : 7 Days return (Change of mind not accepted)<br></p>', 350.00, 200.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 25.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/iTnKxuYJE5BZAlXQjtGdojRjhWrmTAXVa3aSekI7.png', NULL, 'Cap-for-cold-lQqqp', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:28:55', '2020-12-23 16:28:55'),
(19, 'Cap for cold', 'admin', 9, 5, 91, NULL, NULL, '[\"uploads\\/products\\/photos\\/ydE7UsG3wAF70XNeo5fGRMSdnKPjWL0NhMM3NEDR.png\"]', 'uploads/products/thumbnail/1duuzQKF9gN6PHbYP1CuRcXwc1z6uFxj3mZmw5OO.png', 'youtube', NULL, 'Cap for winter,Tupi', '<p>RyhhFabric type : wool</p><p>Size : Standard size&nbsp;</p><p>Return policy : 7 Days return (Change of mind not accepted)</p>', 320.00, 200.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 25.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/1duuzQKF9gN6PHbYP1CuRcXwc1z6uFxj3mZmw5OO.png', NULL, 'Cap-for-cold-SxMvD', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:31:24', '2020-12-23 16:31:24'),
(20, 'Muffler/Scarf', 'admin', 9, 5, 91, NULL, NULL, '[\"uploads\\/products\\/photos\\/Bhy2h7QtDTRbSgI8wPShN96f14nNxaltUxBP67T2.png\"]', 'uploads/products/thumbnail/MCoRt2RLm5gpvKiRuOueBuBRzlDQeI3tGvZP7izL.png', 'youtube', NULL, 'Maflar,Scarf,Muffler', '<p>Fabric type : wool</p><p>Size : Standard size&nbsp;</p><p>Return policy : 7 Days return (Change of mind not accepted)</p>', 666.00, 400.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 30.00, 'percent', 0.00, 'amount', NULL, 0.00, 1, 'Not Available', 'Not Available', 'uploads/products/thumbnail/MCoRt2RLm5gpvKiRuOueBuBRzlDQeI3tGvZP7izL.png', NULL, 'MufflerScarf-z8NCo', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:34:46', '2021-01-05 20:59:49'),
(21, 'Full sleev T-Shirt', 'admin', 9, 5, 91, NULL, NULL, '[\"uploads\\/products\\/photos\\/0mZx8TQY18OTB58HL4KY3nq8JJGBlUOGDnk0ZEiP.png\"]', 'uploads/products/thumbnail/PPwqnMSBWDt67p2z9uGdGhHUsYQqbyEi7LP2In0S.png', 'youtube', NULL, 'Full sleev t shirt,T-shirt', '<ul><li>Fabric type : Cotton</li><li>7 Days return (Change of mind not accepted)</li></ul>', 400.00, 200.00, 0, '[\"1\"]', '[{\"attribute_id\":\"1\",\"values\":[\"L\"]}]', '[]', NULL, 0, 1, 0, 1, 'Piece', 1, 20.00, 'percent', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/PPwqnMSBWDt67p2z9uGdGhHUsYQqbyEi7LP2In0S.png', NULL, 'Full-sleev-T-Shirt-aVzUE', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:40:20', '2020-12-23 16:40:20'),
(23, 'Kids sweater', 'admin', 9, 13, 93, NULL, NULL, '[\"uploads\\/products\\/photos\\/DVmUXqCZvkmMw56j2JjVwPegLR6vVfEPURvmS4e2.png\"]', 'uploads/products/thumbnail/9zlkgZjHi971LJAuogVZhu7uAZPjrlrt76NLOhm9.png', 'youtube', NULL, 'Sweater,Kids sweater,Kids wear', '<p>Fabric Type: Acrylic wool</p><p>Size: 2-3 years</p><p>Return policy: 7 Days return (Change of mind not applicable)&nbsp;<br></p>', 999.00, 500.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 0, 'Piece', 1, 30.00, 'percent', 0.00, 'amount', NULL, 0.00, 1, 'Not Available', 'Not Available', 'uploads/products/thumbnail/9zlkgZjHi971LJAuogVZhu7uAZPjrlrt76NLOhm9.png', NULL, 'Kids-sweater-IZrEC', 0.00, NULL, 0, NULL, NULL, '2020-12-23 16:46:23', '2020-12-24 17:13:46'),
(25, 'Potato (Local)', 'admin', 9, 9, 60, NULL, NULL, '[\"uploads\\/products\\/photos\\/Ze4jlJsWSeYl2xBZk8WgUp2N3E1L9q1RUymmsSQ1.png\",\"uploads\\/products\\/photos\\/uEaxriVeNRkmMmwL73TwAxP4IbhPFBH6mHhDVFgx.png\"]', 'uploads/products/thumbnail/vyrQ23f3Sl5R9Bftn8z1SoPpOPicvqfi58lb7vkN.png', 'youtube', NULL, 'Potato,Aloo,আলু', NULL, 35.00, 30.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 300, 'KG', 1, 0.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/vyrQ23f3Sl5R9Bftn8z1SoPpOPicvqfi58lb7vkN.png', NULL, 'Potato-Local-k1Au9', 0.00, NULL, 0, NULL, NULL, '2021-01-13 09:28:43', '2021-01-13 09:28:43'),
(26, 'Chicken Eggs (Layer)', 'admin', 9, 9, 60, NULL, NULL, '[\"uploads\\/products\\/photos\\/43S6MMjKZb8UQ0lY0XeApg1zMCZb5FFMA5aY7GUT.png\",\"uploads\\/products\\/photos\\/ybCBU5UVmRS4K1L2C5YPFRBMuTVc1UyIJU30wKFi.png\",\"uploads\\/products\\/photos\\/s5EpqjJka6aP1uLbyDVyh6RrOLRIIjlSxpIzTF59.png\"]', 'uploads/products/thumbnail/2z1tYCiWUrzMXQO9Uef8B0OoiAGUlWxqqO5QrEQt.png', 'youtube', NULL, 'Egg', NULL, 90.00, 85.00, 0, '[]', '[]', '[]', NULL, 0, 1, 0, 100, 'Dozen', 1, 0.00, 'amount', 0.00, 'amount', NULL, 0.00, 0, 'Not Available', 'Not Available', 'uploads/products/thumbnail/2z1tYCiWUrzMXQO9Uef8B0OoiAGUlWxqqO5QrEQt.png', NULL, 'Chicken-Eggs-Layer-b03ts', 0.00, NULL, 0, NULL, NULL, '2021-01-13 09:31:16', '2021-01-13 09:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 3, 'Aqua', 'MB-Aqua', 10000.00, 9, '2020-11-05 15:04:42', '2020-11-05 18:26:35'),
(2, 3, 'DarkGray', 'MB-DarkGray', 10000.00, 10, '2020-11-05 15:04:42', '2020-11-05 15:04:42'),
(3, 4, '250Gram', 'Fs1', 60.00, 10, '2020-11-07 15:11:21', '2020-11-07 15:11:21'),
(4, 4, '500Gram', 'Fs2', 110.00, 10, '2020-11-07 15:11:21', '2020-11-07 15:11:21'),
(5, 4, '1Kg', 'Fs3', 220.00, 10, '2020-11-07 15:11:21', '2020-11-07 15:11:21'),
(6, 5, '250GM', 'A1', 220.00, 10, '2020-11-07 17:23:25', '2020-11-07 17:23:25'),
(7, 5, '500GM', 'A1', 400.00, 10, '2020-11-07 17:23:25', '2020-11-07 17:23:25'),
(8, 5, '1000GM', 'A3', 800.00, 10, '2020-11-07 17:23:25', '2020-11-07 17:23:25'),
(9, 6, '100GM', 'Cs1', 150.00, 8, '2020-11-07 17:46:08', '2021-01-08 06:03:04'),
(10, 6, '250Gm', 'Cs2', 350.00, 10, '2020-11-07 17:46:08', '2020-11-07 17:46:08'),
(11, 6, '500GM', 'Cs3', 700.00, 10, '2020-11-07 17:46:08', '2020-11-07 17:46:08'),
(12, 6, '1000GM', 'Cs4', 1400.00, 10, '2020-11-07 17:46:08', '2020-11-07 17:46:08'),
(13, 7, 'Chocolate', 'Fw1Fmw-Chocolate', 400.00, 6, '2020-11-07 17:56:54', '2021-01-05 15:01:04'),
(14, 7, 'Navy', 'FW1Fmw-Navy', 400.00, 10, '2020-11-07 17:56:54', '2020-11-07 17:56:54'),
(15, 7, 'SaddleBrown', 'FW1Fmw-SaddleBrown', 400.00, 10, '2020-11-07 17:56:54', '2020-11-07 17:56:54'),
(16, 8, 'Yellow', 'Wyst-Yellow', 2300.00, 7, '2020-11-10 06:36:37', '2020-12-24 17:13:46'),
(20, 9, 'DarkViolet', 'Css-DarkViolet', 2999.00, 1, '2020-11-10 17:20:40', '2020-12-24 17:13:46'),
(22, 10, 'Green', 'Gb&gk-Green', 2700.00, 2, '2020-11-10 17:28:32', '2020-11-10 17:28:32'),
(23, 11, '500GM', 'G(-500GM', 700.00, 10, '2020-11-10 17:46:39', '2020-11-10 17:46:39'),
(24, 11, '1000GM', 'G(-1000GM', 1400.00, 10, '2020-11-10 17:46:39', '2020-11-10 17:46:39'),
(25, 12, '2-3Years', 'Ks-2-3Years', 999.00, 0, '2020-12-23 10:54:36', '2020-12-24 17:13:46'),
(26, 13, '2-3years', 'Ks-2-3years', 999.00, -2, '2020-12-23 11:00:40', '2020-12-24 14:41:57'),
(27, 14, '8years', 'Ks-8years', 1050.00, 0, '2020-12-23 11:05:10', '2020-12-23 11:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 04:39:47', '2018-10-10 04:51:37'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09'),
(3, 'Admin', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"16\",\"17\",\"7\",\"9\",\"10\",\"12\",\"13\",\"14\"]', '2020-11-03 08:08:47', '2020-11-12 19:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `query`, `count`, `created_at`, `updated_at`) VALUES
(2, 'dcs', 1, '2020-03-08 00:29:09', '2020-03-08 00:29:09'),
(3, 'das', 3, '2020-03-08 00:29:15', '2020-03-08 00:29:50'),
(4, 'Sari', 2, '2020-11-10 17:49:21', '2021-05-11 11:34:39'),
(5, 'Bania', 1, '2020-11-11 15:59:57', '2020-11-11 15:59:57'),
(6, 'add', 1, '2020-11-22 10:50:28', '2020-11-22 10:50:28'),
(7, 'sunglass', 1, '2020-12-01 04:52:19', '2020-12-01 04:52:19'),
(8, 'saree', 47, '2020-12-09 09:39:19', '2022-06-16 08:34:10'),
(9, 'Tuna', 1, '2020-12-20 06:53:24', '2020-12-20 06:53:24'),
(10, 'lenovo tab4 8 plus', 1, '2021-01-10 14:16:09', '2021-01-10 14:16:09'),
(11, 'Dz09 smart watch', 2, '2021-02-07 02:14:20', '2021-02-07 02:14:41'),
(12, 'Smart', 1, '2021-02-07 02:15:14', '2021-02-07 02:15:14'),
(13, 'Super light oil free moisturiser', 1, '2021-04-08 13:11:49', '2021-04-08 13:11:49'),
(14, 'Fancy saree', 1, '2021-04-12 12:44:29', '2021-04-12 12:44:29'),
(15, 'Ladies saree', 1, '2021-04-12 12:45:38', '2021-04-12 12:45:38'),
(16, 'Sarees', 48, '2021-04-14 09:15:54', '2022-06-16 08:34:01'),
(17, 'mi 10 i', 2, '2021-04-23 14:44:20', '2021-04-23 14:44:23'),
(18, 'Kurthi ladies', 1, '2021-04-26 06:57:04', '2021-04-26 06:57:04'),
(19, 'Hoodies for women', 3, '2021-05-06 13:22:02', '2021-05-06 13:22:13'),
(20, 'full sleev t shirt', 1, '2021-05-06 13:22:39', '2021-05-06 13:22:39'),
(21, 'T shirt', 2, '2021-05-06 13:26:20', '2021-05-06 13:26:34'),
(22, 'Saree with blouse', 1, '2021-05-08 14:17:22', '2021-05-08 14:17:22'),
(23, 'Kanchipuram', 1, '2021-05-08 16:42:52', '2021-05-08 16:42:52'),
(24, 'Boysenberry Purple Zari woven Kanchipuram Silk Saree', 1, '2021-05-08 16:44:53', '2021-05-08 16:44:53'),
(25, 'Designer sarees', 11, '2021-05-10 02:57:15', '2022-08-11 16:46:23'),
(26, 'Organza sarees', 2, '2021-05-11 06:28:16', '2021-05-18 04:53:47'),
(27, 'Sarees kanchipuram', 2, '2021-05-11 06:36:25', '2021-05-11 06:36:58'),
(28, 'Sequence saree', 2, '2021-05-11 06:36:28', '2021-05-11 06:36:39'),
(29, 'Sarees under 2000', 7, '2021-05-11 06:40:52', '2022-06-16 08:34:18'),
(30, 'Sarees under 1000', 1, '2021-05-11 06:51:51', '2021-05-11 06:51:51'),
(31, 'neclacset', 1, '2021-05-11 07:49:35', '2021-05-11 07:49:35'),
(32, 'Kanjivaram saree', 1, '2021-05-11 08:17:49', '2021-05-11 08:17:49'),
(33, 'Sare', 2, '2021-05-11 11:31:52', '2021-05-28 05:16:46'),
(34, 'Powder bead', 1, '2021-05-11 19:57:51', '2021-05-11 19:57:51'),
(35, 'Skirts and blouse', 2, '2021-05-12 05:20:25', '2021-05-12 05:20:37'),
(36, 'Lehenga', 2, '2021-05-12 05:20:47', '2021-05-12 05:20:53'),
(37, 'Top', 1, '2021-05-12 05:41:44', '2021-05-12 05:41:44'),
(38, 'Jump suit', 2, '2021-05-12 05:42:08', '2021-05-12 05:42:09'),
(39, 'Organza thread work saree', 2, '2021-05-12 09:52:07', '2021-05-12 09:52:16'),
(40, 'Silk saree', 6, '2021-05-12 12:42:11', '2022-05-05 02:43:39'),
(41, 'Kanchiveram', 2, '2021-05-12 12:42:26', '2021-05-12 12:42:29'),
(42, 'Zarin woven', 2, '2021-05-12 12:42:48', '2021-05-12 12:42:50'),
(43, 'Bottle green', 1, '2021-05-12 12:42:58', '2021-05-12 12:42:58'),
(44, 'Ssree', 1, '2021-05-12 20:46:37', '2021-05-12 20:46:37'),
(45, 'Orgnaza sarries', 1, '2021-05-13 09:18:16', '2021-05-13 09:18:16'),
(46, 'Orgnaza sarri', 1, '2021-05-13 09:18:32', '2021-05-13 09:18:32'),
(47, 'Orgnaza saree', 1, '2021-05-13 09:18:45', '2021-05-13 09:18:45'),
(48, 'Organza saree', 2, '2021-05-14 05:36:29', '2021-05-14 05:39:01'),
(49, 'Saree readymade', 2, '2021-05-14 06:00:46', '2021-05-14 06:00:56'),
(50, '899 sari', 1, '2021-05-14 14:07:24', '2021-05-14 14:07:24'),
(51, 'Saree-buy bazaar', 1, '2021-05-14 16:54:13', '2021-05-14 16:54:13'),
(52, 'Embroidered saree', 1, '2021-05-15 03:41:41', '2021-05-15 03:41:41'),
(53, 'Saree for bride', 1, '2021-05-15 03:42:17', '2021-05-15 03:42:17'),
(54, 'Latest saree', 1, '2021-05-15 03:43:31', '2021-05-15 03:43:31'),
(55, 'Net saree', 1, '2021-05-15 03:44:14', '2021-05-15 03:44:14'),
(56, 'Lipstick', 1, '2021-05-15 05:03:36', '2021-05-15 05:03:36'),
(57, 'Raw silk embroidery  saree', 1, '2021-05-17 10:47:31', '2021-05-17 10:47:31'),
(58, 'Power blue bead embroidery organza saree', 1, '2021-05-19 02:09:53', '2021-05-19 02:09:53'),
(59, 'Powder blue bead', 1, '2021-05-19 02:12:03', '2021-05-19 02:12:03'),
(60, 'kanchivaram saree', 1, '2021-05-19 04:11:13', '2021-05-19 04:11:13'),
(61, 'kanchivaram sarees', 1, '2021-05-19 04:12:36', '2021-05-19 04:12:36'),
(62, 'Bridal sarees', 2, '2021-05-20 05:46:06', '2021-05-20 05:46:15'),
(63, 'Oraganzasarees', 1, '2021-05-21 11:28:58', '2021-05-21 11:28:58'),
(64, 'Peach oganza embroidery saree', 1, '2021-05-21 13:18:13', '2021-05-21 13:18:13'),
(65, 'Bottle green saree', 1, '2021-05-23 05:54:36', '2021-05-23 05:54:36'),
(66, 'kanjeevaram sarees', 1, '2021-05-25 16:32:48', '2021-05-25 16:32:48'),
(67, 'Synthetic sarees for women', 2, '2021-05-28 10:07:00', '2021-05-28 10:07:25'),
(68, 'Synthetic sarees', 1, '2021-05-28 10:08:28', '2021-05-28 10:08:28'),
(69, 'Headphones', 2, '2021-06-05 16:04:19', '2021-06-05 16:04:23'),
(70, 'Fancy sarees', 1, '2021-06-09 07:40:02', '2021-06-09 07:40:02'),
(71, '\"><img src=x onerror=alert(document.cookie);>', 1, '2021-06-13 13:17:34', '2021-06-13 13:17:34'),
(72, 'Kanchipuram saree', 1, '2021-06-18 13:16:02', '2021-06-18 13:16:02'),
(73, 'Kanchipuram Silk saree', 1, '2021-06-18 13:16:27', '2021-06-18 13:16:27'),
(74, 'Trendy tops', 1, '2021-06-25 07:06:52', '2021-06-25 07:06:52'),
(75, 'Peach organza saree', 1, '2021-07-06 20:27:04', '2021-07-06 20:27:04'),
(76, 'Ladies bag', 1, '2021-10-26 08:09:04', '2021-10-26 08:09:04'),
(77, 'MAGNETIC WOOD TOY', 1, '2021-10-29 05:51:11', '2021-10-29 05:51:11'),
(78, 'TOY', 2, '2021-10-29 05:51:34', '2021-10-29 05:52:37'),
(79, 'Dust coat', 1, '2021-11-29 07:22:05', '2021-11-29 07:22:05'),
(80, 'Iphone 13 mini', 1, '2022-01-23 07:03:04', '2022-01-23 07:03:04'),
(81, 'Iphone 13', 1, '2022-01-23 07:03:14', '2022-01-23 07:03:14'),
(82, 'Hand bags', 2, '2022-02-06 17:28:36', '2022-02-06 17:29:02'),
(83, 'Bag', 1, '2022-02-06 17:29:23', '2022-02-06 17:29:23'),
(84, 'Lahnga', 4, '2022-05-09 04:31:10', '2022-05-09 04:33:52'),
(85, 'woman bags', 1, '2022-05-22 10:07:50', '2022-05-22 10:07:50'),
(86, 'bags', 1, '2022-05-22 10:10:13', '2022-05-22 10:10:13'),
(87, 'Hair free', 1, '2022-06-17 03:41:56', '2022-06-17 03:41:56'),
(88, 'sewing machine', 2, '2022-07-28 14:00:48', '2022-07-28 14:01:41'),
(89, 'Optinvent ora-x', 2, '2022-09-09 12:28:06', '2022-09-09 12:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT '0',
  `verification_info` longtext COLLATE utf8_unicode_ci,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT '0',
  `admin_to_pay` double(8,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(2, 12, 1, NULL, 1, -375.00, 'The City Bank Ltd.', 'Md Imdadul Haque', '2302528844001', 'Shyamoli', 1, '2020-11-05 16:56:33', '2021-01-07 09:53:36'),
(3, 14, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-11-06 03:22:15', '2020-11-06 10:05:39'),
(4, 15, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-11-09 08:09:38', '2020-11-09 11:54:34'),
(5, 16, 1, NULL, 1, -239.92, NULL, NULL, NULL, NULL, 0, '2020-11-10 11:19:40', '2021-01-07 09:53:36'),
(6, 17, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-11-11 08:59:10', '2020-11-11 15:06:58'),
(7, 18, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-11-11 15:01:00', '2020-11-11 15:06:49'),
(12, 23, 1, '[{\"type\":\"text\",\"label\":\"Your name\",\"value\":\"Maksudur Rahman\"},{\"type\":\"text\",\"label\":\"Shop name\",\"value\":\"\\u09b0\\u09b8\\u09c1\\u0987 \\u09ac\\u09be\\u09dc\\u09bf\"},{\"type\":\"text\",\"label\":\"Email\",\"value\":\"rosoibari@gmail.com\"},{\"type\":\"text\",\"label\":\"Full Address\",\"value\":\"390\\/1, North Shahjahanpur, Dhaka-1217\"},{\"type\":\"text\",\"label\":\"Phone Number\",\"value\":\"01934328180\"}]', 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-11-19 15:44:22', '2020-11-23 17:47:50'),
(16, 27, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2020-12-12 20:02:42', '2020-12-13 04:25:13'),
(18, 36, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-01-08 10:45:24', '2021-01-08 11:09:05'),
(19, 37, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-01-15 12:53:11', '2021-01-16 03:49:48'),
(20, 38, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-01-15 13:32:52', '2021-01-16 03:50:14'),
(21, 40, 1, NULL, 1, 0.00, NULL, NULL, NULL, NULL, 0, '2021-01-19 08:34:44', '2021-01-19 10:47:29'),
(22, 42, 1, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-01-25 07:57:20', '2021-01-25 07:58:07'),
(23, 63, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-08-27 22:20:55', '2021-08-27 22:20:55'),
(24, 66, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-10-22 19:40:14', '2021-10-22 19:40:14'),
(25, 67, 0, NULL, 0, 0.00, NULL, NULL, NULL, NULL, 0, '2021-10-23 01:49:44', '2021-10-23 01:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `message` longtext,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ecommerce ,shopping,online,easy shopping', 'buybazar.com.bd', 10, 'https://buybazar.com.bd/', 'buybazar', '2020-11-03 08:12:19', '2020-11-03 08:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shop_phone` varchar(26) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `pick_up_point_id` text COLLATE utf8_unicode_ci,
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `shop_phone`, `logo`, `sliders`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(2, 12, 'Grab It', NULL, 'uploads/shop/logo/MjTvkefvsvDgoyJOes2mOS88Lp9967SGaoG1qzga.png', '[\"uploads\\/shop\\/sliders\\/YJZNIGmEFtlMkaoWukQRD55mDHr4mYBIrcWQiFjR.png\",\"uploads\\/shop\\/sliders\\/dNQRfp79cXnkhYW64lZEDjBSU1r7WpJsusH07KdP.png\"]', '29/2-3, Babor road, Mohammadpur, Dhaka', 'https://www.facebook.com/bdgrabit', NULL, NULL, NULL, 'Grab-It-2', 'Grab It', 'Grab It', '[]', 0.00, '2020-11-05 16:56:33', '2020-11-07 17:34:38'),
(3, 14, 'Ayat Food Hub', NULL, NULL, NULL, 'Shaymoli, Dhaka', NULL, NULL, NULL, NULL, 'Ayat-Food-Hub-3', 'Food product', 'Honey,  Ghee, Badamer Kotkoti etc', '[]', 0.00, '2020-11-06 03:22:15', '2020-11-06 03:55:36'),
(4, 15, 'Birgonj Online market', NULL, NULL, NULL, 'Birgonj,Dinajpur', NULL, NULL, NULL, NULL, 'Birgonj-Online-market-', NULL, NULL, NULL, 0.00, '2020-11-09 08:09:38', '2020-11-09 08:09:38'),
(5, 16, 'EG-Buy', NULL, 'uploads/shop/logo/w7BaZiufJPCVNNSjdEXELgOimkney8QDQqKECX18.png', '[]', 'House-4, Road-8, Dhanmondi, Dhaka-1205', NULL, NULL, NULL, NULL, 'EG-Buy-5', 'EG-Buy', 'Essential goods for you.', '[]', 0.00, '2020-11-10 11:19:40', '2020-11-10 11:22:46'),
(6, 17, 'Urban vogue', NULL, NULL, NULL, '25a green road', NULL, NULL, NULL, NULL, 'Urban-vogue-6', 'Urban vogue', 'Urban', '[]', 0.00, '2020-11-11 08:59:10', '2020-11-11 09:01:54'),
(7, 18, 'ANISHA INTERNATIONAL', NULL, NULL, NULL, 'Shop 5/1,Easternplaza Hatirpool Dhaka-1205', NULL, NULL, NULL, NULL, 'ANISHA-INTERNATIONAL-', NULL, NULL, NULL, 0.00, '2020-11-11 15:01:00', '2020-11-11 15:01:00'),
(12, 23, 'রসুই বাড়ি', NULL, 'uploads/shop/logo/2WMfCpZK55cLALpTgh4M9HOj2sze8uwpOF9OdrKe.jpeg', NULL, '390/1, North Shahjahanpur, Dhaka -1217', 'Www.facebook.com/rosoibari/', NULL, NULL, NULL, 'রসুই-বাড়ি-12', 'রসুই বাড়ি', 'Assalamu alaikum,\r\nHello everyone,\r\nরসুই বাড়ি facebook এ আপনাদের জন্য নিয়ে এলো বাংলাদেশের বিখ্যাত কিছু অঞ্চল থেকে খাঁটি পণ্য সাথে আপনার বাড়ির দুয়ারে পৌছে দেওয়ার সুবিধা।\r\nআস্থা রাখতে পারেন আমাদের খাঁটি পণ্যের উপর।\r\nWe have -\r\n1. High quality tea from Sreemangal,\r\n2. High quality pure honey from Sundarban,\r\n3. High quality turmeric powder (হলুদের গুরা), chili powder (মরিচের গুরা) & different type of spice (মসলা) from Khagrachari,\r\n4. High quality home made Ghee (ঘি).', '[]', 0.00, '2020-11-19 15:44:22', '2020-11-19 15:58:49'),
(16, 27, 'Taslima Rahman', '01917895327', NULL, NULL, 'Shekhertek,Mohammadpur,Dhaka', NULL, NULL, NULL, NULL, 'Taslima-Rahman-', NULL, NULL, NULL, 0.00, '2020-12-12 20:02:42', '2020-12-12 20:02:42'),
(18, 36, 'মেঘলার সপ্ন', NULL, NULL, NULL, 'মিন্', NULL, NULL, NULL, NULL, 'মেঘলার-সপ্ন-', NULL, NULL, NULL, 0.00, '2021-01-08 10:45:24', '2021-01-08 10:45:24'),
(19, 37, 'Ishmam Fashion& Fabrics', '01572467686', NULL, NULL, 'chittagong', NULL, NULL, NULL, NULL, 'Ishmam-Fashion&-Fabrics-', NULL, NULL, NULL, 0.00, '2021-01-15 12:53:11', '2021-01-15 12:53:11'),
(20, 38, 'Rod megha', '02628961210', NULL, '[\"uploads\\/shop\\/sliders\\/w55oy6nJ4y9Fmx0S3UoxMT6MD1V3vaTS51vhi9Bu.jpeg\",\"uploads\\/shop\\/sliders\\/CauCkN6pbExtZdkbcp6PsMsMEsMnAEbCLraF6Kss.jpeg\"]', 'Ctg', NULL, NULL, NULL, NULL, 'Rod-megha-', NULL, NULL, NULL, 0.00, '2021-01-15 13:32:52', '2021-01-15 13:33:55'),
(21, 40, 'Jig jag outwears', '01643000604', NULL, NULL, 'Chittagong', NULL, NULL, NULL, NULL, 'Jig-jag-outwears-21', NULL, NULL, '[]', 0.00, '2021-01-19 08:34:44', '2021-01-19 08:40:25'),
(22, 42, 'Sister\'s Collection-BD', NULL, NULL, '[\"uploads\\/shop\\/sliders\\/ftx0j2rgKOA9zKing8NRKcZA2m3u5SL5NOUqd4Vn.jpeg\"]', 'Bondor Bazar, Sylhet', NULL, NULL, NULL, NULL, 'Sister\'s-Collection-BD-', NULL, NULL, NULL, 0.00, '2021-01-25 07:57:20', '2021-01-25 08:04:18'),
(23, 63, 'yournewpasswordhorienwfa https://facebook.com 8302', 'MavisBaldosrg@seznam.cz', NULL, NULL, 'yournewpasswordhorienwfa https://facebook.com 8302', NULL, NULL, NULL, NULL, 'yournewpasswordhorienwfa-https://facebook.com-8302-', NULL, NULL, NULL, 0.00, '2021-08-27 22:20:55', '2021-08-27 22:20:55'),
(24, 66, 'duplicates were https://www.wikipedia.org', 'duplicates were https://ww', NULL, NULL, 'duplicates were https://www.wikipedia.org', NULL, NULL, NULL, NULL, 'duplicates-were-https://www.wikipedia.org-', NULL, NULL, NULL, 0.00, '2021-10-22 19:40:14', '2021-10-22 19:40:14'),
(25, 67, 'duplicates were https://wikipedia.org', 'duplicates were https://wi', NULL, NULL, 'duplicates were https://wikipedia.org', NULL, NULL, NULL, NULL, 'duplicates-were-https://wikipedia.org-', NULL, NULL, NULL, 0.00, '2021-10-23 01:49:44', '2021-10-23 01:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(14, 'uploads/sliders/48EfI2zurLjQvuBK2iU3E9dgqdyhbeKcKJPnunmh.jpeg', 0, 'buybazar.com.bd', '2020-11-05 17:48:11', '2020-12-14 11:04:56'),
(22, 'uploads/sliders/BC7kfnOJD8zdmsVATsY4b27nmxpHTVUdjufxXSG6.jpeg', 0, 'https://buybazar.com.bd/search?category=Mens-Fashion-40tq2', '2020-11-09 09:18:24', '2020-12-14 07:13:56'),
(23, 'uploads/sliders/UsnZey613DhgcTkb0EUy46waH73aQTR44Tp0W8Hg.jpeg', 0, 'https://buybazar.com.bd/search?category=Sports--Fitness-3Cr45', '2020-11-09 09:20:04', '2020-12-14 11:04:53'),
(25, 'uploads/sliders/v3z2utapMSs4w8Q712EmUiEp0zgmOuP9W0qeIYUJ.jpeg', 1, 'https://buybazar.com.bd/shops/create', '2020-11-09 09:42:51', '2021-01-05 05:56:48'),
(26, 'uploads/sliders/NjN2llwZJBfKacm7anxRa8JYv96s54lfzdm1Dxbw.jpeg', 1, 'https://buybazar.com.bd/search?category=Womens-Fashion-RQiy5', '2020-11-09 09:43:24', '2021-01-05 05:56:47'),
(27, 'uploads/sliders/Ii12xOazzvr7ef1asB4XQFtJXFGSc8lP1CBHeeRO.jpeg', 0, 'https://buybazar.com.bd', '2020-12-14 11:02:20', '2021-01-05 05:56:37'),
(28, 'uploads/sliders/1EgD4T34uuEJr3TH97F7yUO6Pygu39OBgHAFbcsM.jpeg', 0, 'https://buybazar.com.bd', '2020-12-14 11:02:20', '2021-01-05 05:56:38'),
(30, 'uploads/sliders/NxgKFVCmHZRy0hjeK15qZ0PfGPuE6rbJzsPgJDLe.jpeg', 1, 'https://buybazar.com.bd/search?category=Grocery--Household-Supplies-lhfA8', '2021-01-13 08:53:41', '2021-01-13 08:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 10, 3, '2020-11-03 08:10:21', '2020-11-03 08:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'tshobha610@gmail.com', '2021-05-18 04:55:22', '2021-05-18 04:55:22'),
(2, 'sanatahse@student.iul.ac.in', '2021-05-18 08:32:03', '2021-05-18 08:32:03'),
(3, 'pr@standata.xyz', '2021-09-05 09:32:31', '2021-09-05 09:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(8, 'Laptops', 15, 'Demo-sub-category-2', 'Laptops', NULL, '2019-03-12 06:19:13', '2020-11-06 09:38:14'),
(9, 'Mobiles', 15, 'Demo-sub-category-3', 'Mobiles', NULL, '2019-03-12 06:19:22', '2020-11-06 09:37:59'),
(10, 'Tablets', 15, 'Tablet-qr3IW', 'Tablet', NULL, '2020-11-06 08:39:38', '2020-11-06 09:37:43'),
(11, 'Wearable Devices', 15, 'Wearable-Devices-pT585', 'Wearable Devices', NULL, '2020-11-06 08:42:24', '2020-11-06 09:37:27'),
(12, 'Mobile Accessories', 15, 'Mobile-Accessories-63cMq', 'Mobile Accessories', NULL, '2020-11-06 08:43:50', '2020-11-06 09:36:57'),
(13, 'Power Banks', 15, 'Power-Banks-6LOOm', 'Power Banks', NULL, '2020-11-06 08:44:29', '2020-11-06 09:36:39'),
(14, 'Computers & Accessories', 15, 'Computers--Accessories-pXUIo', 'Computers & Accessories', NULL, '2020-11-06 08:45:32', '2020-11-06 09:36:21'),
(15, 'Pen Drives & Storage', 15, 'Pen-Drives--Storage-UNfvL', 'Pen Drives & Storage', NULL, '2020-11-06 08:46:17', '2020-11-06 09:35:50'),
(16, 'All Electronics', 4, 'All-Electronics-ZSzNU', 'All Electronics', NULL, '2020-11-07 14:01:08', '2020-11-07 14:01:08'),
(17, 'Televisions', 4, 'Televisions-tyY9M', 'Televisions', NULL, '2020-11-07 14:02:01', '2020-11-07 14:02:01'),
(18, 'Large Appliances', 4, 'Large-Appliances-37e4R', 'Large Appliances', NULL, '2020-11-07 14:02:45', '2020-11-07 14:02:45'),
(19, 'Kitchen Appliances', 4, 'Kitchen-Appliances-WUzVR', 'Kitchen Appliances', NULL, '2020-11-07 14:03:18', '2020-11-07 14:03:18'),
(20, 'Air Conditioners', 4, 'Air-Conditioners-kUEHJ', 'Air Conditioners', NULL, '2020-11-07 14:03:44', '2020-11-07 14:03:44'),
(21, 'Refrigerator', 4, 'Refrigerator-RkOxE', 'Refrigerator', NULL, '2020-11-07 14:04:18', '2020-11-07 14:04:18'),
(22, 'Washing Machines', 4, 'Washing-Machines-42ISU', 'Washing Machines', NULL, '2020-11-07 14:04:47', '2020-11-07 14:04:47'),
(23, 'Microwaves', 4, 'Microwaves-igLCC', 'Microwaves', NULL, '2020-11-07 14:05:19', '2020-11-07 14:05:19'),
(24, 'Dishwashers', 4, 'Dishwashers-i9Ipu', 'Dishwashers', NULL, '2020-11-07 14:05:53', '2020-11-07 14:05:53'),
(25, 'Heating & Cooling Appliances', 4, 'Heating--Cooling-Appliances-YMy1s', 'Heating & Cooling Appliances', NULL, '2020-11-07 14:06:34', '2020-11-07 14:06:34'),
(26, 'Speakers', 4, 'Speakers-TFgD6', 'Speakers', NULL, '2020-11-07 14:07:12', '2020-11-07 14:07:12'),
(27, 'Headphones', 4, 'Headphones-2sT2b', 'Headphones', NULL, '2020-11-07 14:08:01', '2020-11-07 14:08:01'),
(28, 'Camera', 4, 'Camera-lKrp9', 'Camera', NULL, '2020-11-07 14:08:26', '2020-11-07 14:08:26'),
(29, 'Camera Accessories', 4, 'Camera-Accessories-DmUb3', 'Camera Accessories', NULL, '2020-11-07 14:08:49', '2020-11-07 14:08:49'),
(30, 'Clothing', 5, 'Clothing-xsI3e', 'Clothing', NULL, '2020-11-07 14:09:32', '2020-11-07 14:09:32'),
(31, 'Footwear', 5, 'Footwear-awv6W', 'Footwear', NULL, '2020-11-07 14:09:51', '2020-11-07 14:09:51'),
(32, 'Watches', 5, 'Watches-Pd2x7', 'Watches', NULL, '2020-11-07 14:10:21', '2020-11-07 14:10:21'),
(33, 'Bags, Wallets, Luggage', 5, 'Bags-Wallets-Luggage-0T9rU', 'Bags, Wallets, Luggage', NULL, '2020-11-07 14:10:58', '2020-11-07 14:10:58'),
(34, 'Sunglasses', 5, 'Sunglasses-UHycF', 'Sunglasses', NULL, '2020-11-07 14:19:12', '2020-11-07 14:19:12'),
(35, 'Accessories', 5, 'Accessories-hPiZX', 'Accessories', NULL, '2020-11-07 14:19:39', '2020-11-07 14:19:39'),
(36, 'Clothing', 6, 'Clothing-8lA48', 'Clothing', NULL, '2020-11-07 14:20:32', '2020-11-07 14:20:32'),
(37, 'Footwear', 6, 'Footwear-mnsyS', 'Footwear', NULL, '2020-11-07 14:20:54', '2020-11-07 14:20:54'),
(38, 'Watches', 6, 'Watches-ycfVb', 'Watches', NULL, '2020-11-07 14:21:12', '2020-11-07 14:21:12'),
(39, 'Jewellery', 6, 'Jewellery-XMsXl', 'Jewellery', NULL, '2020-11-07 14:21:56', '2020-11-07 14:21:56'),
(40, 'Sunglasses', 6, 'Sunglasses-izvJV', 'Sunglasses', NULL, '2020-11-07 14:22:26', '2020-11-07 14:22:26'),
(41, 'Handbags & Clutches', 6, 'Handbags--Clutches-lPrtK', 'Handbags & Clutches', NULL, '2020-11-07 14:23:11', '2020-11-07 14:23:11'),
(42, 'Lingeries', 6, 'Lingeries-OY4nX', 'Lingeries', NULL, '2020-11-07 14:24:50', '2020-11-07 14:24:50'),
(43, 'Kitchen & Dinning', 8, 'Kitchen--Dinning-ncQOT', 'Kitchen & Dinning', NULL, '2020-11-07 14:26:06', '2020-11-07 14:26:06'),
(44, 'Furniture', 8, 'Furniture-p2R5f', 'Furniture', NULL, '2020-11-07 14:26:34', '2020-11-07 14:26:34'),
(45, 'Home Furnishing', 8, 'Home-Furnishing-llH6P', 'Home Furnishing', NULL, '2020-11-07 14:27:05', '2020-11-07 14:27:05'),
(46, 'Home Decor', 8, 'Home-Decor-DxZsw', 'Home Decor', NULL, '2020-11-07 14:27:40', '2020-11-07 14:27:40'),
(47, 'Garden & Outdoors', 8, 'Garden--Outdoors-e3DMJ', 'Garden & Outdoors', NULL, '2020-11-07 14:28:09', '2020-11-07 14:28:09'),
(48, 'Home storage & organisation', 8, 'Home-storage--organisation-x6FJE', 'Home storage & organisation', NULL, '2020-11-07 14:29:04', '2020-11-07 14:29:04'),
(49, 'Indoor Lighting', 8, 'Indoor-Lighting-CudUp', 'Indoor Lighting', NULL, '2020-11-07 14:29:32', '2020-11-07 14:29:32'),
(50, 'Tools & Home Improvement', 8, 'Tools--Home-Improvement-tt4Ah', 'Tools & Home Improvement', NULL, '2020-11-07 14:30:29', '2020-11-07 14:30:29'),
(51, 'All Home & Kitchen', 8, 'All-Home--Kitchen-sEoxF', 'All Home & Kitchen', NULL, '2020-11-07 14:31:06', '2020-11-07 14:31:06'),
(52, 'Pet Supplies', 8, 'Pet-Supplies-rrEaT', 'Pet Supplies', NULL, '2020-11-07 14:31:43', '2020-11-07 14:31:43'),
(53, 'Kitchen Appliances', 8, 'Kitchen-Appliances-0pJYH', 'Kitchen Appliances', NULL, '2020-11-07 14:32:14', '2020-11-07 14:32:14'),
(54, 'Home Appliances', 8, 'Home-Appliances-KPVQ4', 'Home Appliances', NULL, '2020-11-07 14:32:40', '2020-11-07 14:32:40'),
(55, 'Art & Craft Supplies', 8, 'Art--Craft-Supplies-9G6r4', 'Art & Craft Supplies', NULL, '2020-11-07 14:33:15', '2020-11-07 14:33:15'),
(56, 'Cocking Essentials', 9, 'Cocking-Essentials-nxBF9', 'Cocking Essentials', NULL, '2020-11-07 14:34:40', '2020-11-07 14:34:40'),
(57, 'Packaged Foods', 9, 'Packaged-Foods-ArxHB', 'Packaged Foods', NULL, '2020-11-07 14:35:11', '2020-11-07 14:35:11'),
(58, 'Gourmet Foods', 9, 'Gourmet-Foods-r7KCX', 'Gourmet Foods', NULL, '2020-11-07 14:35:48', '2020-11-07 14:35:48'),
(59, 'Household Supplies', 9, 'Household-Supplies-MXffe', 'Household Supplies', NULL, '2020-11-07 14:36:25', '2020-11-07 14:36:25'),
(60, 'All Groceries', 9, 'All-Groceries-RuC1y', 'All Groceries', NULL, '2020-11-07 14:36:53', '2020-11-07 14:36:53'),
(61, 'Beauty & Grooming', 7, 'Beauty--Grooming-AFeGL', 'Beauty & Grooming', NULL, '2020-11-07 14:37:53', '2020-11-07 14:37:53'),
(62, 'Luxury Beauty', 7, 'Luxury-Beauty-etYbC', 'Luxury Beauty', NULL, '2020-11-07 14:38:27', '2020-11-07 14:38:27'),
(63, 'Women\'s Styling Devices', 7, 'Womens-Styling-Devices-Oaeke', 'Women\'s Styling Devices', NULL, '2020-11-07 14:39:04', '2020-11-07 14:39:04'),
(64, 'Men\'s Grooming Devices', 7, 'Mens-Styling-Devices-LlqzV', 'Men\'s Grooming Devices', NULL, '2020-11-07 14:39:25', '2020-11-07 14:41:18'),
(65, 'Health & Personal Care', 7, 'Health--Personal-Care-03ufz', 'Health & Personal Care', NULL, '2020-11-07 14:40:01', '2020-11-07 14:40:01'),
(66, 'Healthcare Devices', 7, 'Healthcare-Devices-LgwAK', 'Healthcare Devices', NULL, '2020-11-07 14:40:39', '2020-11-07 14:40:39'),
(67, 'All Sports, Fitness & Outdoors', 11, 'All-Sports-Fitness--Outdoors-zj60w', 'All Sports, Fitness & Outdoors', NULL, '2020-11-07 14:42:44', '2020-11-07 14:42:44'),
(68, 'Exercise & Fitness', 11, 'Exercise--Fitness-CKczB', 'Exercise & Fitness', NULL, '2020-11-07 14:43:14', '2020-11-07 14:43:14'),
(69, 'Cycling', 11, 'Cycling-cFMK8', 'Cycling', NULL, '2020-11-07 14:43:41', '2020-11-07 14:43:41'),
(70, 'Badminton', 11, 'Badminton-OIbP1', 'Badminton', NULL, '2020-11-07 14:44:01', '2020-11-07 14:44:01'),
(71, 'Cricket', 11, 'Cricket-haWEO', 'Cricket', NULL, '2020-11-07 14:44:25', '2020-11-07 14:44:25'),
(72, 'Football', 11, 'Football-6bfjY', 'Football', NULL, '2020-11-07 14:44:42', '2020-11-07 14:44:42'),
(73, 'Backpacks', 10, 'Backpacks-JS0lL', 'Backpacks', NULL, '2020-11-07 14:45:20', '2020-11-07 14:45:20'),
(74, 'Travel Luggage', 10, 'Travel-Luggages-ijLMU', 'Travel Luggage', NULL, '2020-11-07 14:45:44', '2020-11-07 14:46:06'),
(75, 'Travel Accessories', 10, 'Travel-Accessories-TNMwe', 'Travel Accessories', NULL, '2020-11-07 14:46:40', '2020-11-07 14:46:40'),
(76, 'Bags, Wallets & Luggage', 10, 'Bags-Wallets--Luggage-SzJad', 'Bags, Wallets & Luggage', NULL, '2020-11-07 14:47:13', '2020-11-07 14:47:13'),
(77, 'Toys & Games', 13, 'Toys--Games-0NNU4', 'Toys & Games', NULL, '2020-11-07 14:48:05', '2020-11-07 14:48:05'),
(78, 'Newborn Baby Products', 13, 'Newborn-Baby-Products-9hWY2', 'Newborn Baby Products', NULL, '2020-11-07 14:48:32', '2020-11-07 14:48:32'),
(79, 'Premium Baby Products', 13, 'Premium-Baby-Products-XYZlI', 'Premium Baby Products', NULL, '2020-11-07 14:49:00', '2020-11-07 14:49:00'),
(80, 'Kids Clothing', 13, 'Kids-Clothing-dCvbO', 'Kids Clothing', NULL, '2020-11-07 14:49:40', '2020-11-07 14:49:40'),
(81, 'Baby Clothing', 13, 'Baby-Clothing-GF3fs', 'Baby Clothing', NULL, '2020-11-07 14:50:03', '2020-11-07 14:50:03'),
(82, 'Kids Footwear', 13, 'Kids-Footwear-5VW7U', 'Kids Footwear', NULL, '2020-11-07 14:50:31', '2020-11-07 14:50:31'),
(83, 'Schoolbags', 13, 'Schoolbags-hAVMV', 'Schoolbags', NULL, '2020-11-07 14:50:59', '2020-11-07 14:50:59'),
(84, 'Diapers', 13, 'Diapers-Lkus9', 'Diapers', NULL, '2020-11-07 14:51:32', '2020-11-07 14:51:32'),
(85, 'Baby Foods', 13, 'Baby-Foods-jxRKO', 'Baby Foods', NULL, '2020-11-07 14:51:51', '2020-11-07 14:51:51'),
(86, 'Motorbike Accessories & Parts', 12, 'Motorbike-Accessories--Parts-EANZZ', 'Motorbike Accessories & Parts', NULL, '2020-11-07 14:52:48', '2020-11-07 14:52:48'),
(87, 'Car Accessories', 12, 'Car-Accessories-knzgw', 'Car Accessories', NULL, '2020-11-07 14:53:21', '2020-11-07 14:53:21'),
(88, 'Handloom & Handicrafts', 14, 'Handloom--Handicrafts-5AS5d', 'Handloom & Handicrafts', NULL, '2020-11-07 14:54:36', '2020-11-07 14:54:36'),
(89, 'All Collectibles', 14, 'All-Collectibles-pJWXu', 'All Collectibles', NULL, '2020-11-07 14:55:13', '2020-11-07 14:55:13'),
(90, 'Dry Foods', 9, 'Dry-Foods-Rtk3i', 'Dry Foods', NULL, '2020-11-07 15:05:33', '2020-11-07 15:05:33'),
(91, 'Winter wear', 5, 'Winter-wear-20Lst', 'Winter wear', NULL, '2020-12-23 16:13:17', '2020-12-23 16:13:17'),
(92, 'Winter wear', 6, 'Winter-wear-Lnkzo', 'Winter wear', NULL, '2020-12-23 16:13:40', '2020-12-23 16:13:40'),
(93, 'Winter wear', 13, 'Winter-wear-mOat1', 'Winter wear', NULL, '2020-12-23 16:14:01', '2020-12-23 16:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `sub_category_id`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(18, 9, 'Global', 'Global-uejZK', 'Mobile', 'dsddsd', '2020-11-08 06:36:41', '2020-11-08 06:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `client_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `code`, `user_id`, `subject`, `details`, `files`, `status`, `viewed`, `client_viewed`, `created_at`, `updated_at`) VALUES
(1, 10000015, 55, 'Need to return the product', '<p>Hi Team,</p><p><br></p><p>I am sending email stating that I want to return my purchase..My order ID is - 8417. I have ordered Blue Organza saaree and I have received one yellow and green cheap saaree. I want to return it asap.</p><p>I have sent so many mails for return but I haven\'t received any revert.</p><p>Thanks,</p><p>Arnavi Chauhan</p><p>7320023316</p><p><br></p>', NULL, 'pending', 0, 1, '2021-05-31 04:22:45', '2021-05-31 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket_replies`
--

INSERT INTO `ticket_replies` (`id`, `ticket_id`, `user_id`, `reply`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 55, 'What about my request??&nbsp;', NULL, '2021-05-31 04:23:20', '2021-05-31 04:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(8, NULL, NULL, 'customer', 'Mr. Customer', 'customer@example.com', '2018-12-11 18:00:00', '978775', NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', '9ndcz5o7xgnuxctJIbvUQcP41QKmgnWCc7JDSnWdHOvipOP2AijpamCNafEe', 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', 'uploads/ucQhvfz4EQXNeTbN8Eif0Cpq5LnOwvg8t7qKNKVs.jpeg', 'Demo address', 'US', 'Demo city', '1234', NULL, 0.00, 0, '8zJTyXTlTT', NULL, NULL, '2018-10-07 04:42:57', '2021-05-21 14:39:49'),
(9, NULL, NULL, 'admin', 'buybazar', 'cseshahed@gmail.com', '2020-11-02 13:11:08', NULL, NULL, '$2y$10$pM69FCisk8iuDviIMfmfyegqlwTaOdhLN/VjivEa3cwkGDCpA9xWS', 'IB9iwmVR8hxgRlPZs1p63oVeGcpwZwR4XJYsrv7JAGOBvhl8pYAxBBadhQHl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-02 13:00:08', '2020-11-12 20:10:32'),
(10, NULL, NULL, 'staff', 'admin', 'admin@buybazar.com.bd', NULL, NULL, NULL, '$2y$10$CIBE2N/jP4OSdIWL3yh/eOrYp2J0J/LlwlGofhpC8AONqWANyYlhy', 'c7q9uTZ93K6zcgpewIaXnVE4S6MZBhTLczBlwmYKmSlQ4hQEoNhGq0ql45bu', NULL, 'uploads/avatar/9qOi5i1v4P8tI145DYDAGVEovgmS6kkICdeNzlrn.png', NULL, NULL, NULL, NULL, '01728525589', 0.00, 0, NULL, NULL, 0, '2020-11-03 08:10:21', '2020-11-05 17:13:38'),
(11, NULL, NULL, 'customer', 'shahed', 'shahed2@gmail.com', '2020-11-03 08:11:21', NULL, NULL, '$2y$10$Q44Xet3KfKBFElMtVFsOd.bozNZi2CBslHcqRzg39ZtT5t2.yznAS', NULL, NULL, 'uploads/users/uaeAapfq6Nrr4Q2vKVEY0QXBHG1zzWS53phSdFjp.jpeg', NULL, NULL, NULL, NULL, '01934884990', 0.00, 0, NULL, NULL, 0, '2020-11-03 08:44:21', '2020-11-03 08:45:58'),
(12, NULL, NULL, 'seller', 'Grab It', 'bdgrabit@gmail.com', '2020-11-05 16:11:33', NULL, NULL, '$2y$10$ORIgSjmELQ146.5eyftuHe6fwa91y9Gf64fPIdPoN0Qj0e85Nm01a', '4VvQSRr3IDgjrl4tE1NJscmZ6WUrqhNAvA3ifxnk5xYWbTA60lV2szFULQqG', NULL, 'uploads/nVE31eP9J7gjhOaef1oFgaH1uSO9crlBEhPeeZHS.png', NULL, NULL, NULL, NULL, '01916946459', 0.00, 0, NULL, NULL, 0, '2020-11-05 16:56:33', '2020-11-06 11:51:34'),
(13, NULL, NULL, 'customer', 'Md. Imdadul Haque', 'milon16893@gmail.com', '2020-11-05 17:11:40', NULL, NULL, '$2y$10$vravCz1WEvAh43mkvl5j0ucrcVeuR2j/8ajz2vXO8VRq59I3ysJra', 'WvnpyPOruQCTdQi3dAsxzYLHovTmPIITfmn78CB7gBHS58F6YJdnp7xsx9vl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-05 17:19:40', '2020-11-05 17:19:40'),
(14, NULL, NULL, 'seller', 'Ayat Food Hub', 'suvon2002@gmail.com', '2020-11-06 03:11:15', NULL, NULL, '$2y$10$9rBf3luIfbeArpDWusR3n.tuvsBn4ZGfu8VVTXw4qj1MdPUNAaheC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-06 03:22:15', '2020-11-06 03:22:15'),
(15, NULL, NULL, 'seller', 'Birgonj Online market', 'azizulbabubd@gmail.com', '2020-11-09 08:11:38', NULL, NULL, '$2y$10$/EgKhibl2/S/Zc88OTQEZumk6CmSKJOG0ekbsHXTCfqTCySmKlldu', 'L3R4kWiAdrxgtThtcI0KwuMoSwjMaOObK0VvHYb0NSTwJrhbNni5KzriYy35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-09 08:09:38', '2020-11-09 08:09:38'),
(16, NULL, NULL, 'seller', 'EG-Buy', 'nomhh87@gmail.com', '2020-11-10 11:11:40', NULL, NULL, '$2y$10$aGXunFUmLIWZL0K68XY1z.EXG.CpJLbBFErdTy/U4XNNNifqnfUVG', 'MQvirdCf4bWgUnsT3M4BOWnHf0NIbOqSSmzbKuYwhS83TQ4fg8emt6VlZDJl', NULL, 'uploads/YHGvwMLLHPG31JQdKzSjJ48UenDrKauoufpINxoa.png', NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-10 11:19:40', '2020-11-10 11:23:32'),
(17, NULL, NULL, 'seller', 'Urban vogue', 'omar.sub85@gmail.com', '2020-11-11 08:11:10', NULL, NULL, '$2y$10$Fubxq6Ec2vsQgfU4LXPKwu1EDggmdGPMc1LcXLqyb6cLmNOdBUggi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-11 08:59:10', '2020-11-11 08:59:10'),
(18, NULL, NULL, 'seller', 'ANISHA INTERNATIONAL', 'mdmasumbakaul@gmail.com', '2020-11-11 15:11:00', NULL, NULL, '$2y$10$vkDrhu6a2gZFSwRYayjSseo8f4E0eD/Gm.vaOlflkyJzK3ZqrMwIW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-11 15:01:00', '2020-11-11 15:01:00'),
(23, NULL, NULL, 'seller', 'Maksudur Rahman', 'maksud_mr60@yahoo.com', '2020-11-19 15:11:22', NULL, NULL, '$2y$10$FmxoGqQ7uLJa.JGmA6VoWeWNVYsQO01pqPAtQ4jxwyakB6oZj5Zbu', 'qHVXCJSqEkp6e42CYbXw1RwNsPWhhim8hWJpamGsUVZ0drZ2LzUYxEiWgRtk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-11-19 15:44:22', '2020-11-19 15:44:22'),
(27, NULL, NULL, 'seller', 'Taslima Rahman', 'zannats@gmail.com', '2020-12-12 20:12:42', NULL, NULL, '$2y$10$1f91TBxeL75kaQx/DQYCCumEqr5yq4h644o0t7EOg0hHDtOZYQ8Lu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01917895327', 0.00, 0, NULL, NULL, 0, '2020-12-12 20:02:42', '2020-12-12 20:02:42'),
(28, NULL, '3751854224931765', 'customer', 'Mayabi Mahazabin', 'mahazabin_islam@yahoo.com', '2020-12-16 08:12:53', NULL, NULL, NULL, '8SinTMvtxniPu8eQ1bnPsclQcNoSWEWEnZpVGJgjm97018kZsiExfELjPQwV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-12-16 08:21:53', '2020-12-16 08:21:53'),
(29, NULL, NULL, 'customer', 'Farhad', 'farhadzamil27@gmail.com', '2020-12-19 19:12:37', NULL, NULL, '$2y$10$pOgQSviyUpE3qJs4XJVZGekI3YzZA089v3q3Qh18DQfK15KuxGDnm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-12-19 19:01:37', '2020-12-19 19:01:37'),
(30, NULL, '1636527709852253', 'customer', 'Höşşąịń Ŝåðįå Qųàđřị', 'cutiepiekashfia@gmail.com', '2020-12-21 13:12:47', NULL, NULL, NULL, '1B4Yn65M7qVew2HhFhpHbSG6AE63hBUdyughn8KOIFH0ngcClYTLoq2joG51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-12-21 13:14:47', '2020-12-21 13:14:47'),
(31, NULL, '106469498030874', 'customer', 'Buy Bazar', 'buybazarbd@gmail.com', '2020-12-23 11:12:27', NULL, NULL, NULL, 'owSlKmIgJzzOzQf0W9NLHCRRac1BHzYhPMiKMgWqDMe2i7WNJDxysQSzryhS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2020-12-23 11:08:27', '2020-12-23 11:08:27'),
(33, NULL, '2546345545664077', 'customer', 'Ojana Pothik', 'shahedshikder4@gmail.com', '2021-01-05 14:01:52', NULL, NULL, NULL, 'yR7ug8WI5WZhZ4FiBcgksmaFHPbyBtGD6v6133su6aWq29OeyL9T5Ckw3Rgq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-05 14:58:52', '2021-01-05 14:58:52'),
(34, NULL, '211910483893404', 'customer', 'Ridwana Haque', 'haqueridwana@gmail.com', '2021-01-05 15:01:46', NULL, NULL, NULL, 'atseHEKtXpfDQSFymSpzCnUcjSWxDuWz2hD583quSHodF1VGMJxhzF0BX6fW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-05 15:49:46', '2021-01-05 15:49:46'),
(35, NULL, NULL, 'customer', 'bilton', 'bilton@gmail.com', '2021-01-08 06:01:24', NULL, NULL, '$2y$10$dmGJuyPAqEII1C1SUYgq6ePcJRjUsc9f2E7pzp6g/xWfBF5671kRC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-08 06:02:24', '2021-01-08 06:02:24'),
(36, NULL, NULL, 'seller', 'মেঘলার সপ্ন', 'sarahmehjabin1234@gmail.com', '2021-01-08 10:01:24', NULL, NULL, '$2y$10$Jls0qLbwutcK13LUxwYL9uxQVIk0aDpOGFgh7d6Aopy08NNK2yjCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-08 10:45:24', '2021-01-08 10:45:24'),
(37, NULL, NULL, 'seller', 'Ishmam Fashion& Fabrics', NULL, '2021-01-15 12:01:11', NULL, NULL, '$2y$10$6u7CPaG9eDxlDMVhqObZv.WH77IOvJH.8QHX74rPx4ioWu5bNLoj.', '5z7GdFHzqapHWocanlqz2rhTq7PFjZmJXIqK1BmGR3DAvyFNl3yYYckEd7xs', NULL, NULL, NULL, NULL, NULL, NULL, '01572467686', 0.00, 0, NULL, NULL, 0, '2021-01-15 12:53:11', '2021-01-15 12:53:11'),
(38, NULL, NULL, 'seller', 'Rod megha', 'jshiduli@yahoo.com', '2021-01-15 13:01:52', NULL, NULL, '$2y$10$DJ2cHFVZThhlieZ5h1azGuOBO19ObbNntaXVPz.7zyedgPyjPNZwm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02628961210', 0.00, 0, NULL, NULL, 0, '2021-01-15 13:32:52', '2021-01-15 13:32:52'),
(39, NULL, NULL, 'customer', 'Ayon Ahmad', 'ayona028@gmail.com', '2021-01-17 05:01:00', NULL, NULL, '$2y$10$YVKp7SZaEHdd5Adh5boz/eBhUsaNKo/yE1nbPS9shAoRxzf9exDfa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-17 05:50:00', '2021-01-17 05:50:00'),
(40, NULL, NULL, 'seller', 'Jig jag outwears', 'Ishtiakrafid2@gmail', '2021-01-19 08:01:44', NULL, NULL, '$2y$10$urFobm540wT4iks5oLzc/uZdDb9ouosk/6OGDLUIN3/M5iWeBHmmu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01643000604', 0.00, 0, NULL, NULL, 0, '2021-01-19 08:34:44', '2021-01-19 08:34:44'),
(41, NULL, '851212109051839', 'customer', 'Ishtiaq Rafid', 'istiaq.rafid@gmail.com', '2021-01-19 12:01:40', NULL, NULL, NULL, 'MZucBL3YdpP9KOVt4bRTKdof9IFeziCTxNlEyRCKu4MqVPzmK0dccxgXkk8K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-01-19 12:06:40', '2021-01-19 12:06:40'),
(42, NULL, NULL, 'seller', 'Sister\'s Collection-BD', 'salehajir87@gmail.com', '2021-01-25 07:01:20', NULL, NULL, '$2y$10$68TEWKw9KYxjhZ5B3ANI4u3wbVc.RPhCjjRoxIgFvqjvGOoPBWMjC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01756018279', 0.00, 0, NULL, NULL, 0, '2021-01-25 07:50:47', '2021-01-25 07:57:20'),
(43, NULL, NULL, 'customer', 'Roopa', 'roopardweepa193@gmail.com', '2021-04-25 10:04:39', NULL, NULL, '$2y$10$KomN1cocDUbVbkNCNO1FuODE41VtBNw8sZxChVXIQHeGtijyvZ506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-04-25 10:44:39', '2021-04-25 10:44:39'),
(44, NULL, NULL, 'customer', 'Sakin', 'sejansakib51@gmail.com', '2021-05-02 21:05:43', NULL, NULL, '$2y$10$yB7xJisRE7BUg.daqu79uOam86cgrflOmhAkHNqcNwn7qUezIGshq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-02 21:57:43', '2021-05-02 21:57:43'),
(45, NULL, '3905555749530151', 'customer', 'Naresh Kumar Chikine', 'nareshivision@gmail.com', '2021-05-11 06:05:41', NULL, NULL, NULL, 'i3GFpuTbW1Ds1pENL83kQ7IM9wQLVFU5dvKNkkoaA4SQ8iqYDYR1STqmgi1s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-11 06:39:41', '2021-05-11 06:39:41'),
(46, NULL, NULL, 'customer', 'Prachi pathak', 'Rajatiwari2112@gmail.com', '2021-05-17 07:05:26', NULL, NULL, '$2y$10$RRGe7KhHUk70hDmySD47KeB5gytdByj61EpMViH8D2kxyOnMDpcse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-17 07:31:26', '2021-05-17 07:31:26'),
(47, NULL, NULL, 'customer', 'Lakshmi Narayana Reddy', 'venkatasusmithaln3@gmail.com', '2021-05-21 10:05:37', NULL, NULL, '$2y$10$ZY/Lvt8g6ekXe4TnU4t0sOHbj1lmAvSAFiBXQXsqH9cHe66oJdOpm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-21 10:19:37', '2021-05-21 10:19:37'),
(48, NULL, NULL, 'customer', 'Vipin kumar', 'vipingoad@gmail.com', '2021-05-21 13:05:01', NULL, NULL, '$2y$10$pQzjKtmWBkITmAepXa.mpOFs4iIf38.u1OarHWMKALhUDM3BZCY46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-21 13:08:01', '2021-05-21 13:08:01'),
(49, NULL, NULL, 'customer', 'Rashmi Singh', 'layalhimanshu2017@gmail.com', '2021-05-21 14:05:25', NULL, NULL, '$2y$10$rUhZpjPD1aNk16zqbeehDOPLSnZhEVGlEsENTns5r.6A.niVNIkwG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-21 14:58:25', '2021-05-21 14:58:25'),
(50, NULL, NULL, 'customer', 'Rashmi Singh', 'rashmilayal18@gmail.com', '2021-05-21 15:05:51', NULL, NULL, '$2y$10$IA8FZzW2af5V6yDsKUB.3eYQIfINYg0OFBIMsF5bCYqScjzH3IM4C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9456251108', 0.00, 0, NULL, NULL, 0, '2021-05-21 15:23:51', '2021-05-21 15:24:17'),
(51, NULL, '2842616566067492', 'customer', 'Sravani Mandava', 'sravanimandava1991@gmail.com', '2021-05-23 05:05:22', NULL, NULL, NULL, 'j5BevgFMhuxtlEk41o764u4uqUgN122RC0RufccGqqcAsTyvwmQ2TqLJb5MW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-23 05:55:22', '2021-05-23 05:55:22'),
(52, NULL, '3973626669399020', 'customer', 'Tejashree Nare', 'tejashreenare@gmail.com', '2021-05-23 11:05:41', NULL, NULL, NULL, '00xubK1Xq3piHb58L6y8K5KZSpIdsEyg2Z0hVTyPEiWkWVLuXHTDyWiNcuIb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-23 11:06:41', '2021-05-23 11:06:41'),
(53, NULL, '3920178658094984', 'customer', 'Surbhi Mishra', 'mishra.surbhi93@gmail.com', '2021-05-23 12:05:49', NULL, NULL, NULL, 'QFrYq3ctd7UjW7oQ0i5GEkO3Nni2Z5XJwY5SZ7wocwAHLPBlCE1xrsuzPob1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-23 12:41:49', '2021-05-23 12:41:49'),
(54, NULL, NULL, 'customer', 'Chandini', 'sammerahmed2001@gmail.com', '2021-05-24 12:05:07', NULL, NULL, '$2y$10$swQ0QhI/cVEZTqacUsQS8epjLO6TpwJhd1xq2DXBb6FOLPD5Mj.Yy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-24 12:05:07', '2021-05-24 12:05:07'),
(55, NULL, NULL, 'customer', 'Arnavi Chauhan', 'arnavi2203chauhan@gmail.com', '2021-05-27 18:05:32', NULL, NULL, '$2y$10$x.NTRC4/t8y/XXV2JAexQuLxRpdx/3rfWw3s5S1k2E2.WCk3.Hu9m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-05-27 18:03:32', '2021-05-27 18:03:32'),
(56, NULL, NULL, 'customer', 'Donaldnix', 'apchromdistobi@mail.com', '2021-06-22 08:06:43', NULL, NULL, '$2y$10$WP1cDr5JWfZ6PTy17Lb1aektM.5o4tD0omFT7grl8KIrtYpbKmySC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-22 08:01:43', '2021-06-22 08:01:43'),
(57, NULL, NULL, 'customer', 'JimmyKnibe', 'epmeypranafin@mail.com', '2021-06-22 16:06:47', NULL, NULL, '$2y$10$xuOypT6H6cvMuut559VFIu7XzXrJm7ga7IoS5ippMqtypW/Q.lIwO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-22 16:03:47', '2021-06-22 16:03:47'),
(58, NULL, NULL, 'customer', 'WilliamRiz', 'ofconfootiti@mail.com', '2021-06-22 16:06:42', NULL, NULL, '$2y$10$t.yP0h0RzYiYbpbMSBNlwucDbRqo.NkHUU3rdiEXdWUDtGjFwTU.e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-22 16:37:42', '2021-06-22 16:37:42'),
(59, NULL, NULL, 'customer', 'DoyleMuh', 'dosphighssiscentma@mail.com', '2021-06-24 08:06:50', NULL, NULL, '$2y$10$B/zKqe/ObeLxthG1IAGDgexvcc0RhVF4LtAtbM3smCqENqmZE4bnW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-06-24 08:21:50', '2021-06-24 08:21:50'),
(60, NULL, NULL, 'customer', 'MamesPah', 'kuahtuf@yandex.com', '2021-08-06 00:08:49', NULL, NULL, '$2y$10$dqwpplczWsw.nr1LEqV3PeA0QPBLPcQH640exCGiuCfCQYCTq0psK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-08-06 00:46:49', '2021-08-06 00:46:49'),
(61, NULL, NULL, 'customer', 'Rupali Bushra', 'sonali2mahmud@gmail.com', '2021-08-24 02:08:07', NULL, NULL, '$2y$10$ZIPX8ZPv.h8axnm.cKEKze0FiRO4RIt79tR/oUZzRwUsVJdCXlgzG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01746273766', 0.00, 0, NULL, NULL, 0, '2021-08-24 02:47:07', '2021-08-24 02:47:51'),
(62, NULL, NULL, 'customer', 'Fedorensuell', 'evgenyfedorov777@gmail.com', '2021-08-24 14:08:03', NULL, NULL, '$2y$10$xFKy3Zh7cyiUxMSCxwWG4Op/k7DPAfL4F65NsvMlzO7071lKPj7eC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-08-24 14:13:03', '2021-08-24 14:13:03'),
(63, NULL, NULL, 'seller', 'yournewpasswordhorienwfa https://facebook.com 8302', 'MavisBaldosrg@seznam.cz', '2021-08-27 22:08:55', NULL, NULL, '$2y$10$OCiU1adMKpQuEyoqHALBHOLh1K7JtO2O3M.CDG2rPmPe7qsa1DpvO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MavisBaldosrg@seznam', 0.00, 0, NULL, NULL, 0, '2021-08-27 22:20:55', '2021-08-27 22:20:55'),
(64, NULL, NULL, 'customer', 'Jewelkax', 'glyuknyuk@yandex.com', '2021-09-29 00:09:32', NULL, NULL, '$2y$10$MbPl517DW7Wugk.ciAikd.FEBjnEXAPtAoXx7Ib2Dsp1IgfWyeQmm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-09-29 00:56:32', '2021-09-29 00:56:32'),
(65, NULL, NULL, 'customer', 'Jeffreyhep', 'glyuknyuk@yandex.kz', '2021-10-02 16:10:30', NULL, NULL, '$2y$10$dP.7Qhjq8w/cWnI2tIgf8eCjyQxyzB50vGC4I0hu0Jqr6tB/dXuG6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-10-02 16:15:30', '2021-10-02 16:15:30'),
(66, NULL, NULL, 'seller', 'duplicates were https://www.wikipedia.org', 'elpidazuenkova1990@mail.ru', '2021-10-22 19:10:14', NULL, NULL, '$2y$10$MviYYYThHlOcJP.0bhHmkeUerycaGCmvnZB6zrnA60iSrIruD3fxS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'duplicates were http', 0.00, 0, NULL, NULL, 0, '2021-10-22 19:40:14', '2021-10-22 19:40:14'),
(67, NULL, NULL, 'seller', 'duplicates were https://wikipedia.org', 'blaginyhpittman@mail.ru', '2021-10-23 01:10:44', NULL, NULL, '$2y$10$LB/89a.8psWukujZ.J2nsOgwgS12yyVYWAPJP3nCRqGdxS0NjkXee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'duplicates were http', 0.00, 0, NULL, NULL, 0, '2021-10-23 01:49:44', '2021-10-23 01:49:44'),
(68, NULL, NULL, 'customer', 'two3thstreetFiFTYTHReE', 'business.22@stsbet.life', '2022-05-06 22:05:50', NULL, NULL, '$2y$10$RAqkv.n7xDAGT1vzVjKYOOcOEpyQznU6GHuYuTrcvgIZq0vMPcpaG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2022-05-06 22:22:50', '2022-05-06 22:22:50'),
(69, NULL, NULL, 'customer', 'Byronhed', 'bank1905@filmkachat.ru', '2022-06-01 12:06:13', NULL, NULL, '$2y$10$Y5.bDalBT85B1JqGH5OOiOthUpEdbnGdJyRrKfvHpyYFbRqhiZa9m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2022-06-01 12:52:13', '2022-06-01 12:52:13'),
(70, NULL, NULL, 'customer', 'Sakib', 'sakibmris@gmail.com', '2022-08-07 09:08:52', NULL, NULL, '$2y$10$NYEmlschAo053zAlCIDVIu920pEKkyVZ5eZs116hHi4c1rT7wpGCe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2022-08-07 09:42:52', '2022-08-07 09:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 15, 7, '2020-11-09 08:15:05', '2020-11-09 08:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_id` (`sub_category_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
