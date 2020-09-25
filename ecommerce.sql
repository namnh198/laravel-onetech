-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 08:48 AM
-- Server version: 5.5.32
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '123456789', 'admin@gmail.com', NULL, '$2y$10$ponFE9YSBCU/4oTxfJMQZOEjwg4QwBTAYNbzAUb84NeqVtnzOXDU6', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2020-01-04 12:28:45'),
(4, 'khan1', '1111111222', 'cadmin@gmail.com', NULL, '$2y$10$4TaHSh5M4q8kI2o6PKmjf.Vob9txuqPWsRk/jUEfdMR0MRDy9Leiu', NULL, '1', '1', NULL, '1', NULL, '1', '1', NULL, '1', NULL, NULL, NULL, '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(4, 'Sony', 'media/brand/190120_20_53_24.png', NULL, NULL),
(5, 'Rado', 'media/brand/190120_20_35_25.png', NULL, NULL),
(6, 'Lenovo', 'media/brand/190120_20_56_25.png', NULL, NULL),
(7, 'Assus', 'media/brand/190120_20_11_26.png', NULL, NULL),
(8, 'Cannon', 'media/brand/190120_20_21_26.png', NULL, NULL),
(9, 'Dell', 'media/brand/190120_20_38_26.png', NULL, NULL),
(10, 'Gucci', 'media/brand/190120_20_53_26.png', NULL, NULL),
(11, 'Levis', 'media/brand/190120_20_05_27.png', NULL, NULL),
(12, 'Nike', 'media/brand/190120_20_17_27.png', NULL, NULL),
(13, 'Adidas', 'media/brand/190120_20_33_27.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(12, 'Mens Fashion', '2020-01-19 14:16:15', '2020-01-19 14:16:15'),
(13, 'Womens Fashion', '2020-01-19 14:16:27', '2020-01-19 14:16:27'),
(14, 'Childs', '2020-01-19 14:16:37', '2020-01-19 14:16:37'),
(15, 'Watch', '2020-01-19 14:16:48', '2020-01-19 14:16:48'),
(16, 'Furniture', '2020-01-19 14:16:58', '2020-01-19 14:16:58'),
(17, 'Electronics', '2020-01-19 14:17:30', '2020-01-19 14:17:30'),
(18, 'Health', '2020-01-19 14:17:42', '2020-01-19 14:17:42'),
(19, 'Beauty', '2020-01-19 14:17:52', '2020-01-19 14:17:52'),
(20, 'Sports & Outdoor', '2020-01-19 14:18:01', '2020-01-19 14:18:01'),
(21, 'Home & Living', '2020-01-19 14:18:15', '2020-01-19 14:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'this is the test message', NULL, NULL),
(2, 'Khan', '9239827392`', 'khan@gmil.com', 'ahsdkfsadf ashdkjfhkasd hkas\r\na fkasd hfkashdfkas', NULL, NULL),
(3, 'Kazi', '293879238`', 'kazi@gmail.com', 'HI i need some infromation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'UDEMYUPDATE', '55', NULL, NULL),
(3, 'EASY', '12', NULL, NULL),
(4, 'TEST', '55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_01_04_184258_create_categories_table', 2),
(6, '2020_01_04_184506_create_subcategories_table', 2),
(7, '2020_01_04_184544_create_brands_table', 2),
(8, '2020_01_09_211343_create_coupons_table', 3),
(9, '2020_01_09_222125_create_newslaters_table', 4),
(10, '2020_01_11_192542_create_products_table', 5),
(11, '2020_01_17_192520_create_post_category_table', 6),
(12, '2020_01_17_192619_create_posts_table', 6),
(13, '2020_01_24_192923_create_wishlists_table', 7),
(14, '2020_02_01_193132_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2020_02_06_192506_create_orders_table', 10),
(21, '2020_02_06_192627_create_orders_details_table', 10),
(22, '2020_02_06_192704_create_shipping_table', 10),
(23, '2020_02_11_195424_create_seo_table', 11),
(24, '2020_02_15_195532_create_sitesetting_table', 12),
(25, '2020_02_20_191513_create_contact_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'it@asiahotel.com.bd', '2020-01-09 22:56:48', NULL),
(2, 'info@bajikor.com', '2020-01-09 22:57:56', NULL),
(3, 'admin@blog.com', '2020-01-09 22:58:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, NULL, 'Laravel Personal Access Client', 'YsTOBdBJGrnS1EJpmhsQivXouyuFhDxIBeoEwJWF', 'http://localhost', 1, 0, 0, '2020-02-04 13:02:43', '2020-02-04 13:02:43'),
(2, NULL, 'Laravel Password Grant Client', 'pJ5V9FuM0OuvrMO4wwN99XjCPlBvwBy0FwygbehB', 'http://localhost', 0, 1, 0, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(1, '3', 'stripe', 'card_1G9I0AJuNbLRtaN7VZlzvlOv', '31500', 'txn_1G9I0CJuNbLRtaN7TdYFeT3E', '5e3c868f6a513', '300.00', '10', '5', '315', '4', '0', 'February', '06-02-20', '2020', '12345', NULL, NULL),
(2, '3', 'stripe', 'card_1G9IThJuNbLRtaN7I0mOGhJj', '51500', 'txn_1G9ITiJuNbLRtaN7KQ1NjDaD', '5e3c8db5d81e7', '500.00', '10', '5', '515', '3', '0', 'February', '06-02-20', '2020', '234234', NULL, NULL),
(3, '3', 'stripe', 'card_1G9IWwJuNbLRtaN7lSz66PVD', '173700', 'txn_1G9IWyJuNbLRtaN7a6ekWtPv', '5e3c8e7f98130', '1710', '10', '5', '1737', '3', '2', 'February', '06-02-20', '2020', '2342345', NULL, NULL),
(4, '3', 'stripe', 'card_1GBPupJuNbLRtaN77hLOqaYd', '51500', 'txn_1GBPurJuNbLRtaN7BKIY6KT8', '5e444353b9ffa', '500.00', '10', '5', '515', '3', '0', 'February', '12-02-20', '2020', '673905', NULL, NULL),
(5, '3', 'stripe', 'card_1GC9CsJuNbLRtaN7bsqRNDbj', '51500', 'txn_1GC9CuJuNbLRtaN7Dh6JuRCz', '5e46eb677f024', '500.00', '10', '5', '515', '3', '2', 'February', '14-02-20', '2020', '886198', NULL, NULL),
(6, '3', 'stripe', 'card_1GF3WBJuNbLRtaN7CkDgGvLU', '51500', 'txn_1GF3WEJuNbLRtaN7Yj7YVasQ', '5e517ee34b259', '500.00', '10', '5', '515', '0', '0', 'February', '22-02-20', '2020', '293282', NULL, NULL),
(7, '3', 'stripe', 'card_1GF4VuJuNbLRtaN7vED8k9wv', '101500', 'txn_1GF4VvJuNbLRtaN7blKPkSj8', '5e518dd4d8195', '1000.00', '10', '5', '1015', '2', '0', 'February', '22-02-20', '2020', '787050', NULL, NULL),
(8, '3', 'stripe', 'card_1GNPRpJuNbLRtaN7NkCM61OA', '101500', 'txn_1GNPRrJuNbLRtaN7wqCSdx0q', '5e6fdfec78182', '988', '10', '5', '1015', '3', '1', 'March', '16-03-20', '2020', '718714', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 1, '22', 'BS9094-5 Analogue-Digital', 's', 's', '1', '300', '300', NULL, NULL),
(2, 2, '24', 'Gmarks -1384 Army Sports', 's', 's', '1', '500', '500', NULL, NULL),
(3, 3, '25', 'LCS-4116 CROCO STRAP', 'ss', 's', '1', '500', '500', NULL, NULL),
(4, 3, '23', 'skm-1155-Blue Skmei', 's', 's', '1', '1222', '1222', NULL, NULL),
(5, 4, '25', 'LCS-4116 CROCO STRAP', 'ss', 's', '1', '500', '500', NULL, NULL),
(6, 5, '24', 'Gmarks -1384 Army Sports', 's', 's', '1', '500', '500', NULL, NULL),
(7, 6, '25', 'LCS-4116 CROCO STRAP', 'ss', 's', '1', '500', '500', NULL, NULL),
(8, 7, '25', 'LCS-4116 CROCO STRAP', 'ss', 's', '2', '500', '1000', NULL, NULL),
(9, 8, '25', 'LCS-4116 CROCO STRAP', 'ss', 's', '2', '500', '1000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_in`, `post_image`, `details_en`, `details_in`, `created_at`, `updated_at`) VALUES
(1, 2, '22SPI’s Epic Guide to Affiliate Marketing', '22संबद्ध विपणन के लिए SPI की एपिक गाइड', 'media/post/1657453489783170.png', '<div>111Affiliate marketing is the process of earning a commission by promoting another company\'s product (or service). You find a product, promote it to others, and earn a piece of the profit for each sale that you make.</div><div><br></div><div>In other words, when you help another company generate sales, you get a cut!</div><div><br></div><div>The best part is that you don’t have to spend the time and money to create your own products, because someone else has already done the hard work. You can begin making money as an affiliate as soon as you have a place to recommend products, whether that\'s a website you have, a podcast, or even on social media.</div><div><br></div><div>So, all you have to do is send traffic through a link to that product, and everything after that is out of your hands . . . right?</div>', '<div>11संबद्ध विपणन किसी अन्य कंपनी के उत्पाद (या सेवा) को बढ़ावा देकर कमीशन अर्जित करने की प्रक्रिया है। आप एक उत्पाद पाते हैं, इसे दूसरों को बढ़ावा देते हैं, और आपके द्वारा किए गए प्रत्येक बिक्री के लिए लाभ का एक टुकड़ा कमाते हैं।</div><div><br></div><div>दूसरे शब्दों में, जब आप किसी अन्य कंपनी को बिक्री उत्पन्न करने में मदद करते हैं, तो आपको कटौती मिलती है!</div><div><br></div><div>सबसे अच्छी बात यह है कि आपको अपना उत्पाद बनाने के लिए समय और पैसा खर्च नहीं करना पड़ता है, क्योंकि किसी और ने पहले ही कड़ी मेहनत की है। जैसे ही आपके पास उत्पादों की सिफारिश करने के लिए जगह है, चाहे वह आपके पास एक वेबसाइट हो, पॉडकास्ट हो या सोशल मीडिया पर भी आप पैसा बनाना शुरू कर सकते हैं।</div><div><br></div><div>इसलिए, आपको केवल उस उत्पाद के लिंक के माध्यम से ट्रैफ़िक भेजना है, और उसके बाद सब कुछ आपके हाथों से बाहर है। । । सही?</div>', NULL, NULL),
(2, 3, 'How Businesses Should Handle', 'कैसे व्यापार संभालना चाहिए', 'media/post/1657453376418533.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The World Health Organisation on Thursday declared the outbreak of the Wuhan coronavirus as a global emergency after more than 200 people died from the pneumonia-like illness.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Cities in China have been cordoned off, airlines have cancelled flights to and out of the country, and airports globally have started implementing thermal scanners to catch any infections early.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Till date, around 9,800 cases of a coronavirus infection have been reported, surpassing the SARS epidemic in early 2000s. The new virus - named&nbsp;<a href=\"https://www.cdc.gov/coronavirus/2019-ncov/\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">2019-nCoV</a>&nbsp;- appears to have a mortality rate of 2.2 per cent, as per a Bloomberg&nbsp;<a href=\"https://www.bloomberg.com/graphics/2020-wuhan-novel-coronavirus-outbreak/\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">report</a>, and from statistics based on national data from Jan. 20 onwards. However, the report added that it’s still too early to tell how deadly the outbreak will be, and notes that more people have died from it since Jan 20, than have left the hospital.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">With coronavirus still continuing to spread across the world, we’ve put together a handy guide on best practices companies and human resources departments should follow to help their employees stay healthy and infection-free.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">&nbsp;</p><h3 style=\"-webkit-font-smoothing: antialiased; font-weight: 700; line-height: 28.6px; font-size: 1.375rem; margin-top: 0.875rem; margin-right: 0px; margin-left: 0px; font-family: Roboto, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(33, 33, 33);\">Effective Communication is Key</h3><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">HR departments should pull together information pertaining to the coronavirus to create a ready-to-refer instructional guide for employees that not only educates them about the viral infection, but also enlists ways to avoid it.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The communication strategy should be multi-pronged and use all channels of communication available.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">“You are looking at bulletins, sticking posters on the wall, emails, chat groups, town hall, infographics, videos, and any mode of media that could help to effectively communicate the message to all employees,” says Adrian Tan, a veteran HR practitioner and APAC leader of PeopleStrong, an India-based Enterprise HR SaaS platform.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Information gathered should only be from credible and verified sources, such as the&nbsp;<a href=\"https://www.who.int/health-topics/coronavirus\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">page</a>, the CDC&nbsp;<a href=\"https://www.cdc.gov/coronavirus/about/symptoms.html\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">website</a>, and reputable news outlets that clearly attribute their information to either statements made by governmental agencies, or health professionals engaged in researching the virus.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Check out&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2020-01-29/coronavirus-misinformation-is-incubating-all-over-social-media\" rel=\"follow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">this Bloomberg story</a>&nbsp;that busts some myths and highlights false information about coronavirus making the rounds online.</p>', '<div>विश्व स्वास्थ्य संगठन ने गुरुवार को निमोनिया जैसी बीमारी से 200 से अधिक लोगों की मौत के बाद वुहान कोरोनवायरस के प्रकोप को वैश्विक आपातकाल घोषित कर दिया।</div><div><br></div><div>चीन के शहरों को बंद कर दिया गया है, एयरलाइंस ने देश के बाहर और बाहर जाने वाली उड़ानों को रद्द कर दिया है, और विश्व स्तर पर हवाई अड्डों ने किसी भी संक्रमण को जल्दी से पकड़ने के लिए थर्मल स्कैनर लागू करना शुरू कर दिया है।</div><div><br></div><div>अब तक, 2000 के दशक की शुरुआत में SARS महामारी को पार कर, एक कोरोनवायरस संक्रमण के लगभग 9,800 मामले सामने आए हैं। ब्लूमबर्ग की रिपोर्ट के अनुसार नया वायरस - जिसका नाम 2019-nCoV है, में मृत्यु दर 2.2 प्रतिशत है, और यह 20 जनवरी के राष्ट्रीय आंकड़ों के आधार पर आँकड़ों से है। हालाँकि, रिपोर्ट में कहा गया है कि अभी भी यह बताना जल्दबाजी होगी कि प्रकोप कितना घातक होगा, और नोट करता है कि 20 जनवरी के बाद से इससे अधिक लोगों की मौत हो गई है, जबकि अस्पताल छोड़ दिया है।</div><div><br></div><div>कोरोनावायरस के साथ अभी भी दुनिया भर में फैल रहा है, हमने सर्वोत्तम प्रथाओं कंपनियों पर एक आसान मार्गदर्शिका रखी है और मानव संसाधन विभागों को अपने कर्मचारियों को स्वस्थ और संक्रमण मुक्त रहने में मदद करनी चाहिए।</div><div><br></div><div>&nbsp;</div><div><br></div><div>प्रभावी संचार कुंजी है</div><div>मानव संसाधन विभागों को कोरोनोवायरस से संबंधित जानकारी को कर्मचारियों के लिए एक तैयार-से-संदर्भित निर्देशात्मक गाइड बनाने के लिए खींचना चाहिए, जो न केवल उन्हें वायरल संक्रमण के बारे में शिक्षित करता है, बल्कि इससे बचने के तरीके भी बताता है।</div><div><br></div><div>संचार रणनीति बहुस्तरीय होनी चाहिए और उपलब्ध संचार के सभी चैनलों का उपयोग करना चाहिए।</div><div><br></div><div>\"आप बुलेटिनों को देख रहे हैं, दीवार पर पोस्टर चिपका रहे हैं, ईमेल, चैट समूह, टाउन हॉल, इन्फोग्राफिक्स, वीडियो, और मीडिया का कोई भी तरीका जो सभी कर्मचारियों को प्रभावी ढंग से संदेश देने में मदद कर सकता है,\" एड्रियन टैन, एक अनुभवी एचआर कहते हैं प्रैक्टिशनर और पीपुल्सस्ट्रोंग के APAC नेता, भारत स्थित एंटरप्राइज एचआर सास मंच।</div><div><br></div><div>एकत्रित की गई जानकारी केवल विश्वसनीय और सत्यापित स्रोतों से होनी चाहिए, जैसे कि पृष्ठ, सीडीसी वेबसाइट, और प्रतिष्ठित समाचार आउटलेट जो स्पष्ट रूप से सरकारी सूचना, या वायरस पर शोध करने में लगे स्वास्थ्य पेशेवरों द्वारा दिए गए बयानों को अपनी जानकारी देते हैं।</div><div><br></div><div>ब्लूमबर्ग की इस कहानी की जाँच करें जो कुछ मिथकों का भंडाफोड़ करती है और कोरोनोवायरस के बारे में झूठी जानकारी को ऑनलाइन प्रकाशित करती है।</div>', NULL, NULL),
(3, 3, 'FCC Proposes $12.9M Fine', 'FCC ने $ 12.9M का प्रस्ताव दिया', 'media/post/1657453462139350.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The FCC is getting serious with its responses to&nbsp;<a href=\"https://www.pcmag.com/how-to/how-to-block-robocalls-and-spam-calls\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">robocallers</a>, with the latest case being that of an individual rather than a company who made over 6,000 robocalls across six states.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">As&nbsp;<a href=\"https://www.engadget.com/2020/01/30/fcc-fines-one-man-almost-13-million/\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">Engadget reports</a>, the man in question used an online calling platform to manipulate caller ID so as to make his calls look like they came from a local number. He then set about targeting specific communities in each state, with the FCC stating his main intention was to \"cause harm.\"</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The FCC discovered he made 1,496 calls in California regarding the state\'s US Senate primary. In Florida he made 766 calls making \"racist attacks about a Florida gubernatorial candidate.\" Another 583 calls were made in Georgia attacking a similar candidate and callers were told it was on behalf of Oprah Winfrey. 750 calls were made in Idaho attacking a newspaper and publisher after they exposed another robocaller. Then in Virginia 2,023 calls were made during the James Fields trial with a suggestion the man was attempting to influence the jury.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">The worst robocall spree was made in Iowa, though. The man made 827 calls following the murder of a local college student. An illegal alien from Mexico was arrested and the spoof calls talked about a \"brown horde,\" \"savages,\" and to \"Kill them all.\" The family members of the murdered student also received the calls.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">In a&nbsp;<a href=\"https://docs.fcc.gov/attachments/DOC-362195A1.pdf\" rel=\"nofollow\" target=\"_blank\" style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; color: rgb(18, 137, 196);\">statement</a>&nbsp;detailing the extent of the robocalls, the FCC said, \"The caller was apparently motivated by a belief that these actions would result in media notoriety and accordingly would enable him to increase publicity for his website and personal brand. In the process, he apparently broke the law. The FCC, Federal Trade Commission, and local law enforcement all received numerous complaints from consumers about apparently spoofed robocalls from this caller.\"</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Clearly his plan backfired and now he\'s in for a big financial shock. The FCC is proposing a fine of $12,910,000 against the individual, which it seems unlikely he\'ll be able to pay. Before then, the FCC is offering the man an opportunity to respond by submitting evidence and legal arguments.</p>', '<div>FCC लूटने वालों के प्रति अपनी प्रतिक्रिया के साथ गंभीर हो रही है, नवीनतम मामला एक कंपनी के बजाय एक व्यक्ति का है जो छह राज्यों में 6,000 से अधिक डकैती करता है।</div><div><br></div><div>Engadget की रिपोर्ट के अनुसार, विचाराधीन व्यक्ति ने कॉलर आईडी में हेरफेर करने के लिए एक ऑनलाइन कॉलिंग प्लेटफ़ॉर्म का उपयोग किया ताकि उसकी कॉल की तरह लग सके जैसे वे एक स्थानीय नंबर से आए थे। उन्होंने तब प्रत्येक राज्य में विशिष्ट समुदायों को लक्षित करने के बारे में सेट किया, जिसमें एफसीसी ने कहा कि उनका मुख्य उद्देश्य \"नुकसान पहुंचाना\" था।</div><div><br></div><div>एफसीसी ने पाया कि उसने राज्य के अमेरिकी सीनेट प्राथमिक के बारे में कैलिफोर्निया में 1,496 कॉल किए। फ्लोरिडा में उन्होंने 766 कॉल किए, जिसमें \"फ्लोरिडा के एक उम्मीदवार के बारे में नस्लवादी हमले किए गए।\" जॉर्जिया में एक और उम्मीदवार पर हमला करते हुए 583 कॉल किए गए और कॉल करने वालों को बताया गया कि यह ओपरा विन्फ्रे की ओर से है। ईदाहो में 750 कॉल किए गए थे कि एक अखबार और प्रकाशक पर हमला करने के बाद उन्होंने एक और डकैत का पर्दाफाश किया। तब वर्जीनिया में जेम्स फील्ड्स मुकदमे के दौरान 2,023 कॉल किए गए थे एक सुझाव के साथ आदमी जूरी को प्रभावित करने का प्रयास कर रहा था।</div><div><br></div><div>आयोवा में सबसे खराब रोबोकल स्प्री बनाया गया था, हालांकि। एक स्थानीय कॉलेज के छात्र की हत्या के बाद आदमी ने 827 कॉल किए। मेक्सिको से एक अवैध विदेशी को गिरफ्तार किया गया था और स्पूफ कॉल ने \"भूरे रंग की भीड़,\" \"बर्बरता,\" और \"उन सभी को मार डालो\" के बारे में बात की थी। हत्यारोपी छात्र के परिजनों के पास भी फोन आए।</div><div><br></div><div>डकैतों की सीमा का विस्तार करने वाले एक बयान में, एफसीसी ने कहा, \"कॉल करने वाले को स्पष्ट रूप से इस विश्वास से प्रेरित किया गया था कि इन कार्यों के परिणामस्वरूप मीडिया में बदनामी होगी और तदनुसार वह अपनी वेबसाइट और व्यक्तिगत ब्रांड के लिए प्रचार बढ़ाने में सक्षम होगा। इस प्रक्रिया में। उन्होंने स्पष्ट रूप से कानून को तोड़ दिया। एफसीसी, फेडरल ट्रेड कमीशन और स्थानीय कानून प्रवर्तन सभी को उपभोक्ताओं से इस कॉलर से लूटे गए लूट के सामान के बारे में कई शिकायतें मिलीं। \"</div><div><br></div><div>स्पष्ट रूप से उसकी योजना बैकफायर हो गई और अब वह एक बड़े वित्तीय सदमे में है। एफसीसी व्यक्ति के खिलाफ $ 12,910,000 का जुर्माना लगा रहा है, जिसे लगता है कि वह भुगतान करने में सक्षम नहीं होगा। इससे पहले, एफसीसी आदमी को सबूत और कानूनी तर्क प्रस्तुत करके जवाब देने का अवसर प्रदान कर रहा है।</div>', NULL, NULL),
(4, 3, 'How Startup Challenges', 'स्टार्टअप कैसे चुनौती देता है', 'media/post/1657458959782965.jpeg', '<p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Those familiar to the ins and outs of startup communities in Asia would know: there’s at least one startup challenge happening in the region every quarter, as governments and organizations seek new innovative ventures that tackle some of the world’s most pressing problems.</p><p style=\"-webkit-font-smoothing: antialiased; margin: 1rem 0px; color: rgb(33, 33, 33); font-family: &quot;PT Serif&quot;, TimesNewRoman, &quot;Times New Roman&quot;, Times, Georgia, serif; font-size: 19px;\">Perhaps one industry that has benefitted the most from this phenomenon in recent years is the fintech scene. With half of the region, or at least 1 billion people still unbanked, truly, there’s a vast opportunity for fintech players to close the gap between the financially marginalized, and affordable financial products.</p>', '<div>एशिया में स्टार्टअप समुदायों के ins और outs से परिचित लोगों को पता होगा: इस क्षेत्र में हर तिमाही में कम से कम एक स्टार्टअप चुनौती होती है, क्योंकि सरकार और संगठन दुनिया के कुछ सबसे अधिक दबाव वाली समस्याओं से निपटने के लिए नए अभिनव उपक्रम चाहते हैं।</div><div><br></div><div>शायद हाल के वर्षों में इस घटना से सबसे अधिक लाभ उठाने वाला एक उद्योग फिनटेक दृश्य है। इस क्षेत्र के आधे हिस्से में, या कम से कम 1 बिलियन लोग अभी भी असंबद्ध हैं, सही मायने में, फिनटेक खिलाड़ियों के लिए आर्थिक रूप से हाशिए और सस्ती वित्तीय उत्पादों के बीच अंतर को बंद करने का एक बड़ा अवसर है।</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_in`, `created_at`, `updated_at`) VALUES
(2, 'local11', 'स्थानीय11', NULL, NULL),
(3, 'education', 'शिक्षा', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(5, 13, 21, 12, 'New Product', '234234', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red,blue', 'm,l,xl', '599', NULL, 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, 1, 1, 1, NULL, NULL, 1, 'media/product/1656190056885969.png', 'media/product/1656190058045915.png', 'media/product/1656190058130287.png', 1, NULL, NULL),
(6, 13, 21, 12, 'Mans Tshirt', '453453', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 'm,l,s', '399', '300', 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, NULL, 1, NULL, 1, NULL, 1, 'media/product/1656190455236883.png', 'media/product/1656190455378418.png', 'media/product/1656190455481359.png', 1, NULL, NULL),
(7, 13, 21, 13, 'Striped Men Round Neck Black', '323', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red,green', 's,l', '400', '300', 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, 1, 1, 1, 1, NULL, 1, 'media/product/1656190716473481.png', 'media/product/1656190716599076.png', 'media/product/1656190716728600.png', 1, NULL, NULL),
(8, 13, 21, 11, 'Solid Men Polo Neck Pink T-Shirt', '5646654', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', 's,l,m', '600', '500', 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, 1, 1, NULL, 1, NULL, 1, 'media/product/1656190810323003.png', 'media/product/1656190810511066.png', 'media/product/1656190810629131.png', 1, NULL, NULL),
(9, 13, 21, 11, 'Solid Men Hooded Neck Black', '456464', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red,blue', 's,m,l', '300', '200', 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, 1, 1, NULL, 1, NULL, 1, 'media/product/1656190919845797.png', 'media/product/1656190919980148.png', 'media/product/1656190920080770.png', 1, NULL, NULL),
(10, 13, 22, 10, 'Party No Sleeve Printed', '646546', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', 's,l', '399', '300', 'https://www.youtube.com/embed/NX3uQCYPk0E', NULL, 1, 1, 1, 1, 1, 1, 'media/product/1656191221277798.jpeg', 'media/product/1656191221573230.jpeg', 'media/product/1656191221721620.jpeg', 1, NULL, NULL),
(11, 13, 22, 11, 'Party Short Sleeve Geometric', '3242423', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's', '700', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191296913414.jpeg', 'media/product/1656191297193406.jpeg', 'media/product/1656191297299276.jpeg', 1, NULL, NULL),
(12, 13, 21, 11, 'Casual Roll-up Sleeve Solid', '432432', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's', '399', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191381480623.jpeg', 'media/product/1656191381680816.jpeg', 'media/product/1656191381795875.jpeg', 1, NULL, NULL),
(13, 13, 21, 11, 'Casual Half Sleeve Printed', '4324233', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's,l', '2000', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191446428599.jpeg', 'media/product/1656191446580394.jpeg', 'media/product/1656191446720061.jpeg', 1, NULL, NULL),
(14, 15, 27, 5, '38044PP02 Trendies Analog', '3223432', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', 'm,43', '590', '500', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191735675726.jpeg', 'media/product/1656191735830047.jpeg', 'media/product/1656191735950204.jpeg', 1, NULL, NULL),
(15, 15, 28, 10, '77085PP03 Volt Analog', '23423432', '5', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', '32', '2000', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191808873570.jpeg', 'media/product/1656191809026553.jpeg', 'media/product/1656191809174514.jpeg', 1, NULL, NULL),
(16, 15, 27, NULL, 'Nf7987YL02CJ Analog', '23232', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'black', 's', '590', '500', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656191902979308.jpeg', 'media/product/1656191903214064.jpeg', 'media/product/1656191903320251.jpeg', 1, NULL, NULL),
(17, 15, 27, 10, 'NF7924NM01C Analog Watch', '34234232', '23', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'b', 's', '1222', '1200', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1656191955919706.jpeg', 'media/product/1656191956075914.jpeg', 'media/product/1656191956188513.jpeg', 1, NULL, NULL),
(18, 13, 21, 12, 'Casual Regular Sleeve Color Block', '234234', '222', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'yello,red,green', '', '590', '500', 'https://www.youtube.com/embed/NX3uQCYPk0E', 1, 1, 1, 1, NULL, 1, 1, 'media/product/1656645853890127.jpeg', 'media/product/1656645854751725.jpeg', 'media/product/1656645854855059.jpeg', 1, NULL, NULL),
(19, 15, NULL, 10, 'Sports Rich Look Volt Analog For', '232323', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's,l', '590', '500', NULL, 1, 1, 1, 1, NULL, 1, 1, 'media/product/1656646097895843.jpeg', 'media/product/1656646098092335.jpeg', 'media/product/1656646098210958.jpeg', 1, NULL, NULL),
(20, 15, 27, 10, 'Analog Day And Date Black', '3223432', '23', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ref', 's', '2000', NULL, NULL, 1, 1, 1, 1, NULL, NULL, 1, 'media/product/1656646164730975.jpeg', 'media/product/1656646164917134.jpeg', 'media/product/1656646165099496.jpeg', 1, NULL, NULL),
(21, 15, 27, 11, 'Unique Arrow New Arrival', '232323', '23', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'red', 's', '1222', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 'media/product/1656646244361766.jpeg', 'media/product/1656646244542387.jpeg', 'media/product/1656646244664463.jpeg', 1, NULL, NULL),
(22, 15, 27, 11, 'BS9094-5 Analogue-Digital', '232323', '12', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 's', 's', '399', '300', NULL, NULL, NULL, 1, NULL, 1, 1, 1, 'media/product/1656646309886830.jpeg', 'media/product/1656646310043816.jpeg', 'media/product/1656646310176317.jpeg', 1, NULL, NULL),
(23, 15, 27, 12, 'skm-1155-Blue Skmei', '453453', '34', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 's', 's', '1222', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 1, 'media/product/1656646373922770.jpeg', 'media/product/1656646374066728.jpeg', 'media/product/1656646374190468.jpeg', 1, NULL, NULL),
(24, 15, 27, 11, 'Gmarks -1384 Army Sports', '45345333', '221', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 's', 's', '590', '500', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1656646437137155.jpeg', 'media/product/1656646437276418.jpeg', 'media/product/1656646437401037.jpeg', 1, NULL, NULL),
(25, 15, 27, 11, 'LCS-4116 CROCO STRAP', '3223432w', '20', '<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'ss', 's', '590', '500', NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 'media/product/1656646526527430.jpeg', 'media/product/1656646526664530.jpeg', 'media/product/1656646526777830.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Umdey Ecommerce', 'Easy Learning Shop', 'ecommerce Shop', 'Umdey Ecommerce Description', 'Ecommerce Google Code', 'Bing Code', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `adderss`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '10', 'udemy shop', 'udemy@gmail.com', '6546546546464', 'udemy usa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '1', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(2, '2', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(3, '3', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(4, '4', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(5, '5', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(6, '6', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(7, '7', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL),
(8, '8', 'kazi ariyan', '01711587594', 'kazi.ariyan@tradeco.com.bd', 'Suleman Plaza (2nd floor) 3/3 B, Purana Paltan, Dhaka-1000, Bangladesh.', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '09 2255 6356', '0985 52 56556', 'support@udemy.com', 'Udemy Ecommerce', 'USA Suleman Plaza (2nd floor) 3/3 B', 'facebok.com/easy', 'youtube.com/easy', 'instragram.com/easy', 'twitter.com/easy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tshirt Update', NULL, NULL),
(2, 2, 'Pant', NULL, NULL),
(4, 4, 'Home item update', NULL, NULL),
(6, 8, 'Mobiles', NULL, NULL),
(7, 8, 'Tablets', NULL, NULL),
(8, 8, 'Laptops', NULL, NULL),
(9, 9, 'Bath & Body', NULL, NULL),
(10, 9, 'Beauty Tools', NULL, NULL),
(11, 9, 'Skin Care', NULL, NULL),
(12, 10, 'Women\'s Jackets', NULL, NULL),
(13, 10, 'Women\'s  Coats', NULL, NULL),
(14, 11, 'Gents Watch', NULL, NULL),
(15, 11, 'Womans Watch', NULL, NULL),
(16, 11, 'Kids Watch', NULL, NULL),
(17, 12, 'Gents Tshirt', NULL, NULL),
(18, 12, 'Gents Shirt', NULL, NULL),
(19, 12, 'Gents Pant', NULL, NULL),
(21, 13, 'Womens Tshirt', NULL, NULL),
(22, 13, 'Womens Shirt', NULL, NULL),
(23, 13, 'Womens Pant', NULL, NULL),
(24, 14, 'Child Dress & Footware', NULL, NULL),
(25, 14, 'Child Body Care', NULL, NULL),
(26, 14, 'Child Diaper', NULL, NULL),
(27, 15, 'Gents Watch', NULL, NULL),
(28, 15, 'Womans Watch', NULL, NULL),
(29, 15, 'Kids Watch', NULL, NULL),
(30, 19, 'Body Spray', NULL, NULL),
(31, 19, 'Finger Ring', NULL, NULL),
(32, 19, 'Jewelry', NULL, NULL),
(33, 21, 'Appliances', NULL, NULL),
(34, 21, 'Room Decoration', NULL, NULL),
(35, 21, 'Light and Lamp', NULL, NULL),
(36, 21, 'Security', NULL, NULL),
(37, 12, 'Cap', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ariyan', NULL, 'ariyan@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$dMY5vrhg4kz.iP5sr.pH3uV.VlPhgEP30QR1PHY8s0F8vMXGyOvwq', NULL, '2019-10-04 23:27:57', '2019-10-04 23:27:57'),
(2, 'udemy', NULL, 'udemy@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$dMY5vrhg4kz.iP5sr.pH3uV.VlPhgEP30QR1PHY8s0F8vMXGyOvwq', NULL, '2019-10-05 04:47:42', '2019-10-05 04:47:42'),
(3, 'jack', '11111111', 'jack@gmail.com', NULL, NULL, NULL, '2020-01-22 14:00:15', '$2y$10$jLikmtVVgkwgBJjpEh0VYe8MBiAA1F53pwLy3RLc8wGCGa2aRDDbS', NULL, '2020-01-22 13:58:12', '2020-01-22 15:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 3, 25, NULL, NULL),
(11, 3, 23, NULL, NULL),
(12, 3, 19, NULL, NULL),
(13, 3, 24, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
