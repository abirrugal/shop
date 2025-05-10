-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2023 at 12:14 PM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamultra_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `subcategory_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `banner`, `category_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'Phone & accessories', 'Phone_&_ accessories', 'top-10-most-selling-smartphones-in-the-world.jpg4.jpg', NULL, NULL, '2021-06-26 04:36:50', '2021-06-26 04:38:19'),
(2, 'Accessories', 'accessories', 'Cell-Phone-Accessories-Business-Plan-–-How-To-Start-1.jpg2.jpg', 1, NULL, '2021-06-26 04:57:21', '2021-07-12 19:05:26'),
(4, 'Xiaomi', 'xiomi', 'nQTcBeUX.jpg3.jpg', NULL, 20, '2021-06-26 05:41:00', '2021-07-07 19:56:15'),
(5, 'Iphone', 'iphone', 'Symbol-of-the-iPhone-logo.jpg3.jpg', NULL, 20, '2021-06-26 05:43:45', '2021-07-07 19:55:48'),
(6, 'Computer & Accessories', 'computer-accessories', 'Fuji_Dash_PC_1x._SY304_CB431800965_.jpg3.jpg', NULL, NULL, '2021-06-26 06:07:48', '2021-06-26 06:07:48'),
(7, 'Headphones', 'headphones', 'rw-best-earbuds-f-1585947374.jpg2.jpg', NULL, NULL, '2021-07-06 21:22:33', '2021-07-06 21:22:33'),
(10, 'Camera & Photo', 'camera-photo', 'camera and photos.jpg3.jpg', NULL, NULL, '2021-07-07 00:44:35', '2021-07-07 00:44:35'),
(14, 'Accessories', 'accessories', '81hhQlDAYXL._AC_UL320_.jpg3.jpg', 10, NULL, '2021-07-07 00:56:55', '2021-07-12 19:06:20'),
(15, 'Instant Cameras', 'instant-cameras', '71RITHKYX0L._AC_UL320_.jpg2.jpg', NULL, 17, '2021-07-07 02:16:14', '2021-07-07 19:55:17'),
(16, 'DSLR Cameras', 'dslr-cameras', '61srP-7B91L._AC_UL320_.jpg3.jpg', NULL, 17, '2021-07-07 02:19:29', '2021-07-07 19:54:37'),
(17, 'Digital Cameras', 'digital-cameras', '61cJEZaFIAL._AC_UL320_.jpg3.jpg', 10, NULL, '2021-07-07 02:31:01', '2021-07-07 02:31:01'),
(18, 'On-Ear Headphones', 'on-ear-headphones', 'On Ear Headphones.jpg3.jpg', 7, NULL, '2021-07-07 02:34:32', '2021-07-07 02:34:32'),
(20, 'Smartphone', 'smartphone', 'top-10-most-selling-smartphones-in-the-world.jpg3.jpg', 1, NULL, '2021-07-07 02:47:01', '2021-07-07 02:47:01'),
(21, 'Earbud Headphones', 'earbud-headphones', 'Earbud Headphones.jpg2.jpg', 7, NULL, '2021-07-07 02:59:20', '2021-07-07 02:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `favorite_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint NOT NULL,
  `to_id` bigint NOT NULL,
  `body` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_22_192348_create_messages_table', 1),
(4, '2019_10_16_211433_create_favorites_table', 1),
(5, '2019_10_18_223259_add_avatar_to_users', 1),
(6, '2019_10_20_211056_add_messenger_color_to_users', 1),
(7, '2019_10_22_000539_add_dark_mode_to_users', 1),
(8, '2019_10_25_214038_add_active_status_to_users', 1),
(9, '2021_03_19_141229_create_categories_table', 1),
(10, '2021_03_19_150858_create_products_table', 1),
(11, '2021_03_19_184339_create_media_table', 1),
(12, '2021_03_19_231238_create_orders_table', 1),
(13, '2021_03_19_231640_create_order_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int UNSIGNED NOT NULL,
  `customer_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `operational_status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `processed_by` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `stock_amount` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sell_amount` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_stock` tinyint NOT NULL DEFAULT '1',
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `stock_amount` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sale_amount` bigint UNSIGNED NOT NULL DEFAULT '0',
  `remaining_amount` bigint UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `slug`, `image`, `description`, `in_stock`, `price`, `sale_price`, `stock_amount`, `sale_amount`, `remaining_amount`, `active`, `created_at`, `updated_at`) VALUES
(1, 4, 'Xiaomi Mi 11X 5G', 'xiaomi-mi-11x-5g', 'Xiaomi-Mi-11X-image.jpg3.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Colors</strong></td>\r\n			<td>Celestial Silver, Lunar White, Cosmic Black</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Connectivity</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G, 3G, 4G, 5G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Dual Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>✅ dual-band A-GPS, GLONASS, BDS, NavIC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>✅ v5.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>✅ A-GPS, GLONASS, BDS, GALILEO</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '39999.00', '39800.00', 120, 0, 0, 1, '2021-06-26 06:31:26', '2021-07-07 21:01:19'),
(2, 4, 'Xiaomi Poco X3 Pro', 'xiaomi-poco-x3-pro', 'Xiaomi-Poco-X3-Pro-image.jpg3.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Colors</strong></td>\r\n			<td>Phantom Black, Frost Blue, Metal Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Connectivity</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G, 3G, 4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Hybrid Dual Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>✅ dual-band, Wi-Fi direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>✅ v5.0, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>✅ A-GPS, GLONASS, BDS, Galileo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Radio</td>\r\n			<td>✅ FM, recording</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '31999.00', NULL, 200, 0, 0, 1, '2021-06-26 06:32:52', '2021-07-07 21:00:59'),
(3, 4, 'Xiaomi Redmi Note 10 Pro Max', 'xiaomi-redmi-note-10-pro-max', 'Xiaomi-Redmi-Note-10-Pro-Max-image.jpg2.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Colors</strong></td>\r\n			<td>Dark Night, Glacial Blue, Vintage Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Connectivity</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G, 3G, 4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Dual Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>✅ dual-band, Wi-Fi direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>✅ v5.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>✅ A-GPS, GLONASS, BDS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Radio</td>\r\n			<td>✅ FM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OTG</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>✖</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Infrared</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Body</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Punch-hole</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Gorilla Glass 5 front, glass back, plastic frame</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Water Resistance</td>\r\n			<td>✖ (IP53 dust and splash protection)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>164.5 x 76.2 x 8.1 millimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>192 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Display</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>6.67 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>Full HD+ 1080 x 2400 pixels (395 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Technology</td>\r\n			<td>Super AMOLED Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Protection</td>\r\n			<td>✅ Corning Gorilla Glass 5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>120Hz refresh rate, HDR10, 450 nits / 1200 nits</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '30999.00', NULL, 100, 0, 0, 1, '2021-06-26 06:35:15', '2021-07-07 21:00:29'),
(4, 4, 'Xiaomi Redmi Note 10S', 'xiaomi-redmi-note-10s', 'Xiaomi-Redmi-Note-10S-image.jpg3.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Colors</strong></td>\r\n			<td>Deep Sea Blue (Ocean Blue), Shadow Black (Onyx Gray), (Frost White) Pebble White</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Connectivity</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Network</td>\r\n			<td>2G, 3G, 4G</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM</td>\r\n			<td>Dual Nano SIM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>WLAN</td>\r\n			<td>✅ dual-band, Wi-Fi direct, Wi-Fi hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth</td>\r\n			<td>✅ v5.1, A2DP, LE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>GPS</td>\r\n			<td>✅ A-GPS, GLONASS, BDS, GALILEO</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Radio</td>\r\n			<td>✅ FM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB</td>\r\n			<td>v2.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OTG</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>USB Type-C</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>✅ (Market dependent)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Infrared</td>\r\n			<td>✅</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Body</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Punch-hole</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Gorilla Glass 3 front, plastic body</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Water Resistance</td>\r\n			<td>✖ (IP53, dust and splash protection)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>160.5 x 74.5 x 8.3 millimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>178.8 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<th>&nbsp; Display</th>\r\n			<th>&nbsp;</th>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>6.43 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>Full HD+ 1080 x 2400 pixels (409 ppi)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Technology</td>\r\n			<td>AMOLED Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Protection</td>\r\n			<td>✅ Corning Gorilla Glass 3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>Multitouch, 450 nits / 1100 nits</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '24999.00', NULL, 100, 0, 0, 1, '2021-06-26 06:36:40', '2021-07-07 20:59:42'),
(5, 16, 'Dslr Demo 1', 'dslr-demo-1', '71HJnJrxzEL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Voluptate&nbsp;consequuntur,&nbsp;numquam&nbsp;dolor&nbsp;rerum&nbsp;non&nbsp;laudantium&nbsp;sunt&nbsp;recusandae,&nbsp;aut&nbsp;nisi&nbsp;labore,&nbsp;praesentium&nbsp;magnam&nbsp;expedita&nbsp;molestiae.&nbsp;Nam&nbsp;odio&nbsp;quos&nbsp;libero&nbsp;quasi&nbsp;ducimus.</p>', 1, '60000.00', NULL, 25, 0, 0, 1, '2021-07-07 21:05:27', '2021-07-07 21:05:27'),
(6, 16, 'Dslr Demo 2', 'dslr-demo-2', '71NdnTJZu8L._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor,&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Voluptate&nbsp;consequuntur,&nbsp;numquam&nbsp;dolor&nbsp;rerum&nbsp;non&nbsp;laudantium&nbsp;sunt&nbsp;recusandae,&nbsp;aut&nbsp;nisi&nbsp;labore,&nbsp;praesentium&nbsp;magnam&nbsp;expedita&nbsp;molestiae.&nbsp;Nam&nbsp;odio&nbsp;quos&nbsp;libero&nbsp;quasi&nbsp;ducimus.</p>', 1, '70000.00', NULL, 25, 0, 0, 1, '2021-07-07 21:10:47', '2021-07-07 21:10:47'),
(7, 16, 'Dslr Demo 3', 'dslr-demo-3', '81sdQzBKNFL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Odio&nbsp;explicabo&nbsp;harum&nbsp;rerum&nbsp;dolorem&nbsp;nesciunt,&nbsp;dolore&nbsp;quam&nbsp;quibusdam&nbsp;exercitationem&nbsp;placeat&nbsp;fugiat.&nbsp;Facilis&nbsp;et&nbsp;tempore&nbsp;ipsam&nbsp;saepe&nbsp;officiis&nbsp;rerum&nbsp;magnam&nbsp;eum&nbsp;totam.</p>', 1, '65000.00', NULL, 50, 0, 0, 1, '2021-07-08 02:18:57', '2021-07-08 02:18:57'),
(8, 16, 'Dslr Demo 4', 'dslr-demo-4', '81VfdsWEk5L._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Odio&nbsp;explicabo&nbsp;harum&nbsp;rerum&nbsp;dolorem&nbsp;nesciunt,&nbsp;dolore&nbsp;quam&nbsp;quibusdam&nbsp;exercitationem&nbsp;placeat&nbsp;fugiat.&nbsp;Facilis&nbsp;et&nbsp;tempore&nbsp;ipsam&nbsp;saepe&nbsp;officiis&nbsp;rerum&nbsp;magnam&nbsp;eum&nbsp;totam.</p>', 1, '60000.00', '45000.00', 36, 0, 0, 1, '2021-07-08 02:22:09', '2021-07-08 02:22:09'),
(9, 16, 'Dslr Demo 5', 'dslr-demo-5', '91zOjt8tf8L._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Odio&nbsp;explicabo&nbsp;harum&nbsp;rerum&nbsp;dolorem&nbsp;nesciunt,&nbsp;dolore&nbsp;quam&nbsp;quibusdam&nbsp;exercitationem&nbsp;placeat&nbsp;fugiat.&nbsp;Facilis&nbsp;et&nbsp;tempore&nbsp;ipsam&nbsp;saepe&nbsp;officiis&nbsp;rerum&nbsp;magnam&nbsp;eum&nbsp;totam.</p>', 1, '70000.00', '60000.00', 50, 0, 0, 1, '2021-07-08 02:25:41', '2021-07-08 02:25:41'),
(10, 16, 'Camera 6', 'camera-6', '416b8xNfDJL._AC_UL320_.jpg4.jpg', '<p>OLYMPUS OM-D E-M1 Mark III Black Camera Body.</p>', 1, '75000.00', '60000.00', 45, 0, 0, 1, '2021-07-11 00:48:51', '2021-07-11 00:48:51'),
(11, 15, 'Instant Cameras 1', 'instant-cameras-1', '61cJEZaFIAL._AC_UY218_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '20000.00', NULL, 25, 0, 0, 1, '2021-07-11 00:51:02', '2021-07-11 00:51:02'),
(12, 15, 'Instant Cameras 2', 'instant-cameras-2', '61oXEMSKYiL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '25000.00', '23000.00', 45, 0, 0, 1, '2021-07-11 00:51:55', '2021-07-11 00:51:55'),
(13, 15, 'Instant Cameras 3', 'instant-cameras-3', '71LTojwvtmL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '30000.00', '26000.00', 35, 0, 0, 1, '2021-07-11 00:52:45', '2021-07-11 00:52:45'),
(14, 15, 'Instant Cameras 4', 'instant-cameras-4', '61yI7VEchIL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '26000.00', NULL, 25, 0, 0, 1, '2021-07-11 00:53:25', '2021-07-11 00:53:25'),
(15, 15, 'Instant Cameras 5', 'instant-cameras-5', '71Maj9eHOPL._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '35000.00', '30000.00', 40, 0, 0, 1, '2021-07-11 00:54:13', '2021-07-11 00:54:13'),
(16, 15, 'Instant Cameras 6', 'instant-cameras-6', '71PeqlwVCJL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '30000.00', '29000.00', 45, 0, 0, 1, '2021-07-11 00:55:01', '2021-07-11 00:55:01'),
(17, 15, 'Instant Cameras 7', 'instant-cameras-7', '81Oyw0zSkxL._AC_UY218_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '35000.00', NULL, 35, 0, 0, 1, '2021-07-11 00:55:39', '2021-07-11 00:55:39'),
(18, 15, 'Instant Cameras 7', 'instant-cameras-7', '71RITHKYX0L._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '36000.00', '35000.00', 33, 0, 0, 1, '2021-07-11 00:57:15', '2021-07-11 01:04:06'),
(19, 15, 'Instant Cameras 8', 'instant-cameras-8', '71Y0JWrrWHL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '37000.00', '35000.00', 30, 0, 0, 1, '2021-07-11 00:57:51', '2021-07-11 00:57:51'),
(20, 15, 'Instant Cameras 9', 'instant-cameras-9', '71YSO5UE2BL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '40000.00', '35000.00', 55, 0, 0, 1, '2021-07-11 01:05:06', '2021-07-11 01:05:06'),
(21, 15, 'Instant Cameras 10', 'instant-cameras-10', '81Oyw0zSkxL._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '35000.00', NULL, 33, 0, 0, 1, '2021-07-11 01:06:03', '2021-07-11 01:06:03'),
(22, 15, 'Instant Cameras 11', 'instant-cameras-11', '610xXK1WlzL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '25000.00', NULL, 44, 0, 0, 1, '2021-07-11 01:07:29', '2021-07-11 01:07:29'),
(23, 15, 'Instant Cameras 12', 'instant-cameras-12', '712kO3-hwiL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Consequatur&nbsp;vitae&nbsp;officiis&nbsp;laborum&nbsp;quis&nbsp;ut,&nbsp;temporibus&nbsp;sint&nbsp;vero&nbsp;incidunt&nbsp;ex&nbsp;corporis&nbsp;sed&nbsp;quibusdam,&nbsp;quae&nbsp;rerum&nbsp;eos&nbsp;impedit&nbsp;labore&nbsp;doloremque&nbsp;facere&nbsp;ratione.</p>', 1, '26000.00', NULL, 44, 0, 0, 1, '2021-07-11 01:08:13', '2021-07-11 01:08:13'),
(24, 21, 'Earbud Headphone1', 'earbud-headphone1', '41wYbyr3LLL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '500.00', NULL, 50, 0, 0, 1, '2021-07-12 15:43:43', '2021-07-12 15:43:43'),
(25, 21, 'Earbud Headphone2', 'earbud-headphone2', '51e1Xd+4ddL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '400.00', NULL, 40, 0, 0, 1, '2021-07-12 15:44:21', '2021-07-12 15:44:21'),
(26, 21, 'Earbud Headphone3', 'earbud-headphone3', '51L-AnixTmL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1000.00', '900.00', 50, 0, 0, 1, '2021-07-12 15:45:01', '2021-07-12 15:45:01'),
(27, 21, 'Earbud Headphone4', 'earbud-headphone4', '61aca1w7aDL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1200.00', NULL, 30, 0, 0, 1, '2021-07-12 15:45:48', '2021-07-12 15:45:48'),
(28, 21, 'Earbud Headphone5', 'earbud-headphone5', '61r+4Mlyk9L._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '700.00', NULL, 50, 0, 0, 1, '2021-07-12 15:46:47', '2021-07-12 15:46:47'),
(29, 21, 'Earbud Headphone6', 'earbud-headphone6', '71h2tN1wWvL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '200.00', NULL, 60, 0, 0, 1, '2021-07-12 15:47:26', '2021-07-12 15:47:26'),
(30, 21, 'Earbud Headphone7', 'earbud-headphone7', '71N4RsWobbS._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '800.00', NULL, 30, 0, 0, 1, '2021-07-12 15:58:13', '2021-07-12 15:58:13'),
(31, 21, 'Earbud Headphone7', 'earbud-headphone7', '71NTi82uBEL._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1000.00', '900.00', 60, 0, 0, 1, '2021-07-12 15:59:12', '2021-07-12 15:59:12'),
(32, 21, 'Earbud Headphone8', 'earbud-headphone8', '71ztFcDyQHS._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '900.00', '780.00', 60, 0, 0, 1, '2021-07-12 15:59:58', '2021-07-12 15:59:58'),
(33, 21, 'Earbud Headphone9', 'earbud-headphone9', '81akBW09J0L._AC_UL320_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '800.00', '750.00', 30, 0, 0, 1, '2021-07-12 16:01:16', '2021-07-12 16:01:16'),
(34, 21, 'Earbud Headphone11', 'earbud-headphone11', '619qyGXIDgL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '800.00', NULL, 50, 0, 0, 1, '2021-07-12 16:02:01', '2021-07-12 16:02:01'),
(35, 18, 'On-Ear Headphones1', 'on-ear-headphones1', '51eJUpMRnzL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '2000.00', '1500.00', 30, 0, 0, 1, '2021-07-12 16:11:12', '2021-07-12 16:11:12'),
(36, 18, 'On-Ear Headphones2', 'on-ear-headphones2', '51tqWVN8a7L._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1300.00', '1200.00', 20, 0, 0, 1, '2021-07-12 16:11:51', '2021-07-12 16:11:51'),
(37, 18, 'On-Ear Headphones3', 'on-ear-headphones3', '61JcYeMnkzL._AC_UL320_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '3000.00', '2500.00', 40, 0, 0, 1, '2021-07-12 16:12:32', '2021-07-12 16:12:32'),
(38, 18, 'On-Ear Headphones4', 'on-ear-headphones4', '61QU6+SJzjL._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1500.00', NULL, 20, 0, 0, 1, '2021-07-12 16:13:15', '2021-07-12 16:13:15'),
(39, 18, 'On-Ear Headphones5', 'on-ear-headphones5', '61UkloEA0OL._AC_UY218_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1200.00', NULL, 20, 0, 0, 1, '2021-07-12 16:14:28', '2021-07-12 16:14:28'),
(40, 18, 'On-Ear Headphones6', 'on-ear-headphones6', '61vz89Or3HL._AC_UY218_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1400.00', NULL, 21, 0, 0, 1, '2021-07-12 16:15:11', '2021-07-12 16:15:11'),
(41, 18, 'On-Ear Headphones7', 'on-ear-headphones7', '71GhZ-zdnTL._AC_UL320_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '3000.00', '2800.00', 32, 0, 0, 1, '2021-07-12 16:16:02', '2021-07-12 16:16:02'),
(42, 18, 'On-Ear Headphones8', 'on-ear-headphones8', '71JqmaoF3oL._AC_UL436_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '2300.00', NULL, 20, 0, 0, 1, '2021-07-12 16:16:55', '2021-07-12 16:16:55'),
(43, 18, 'On-Ear Headphones9', 'on-ear-headphones9', '71leTo8nABL._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '1500.00', NULL, 15, 0, 0, 1, '2021-07-12 16:17:55', '2021-07-12 16:17:55'),
(44, 18, 'On-Ear Headphones10', 'on-ear-headphones10', '71mYRgvHNUL._AC_UY218_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '4000.00', '3500.00', 30, 0, 0, 1, '2021-07-12 16:18:50', '2021-07-12 16:18:50'),
(45, 18, 'On-Ear Headphones11', 'on-ear-headphones11', '71QbbvhjDcL._AC_UY218_.jpg2.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '4000.00', '3200.00', 40, 0, 0, 1, '2021-07-12 16:19:37', '2021-07-12 16:19:37'),
(46, 18, 'On-Ear Headphones12', 'on-ear-headphones12', '71SUgCQWFvL._AC_UY218_.jpg4.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '4000.00', NULL, 20, 0, 0, 1, '2021-07-12 16:20:30', '2021-07-12 16:20:30'),
(47, 18, 'On-Ear Headphones13', 'on-ear-headphones13', '81TzTAx8weL._AC_UY218_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '3000.00', NULL, 30, 0, 0, 1, '2021-07-12 16:21:04', '2021-07-12 16:21:04'),
(48, 18, 'On-Ear Headphones14', 'on-ear-headphones14', '81wSMudPG8L._AC_UY218_.jpg3.jpg', '<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Est&nbsp;consectetur&nbsp;veritatis&nbsp;laboriosam&nbsp;sit&nbsp;officia&nbsp;ea&nbsp;inventore&nbsp;incidunt&nbsp;repellendus,&nbsp;tenetur&nbsp;reprehenderit&nbsp;quidem&nbsp;quam&nbsp;quod&nbsp;iste&nbsp;voluptatibus&nbsp;aperiam&nbsp;natus&nbsp;suscipit&nbsp;delectus&nbsp;corporis!</p>', 1, '2500.00', NULL, 22, 0, 0, 1, '2021-07-12 16:21:40', '2021-07-12 16:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `facebook_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_points` bigint NOT NULL DEFAULT '0',
  `email_verified` tinyint NOT NULL DEFAULT '0',
  `email_verified_at` date DEFAULT NULL,
  `email_verification_token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `messenger_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `active_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `password`, `role_as`, `facebook_id`, `google_id`, `reward_points`, `email_verified`, `email_verified_at`, `email_verification_token`, `remember_token`, `created_at`, `updated_at`, `avatar`, `messenger_color`, `dark_mode`, `active_status`) VALUES
(1, 'Abir Husain', 'abir.rugal@gmail.com', '+8801760711791', '$2y$10$03iOR5EJsuGJDP4WmrCN/uHFVqSZubzq/KD578RJhYvdEjIsljDTe', 'user', NULL, NULL, 0, 0, NULL, '1624644132abir.rugal@gmail.com60d61a2499b9dpV43jlGRv1RObxR', NULL, '2021-06-25 18:02:12', '2021-06-25 18:02:12', 'avatar.png', '#2180f3', 0, 0),
(0, 'Category 02', 'admin@mail.com', '01555555555', '$2y$10$sQyvWa4W1d8sn6e5mGBOr.poJ9llpLQSGw0orji4YaJOgi7XRlj5C', 'user', NULL, NULL, 0, 0, NULL, '1659096909admin@mail.com62e3cf4d87270INxaHQlLvielCNz', NULL, '2022-07-29 12:15:09', '2022-07-29 12:15:09', 'avatar.png', '#2180f3', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
