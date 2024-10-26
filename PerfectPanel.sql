-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2024 at 12:17 PM
-- Server version: 10.5.23-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doonsmmp_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL,
  `two_factor` enum('0','1') NOT NULL DEFAULT '0',
  `two_factor_secret_key` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`, `two_factor`, `two_factor_secret_key`) VALUES
(1, '3', 'Admin', 'admin@admin.com', 'Admin', 'admin', '', '2021-09-08 10:19:05', '2024-07-28 17:14:06', '106.222.143.252', '2', '{\"admin_access\":1,\"users\":1,\"services\":1,\"update-prices\":1,\"bulk\":1,\"synced-logs\":1,\"orders\":1,\"subscriptions\":1,\"dripfeed\":1,\"tasks\":1,\"payments\":1,\"tickets\":1,\"additionals\":1,\"referral\":1,\"broadcast\":1,\"logs\":1,\"reports\":1,\"videop\":1,\"coupon\":1,\"child-panels\":1,\"updates\":1,\"appearance\":1,\"themes\":1,\"new_year\":1,\"pages\":1,\"news\":1,\"meta\":1,\"blog\":1,\"menu\":1,\"inte\":1,\"language\":1,\"files\":1,\"settings\":1,\"general_settings\":1,\"providers\":1,\"payments_settings\":1,\"bank_accounts\":1,\"modules\":1,\"subject\":1,\"payments_bonus\":1,\"currency-manager\":1,\"alert_settings\":1,\"site_count\":1,\"manager\":1,\"super_admin\":1}', 'sun', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_constants`
--

CREATE TABLE `admin_constants` (
  `id` int(11) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `paidRent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_constants`
--

INSERT INTO `admin_constants` (`id`, `brand_logo`, `paidRent`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `category_name_lang` longtext DEFAULT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') NOT NULL DEFAULT '2',
  `category_icon` text NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `category_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_name_lang`, `category_line`, `category_type`, `category_secret`, `category_icon`, `is_refill`, `category_deleted`) VALUES
(1, 'Instagram |- Cheap Server', '{\"en\":\"Instagram |- Cheap Server\"}', 1, '2', '2', '', '1', '1'),
(2, '👥IG Followers |📡 𝐀𝐧𝐭𝐢 𝐔𝐩𝐝𝐚𝐭𝐞 / Fast', '{\"en\":\"\\ud83d\\udc65IG Followers |\\ud83d\\udce1 \\ud835\\udc00\\ud835\\udc27\\ud835\\udc2d\\ud835\\udc22 \\ud835\\udc14\\ud835\\udc29\\ud835\\udc1d\\ud835\\udc1a\\ud835\\udc2d\\ud835\\udc1e \\/ Fast\"}', 2, '2', '2', '', '1', '1'),
(3, ' 👥IG Followers | 365 Days Refill ', '{\"en\":\" \\ud83d\\udc65IG Followers | 365 Days Refill \"}', 3, '2', '2', '', '1', '1'),
(4, '👥IG Followers | Lifetime', '{\"en\":\"\\ud83d\\udc65IG Followers | Lifetime\"}', 4, '2', '2', '', '1', '1'),
(5, '👥IG Followers | 30 - 90 Days Refill', '{\"en\":\"\\ud83d\\udc65IG Followers | 30 - 90 Days Refill\"}', 5, '2', '2', '', '1', '1'),
(6, '👥IG Followers | 🇮🇳 𝗜𝗻𝗱𝗶𝗮𝗻 ', '{\"en\":\"\\ud83d\\udc65IG Followers | \\ud83c\\uddee\\ud83c\\uddf3 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \"}', 6, '2', '2', '', '1', '1'),
(7, 'Instagram |- Cheap Server', '{\"en\":\"Instagram |- Cheap Server\"}', 7, '2', '2', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) NOT NULL,
  `child_panel_currency` varchar(191) NOT NULL,
  `child_panel_username` varchar(191) NOT NULL,
  `child_panel_password` varchar(191) NOT NULL,
  `charged_amount` float NOT NULL,
  `child_panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL DEFAULT 'Pending',
  `renewal_date` date NOT NULL,
  `created_on` datetime NOT NULL,
  `child_panel_uqid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `spent` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL DEFAULT 3,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `broadcast_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `client_report`
--

INSERT INTO `client_report` (`id`, `client_id`, `action`, `report_ip`, `report_date`) VALUES
(1, 1, '\r\n    User registered.', '122.177.216.106', '2023-09-01 18:40:21'),
(2, 1, 'Member logged in.', '122.177.216.106', '2023-09-01 18:41:43'),
(3, 1, 'Member logged in.', '122.177.216.106', '2023-09-01 21:15:50'),
(4, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 11:23:42'),
(5, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 12:02:38'),
(6, 1, 'Member logged in.', '122.177.216.106', '2023-09-02 13:30:20'),
(7, 1, '2.5285 New Order #1.', '122.177.216.106', '2023-09-02 15:13:50'),
(8, 1, '0.8645 New Order #2.', '122.177.216.106', '2023-09-02 16:13:29'),
(9, 1, '#2 Order number of has been completed.', '127.0.0.1', '2023-09-02 16:39:02'),
(10, 1, '0.3458 New Order #3.', '122.177.216.106', '2023-09-02 17:14:59'),
(11, 1, '#3 Order number of has been completed.', '127.0.0.1', '2023-09-02 17:39:07'),
(12, 1, '#1 Order number of has been completed.', '127.0.0.1', '2023-09-03 01:01:02'),
(13, 1, 'Member logged in.', '122.161.61.242', '2023-09-04 21:26:42'),
(14, 1, 'Member logged in.', '122.161.61.242', '2023-09-05 19:39:38'),
(15, 2, 'Member logged in.', '152.59.66.99', '2024-07-27 12:59:17'),
(16, 3, '\r\n    User registered.', '14.139.54.2', '2024-07-27 14:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(100) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `symbol_position` varchar(10) DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `currency_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'Indian Rupee', 'INR', '₹', 'left', 1, 1, 1, 'a4956249500ba31bc01c4b302cfa8e1a22b8a801'),
(2, 'U.S. Dollar', 'USD', '$', 'left', 0.012031188633176, 83.117307066609, 1, '8909c4c6bc52fe2357bd35e6b3fc209a2476399a'),
(3, 'Euro', 'EUR', '€', 'left', 0.011283789309634, 88.622711091052, 1, '185d31d64c6feb611b6a2ab50b634ba00e43e586'),
(4, 'Turkish Lira', 'TRY', '₺', 'left', 0.32464957828123, 3.0802442599625, 1, '349f7b9ebdeb631986de1a85faa303032f206147'),
(5, 'Russian Rouble', 'RUB', '₽', 'left', 1.1622701365896, 0.86038517941643, 1, '5fe6bfdce0b90e9caf56a80fd25f33d0f20159f1'),
(6, 'Brazilian Real', 'BRL', 'R$', 'left', 0.058598591142312, 17.065256698261, 1, 'e50baf88aed2020b6073f40a8ca26d7d1b0fb765'),
(7, 'South Korean Won', 'KRW', '₩', 'left', 15.971135887832, 0.062612954208339, 1, 'e676515c1847b4376de8a04c370e0bf201fc34ca'),
(8, 'Saudi Riyal', 'SAR', '﷼', 'left', 0.045127965560183, 22.159208543678, 1, 'd7f247a574a692b15fc7e9dadf1fa4883c9a6e2d'),
(9, 'Chinese Yuan', 'CNY', '¥', 'left', 0.087514931016616, 11.426621587694, 1, '06c7a274a673ed9037f1d4ad04f3a737b3024d75'),
(10, 'Vietnamese Dong', 'VND', '₫', 'left', 291.3860438861, 0.0034318733548917, 1, '4f2780b924554c2e51c34013c102c1119d9fbfb9'),
(11, 'Kuwaiti Dinar', 'KWD', 'د.ك', 'left', 0.0037181157337651, 268.95343545086, 1, 'dcf8a0dd3ddfaca27e99475560a40ff4a780f070'),
(12, 'Egyptian Pound', 'EGP', '£', 'left', 0.37196575116044, 2.6884195571239, 1, 'a0d874f915b1733bf25be06df757cb843ad07fbe'),
(13, 'Pakistani Rupee', 'PKR', '₨', 'left', 3.6480720199915, 0.27411739530359, 1, '4829c93dadf334b7298def05bbfdd8642142f378'),
(14, 'Nigerian Naira', 'NGN', '₦', 'left', 9.2427922307965, 0.10819241361588, 1, '36577516307566a0725f97fdc8797b27ea1ef78d');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int(11) NOT NULL,
  `snow_data` text NOT NULL,
  `snow_data_array` text NOT NULL,
  `snow_status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text NOT NULL,
  `orders_count_increase` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(11) NOT NULL,
  `snow_effect` int(11) NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int(11) NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int(11) NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text DEFAULT NULL,
  `fire_works` text DEFAULT NULL,
  `toys` text DEFAULT NULL,
  `snowflakes` int(11) NOT NULL,
  `snow_speed` int(11) NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int(11) NOT NULL,
  `toy_quantity` int(11) NOT NULL,
  `toy_speed` int(11) NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#004a00', 0, '', '\n<style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style>\n<!-- developed by Raj Patel-->\n      \n<!-- developed by Raj Patel-->  \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" >\n       window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>\n    \n        \n    <script type=\"text/javascript\" >\n       window.modules.signin = [];     </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" >\n       document.addEventListener(\'DOMContentLoaded\', function() { \nvar newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\"', '', 0, '', '', '', 0, 'true', NULL, NULL, 'true', 50, 10, 'apple', 'style2', '0.95', 'slow', 80, 100, 6, 'infinite', '', '', '', '', '', '1', '', '', '', '1', '1', 'dukesmm.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 1024, 20, '2', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '<html>\r\n<body style=\'background-color:black\'>\r\n<canvas id=\'myCanvas\' width=\'800\' height=\'800\'></canvas>\r\n<script>\r\nconst max_fireworks = 5,\r\n  max_sparks = 50;\r\nlet canvas = document.getElementById(\'myCanvas\');\r\nlet context = canvas.getContext(\'2d\');\r\nlet fireworks = [];\r\n \r\nfor (let i = 0; i < max_fireworks; i++) {\r\n  let firework = {\r\n    sparks: []\r\n  };\r\n  for (let n = 0; n < max_sparks; n++) {\r\n    let spark = {\r\n      vx: Math.random() * 5 + .5,\r\n      vy: Math.random() * 5 + .5,\r\n      weight: Math.random() * .3 + .03,\r\n      red: Math.floor(Math.random() * 2),\r\n      green: Math.floor(Math.random() * 2),\r\n      blue: Math.floor(Math.random() * 2)\r\n    };\r\n    if (Math.random() > .5) spark.vx = -spark.vx;\r\n    if (Math.random() > .5) spark.vy = -spark.vy;\r\n    firework.sparks.push(spark);\r\n  }\r\n  fireworks.push(firework);\r\n  resetFirework(firework);\r\n}\r\nwindow.requestAnimationFrame(explode);\r\n \r\nfunction resetFirework(firework) {\r\n  firework.x = Math.floor(Math.random() * canvas.width);\r\n  firework.y = canvas.height;\r\n  firework.age = 0;\r\n  firework.phase = \'fly\';\r\n}\r\n \r\nfunction explode() {\r\n  context.clearRect(0, 0, canvas.width, canvas.height);\r\n  fireworks.forEach((firework,index) => {\r\n    if (firework.phase == \'explode\') {\r\n        firework.sparks.forEach((spark) => {\r\n        for (let i = 0; i < 10; i++) {\r\n          let trailAge = firework.age + i;\r\n          let x = firework.x + spark.vx * trailAge;\r\n          let y = firework.y + spark.vy * trailAge + spark.weight * trailAge * spark.weight * trailAge;\r\n          let fade = i * 20 - firework.age * 2;\r\n          let r = Math.floor(spark.red * fade);\r\n          let g = Math.floor(spark.green * fade);\r\n          let b = Math.floor(spark.blue * fade);\r\n          context.beginPath();\r\n          context.fillStyle = \'rgba(\' + r + \',\' + g + \',\' + b + \',1)\';\r\n          context.rect(x, y, 4, 4);\r\n          context.fill();\r\n        }\r\n      });\r\n      firework.age++;\r\n      if (firework.age > 100 && Math.random() < .05) {\r\n        resetFirework(firework);\r\n      }\r\n    } else {\r\n      firework.y = firework.y - 10;\r\n      for (let spark = 0; spark < 15; spark++) {\r\n        context.beginPath();\r\n        context.fillStyle = \'rgba(\' + index * 50 + \',\' + spark * 17 + \',0,1)\';\r\n        context.rect(firework.x + Math.random() * spark - spark / 2, firework.y + spark * 4, 4, 4);\r\n        context.fill();\r\n      }\r\n      if (Math.random() < .001 || firework.y < 200) firework.phase = \'explode\';\r\n    }\r\n  });\r\n  window.requestAnimationFrame(explode);\r\n}\r\n</script>\r\n</body>\r\n</html>', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', '/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(2, 'Arabic', 'ar', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `menu_name_lang` longtext DEFAULT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) NOT NULL DEFAULT '2',
  `icon` varchar(225) DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') NOT NULL DEFAULT 'Internal',
  `active` varchar(225) NOT NULL,
  `tiptext` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_name_lang`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'New Order', '{\"en\": \"New Order\"}', 1, '2', '/', 'fa fa-shopping-bag', '1', 'Internal', 'neworder', ''),
(2, 'Mass Order', '{\"en\": \"Mass Order\"}', 2, '2', '/massorder', 'fas fa-cart-plus', '1', 'Internal', 'massorder', 'Shown only if Mass Order system enabled for use'),
(3, 'Orders ', '{\"en\": \"Orders \"}', 3, '2', '/orders', 'fas fa-server', '1', 'Internal', 'orders', ''),
(6, 'Services', '{\"en\": \"Services\"}', 5, '2', '/services', 'fas fa-file-alt', '1', 'Internal', 'services', ''),
(7, 'Add Funds', '{\"en\": \"Add Funds\"}', 6, '2', '/addfunds', 'fab fa-cc-amazon-pay', '1', 'Internal', 'addfunds', ''),
(8, 'Api', '{\"en\": \"Api\"}', 9, '2', '/api', 'fal fa-plug', '1', 'Internal', 'api', ''),
(9, 'Tickets ', '{\"en\": \"Tickets \"}', 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'Child Panels', '{\"en\": \"Child Panels\"}', 10, '2', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'Refer & Earn', '{\"en\": \"Refer & Earn\"}', 11, '2', '/refer', 'fas fa-bezier-curve', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(13, 'Terms', '{\"en\": \"Terms\"}', 12, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'Internal', 'terms', ''),
(14, 'Signup ', '{\"en\": \"Signup\"}', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(15, 'Api', '{\"en\": \"Api\"}', 4, '2', '/api', 'fal fa-plug', '1', 'External', 'api', ''),
(17, 'Daily Updates', '{\"en\": \"Daily Updates\"}', 13, '2', '/updates', 'fas fa-bell', '1', 'Internal', '', 'Shown only if Updates System enabled'),
(18, 'Terms', '{\"en\": \"Terms\"}', 3, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'External', 'terms', ''),
(32, 'blogs', '{\"en\": \"blogs\"}', 16, '2', '/blog', 'fab fa-500px', '1', 'Internal', 'blog', ''),
(24, 'Services', '{\"en\": \"Services\"}', 14, '2', '/services', 'fas fa-file-alt', '1', 'External', 'services', ''),
(28, 'Transfer Funds ', '{\"en\": \"Transfer Funds \"}', 14, '2', '/transferfunds', 'fas fa-grip-vertical', '1', 'Internal', 'Transfer Funds ', ''),
(31, 'blogs', '{\"en\": \"blogs\"}', 15, '2', '/blog', '', '1', 'External', 'blog', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_title_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text DEFAULT NULL,
  `action_link` text DEFAULT NULL,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `client_id`, `service_id`, `api_orderid`, `order_error`, `order_detail`, `order_api`, `api_serviceid`, `api_charge`, `api_currencycharge`, `order_profit`, `order_quantity`, `order_extras`, `order_charge`, `dripfeed`, `dripfeed_id`, `subscriptions_id`, `subscriptions_type`, `dripfeed_totalcharges`, `dripfeed_runs`, `dripfeed_delivery`, `dripfeed_interval`, `dripfeed_totalquantity`, `dripfeed_status`, `order_url`, `order_start`, `order_finish`, `order_remains`, `order_create`, `order_status`, `subscriptions_status`, `subscriptions_username`, `subscriptions_posts`, `subscriptions_delivery`, `subscriptions_delay`, `subscriptions_min`, `subscriptions_max`, `subscriptions_expiry`, `last_check`, `order_where`, `refill_status`, `is_refill`, `refill`, `cancelbutton`, `show_refill`, `api_refillid`, `avg_done`, `order_increase`) VALUES
(1, 1, 5, 4310722, '-', '{\"currency\":\"INR\",\"start_count\":\"12595\",\"remains\":0,\"status\":\"Completed\",\"charge\":1.9450000000000000621724893790087662637233734130859375}', 1, 1571, 1.945, NULL, 0.5835, 50, '', 2.5285, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/rebel__058?igshid=MzRlODBiNWFlZA==', 12595, 0, 0, '2023-09-02 15:13:50', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-03 01:01:02', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0),
(2, 1, 4, 4311867, '-', '{\"currency\":\"INR\",\"start_count\":\"2105\",\"remains\":0,\"status\":\"Completed\",\"charge\":1.3300000000000000710542735760100185871124267578125}', 1, 1806, 1.33, NULL, -0.4655, 50, '', 0.8645, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/no1_boost?igshid=MzRlODBiNWFlZA==', 2105, 0, 0, '2023-09-02 16:13:29', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-02 16:39:02', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0),
(3, 1, 4, 4313020, '-', '{\"currency\":\"INR\",\"start_count\":\"2155\",\"remains\":0,\"status\":\"Completed\",\"charge\":0.532000000000000028421709430404007434844970703125}', 1, 1806, 0.532, NULL, -0.1862, 20, '', 0.3458, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://instagram.com/no1_boost?igshid=MzRlODBiNWFlZA==', 2155, 0, 0, '2023-09-02 17:14:59', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2023-09-02 17:39:07', 'site', 'Pending', '1', '1', '1', 'true', 0, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '', '1', '1', '', '', '', '2023-07-27 09:55:56', '2', ''),
(787, 'Login', 'auth', '', '1', '1', '', '', '', '2023-08-12 09:18:17', '2', ''),
(9, 'New Order', 'neworder', '', '1', '1', '', '', '', '2023-09-02 05:24:53', '2', ''),
(14, 'Terms', 'terms', '', '1', '1', '', '', '', '2022-02-07 08:41:16', '2', ''),
(789, 'Mass Order', 'massorder', '', '1', '1', '', '', '', '2022-02-07 08:43:06', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', '', '', '', '2022-02-07 08:53:20', '2', ''),
(791, 'Services', 'services', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(793, 'API', 'api', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(795, 'Blog', 'blog', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(909, 'success', 'success', '', '1', '1', '', '', '', '0000-00-00 00:00:00', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text NOT NULL,
  `panel_plan` text NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'yourpanel.com', 'A', 'Active', 1453, 1453, '2022-01-24 10:58:08', 'b1fbedd6f1266a8990bf648919068680', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int(11) NOT NULL,
  `methodName` varchar(300) DEFAULT NULL,
  `methodLogo` varchar(200) DEFAULT NULL,
  `methodVisibleName` varchar(300) DEFAULT NULL,
  `methodCallback` varchar(100) DEFAULT NULL,
  `methodMin` int(11) NOT NULL DEFAULT 1,
  `methodMax` int(11) NOT NULL DEFAULT 1,
  `methodFee` float NOT NULL DEFAULT 0,
  `methodBonusPercentage` float NOT NULL DEFAULT 0,
  `methodBonusStartAmount` int(11) NOT NULL DEFAULT 0,
  `methodCurrency` varchar(3) DEFAULT NULL,
  `methodStatus` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 -> off, 1 -> on',
  `methodExtras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `methodPosition` int(11) DEFAULT NULL,
  `methodInstructions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(1, 'PayTM Checkout', '/img/paymentslogo/paytm-1.svg', 'PayTM Checkout', 'payTMCheckout', 1, 100000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"merchantKey\":\"\"}', 2, ''),
(2, 'PayTM Merchant', '/img/paymentslogo/paytm-1.svg', 'PayTM Merchant', 'payTMMerchant', 1, 10000, 0, 0, 0, 'INR', '1', '{\"merchantId\":\"INRnWh89510694187374\"}', 1, '&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;NOTE: &lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(102, 185, 102); background-color: rgb(255, 255, 0);&quot;&gt;Use PayTM &amp;amp; Phonepe in this QR&lt;/strong&gt;&lt;/h5&gt;&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(1, 1, 1);&quot;&gt;Step 1&amp;nbsp;- Scan the barcodes&lt;/strong&gt;&lt;/h5&gt;&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;Step 2 - Pay Amount&lt;/strong&gt;&lt;/h5&gt;&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;﻿Step 3 - Put amount&lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(178, 107, 0);&quot;&gt;&amp;nbsp;Min ₹10&lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;&amp;nbsp;&amp;amp; &lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(240, 102, 102);&quot;&gt;Transaction id&lt;/strong&gt;&lt;/h5&gt;&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;Step 4 - Click on Verify Button&lt;/strong&gt;&lt;/h5&gt;&lt;h5 class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot;&gt;Amount will be add In 1&amp;nbsp;Second.&lt;/strong&gt;&lt;/h5&gt;&lt;p&gt;&lt;img src=&quot;data:image/jpeg;base64,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&quot; height=&quot;300&quot; width=&quot;300&quot;&gt;&lt;/p&gt;'),
(3, 'Perfect Money', '/img/paymentslogo/perfect_money.svg', 'Perfect Money', 'perfectMoney', 10, 1000, 3, 0, 0, 'USD', '0', '{\"accountNumber\":\"\",\"alternatePassPhrase\":\"\"}', 3, ''),
(4, 'Coinbase Commerce', 'img/paymentslogo/coinbase-1.svg', 'Coinbase Commerce', 'coinbaseCommerce', 1, 1000, 0, 0, 0, 'USD', '0', '{\"APIKey\":\"\"}', 9, NULL),
(5, 'Kashier', 'https://i.postimg.cc/6pS05WGn/download-4.png', 'Kashier', 'kashier', 1, 1000, 0, 0, 0, 'USD', '0', '{\"MID\":\"\",\"APIKey\":\"\",\"mode\":\"live\"}', 4, NULL),
(6, 'Razorpay', '/img/paymentslogo/razorpay.svg', 'Razorpay', 'razorPay', 1, 10000, 0, 0, 0, 'INR', '0', '{\"APIPublicKey\":\"\",\"APISecretKey\":\"\",\"gatewayThemeColour\":\"\"}', 6, NULL);
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(7, 'PhonePe (Automatic)', '/img/paymentslogo/phonepe-1.svg', 'PhonePe (Automatic)', 'phonepe', 1, 10000, 0, 0, 0, 'INR', '1', '{\"email\":\"amitbhatijsm@gmail.com\",\"password\":\"1234567890\"}', 1, '&lt;p class=&quot;ql-align-center&quot;&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(0, 41, 102); background-color: rgb(255, 255, 0);&quot;&gt; please use only phone pay and paytm&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;data:image/jpeg;base64,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0NSJOItkE88/aoAvT+16f2vT+16P2gAhkMnnE5+jDB5m1ExakcScxUQHoDouMS9E2yrcSXYnUbQBKAgC5P6TRymfsO7UL0/ten9oIYBLJbOLQ1Ik4i2QTzz9qgC9P7ReERyLF0cUANfJyGg0mJVhF2GWrUQvmQYAkBrtB+jDB5m1ItGhzABcnLMlCKNra82J4Xo/aeSntQl1c7IXapFWSXcRn8DaLzy+cPT+16f2mtbOCzn7w36r+djojdql5fPF4VFjrG/VYfA/SJ3gfpiEWOjBHl88F+qhfqCPhYngfpjEXOyF2qXl84+XzwWOuEZQJiBwQr64V9cK+uFfXCvrhX1wr64V9cK+uFfXCEhgGAGQiauDkISVvwjLv8xAI9DMCZEKs4AERGUCYkHBCvrhX1wr64V9cIKyABYBEx0zdAq+uEFZAAsBgDRiXAAOr64QkMAwAyC+JILP9V9cK+uFvwjLv8wDKBMSDghX1wpjzdgEQEehmBMr64V9cIKyABYDAGjEuAAdX1wr64RIdAxICgauDkISVvwjLv8AIX1wt+EZd/kL64V9cIhVnAAj/wCPf//aAAwDAQACAAMAAAAQ8888888888888888888888888888888888888888IAAAEgMA8EYIEU488o88IAMkAE808kw0888s88884wwUEsc8Uc88840888Y0MkU488s88Aoww888888888UQo888co8IY8cM88c888cs8IssIo88888888ww0UAsI88scwkockAA0884wk4cw48oo08088888MMM8A4AoUE48A4U0sc8s88Mss888kgY8888888MMMMI8cAoUos4IgQQgQ4888c84M8M8UIAEIE88848A8Yc8AoUUo4480884088o48w888888w88o888o8ssUU8c48c88sI8U8c40c888s0A8888Io8o888s844sAY4gg0g88w4Qk8ocoM8EI0w4848IIcs8844Qc80EoIo8448c80w88g0os8w80gs04wsw0088888sMUc488k08Y0oAEAQ0s8YsUc8E8M8s08UE8848cwE8Us8wc4wwcoIM8AEwUgQ04M04QAUc8sY88448cs80os884MAQM0QoMMA0IMUo8480w08488888oc880c4co884AsM8sccMMc8cAQs08MI408888888Y0Mcoow88840c84Agg0884wEAk088Egwsw488880U884oc4wMAsc8gEYIA08oMcM8888U8888U888888s8ss8E8oQ484EMYgMA04wAkwA88880s8c88888Uo0g8080U4kcgQUQcYAEoMc88os8Q4U840888scUoco88oM8AA0gAQI0oAA4o0Acg48E8U8s88888UcswgUUoc84AcMAAU0oAAsgU8YEgwc844s4888888ow4ow4wcsM04AAAUgE888848s48Ywo80o88888k8soocsscAAc8coEEc88ooEIsMsck8M88M888scwoA0ocsY4A8Y40w404ww4gYs8k08oM04sM88888csws4888IA8AAoU8888AE80UwMwcEsw80888sIMc8M84cIUkcIkQA08w0w0c8UMMsI8MsMM88888oUo4g8sQYc4sgQQ8wwwA80o0sEMY88oMI8Q0888o088w88w48Uo08swUss888o08k0480A8s04c88ssUYcMI8MMcMscc8sIo840M8888sg8McM8c8s888oc44AAw8E0I8844AMo8oU84c84MMMAwM888488sM888kc88oUQocc8Mc8Mc888c888o8kc8o8s8884AAwwgIoQ8YUsU0s08YkU8sQU08kIwckEQ8gQ8888wwwQU8M84www0oUU400084U48Q0w4EkAowg888808sUU8oo8IoUQoUE88s88s808cI4M88Ysc88888U88UQIosMcMsA8E4kEY8EM0EIsc8MYMo8sw8888Qw0UU8Yw4U888s888ww8Y8UU844w888c8wg8888888sUsc8sQcc8ssMsUw8cccsYsM80c8c88o88s88888csc88s8c88c888M8c8cc888888scs8s88888888888888888888888888888888888888888//EABQRAQAAAAAAAAAAAAAAAAAAAKD/2gAIAQMBAT8QPj//xAAUEQEAAAAAAAAAAAAAAAAAAACg/9oACAECAQE/ED4//8QAKxABAAEDAwIGAwEBAQEBAAAAAREAITEQQVEg8GGBkaHB8TBxsUDh0VBw/9oACAEBAAE/EP8A8beALcIII7I12b812N812N812N812N812N812N812N812N812Z80oMrpUKq80yjOpsiJNpD0rsb5rsb5rsb5p5MSJ4/708XwG3ZMZiX1rsf5rsb5o7XO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&quot; height=&quot;300&quot; width=&quot;300&quot;&gt;&lt;/p&gt;');
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(8, 'Easypaisa (Automatic)', '/img/paymentslogo/easypaisa.svg', 'Easypaisa (Automatic)', 'easypaisa', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"easypaisa\"}', 8, NULL),
(9, 'Jazzcash (Automatic)', '/img/paymentslogo/jazzcash.svg', 'Jazzcash (Automatic)', 'jazzcash', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"jazzcash\"}', 9, NULL),
(10, 'Instamojo', '/img/paymentslogo/instamogo.svg', 'Instamojo', 'instamojo', 1, 1000, 0, 0, 0, 'INR', '0', '{\"APIKey\":\"\",\"authToken\":\"\"}', 10, NULL),
(11, 'Cashmaal', '/img/paymentslogo/cashmaal.svg\r\n\r\n', 'Cashmaal', 'cashmaal', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"webId\":\"\"}', 11, NULL),
(12, 'Alipay', '/img/paymentslogo/alipay.svg', 'Alipay', 'alipay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"partnerId\":\"\",\"privateKey\":\"\"}', 12, NULL),
(13, 'PayU', '/img/paymentslogo/payu.svg', 'PayU', 'payU', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantKey\":\"\",\"merchantSalt\":\"\"}', 13, NULL),
(14, 'UpiApi', '/img/paymentslogo/upiapi.svg', 'UpiApi', 'upiapi', 1, 10000, 0, 0, 0, 'INR', '0', '{\"productionAPIToken\":\"0db24a5588577b522c011104d97988dd\",\"productionAPISecretKey\":\"OohbD3CGZJ\"}', 2, ''),
(15, 'Opay Express Checkout', '/img/paymentslogo/opay.svg', 'Opay Express Checkout', 'opay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"merchantId\":\"\",\"publicKey\":\"\",\"secretKey\":\"\"}', 4, ''),
(16, 'Flutterwave', '/img/paymentslogo/flutterwave-3.svg', 'Flutterwave', 'flutterwave', 1, 1000, 0, 0, 0, 'USD', '0', '{\"secretKey\":\"\"}', 5, ''),
(17, 'Stripe', '/img/paymentslogo/stripe.svg', 'Stripe', 'stripe', 1, 1000, 0, 0, 0, 'USD', '0', '{\"publishableKey\":\"\",\"secretKey\":\"\"}', 6, ''),
(18, 'Payeer', '/img/paymentslogo/payeer.svg', 'Payeer', 'payeer', 1, 1000, 0, 0, 0, 'USD', '0', '{\"shopId\":\"\",\"secretKey\":\"\"}', 5, ''),
(22, 'bharatpe', 'https://bp-wp-website-prod.s3.ap-south-1.amazonaws.com/wp-content/uploads/2023/09/bharatpe_logo.png', 'BharatPe', 'bharatpe', 1, 1000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"48298329\",\"token\":\"ba20763877814723b8bd91a90b64c403\"}', NULL, ''),
(100, 'Manual One', '/img/paymentslogo/manual.svg', 'Manual One', NULL, 1, 1, 0, 0, 0, NULL, '1', NULL, 2, '&lt;h3&gt;You Facing Any Payment Issue So contact Over Support team ☺️&lt;/h3&gt;&lt;h3&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;👇👇👇&lt;/h3&gt;&lt;h2&gt;Payment Support&amp;nbsp;&amp;nbsp;~&amp;nbsp;&amp;nbsp;&lt;a href=&quot;https://wa.me/+19096395329&quot; target=&quot;_blank&quot; style=&quot;color: rgb(28, 168, 221); background-color: rgb(255, 255, 0);&quot;&gt;WhatsApp&amp;nbsp;&lt;/a&gt;&amp;nbsp;&lt;span style=&quot;color: inherit;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/h2&gt;&lt;h2&gt;&lt;a href=&quot;http://hhhhhhjj/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(28, 168, 221);&quot;&gt;Only Payment Support Not Solve Other Issue&amp;nbsp;&lt;/a&gt;&lt;/h2&gt;&lt;p&gt;&lt;a href=&quot;http://hhhhhhjj/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(28, 168, 221); background-color: transparent;&quot;&gt;&lt;strong&gt;😍 Make&amp;nbsp;100%&amp;nbsp;Safe Payment&amp;nbsp;♻️&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;http://hhhhhhjj/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(28, 168, 221); background-color: transparent;&quot;&gt;&lt;strong&gt;😍 Paytm QR minimum Payment -&amp;nbsp;10rs&lt;/strong&gt;&lt;/a&gt;&lt;strong&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p class=&quot;ql-align-center&quot;&gt;&lt;a href=&quot;http://hhhhhhjj/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(28, 168, 221); background-color: transparent;&quot;&gt;&lt;strong&gt;😍 Use Parfact Money 💲 And Get&amp;nbsp;5%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Extra Bonus 🤩&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;'),
(101, 'Manual Two', '/img/paymentslogo/manual.svg', 'Manual Two', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 7, NULL),
(102, 'Manual Three', '/img/paymentslogo/manual.svg', 'PayPal ( international)', NULL, 1, 1, 0, 0, 0, NULL, '1', NULL, 3, '&lt;p&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(230, 0, 0); background-color: rgb(255, 255, 102);&quot;&gt;For &lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(0, 138, 0); background-color: rgb(255, 255, 102);&quot;&gt;PayPal&lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(230, 0, 0); background-color: rgb(255, 255, 102);&quot;&gt; &lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(0, 138, 0); background-color: rgb(255, 255, 102);&quot;&gt;ID &lt;/strong&gt;&lt;strong class=&quot;ql-size-large&quot; style=&quot;color: rgb(230, 0, 0); background-color: rgb(255, 255, 102);&quot;&gt;send whatsapp message or create a support ticket&lt;/strong&gt;&lt;/p&gt;'),
(103, 'Manual Four', '/img/paymentslogo/manual.svg', 'Manual Four', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 8, NULL),
(104, 'Manual Five', '/img/paymentslogo/manual.svg', 'Manual Five', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 18, NULL),
(105, 'Manual Six', '/img/paymentslogo/manual.svg', 'Manual Six', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 19, NULL),
(106, 'Manual Seven', '/img/paymentslogo/manual.svg', 'Manual Seven', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 20, NULL),
(107, 'Manual Eight', '/img/paymentslogo/manual.svg', 'Manual Eight', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 21, NULL),
(108, 'Manual Nine', '/img/paymentslogo/manual.svg', 'Manual Nine', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 22, NULL),
(109, 'Manual Ten', '/img/paymentslogo/manual.svg', 'Manual Ten', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manual','Automatic') NOT NULL DEFAULT 'Automatic',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `client_id`, `client_balance`, `payment_amount`, `payment_privatecode`, `payment_method`, `payment_status`, `payment_delivery`, `payment_note`, `payment_mode`, `payment_create_date`, `payment_update_date`, `payment_ip`, `payment_extra`, `payment_bank`, `t_id`) VALUES
(1, 1, 46.26, 10.0000, NULL, 1, '3', '2', 'No', 'Manual', '2023-09-07 05:02:12', '0000-00-00 00:00:00', '27.57.99.60', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`referral_id`, `referral_client_id`, `referral_clicks`, `referral_sign_up`, `referral_totalFunds_byReffered`, `referral_earned_commision`, `referral_requested_commision`, `referral_total_commision`, `referral_status`, `referral_code`, `referral_rejected_commision`) VALUES
(1, 1, 0, 0, 0, 0, '0', 0, '1', '612682', 0),
(2, 3, 0, 0, 0, 0, '0', 0, '1', '24bec2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL,
  `price_profit` int(11) NOT NULL,
  `service_overflow` int(11) NOT NULL DEFAULT 0,
  `service_sync` enum('0','1') NOT NULL DEFAULT '1',
  `service_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`, `service_overflow`, `service_sync`, `service_deleted`) VALUES
(1, 1, 650, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"2.98\",\"currency\":\"INR\"}', 1, 1, '2', '1', 'Instagram |- Impressions + Reach from Explore', 'Start in - 0 - 5 Minutes\r\n\r\nSpeed After Start - 5K-10K/Day\r\n\r\nLess DIlivery  - No\r\n\r\nRefill - No\r\n\r\nCancel Button - Not Working\r\n\r\nLink - Post Link\r\n\r\n➕Addition Information\r\n📈Service Grade - A\r\n➡️No Less Delivery Issue \r\n➡️Working Smooth\r\n➡️Mostly Orders Completed Within 3 Hours\r\n➡️It Takes 3 - 6 Hours to Update ', '3.874', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram |- Impressions + Reach from Explore\"}', '{\"en\":\"Start in - 0 - 5 Minutes\\r\\n\\r\\nSpeed After Start - 5K-10K\\/Day\\r\\n\\r\\nLess DIlivery  - No\\r\\n\\r\\nRefill - No\\r\\n\\r\\nCancel Button - Not Working\\r\\n\\r\\nLink - Post Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udcc8Service Grade - A\\r\\n\\u27a1\\ufe0fNo Less Delivery Issue \\r\\n\\u27a1\\ufe0fWorking Smooth\\r\\n\\u27a1\\ufe0fMostly Orders Completed Within 3 Hours\\r\\n\\u27a1\\ufe0fIt Takes 3 - 6 Hours to Update \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(2, 1, 1131, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"2.87\",\"currency\":\"INR\"}', 1, 2, '2', '1', '❤️Instagram Likes |- From Old Profiles with 6 to 15 Posts', 'Start - Instant \r\n\r\nSpeed -  30K in Day Easily \r\n\r\nQuality - Old Profiles with 6 to 15 Posts\r\n\r\nDrop - No Drop\r\n\r\nRefill - Lifetime \r\n\r\n🔗Link  - Post Link\r\n\r\n➕Addition Information \r\n📊Service Grade - A Grade\r\n➡️Recommended For Resellers\r\n➡️Speed UP Also Possible \r\n➡️Mostly Orders Complete Within 30 Minutes ', '3.731', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\u2764\\ufe0fInstagram Likes |- From Old Profiles with 6 to 15 Posts\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed -  30K in Day Easily \\r\\n\\r\\nQuality - Old Profiles with 6 to 15 Posts\\r\\n\\r\\nDrop - No Drop\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\n\\ud83d\\udd17Link  - Post Link\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\u27a1\\ufe0fRecommended For Resellers\\r\\n\\u27a1\\ufe0fSpeed UP Also Possible \\r\\n\\u27a1\\ufe0fMostly Orders Complete Within 30 Minutes \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(3, 1, 1705, '2', '{\"min\":\"10\",\"max\":\"3000\",\"rate\":\"5.87\",\"currency\":\"INR\"}', 1, 3, '2', '1', '👥Instagram Bot Followers |- No Refill', 'Start in - 0 - 2 Hours\r\n\r\nSpeed After Start - 1K-3K/Day\r\n\r\nQuality - Bot\r\n\r\nDrop Ratio - High Drop\r\n\r\nRefill - Not Possible \r\n\r\nCancel Button - Working\r\n\r\nLink - Profile Link\r\n\r\n➕Addition Information\r\n\r\n📈Service Grade - C\r\n➡️Have High Drop\r\n➡️Not Reccomended\r\n➡️Speed Up Psssible \r\n➡️Some Time Drops Starts Instantly', '7.631', 10, 3000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Bot Followers |- No Refill\"}', '{\"en\":\"Start in - 0 - 2 Hours\\r\\n\\r\\nSpeed After Start - 1K-3K\\/Day\\r\\n\\r\\nQuality - Bot\\r\\n\\r\\nDrop Ratio - High Drop\\r\\n\\r\\nRefill - Not Possible \\r\\n\\r\\nCancel Button - Working\\r\\n\\r\\nLink - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\r\\n\\ud83d\\udcc8Service Grade - C\\r\\n\\u27a1\\ufe0fHave High Drop\\r\\n\\u27a1\\ufe0fNot Reccomended\\r\\n\\u27a1\\ufe0fSpeed Up Psssible \\r\\n\\u27a1\\ufe0fSome Time Drops Starts Instantly\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(4, 1, 1806, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"26.6\",\"currency\":\"INR\"}', 1, 4, '2', '1', 'Instagram Followers |-💧 0 - 10% Drop Normally - 🇮🇳𝐌𝐨𝐬𝐭𝐥𝐲 𝐈𝐧𝐝𝐢𝐚𝐧 𝐍𝐚𝐦𝐞𝐬 - No Refill', 'Start -  0 - 5 Minutes Normally \r\n\r\nQuality - Mostly Old Indian Profiles \r\n\r\nSpeed - Easily 20K to 30K Per Day \r\n\r\nDrop Ratio - 0 - 10% Normally \r\n\r\nRefill - No Refill Possible \r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - B+ Grade\r\n', '34.58', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7 0 - 10% Drop Normally - \\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udc0c\\ud835\\udc28\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc25\\ud835\\udc32 \\ud835\\udc08\\ud835\\udc27\\ud835\\udc1d\\ud835\\udc22\\ud835\\udc1a\\ud835\\udc27 \\ud835\\udc0d\\ud835\\udc1a\\ud835\\udc26\\ud835\\udc1e\\ud835\\udc2c - No Refill\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nQuality - Mostly Old Indian Profiles \\r\\n\\r\\nSpeed - Easily 20K to 30K Per Day \\r\\n\\r\\nDrop Ratio - 0 - 10% Normally \\r\\n\\r\\nRefill - No Refill Possible \\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - B+ Grade\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(5, 1, 1571, '2', '{\"min\":\"50\",\"max\":\"250000\",\"rate\":\"38.9\",\"currency\":\"INR\"}', 2, 5, '2', '1', 'Instagram Followers |-💧𝟭𝟬𝟬% 𝗡𝗼𝗻 𝗗𝗿𝗼𝗽 - 60K/Day - ♻️Lifetime  -🔥𝐀𝐥𝐰𝐚𝐲𝐬 𝐖𝐨𝐫𝐤𝐬', 'Start in - 0 - 2 Minutes Normally\r\n\r\nSpeed After Start - Approx. 50K - 60K/Day\r\n\r\nQuality - Old Accounts With Posts\r\n\r\nDrop - Non Drop\r\n\r\nRefill - Lifetime [ Button Working ]\r\n\r\nLook -World Wide\r\n\r\nBase - 250K\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰+ Grade\r\n♻️Refill Button Always Working\r\n🤝Good Support In this Service ', '50.57', 50, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7\\ud835\\udfed\\ud835\\udfec\\ud835\\udfec% \\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - 60K\\/Day - \\u267b\\ufe0fLifetime  -\\ud83d\\udd25\\ud835\\udc00\\ud835\\udc25\\ud835\\udc30\\ud835\\udc1a\\ud835\\udc32\\ud835\\udc2c \\ud835\\udc16\\ud835\\udc28\\ud835\\udc2b\\ud835\\udc24\\ud835\\udc2c\"}', '{\"en\":\"Start in - 0 - 2 Minutes Normally\\r\\n\\r\\nSpeed After Start - Approx. 50K - 60K\\/Day\\r\\n\\r\\nQuality - Old Accounts With Posts\\r\\n\\r\\nDrop - Non Drop\\r\\n\\r\\nRefill - Lifetime [ Button Working ]\\r\\n\\r\\nLook -World Wide\\r\\n\\r\\nBase - 250K\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dGood Support In this Service \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(6, 1, 1777, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"33.3\",\"currency\":\"INR\"}', 2, 6, '2', '1', 'Instagram Followers |- Almost Stable -  20K Per Day -🔄️ 365 Days ', 'Service Last Updated in - 01-08-2023\r\n\r\nStart -  Almost Instant \r\n\r\nSpeed - Approx. 20K  Per Day \r\n\r\nDrop Ratio - Almost Stable \r\n\r\nRefill - 365 Days \r\n\r\nQuality - Real High \r\n\r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰Grade', '43.29', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- Almost Stable -  20K Per Day -\\ud83d\\udd04\\ufe0f 365 Days \"}', '{\"en\":\"Service Last Updated in - 01-08-2023\\r\\n\\r\\nStart -  Almost Instant \\r\\n\\r\\nSpeed - Approx. 20K  Per Day \\r\\n\\r\\nDrop Ratio - Almost Stable \\r\\n\\r\\nRefill - 365 Days \\r\\n\\r\\nQuality - Real High \\r\\n\\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70Grade\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(7, 1, 1435, '2', '{\"min\":\"100\",\"max\":\"3000000\",\"rate\":\"39.78\",\"currency\":\"INR\"}', 2, 7, '2', '1', 'Instagram Followers |- 👑𝐏𝐞𝐫𝐦𝐚𝐧𝐞𝐧𝐭', 'Start in - 1- 5 Minutes Normally\r\n\r\nQuality - Premium \r\n\r\nSpeed After Start - Approx. 40K - 60K/Day\r\n\r\nDrop Ratio -  Zero Present [ Duo To Daily Refill ]\r\n\r\nRefill - Lifetime \r\n\r\nLook - Real \r\n. \r\nLink - Profile URL\r\n\r\n➕Addition Information \r\n📊Service Grade - 🅰+Grade\r\n👑King of Market\r\n🌠Daily Refill At 2 Am\r\n💎No Drop From Last 2 Years', '51.714', 100, 3000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udc51\\ud835\\udc0f\\ud835\\udc1e\\ud835\\udc2b\\ud835\\udc26\\ud835\\udc1a\\ud835\\udc27\\ud835\\udc1e\\ud835\\udc27\\ud835\\udc2d\"}', '{\"en\":\"Start in - 1- 5 Minutes Normally\\r\\n\\r\\nQuality - Premium \\r\\n\\r\\nSpeed After Start - Approx. 40K - 60K\\/Day\\r\\n\\r\\nDrop Ratio -  Zero Present [ Duo To Daily Refill ]\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\nLook - Real \\r\\n. \\r\\nLink - Profile URL\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\ud83d\\udc51King of Market\\r\\n\\ud83c\\udf20Daily Refill At 2 Am\\r\\n\\ud83d\\udc8eNo Drop From Last 2 Years\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(8, 1, 1399, '2', '{\"min\":\"20\",\"max\":\"450000\",\"rate\":\"47.7\",\"currency\":\"INR\"}', 2, 8, '2', '1', 'Instagram Followers |- 🔥Non Drop - Old Accounts - Lifetime - 𝗙𝗮𝘀𝘁𝗲𝘀𝘁 𝗜𝗻 𝗠𝗮𝗿𝗸𝗲𝘁 ⚡⚡', '➡️Philippines Special Import\r\n➡️Service Grade - 🅰+Grade\r\n➡️Fastest Service in Market\r\n➡️Best For Big Orders \r\n\r\n▶️Start in- Instant\r\n\r\n⏳Speed After Start  - Approx. 200K/Day\r\n\r\n💎Quality - Premium \r\n\r\n🔥Drop - Non Drop\r\n\r\n♻️Refill - Lifetime ( Button Working ) \r\n\r\n📍Look - Englisher \r\n\r\n🐘Base - 450K\r\n\r\n✖️Cancel - Accepted Within 1 minutes\r\n\r\n🔗Link - Profile URL\r\n', '62.01', 20, 450000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udd25Non Drop - Old Accounts - Lifetime - \\ud835\\uddd9\\ud835\\uddee\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00\\ud835\\ude01 \\ud835\\udddc\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddee\\ud835\\uddff\\ud835\\uddf8\\ud835\\uddf2\\ud835\\ude01 \\u26a1\\u26a1\"}', '{\"en\":\"\\u27a1\\ufe0fPhilippines Special Import\\r\\n\\u27a1\\ufe0fService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fFastest Service in Market\\r\\n\\u27a1\\ufe0fBest For Big Orders \\r\\n\\r\\n\\u25b6\\ufe0fStart in- Instant\\r\\n\\r\\n\\u23f3Speed After Start  - Approx. 200K\\/Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Premium \\r\\n\\r\\n\\ud83d\\udd25Drop - Non Drop\\r\\n\\r\\n\\u267b\\ufe0fRefill - Lifetime ( Button Working ) \\r\\n\\r\\n\\ud83d\\udccdLook - Englisher \\r\\n\\r\\n\\ud83d\\udc18Base - 450K\\r\\n\\r\\n\\u2716\\ufe0fCancel - Accepted Within 1 minutes\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(9, 1, 1564, '2', '{\"min\":\"20\",\"max\":\"800000\",\"rate\":\"34.7\",\"currency\":\"INR\"}', 2, 9, '2', '1', 'Instagram Followers |-🔥Non Drop - All Old Accounts  - 100K+/Day [ LifeTime ] - 👑 𝗕𝗘𝗦𝗧 𝗦𝗘𝗟𝗟𝗘𝗥', '➡️Norway Special Import\r\n➡️Our Best Selling Service \r\n➡️Service Grade - 🅰+Grade\r\n➡️No Drop Issue \r\n\r\nStart in - Instant \r\n\r\nSpeed After Start - Approx. 100K/Day\r\n\r\nQuality - Old Accounts With Posts\r\n\r\nDrop - Non DROP\r\n\r\nRefill - Lifetime [ Button Working ]\r\n\r\nLook - World Wide \r\n\r\nCancel -  Accepted Within 15 Minutes\r\n\r\nBase - 800K\r\n\r\n🔗Link - Profile URL\r\n\r\n\r\n\r\n', '45.11', 20, 800000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udd25Non Drop - All Old Accounts  - 100K+\\/Day [ LifeTime ] - \\ud83d\\udc51 \\ud835\\uddd5\\ud835\\uddd8\\ud835\\udde6\\ud835\\udde7 \\ud835\\udde6\\ud835\\uddd8\\ud835\\udddf\\ud835\\udddf\\ud835\\uddd8\\ud835\\udde5\"}', '{\"en\":\"\\u27a1\\ufe0fNorway Special Import\\r\\n\\u27a1\\ufe0fOur Best Selling Service \\r\\n\\u27a1\\ufe0fService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fNo Drop Issue \\r\\n\\r\\nStart in - Instant \\r\\n\\r\\nSpeed After Start - Approx. 100K\\/Day\\r\\n\\r\\nQuality - Old Accounts With Posts\\r\\n\\r\\nDrop - Non DROP\\r\\n\\r\\nRefill - Lifetime [ Button Working ]\\r\\n\\r\\nLook - World Wide \\r\\n\\r\\nCancel -  Accepted Within 15 Minutes\\r\\n\\r\\nBase - 800K\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(10, 1, 1363, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"50\",\"currency\":\"INR\"}', 3, 10, '2', '1', '👥Instagram Followers |-🔥Non Drop - 𝟮𝟬𝟬𝗞+ 𝗣𝗲𝗿 𝗗𝗮𝘆 - R365 - 𝐈𝐧𝐬𝐭𝐚𝐧𝐭 𝐂𝐨𝐦𝐩𝐥𝐞𝐭𝐞 ⚡⚡', '▶️Start in - Instant \r\n\r\n⏳Speed After Start - Approx. 200K+/Day\r\n\r\n💎Quality - Supper High\r\n\r\n🔥Drop - Non Drop\r\n\r\n♻️Refill -  365 Days [ Button Working ]\r\n\r\n📍Look - All Account With DP and Posts\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰 Grade\r\n🔥Good For Big Orders\r\n♻️Refill Button Always Working\r\n🤝Fastest Service In The Market ', '65', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udd25Non Drop - \\ud835\\udfee\\ud835\\udfec\\ud835\\udfec\\ud835\\uddde+ \\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06 - R365 - \\ud835\\udc08\\ud835\\udc27\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc1a\\ud835\\udc27\\ud835\\udc2d \\ud835\\udc02\\ud835\\udc28\\ud835\\udc26\\ud835\\udc29\\ud835\\udc25\\ud835\\udc1e\\ud835\\udc2d\\ud835\\udc1e \\u26a1\\u26a1\"}', '{\"en\":\"\\u25b6\\ufe0fStart in - Instant \\r\\n\\r\\n\\u23f3Speed After Start - Approx. 200K+\\/Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Supper High\\r\\n\\r\\n\\ud83d\\udd25Drop - Non Drop\\r\\n\\r\\n\\u267b\\ufe0fRefill -  365 Days [ Button Working ]\\r\\n\\r\\n\\ud83d\\udccdLook - All Account With DP and Posts\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70 Grade\\r\\n\\ud83d\\udd25Good For Big Orders\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dFastest Service In The Market \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(11, 1, 1397, '2', '{\"min\":\"50\",\"max\":\"300000\",\"rate\":\"33.8\",\"currency\":\"INR\"}', 3, 11, '2', '1', '👥Instagram Followers |- 𝟰𝟬𝗞/𝗗𝗮𝘆 - 💧𝟬-𝟮% 𝗗𝗿𝗼𝗽 - 🔄️ Refill Button Working For 1 Year ', 'Start - 0 - 5 Minutes \r\n\r\nSpeed - Approx. 40K/Day \r\n\r\nQuality - Old Accounts Database \r\n\r\nDrop Ratio - 0-2% Normally \r\n\r\nRefill -  Button Working For 365 Day\\\'s \r\n\r\nLook - Short Name \r\n\r\nCancel - manual By Ticket\r\n\r\n🔗Link  - Profile URL', '43.94', 50, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- \\ud835\\udff0\\ud835\\udfec\\ud835\\uddde\\/\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06 - \\ud83d\\udca7\\ud835\\udfec-\\ud835\\udfee% \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - \\ud83d\\udd04\\ufe0f Refill Button Working For 1 Year \"}', '{\"en\":\"Start - 0 - 5 Minutes \\r\\n\\r\\nSpeed - Approx. 40K\\/Day \\r\\n\\r\\nQuality - Old Accounts Database \\r\\n\\r\\nDrop Ratio - 0-2% Normally \\r\\n\\r\\nRefill -  Button Working For 365 Day\\\\\'s \\r\\n\\r\\nLook - Short Name \\r\\n\\r\\nCancel - manual By Ticket\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(12, 1, 1404, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"37.8\",\"currency\":\"INR\"}', 3, 12, '2', '1', '👥Instagram Followers |- Supper Stable - ♻️𝗥𝗲𝗮𝗹 𝟯𝟲𝟱 𝗗𝗮𝘆𝘀 𝗔𝘂𝘁𝗼 𝗥𝗲𝗳𝗶𝗹𝗹 ', '📊Service Grade - 🅰++Grade\r\n➡️Auto Refill  100% Working \r\n➡️Best Service In Update \r\n➡️Best Unstable  Accounts \r\n\r\n\r\nStart - 0 - 5 Minutes Normally \r\n\r\nSpeed - Approx. 30K - 50K/Day \r\n\r\nQuality - Old Account [ Best Database ]\r\n\r\nDrop - Zero Drop { No Drop Issue )\r\n\r\nRefill - 365 Days Auto Refill \r\n\r\nLook - Worldwide \r\n\r\nCancel - Manual By Ticket \r\n\r\nLink  - Profile URL\r\n', '49.14', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Supper Stable - \\u267b\\ufe0f\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddee\\ud835\\uddf9 \\ud835\\udfef\\ud835\\udff2\\ud835\\udff1 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 \\ud835\\uddd4\\ud835\\ude02\\ud835\\ude01\\ud835\\uddfc \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \"}', '{\"en\":\"\\ud83d\\udccaService Grade - \\ud83c\\udd70++Grade\\r\\n\\u27a1\\ufe0fAuto Refill  100% Working \\r\\n\\u27a1\\ufe0fBest Service In Update \\r\\n\\u27a1\\ufe0fBest Unstable  Accounts \\r\\n\\r\\n\\r\\nStart - 0 - 5 Minutes Normally \\r\\n\\r\\nSpeed - Approx. 30K - 50K\\/Day \\r\\n\\r\\nQuality - Old Account [ Best Database ]\\r\\n\\r\\nDrop - Zero Drop { No Drop Issue )\\r\\n\\r\\nRefill - 365 Days Auto Refill \\r\\n\\r\\nLook - Worldwide \\r\\n\\r\\nCancel - Manual By Ticket \\r\\n\\r\\nLink  - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(13, 1, 1417, '2', '{\"min\":\"10\",\"max\":\"650000\",\"rate\":\"33.5\",\"currency\":\"INR\"}', 4, 13, '2', '1', '👥Instagram Followers |-🔥Non Drop - 60K/Day - 𝗥𝗲𝘀𝗲𝗹𝗹𝗲𝗿𝘀 𝗖𝗵𝗼𝗶𝗰𝗲', '➡️Philippines Special Import\r\n📊Service Grade - 🅰+ Grade\r\n♻️Refill Button Always Working\r\n🤝Instant Cancel Available  \r\n\r\n\r\nStart in - Instant\r\n\r\nSpeed After Start - Approx. 70K - 80K/Day\r\n\r\nQuality - Supper High\r\n\r\nDrop -  Non Drop\r\n\r\nRefill - Lifetime (Button Working)\r\n\r\nLook - Worldwide \r\n\r\n✖️Cancel - Accepted Within 30 Seconds \r\n\r\n🐘Base - 650K\r\n\r\n🔗Link  - Profile URL', '43.55', 10, 650000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udd25Non Drop - 60K\\/Day - \\ud835\\udde5\\ud835\\uddf2\\ud835\\ude00\\ud835\\uddf2\\ud835\\uddf9\\ud835\\uddf9\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude00 \\ud835\\uddd6\\ud835\\uddf5\\ud835\\uddfc\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf2\"}', '{\"en\":\"\\u27a1\\ufe0fPhilippines Special Import\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1dInstant Cancel Available  \\r\\n\\r\\n\\r\\nStart in - Instant\\r\\n\\r\\nSpeed After Start - Approx. 70K - 80K\\/Day\\r\\n\\r\\nQuality - Supper High\\r\\n\\r\\nDrop -  Non Drop\\r\\n\\r\\nRefill - Lifetime (Button Working)\\r\\n\\r\\nLook - Worldwide \\r\\n\\r\\n\\u2716\\ufe0fCancel - Accepted Within 30 Seconds \\r\\n\\r\\n\\ud83d\\udc18Base - 650K\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(14, 1, 1586, '2', '{\"min\":\"100\",\"max\":\"10000000\",\"rate\":\"58.6\",\"currency\":\"INR\"}', 4, 14, '2', '1', '👥Instagram Followers |- Stable - 𝗔𝘀𝗶𝗮𝗻 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀 - Lifetime Refill♻️', 'Start in  - 0 - 2 Minutes \r\n\r\nSpeed - 50k-70k/Day \r\n\r\nQuality - Old Account [ With Posts ]\r\n\r\nDrop Ratio - Stable\r\n\r\nRefill - Lifetime Refill { Button Working }\r\n\r\nLook - Asian Mix \r\n\r\nBase - 10 Million \r\n\r\n🔗Link  - Profile Url\r\n\r\n➕Addition Information \r\n📊Service Grade - 🅰+ Grade\r\n➡️Refill Button Always Works\r\n➡️No Drop Issue in this service \r\n➡️Biggest Base Service', '76.18', 100, 10000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Stable - \\ud835\\uddd4\\ud835\\ude00\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00 - Lifetime Refill\\u267b\\ufe0f\"}', '{\"en\":\"Start in  - 0 - 2 Minutes \\r\\n\\r\\nSpeed - 50k-70k\\/Day \\r\\n\\r\\nQuality - Old Account [ With Posts ]\\r\\n\\r\\nDrop Ratio - Stable\\r\\n\\r\\nRefill - Lifetime Refill { Button Working }\\r\\n\\r\\nLook - Asian Mix \\r\\n\\r\\nBase - 10 Million \\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Url\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+ Grade\\r\\n\\u27a1\\ufe0fRefill Button Always Works\\r\\n\\u27a1\\ufe0fNo Drop Issue in this service \\r\\n\\u27a1\\ufe0fBiggest Base Service\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(15, 1, 1394, '2', '{\"min\":\"200\",\"max\":\"2000000\",\"rate\":\"42.89\",\"currency\":\"INR\"}', 4, 15, '2', '1', '👥Instagram Followers |- 50K/Day - Lifetime -🔥𝗕𝗲𝘀𝘁 𝗙𝗼𝗿 𝗨𝗻𝘀𝘁𝗮𝗯𝗹𝗲 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀', '➕Addition Information \r\n📊Service Grade - 🅰+Grade\r\n➡️Best Service For Unstable Accounts \r\n➡️Trusted  By Admin\r\n➡️No Drop Issue In This Service \r\n➡️ Special Import From Spain \r\n \r\nStart in - 0 - 2 Minutes  Normally \r\n\r\nSpeed - 40K - 50K Per Day \r\n\r\nQuality - Best Old Data Base \r\n\r\nDrop - No Drop Issue \r\n\r\nRefill - Lifetime  [ 𝗥𝗲𝗳𝗶𝗹𝗹 𝗕𝘂𝘁𝘁𝗼𝗻 𝗔𝗹𝘄𝗮𝘆𝘀 𝗪𝗼𝗿𝗸𝘀 ]\r\n\r\n🔗Link  - Profile URL\r\n\r\n\r\n', '55.757', 200, 2000000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- 50K\\/Day - Lifetime -\\ud83d\\udd25\\ud835\\uddd5\\ud835\\uddf2\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd9\\ud835\\uddfc\\ud835\\uddff \\ud835\\udde8\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00\"}', '{\"en\":\"\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\u27a1\\ufe0fBest Service For Unstable Accounts \\r\\n\\u27a1\\ufe0fTrusted  By Admin\\r\\n\\u27a1\\ufe0fNo Drop Issue In This Service \\r\\n\\u27a1\\ufe0f Special Import From Spain \\r\\n \\r\\nStart in - 0 - 2 Minutes  Normally \\r\\n\\r\\nSpeed - 40K - 50K Per Day \\r\\n\\r\\nQuality - Best Old Data Base \\r\\n\\r\\nDrop - No Drop Issue \\r\\n\\r\\nRefill - Lifetime  [ \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \\ud835\\uddd5\\ud835\\ude02\\ud835\\ude01\\ud835\\ude01\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd4\\ud835\\uddf9\\ud835\\ude04\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf8\\ud835\\ude00 ]\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile URL\\r\\n\\r\\n\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(16, 1, 1442, '2', '{\"min\":\"50\",\"max\":\"600000\",\"rate\":\"44.3\",\"currency\":\"INR\"}', 4, 16, '2', '1', '👥Instagram Followers |-💧𝟬% 𝗗𝗿𝗼𝗽 - ♻️Lifetime Refill - 𝗥𝗲𝗰𝗼𝗺𝗺𝗲𝗻𝗱𝗲𝗱 𝗕𝘆 𝗔𝗱𝗺𝗶𝗻', 'Recommended By Admin \r\nUnlimited Refill \r\nRefill Button Active For 365 Days\r\n\r\nStart in - 0 - 2 Minutes \r\n\r\nSpeed After Start - 60K - 70K/Day \r\n\r\nQuality - Supper High\r\n\r\nDrop Ratio - 0% Drop\r\n\r\nRefill - Lifetime ( Button Always Work )\r\n\r\nLook - English And Asian Mix\r\n\r\nCancel - manual Support \r\n\r\nLink - Profile URL\r\n', '57.59', 50, 600000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-\\ud83d\\udca7\\ud835\\udfec% \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd - \\u267b\\ufe0fLifetime Refill - \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf0\\ud835\\uddfc\\ud835\\uddfa\\ud835\\uddfa\\ud835\\uddf2\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\uddd5\\ud835\\ude06 \\ud835\\uddd4\\ud835\\uddf1\\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\"}', '{\"en\":\"Recommended By Admin \\r\\nUnlimited Refill \\r\\nRefill Button Active For 365 Days\\r\\n\\r\\nStart in - 0 - 2 Minutes \\r\\n\\r\\nSpeed After Start - 60K - 70K\\/Day \\r\\n\\r\\nQuality - Supper High\\r\\n\\r\\nDrop Ratio - 0% Drop\\r\\n\\r\\nRefill - Lifetime ( Button Always Work )\\r\\n\\r\\nLook - English And Asian Mix\\r\\n\\r\\nCancel - manual Support \\r\\n\\r\\nLink - Profile URL\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(17, 1, 1449, '2', '{\"min\":\"100\",\"max\":\"250000\",\"rate\":\"36.4\",\"currency\":\"INR\"}', 4, 17, '2', '1', '👥Instagram Followers |- Ultra Stable - Lifetime - 𝗨𝗻𝗹𝗶𝗺𝗶𝘁𝗲𝗱 𝗥𝗲𝗳𝗶𝗹𝗹', '▶️Start - 0 - 5 Minutes Normally\r\n\r\n⏳Speed - Approx. 50K Per Day\r\n\r\n💎Quality - Old Database\r\n\r\n🔥Drop Ratio - Stable \r\n\r\n♻️Refill - 365 Days [ Button Working ]\r\n\r\n📍Look - Asian Mix\r\n\r\n✖️Cancel - Take 12 - 24 hours\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰+Grade\r\n🔥Good For Small Sellers\r\n💨Speed is Good \r\n♻️100% Refill guarantee By Admin', '47.32', 100, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Ultra Stable - Lifetime - \\ud835\\udde8\\ud835\\uddfb\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddfa\\ud835\\uddf6\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9\"}', '{\"en\":\"\\u25b6\\ufe0fStart - 0 - 5 Minutes Normally\\r\\n\\r\\n\\u23f3Speed - Approx. 50K Per Day\\r\\n\\r\\n\\ud83d\\udc8eQuality - Old Database\\r\\n\\r\\n\\ud83d\\udd25Drop Ratio - Stable \\r\\n\\r\\n\\u267b\\ufe0fRefill - 365 Days [ Button Working ]\\r\\n\\r\\n\\ud83d\\udccdLook - Asian Mix\\r\\n\\r\\n\\u2716\\ufe0fCancel - Take 12 - 24 hours\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70+Grade\\r\\n\\ud83d\\udd25Good For Small Sellers\\r\\n\\ud83d\\udca8Speed is Good \\r\\n\\u267b\\ufe0f100% Refill guarantee By Admin\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(18, 1, 1563, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"28.98\",\"currency\":\"INR\"}', 5, 18, '2', '1', '👥Instagram Followers |- Old Account - 60K/Day - 30 Day Refill Button 🔂', 'Start in -  0 - 10 Minutes\r\n\r\nSpeed After Start - 50K-60K/Day \r\n\r\nQuality - Old Accounts \r\n\r\nDrop Ratio - 0-5%\r\n\r\nRefill - 30 Days [ Button Working ]\r\n\r\nCancel -  Button Works  \r\n\r\nBase - 250K\r\n\r\nLink  - Profile Link\r\n\r\n\r\n➕Addition Information \r\n📈Service Grade 🅰\r\n🔄Unlimited Refill Limit \r\n🔄Refill Button Works Instant & Automatically  \r\n', '37.674', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Old Account - 60K\\/Day - 30 Day Refill Button \\ud83d\\udd02\"}', '{\"en\":\"Start in -  0 - 10 Minutes\\r\\n\\r\\nSpeed After Start - 50K-60K\\/Day \\r\\n\\r\\nQuality - Old Accounts \\r\\n\\r\\nDrop Ratio - 0-5%\\r\\n\\r\\nRefill - 30 Days [ Button Working ]\\r\\n\\r\\nCancel -  Button Works  \\r\\n\\r\\nBase - 250K\\r\\n\\r\\nLink  - Profile Link\\r\\n\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udcc8Service Grade \\ud83c\\udd70\\r\\n\\ud83d\\udd04Unlimited Refill Limit \\r\\n\\ud83d\\udd04Refill Button Works Instant & Automatically  \\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(19, 1, 1161, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"26.89\",\"currency\":\"INR\"}', 5, 19, '2', '1', '👥Instagram Followers |- Less Drop  - Application Data - 30 Day Refill Button 🔂', 'Start in - 0 - 15 Minutes Normally\r\n\r\nSpeed After Start - Approx. 15K+/Day\r\n\r\nQuality - Real Mix Accounts\r\n\r\nDrop - Almost Stable\r\n\r\nRefill -  30 Days [ Button Working ] \r\n\r\nLook - Worldwide\r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - 🅱+ Grade\r\n♻️Refill Button Always Working\r\n🤞🏻Good For Small Orders', '34.957', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Less Drop  - Application Data - 30 Day Refill Button \\ud83d\\udd02\"}', '{\"en\":\"Start in - 0 - 15 Minutes Normally\\r\\n\\r\\nSpeed After Start - Approx. 15K+\\/Day\\r\\n\\r\\nQuality - Real Mix Accounts\\r\\n\\r\\nDrop - Almost Stable\\r\\n\\r\\nRefill -  30 Days [ Button Working ] \\r\\n\\r\\nLook - Worldwide\\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd71+ Grade\\r\\n\\u267b\\ufe0fRefill Button Always Working\\r\\n\\ud83e\\udd1e\\ud83c\\udffbGood For Small Orders\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(20, 1, 1776, '2', '{\"min\":\"10\",\"max\":\"250000\",\"rate\":\"46.64\",\"currency\":\"INR\"}', 5, 20, '2', '1', '👥Instagram Followers |- Long Name [Old Data Base] - 30K/Day - 30 Day Refill  Button🔂', '▶️Start in -  Instant \r\n\r\n⏳Speed After Start - 30K/Day \r\n\r\n💎Quality - Long  Old Data base \r\n\r\n🔥Drop Ratio - Non Drop \r\n\r\n♻️Refill - 30 Days ( Button Always Work )\r\n\r\n✖️Cancel -  Button Working \r\n\r\n🐘Base - 250K\r\n\r\n🔗Link  - Profile Link\r\n\r\n\r\n➕Addition Information \r\n📈Service Grade A+\r\n🔄Refill Button Active After 30 minutes of order completion\r\n🔄Refill Button Works Instant & Automatically  \r\n', '60.632', 10, 250000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |- Long Name [Old Data Base] - 30K\\/Day - 30 Day Refill  Button\\ud83d\\udd02\"}', '{\"en\":\"\\u25b6\\ufe0fStart in -  Instant \\r\\n\\r\\n\\u23f3Speed After Start - 30K\\/Day \\r\\n\\r\\n\\ud83d\\udc8eQuality - Long  Old Data base \\r\\n\\r\\n\\ud83d\\udd25Drop Ratio - Non Drop \\r\\n\\r\\n\\u267b\\ufe0fRefill - 30 Days ( Button Always Work )\\r\\n\\r\\n\\u2716\\ufe0fCancel -  Button Working \\r\\n\\r\\n\\ud83d\\udc18Base - 250K\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Link\\r\\n\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udcc8Service Grade A+\\r\\n\\ud83d\\udd04Refill Button Active After 30 minutes of order completion\\r\\n\\ud83d\\udd04Refill Button Works Instant & Automatically  \\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(21, 1, 1532, '2', '{\"min\":\"10\",\"max\":\"200000\",\"rate\":\"36.7\",\"currency\":\"INR\"}', 5, 21, '2', '1', '👥Instagram Followers |-  𝗗𝗿𝗶𝗽 𝗙𝗲𝗲𝗱 𝗘𝗻𝗮𝗯𝗹𝗲 - 90 Days Refill ', 'Start - 0 -1 Hour Normally\r\n\r\nSpeed - 30K-50K/Day \r\n\r\nQuality - Old\r\n\r\nDrop Ratio - No\r\n\r\nRefill - 365 Days [ Button Working ]\r\n\r\nCancel - Button Working \r\n\r\n🔗Link - Profile URL\r\n\r\n➕Addition Information\r\n📊Service Grade - AGrade', '47.71', 10, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Followers |-  \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddf6\\ud835\\uddfd \\ud835\\uddd9\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 \\ud835\\uddd8\\ud835\\uddfb\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2 - 90 Days Refill \"}', '{\"en\":\"Start - 0 -1 Hour Normally\\r\\n\\r\\nSpeed - 30K-50K\\/Day \\r\\n\\r\\nQuality - Old\\r\\n\\r\\nDrop Ratio - No\\r\\n\\r\\nRefill - 365 Days [ Button Working ]\\r\\n\\r\\nCancel - Button Working \\r\\n\\r\\n\\ud83d\\udd17Link - Profile URL\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - AGrade\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(22, 1, 1805, '2', '{\"min\":\"10\",\"max\":\"300000\",\"rate\":\"29.96\",\"currency\":\"INR\"}', 5, 22, '2', '1', 'Instagram Followers |- No Drop - 𝟳 𝘁𝗼 𝟵 𝗣𝗼𝘀𝘁 𝗔𝗰𝗰𝗼𝘂𝗻𝘁𝘀 -🔄️ 30 Days Refill With Button', 'Start -  0 - 5 Minutes Normally \r\n\r\nSpeed - Approx. 15K to 30K Per Day \r\n\r\nDrop Ratio - No Drop\r\n\r\nRefill - 30 Days  With Button \r\n\r\nQuality - Worldwide\r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - 🅰 Grade\r\nDiscount not Possible In this Service ', '38.948', 10, 300000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- No Drop - \\ud835\\udff3 \\ud835\\ude01\\ud835\\uddfc \\ud835\\udff5 \\ud835\\udde3\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd4\\ud835\\uddf0\\ud835\\uddf0\\ud835\\uddfc\\ud835\\ude02\\ud835\\uddfb\\ud835\\ude01\\ud835\\ude00 -\\ud83d\\udd04\\ufe0f 30 Days Refill With Button\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nSpeed - Approx. 15K to 30K Per Day \\r\\n\\r\\nDrop Ratio - No Drop\\r\\n\\r\\nRefill - 30 Days  With Button \\r\\n\\r\\nQuality - Worldwide\\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - \\ud83c\\udd70 Grade\\r\\nDiscount not Possible In this Service \"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(23, 1, 1804, '2', '{\"min\":\"10\",\"max\":\"500000\",\"rate\":\"37.5\",\"currency\":\"INR\"}', 5, 23, '2', '1', 'Instagram Followers |- 🔥𝗡𝗼 𝗗𝗿𝗼𝗽 𝗜𝘀𝘀𝘂𝗲 - Old Accounts - ⚡𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗦𝘁𝗮𝗿𝘁 -  Refill Button Working For  90 Days', 'Start - Normally Instantly\r\n\r\nSpeed After Start - Approx.30K To 50 In Day\r\n\r\nQuality - All Old Accounts \r\n\r\nDrop - No Drop Issue \r\n\r\nRefill - 90 Days Button + (275 Days Manual By Ticket)\r\n\r\nLook - English\r\n\r\n🔗Link  - Profile Link\r\n\r\n➕Addition Information\r\n📊Service Grade - A Grade\r\n🤝Good Support In this Service', '48.75', 10, 500000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |- \\ud83d\\udd25\\ud835\\udde1\\ud835\\uddfc \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udddc\\ud835\\ude00\\ud835\\ude00\\ud835\\ude02\\ud835\\uddf2 - Old Accounts - \\u26a1\\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 -  Refill Button Working For  90 Days\"}', '{\"en\":\"Start - Normally Instantly\\r\\n\\r\\nSpeed After Start - Approx.30K To 50 In Day\\r\\n\\r\\nQuality - All Old Accounts \\r\\n\\r\\nDrop - No Drop Issue \\r\\n\\r\\nRefill - 90 Days Button + (275 Days Manual By Ticket)\\r\\n\\r\\nLook - English\\r\\n\\r\\n\\ud83d\\udd17Link  - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\ud83e\\udd1dGood Support In this Service\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(24, 1, 330, '2', '{\"min\":\"50\",\"max\":\"200000\",\"rate\":\"39.7\",\"currency\":\"INR\"}', 6, 24, '2', '1', '𝗠𝗶𝘅 INDIAN Followers | 🔃R99', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗤𝘂𝗶𝗰𝗸 [𝟬-𝟭𝟬 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗜𝗻𝗱𝗶𝗮𝗻 𝗠𝗶𝘅\r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟯𝟬-𝟰𝟬𝗞 / 𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝟬-𝟭𝟬% [ 𝗗𝗼𝗻\\\'𝘁 𝗪𝗼𝗿𝗿𝘆 𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗥𝗲𝗳𝗶𝗹𝗹 ]\r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟵𝟵 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n', '51.61', 50, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05 INDIAN Followers | \\ud83d\\udd03R99\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde4\\ud835\\ude02\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udfef\\ud835\\udfec-\\ud835\\udff0\\ud835\\udfec\\ud835\\uddde \\/ \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec% [ \\ud835\\uddd7\\ud835\\uddfc\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddff\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 ]\\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udff5\\ud835\\udff5 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(25, 1, 331, '2', '{\"min\":\"100\",\"max\":\"50000\",\"rate\":\"54.6\",\"currency\":\"INR\"}', 6, 25, '2', '1', '𝗠𝗼𝘀𝘁𝗹𝘆 INDIAN Followers | 🔃R60', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗢𝗻𝗲 𝗖𝗹𝗶𝗰𝗸 [𝟬-𝟱 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗠𝗼𝘀𝘁𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻 [𝟳𝟬% 𝗶𝗻𝗱𝗶𝗮𝗻 𝗣𝗿𝗼𝗳𝗶𝗹𝗲𝘀 𝗪𝗶𝘁𝗵 𝗦𝗼𝗺𝗲 𝗦𝘁𝗼𝗿𝗶𝗲𝘀 ]\r\n⏳𝗦𝗽𝗲𝗲𝗱 -𝟭𝟬𝟬-𝟮𝟬𝟬𝗞𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝟬-𝟭𝟬% [ 𝗗𝗼𝗻\\\'𝘁 𝗪𝗼𝗿𝗿𝘆 𝗜𝗻𝘀𝘁𝗮𝗻𝘁 𝗥𝗲𝗳𝗶𝗹𝗹 ]\r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟲𝟬 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟', '70.98', 100, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde0\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers | \\ud83d\\udd03R60\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf2 \\ud835\\uddd6\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udff1 \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udde0\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb [\\ud835\\udff3\\ud835\\udfec% \\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2\\ud835\\ude00 \\ud835\\uddea\\ud835\\uddf6\\ud835\\ude01\\ud835\\uddf5 \\ud835\\udde6\\ud835\\uddfc\\ud835\\uddfa\\ud835\\uddf2 \\ud835\\udde6\\ud835\\ude01\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf6\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 -\\ud835\\udfed\\ud835\\udfec\\ud835\\udfec-\\ud835\\udfee\\ud835\\udfec\\ud835\\udfec\\ud835\\uddde\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udfec-\\ud835\\udfed\\ud835\\udfec% [ \\ud835\\uddd7\\ud835\\uddfc\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddea\\ud835\\uddfc\\ud835\\uddff\\ud835\\uddff\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\ude00\\ud835\\ude01\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01 \\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 ]\\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udff2\\ud835\\udfec \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(26, 1, 332, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"86.3\",\"currency\":\"INR\"}', 6, 26, '2', '1', '𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 INDIAN Followers | 🔃R365', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝗢𝗻𝗲 𝗖𝗹𝗶𝗰𝗸 [𝟬-𝟱 𝗺𝗶𝗻𝘂𝘁𝗲𝘀 ]\r\n🔰𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻 \r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟰𝟬-𝟲𝟬𝗞𝗗𝗮𝘆\r\n🎗️𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 - 𝗡𝗼𝗻 𝗗𝗿𝗼𝗽 \r\n🔄𝗥𝗲𝗳𝗶𝗹𝗹 - 𝟯𝟲𝟱 𝗗𝗮𝘆𝘀 [ 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲𝗱 ]\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗜𝗻𝗱𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n', '112.19', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers | \\ud83d\\udd03R365\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf2 \\ud835\\uddd6\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf8 [\\ud835\\udfec-\\ud835\\udff1 \\ud835\\uddfa\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00 ]\\r\\n\\ud83d\\udd30\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udff0\\ud835\\udfec-\\ud835\\udff2\\ud835\\udfec\\ud835\\uddde\\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\r\\n\\ud83c\\udf97\\ufe0f\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc - \\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\r\\n\\ud83d\\udd04\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 - \\ud835\\udfef\\ud835\\udff2\\ud835\\udff1 \\ud835\\uddd7\\ud835\\uddee\\ud835\\ude06\\ud835\\ude00 [ \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 ]\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(27, 1, 643, '2', '{\"min\":\"100\",\"max\":\"100000\",\"rate\":\"38.6\",\"currency\":\"INR\"}', 6, 27, '2', '1', '👥Insta Followers -🇮🇳𝗜𝗡𝗗𝗜𝗔𝗡 𝗠𝗜𝗫 -🔃LifeTime Refill', '⏰𝗦𝘁𝗮𝗿𝘁 - 𝟬-𝟱 𝗠𝗶𝗻𝘂𝘁𝗲𝘀\r\n💎𝗤𝘂𝗮𝗹𝗶𝘁𝘆 - 𝗜𝗻𝗱𝗶𝗮𝗻 𝗠𝗶𝘅 [𝟭𝟱+𝗣𝗼𝘀𝘁𝘀]\r\n⏳𝗦𝗽𝗲𝗲𝗱 - 𝟓𝟎𝐤+/ 𝐃𝐚𝐲\r\n🔥𝗗𝗿𝗼𝗽 𝗥𝗮𝘁𝗶𝗼 -[𝗡𝗼𝗻 𝗗𝗿𝗼𝗽]\r\n♻️𝗥𝗲𝗳𝗶𝗹𝗹 -  𝗟𝗶𝗳𝗲𝗧𝗶𝗺𝗲 𝟭𝟬𝟬% 𝗚𝘂𝗮𝗿𝗮𝗻𝘁𝗲𝗲\r\n📍𝗟𝗼𝗰𝗮𝘁𝗶𝗼𝗻 - 𝗔𝗹𝗺𝗼𝘀𝘁 𝗔𝘀𝗶𝗮𝗻\r\n🔗𝗟𝗶𝗻𝗸 - 𝗣𝗿𝗼𝗳𝗶𝗹𝗲 𝗨𝗥𝗟\r\n\r\n🌈𝗥𝗲𝗳𝗶𝗹𝗹 𝗜𝘀 𝗩𝗮𝗹𝗶𝗱 𝗔𝗳𝘁𝗲𝗿 𝗦𝗲𝗿𝘃𝗶𝗰𝗲 𝗗𝗶𝘀𝗮𝗯𝗹𝗲\r\n🌈𝗜𝗻 𝘁𝗵𝗶𝘀 𝘀𝗲𝗿𝘃𝗲𝗿 𝘄𝗲 𝗰𝗮𝗻\\\'𝘁 𝗰𝗮𝗻𝗰𝗲𝗹 𝗮𝗳𝘁𝗲𝗿 𝗼𝗿𝗱𝗲𝗿 𝘀𝗼 𝗯𝗲 𝗰𝗮𝗿𝗲𝗳𝘂𝗹', '50.18', 100, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Insta Followers -\\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udddc\\ud835\\udde1\\ud835\\uddd7\\ud835\\udddc\\ud835\\uddd4\\ud835\\udde1 \\ud835\\udde0\\ud835\\udddc\\ud835\\uddeb -\\ud83d\\udd03LifeTime Refill\"}', '{\"en\":\"\\u23f0\\ud835\\udde6\\ud835\\ude01\\ud835\\uddee\\ud835\\uddff\\ud835\\ude01 - \\ud835\\udfec-\\ud835\\udff1 \\ud835\\udde0\\ud835\\uddf6\\ud835\\uddfb\\ud835\\ude02\\ud835\\ude01\\ud835\\uddf2\\ud835\\ude00\\r\\n\\ud83d\\udc8e\\ud835\\udde4\\ud835\\ude02\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\ude01\\ud835\\ude06 - \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb \\ud835\\udde0\\ud835\\uddf6\\ud835\\ude05 [\\ud835\\udfed\\ud835\\udff1+\\ud835\\udde3\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01\\ud835\\ude00]\\r\\n\\u23f3\\ud835\\udde6\\ud835\\uddfd\\ud835\\uddf2\\ud835\\uddf2\\ud835\\uddf1 - \\ud835\\udfd3\\ud835\\udfce\\ud835\\udc24+\\/ \\ud835\\udc03\\ud835\\udc1a\\ud835\\udc32\\r\\n\\ud83d\\udd25\\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd \\ud835\\udde5\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc -[\\ud835\\udde1\\ud835\\uddfc\\ud835\\uddfb \\ud835\\uddd7\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddfd]\\r\\n\\u267b\\ufe0f\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 -  \\ud835\\udddf\\ud835\\uddf6\\ud835\\uddf3\\ud835\\uddf2\\ud835\\udde7\\ud835\\uddf6\\ud835\\uddfa\\ud835\\uddf2 \\ud835\\udfed\\ud835\\udfec\\ud835\\udfec% \\ud835\\uddda\\ud835\\ude02\\ud835\\uddee\\ud835\\uddff\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddf2\\r\\n\\ud83d\\udccd\\ud835\\udddf\\ud835\\uddfc\\ud835\\uddf0\\ud835\\uddee\\ud835\\ude01\\ud835\\uddf6\\ud835\\uddfc\\ud835\\uddfb - \\ud835\\uddd4\\ud835\\uddf9\\ud835\\uddfa\\ud835\\uddfc\\ud835\\ude00\\ud835\\ude01 \\ud835\\uddd4\\ud835\\ude00\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\r\\n\\ud83d\\udd17\\ud835\\udddf\\ud835\\uddf6\\ud835\\uddfb\\ud835\\uddf8 - \\ud835\\udde3\\ud835\\uddff\\ud835\\uddfc\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf2 \\ud835\\udde8\\ud835\\udde5\\ud835\\udddf\\r\\n\\r\\n\\ud83c\\udf08\\ud835\\udde5\\ud835\\uddf2\\ud835\\uddf3\\ud835\\uddf6\\ud835\\uddf9\\ud835\\uddf9 \\ud835\\udddc\\ud835\\ude00 \\ud835\\udde9\\ud835\\uddee\\ud835\\uddf9\\ud835\\uddf6\\ud835\\uddf1 \\ud835\\uddd4\\ud835\\uddf3\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddff \\ud835\\udde6\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude03\\ud835\\uddf6\\ud835\\uddf0\\ud835\\uddf2 \\ud835\\uddd7\\ud835\\uddf6\\ud835\\ude00\\ud835\\uddee\\ud835\\uddef\\ud835\\uddf9\\ud835\\uddf2\\r\\n\\ud83c\\udf08\\ud835\\udddc\\ud835\\uddfb \\ud835\\ude01\\ud835\\uddf5\\ud835\\uddf6\\ud835\\ude00 \\ud835\\ude00\\ud835\\uddf2\\ud835\\uddff\\ud835\\ude03\\ud835\\uddf2\\ud835\\uddff \\ud835\\ude04\\ud835\\uddf2 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddfb\\\\\'\\ud835\\ude01 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddfb\\ud835\\uddf0\\ud835\\uddf2\\ud835\\uddf9 \\ud835\\uddee\\ud835\\uddf3\\ud835\\ude01\\ud835\\uddf2\\ud835\\uddff \\ud835\\uddfc\\ud835\\uddff\\ud835\\uddf1\\ud835\\uddf2\\ud835\\uddff \\ud835\\ude00\\ud835\\uddfc \\ud835\\uddef\\ud835\\uddf2 \\ud835\\uddf0\\ud835\\uddee\\ud835\\uddff\\ud835\\uddf2\\ud835\\uddf3\\ud835\\ude02\\ud835\\uddf9\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(28, 1, 944, '2', '{\"min\":\"30\",\"max\":\"20000\",\"rate\":\"343\",\"currency\":\"INR\"}', 6, 28, '2', '1', 'Insta Followers -🇮🇳𝗢𝗻𝗹𝘆 𝗜𝗻𝗱𝗶𝗮𝗻𝘀', '100% Indian', '445.9', 30, 20000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Insta Followers -\\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udde2\\ud835\\uddfb\\ud835\\uddf9\\ud835\\ude06 \\ud835\\udddc\\ud835\\uddfb\\ud835\\uddf1\\ud835\\uddf6\\ud835\\uddee\\ud835\\uddfb\\ud835\\ude00\"}', '{\"en\":\"100% Indian\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1'),
(29, 1, 1585, '2', '{\"min\":\"50\",\"max\":\"200000\",\"rate\":\"99\",\"currency\":\"INR\"}', 6, 29, '2', '1', '𝗣𝗲𝗿𝗳𝗲𝗰𝘁𝗹𝘆 INDIAN Followers + Story Accounts  | 🔃R365', '', '128.7', 50, 200000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud835\\udde3\\ud835\\uddf2\\ud835\\uddff\\ud835\\uddf3\\ud835\\uddf2\\ud835\\uddf0\\ud835\\ude01\\ud835\\uddf9\\ud835\\ude06 INDIAN Followers + Story Accounts  | \\ud83d\\udd03R365\"}', '{\"en\":\"\"}', 'Not enough data', 'Not enough data', '2', 'true', '', '30', '24', 0, 0, 0, 0, 30, 0, '1', '1');
INSERT INTO `services` (`service_id`, `service_api`, `api_service`, `api_servicetype`, `api_detail`, `category_id`, `service_line`, `service_type`, `service_package`, `service_name`, `service_description`, `service_price`, `service_min`, `service_max`, `service_dripfeed`, `service_autotime`, `service_autopost`, `service_speed`, `want_username`, `service_secret`, `price_type`, `price_cal`, `instagram_second`, `start_count`, `instagram_private`, `name_lang`, `description_lang`, `time_lang`, `time`, `cancelbutton`, `show_refill`, `service_profit`, `refill_days`, `refill_hours`, `avg_days`, `avg_hours`, `avg_minutes`, `avg_many`, `price_profit`, `service_overflow`, `service_sync`, `service_deleted`) VALUES
(30, 1, 650, '2', '{\"min\":\"50\",\"max\":\"10000\",\"rate\":\"2.98\",\"currency\":\"INR\"}', 7, 30, '2', '1', 'Instagram |- Impressions + Reach from Explore', 'Start in - 0 - 5 Minutes\r\n\r\nSpeed After Start - 5K-10K/Day\r\n\r\nLess DIlivery  - No\r\n\r\nRefill - No\r\n\r\nCancel Button - Not Working\r\n\r\nLink - Post Link\r\n\r\n➕Addition Information\r\n📈Service Grade - A\r\n➡️No Less Delivery Issue \r\n➡️Working Smooth\r\n➡️Mostly Orders Completed Within 3 Hours\r\n➡️It Takes 3 - 6 Hours to Update ', '3.278', 50, 10000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram |- Impressions + Reach from Explore\"}', '{\"en\":\"Start in - 0 - 5 Minutes\\r\\n\\r\\nSpeed After Start - 5K-10K\\/Day\\r\\n\\r\\nLess DIlivery  - No\\r\\n\\r\\nRefill - No\\r\\n\\r\\nCancel Button - Not Working\\r\\n\\r\\nLink - Post Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udcc8Service Grade - A\\r\\n\\u27a1\\ufe0fNo Less Delivery Issue \\r\\n\\u27a1\\ufe0fWorking Smooth\\r\\n\\u27a1\\ufe0fMostly Orders Completed Within 3 Hours\\r\\n\\u27a1\\ufe0fIt Takes 3 - 6 Hours to Update \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(31, 1, 1131, '2', '{\"min\":\"10\",\"max\":\"50000\",\"rate\":\"2.87\",\"currency\":\"INR\"}', 7, 31, '2', '1', '❤️Instagram Likes |- From Old Profiles with 6 to 15 Posts', 'Start - Instant \r\n\r\nSpeed -  30K in Day Easily \r\n\r\nQuality - Old Profiles with 6 to 15 Posts\r\n\r\nDrop - No Drop\r\n\r\nRefill - Lifetime \r\n\r\n🔗Link  - Post Link\r\n\r\n➕Addition Information \r\n📊Service Grade - A Grade\r\n➡️Recommended For Resellers\r\n➡️Speed UP Also Possible \r\n➡️Mostly Orders Complete Within 30 Minutes ', '3.157', 10, 50000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\u2764\\ufe0fInstagram Likes |- From Old Profiles with 6 to 15 Posts\"}', '{\"en\":\"Start - Instant \\r\\n\\r\\nSpeed -  30K in Day Easily \\r\\n\\r\\nQuality - Old Profiles with 6 to 15 Posts\\r\\n\\r\\nDrop - No Drop\\r\\n\\r\\nRefill - Lifetime \\r\\n\\r\\n\\ud83d\\udd17Link  - Post Link\\r\\n\\r\\n\\u2795Addition Information \\r\\n\\ud83d\\udccaService Grade - A Grade\\r\\n\\u27a1\\ufe0fRecommended For Resellers\\r\\n\\u27a1\\ufe0fSpeed UP Also Possible \\r\\n\\u27a1\\ufe0fMostly Orders Complete Within 30 Minutes \"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(32, 1, 1705, '2', '{\"min\":\"10\",\"max\":\"3000\",\"rate\":\"5.87\",\"currency\":\"INR\"}', 7, 32, '2', '1', '👥Instagram Bot Followers |- No Refill', 'Start in - 0 - 2 Hours\r\n\r\nSpeed After Start - 1K-3K/Day\r\n\r\nQuality - Bot\r\n\r\nDrop Ratio - High Drop\r\n\r\nRefill - Not Possible \r\n\r\nCancel Button - Working\r\n\r\nLink - Profile Link\r\n\r\n➕Addition Information\r\n\r\n📈Service Grade - C\r\n➡️Have High Drop\r\n➡️Not Reccomended\r\n➡️Speed Up Psssible \r\n➡️Some Time Drops Starts Instantly', '6.457', 10, 3000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"\\ud83d\\udc65Instagram Bot Followers |- No Refill\"}', '{\"en\":\"Start in - 0 - 2 Hours\\r\\n\\r\\nSpeed After Start - 1K-3K\\/Day\\r\\n\\r\\nQuality - Bot\\r\\n\\r\\nDrop Ratio - High Drop\\r\\n\\r\\nRefill - Not Possible \\r\\n\\r\\nCancel Button - Working\\r\\n\\r\\nLink - Profile Link\\r\\n\\r\\n\\u2795Addition Information\\r\\n\\r\\n\\ud83d\\udcc8Service Grade - C\\r\\n\\u27a1\\ufe0fHave High Drop\\r\\n\\u27a1\\ufe0fNot Reccomended\\r\\n\\u27a1\\ufe0fSpeed Up Psssible \\r\\n\\u27a1\\ufe0fSome Time Drops Starts Instantly\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1'),
(33, 1, 1806, '2', '{\"min\":\"10\",\"max\":\"100000\",\"rate\":\"26.6\",\"currency\":\"INR\"}', 7, 33, '2', '1', 'Instagram Followers |-💧 0 - 10% Drop Normally - 🇮🇳𝐌𝐨𝐬𝐭𝐥𝐲 𝐈𝐧𝐝𝐢𝐚𝐧 𝐍𝐚𝐦𝐞𝐬 - No Refill', 'Start -  0 - 5 Minutes Normally \r\n\r\nQuality - Mostly Old Indian Profiles \r\n\r\nSpeed - Easily 20K to 30K Per Day \r\n\r\nDrop Ratio - 0 - 10% Normally \r\n\r\nRefill - No Refill Possible \r\n\r\nCancel - Button Working  \r\n\r\n🔗Link - Account link \r\n\r\n➕Addition Information\r\n📊Service Grade - B+ Grade\r\n', '29.26', 10, 100000, '1', 0, 0, '1', '1', '2', 'normal', NULL, '2', 'none', '1', '{\"en\":\"Instagram Followers |-\\ud83d\\udca7 0 - 10% Drop Normally - \\ud83c\\uddee\\ud83c\\uddf3\\ud835\\udc0c\\ud835\\udc28\\ud835\\udc2c\\ud835\\udc2d\\ud835\\udc25\\ud835\\udc32 \\ud835\\udc08\\ud835\\udc27\\ud835\\udc1d\\ud835\\udc22\\ud835\\udc1a\\ud835\\udc27 \\ud835\\udc0d\\ud835\\udc1a\\ud835\\udc26\\ud835\\udc1e\\ud835\\udc2c - No Refill\"}', '{\"en\":\"Start -  0 - 5 Minutes Normally \\r\\n\\r\\nQuality - Mostly Old Indian Profiles \\r\\n\\r\\nSpeed - Easily 20K to 30K Per Day \\r\\n\\r\\nDrop Ratio - 0 - 10% Normally \\r\\n\\r\\nRefill - No Refill Possible \\r\\n\\r\\nCancel - Button Working  \\r\\n\\r\\n\\ud83d\\udd17Link - Account link \\r\\n\\r\\n\\u2795Addition Information\\r\\n\\ud83d\\udccaService Grade - B+ Grade\\r\\n\"}', 'Not enough data', 'Not enough data', '2', 'false', '', '30', '24', 0, 0, 0, 0, 10, 0, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` varchar(200) DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2',
  `api_sync` enum('0','1') NOT NULL DEFAULT '1',
  `api_login_credentials` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT 0,
  `site_update_rates_automatically` int(11) NOT NULL DEFAULT 0,
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `child_panel_nameservers` varchar(255) NOT NULL DEFAULT '{"ns1":"ns1.scriptlux.com","ns2":"ns2.scriptlux.com"}',
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> OFF , 2 -> ON',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text DEFAULT NULL,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `fake_order_min` int(11) DEFAULT NULL,
  `fake_order_max` int(11) DEFAULT NULL,
  `panel_orders` int(11) DEFAULT NULL,
  `panel_orders_pattern` varchar(255) NOT NULL DEFAULT '{"panel_orders_prefix":"","panel_orders_suffix":""}',
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT 0,
  `summary_card_background_color` varchar(100) DEFAULT 'theme_colour',
  `google_login` varchar(100) NOT NULL DEFAULT '{"purchased":"1","status":"1"}',
  `services_average_time` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `child_panel_nameservers`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `panel_orders_pattern`, `downloaded_category_icons`, `summary_card_background_color`, `google_login`, `services_average_time`) VALUES
(1, 'DOON SMM PANEL ', 'DOON SMM PANEL ', 'Best and Cheap SMM Panel for Instagram, Tiktok, Facebook, Youtube and Twitter. Buy IG Reels views and Followers, Buy Instagram Likes, Views and Comments, Buy TikTok Likes and Followers, Buy Facebook Likes and Comments, Buy Youtube Likes, Views and Subscribers.', '  smm panel,smmpanel,SMM Panel India,SMM Panel Paytm,SMM Panel Cheap India,SMM Reseller Panel,SMM Reseller Panel India,Cheap SMM Panel,cheapest SMM panel,cheap SMM panel india,Cheapest SMM Reseller Panel,Cheapest SMM Panel Paytm,Cheapest SMM Panel Paytm,indian smm panel,IndianSMM Reseller Panel,Best SMM panel,Best SMM Panel India,Top SMM Panel', '', 'Doon SMM Panel ', '', 'INR', 1, 1, '2023-09-18 11:22:01', '', 'en', 'united', 'coral', '1', '', '', '', '', '1', '2', '1', '2', 0, 0, '', '', '', '', '0', '2', '2', '2', '2', '2', '2', 'bizimsms', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 500, 2500, 10000, 15000, '{\"ns1\":\"ns1.scriptlux.com\",\"ns2\":\"ns2.scriptlux.com\"}', 100, '', '', '2', 10, 10, '2', '2', 9999999999, '2', '2', '0', '1', '1', '2', '2', '1', 2, '2', '2', 2, '0', '3', '{\"admin access\":{\"admin_access\":{\"name\":\"Admin Access\",\"value\":\"admin_access\"}},\"pages\":{\"users\":{\"name\":\"Users\",\"value\":\"users\"},\"services\":{\"name\":\"Services\",\"value\":\"services\"},\"update-prices\":{\"name\":\"Update Prices\",\"value\":\"update-prices\"},\"bulk\":{\"name\":\"Bulk Services Editor\",\"value\":\"bulk\"},\"bulkc\":{\"name\":\"Bulk Category Editor\",\"value\":\"services\"},\"synced-logs\":{\"name\":\"Seller Sync Logs\",\"value\":\"synced-logs\"},\"orders\":{\"name\":\"Orders\",\"value\":\"orders\"},\"subscriptions\":{\"name\":\"Subscriptions\",\"value\":\"subscriptions\"},\"dripfeed\":{\"name\":\"Dripfeed\",\"value\":\"dripfeed\"},\"tasks\":{\"name\":\"Order Refill and Cancel Tasks\",\"value\":\"tasks\"},\"payments\":{\"name\":\"Payments\",\"value\":\"payments\"},\"tickets\":{\"name\":\"Tickets\",\"value\":\"tickets\"}},\"additionals\":{\"additionals\":{\"name\":\"Additionals\",\"value\":\"additionals\"},\"referral\":{\"name\":\"Affiliates\",\"value\":\"referral\"},\"broadcast\":{\"name\":\"Broadcasts\",\"value\":\"broadcast\"},\"logs\":{\"name\":\"Panel Logs\",\"value\":\"logs\"},\"reports\":{\"name\":\"Reports\",\"value\":\"reports\"},\"videop\":{\"name\":\"Promotion\",\"value\":\"videop\"},\"coupon\":{\"name\":\"Coupons\",\"value\":\"coupon\"},\"child-panels\":{\"name\":\"Child Panels\",\"value\":\"child-panels\"},\"updates\":{\"name\":\"Updates\",\"value\":\"updates\"}},\"appearance\":{\"appearance\":{\"name\":\"Appearance\",\"value\":\"appearance\"},\"themes\":{\"name\":\"Themes\",\"value\":\"themes\"},\"new_year\":{\"name\":\"New Year\",\"value\":\"new_year\"},\"pages\":{\"name\":\"Pages\",\"value\":\"pages\"},\"news\":{\"name\":\"Announcements\",\"value\":\"news\"},\"meta\":{\"name\":\"Meta (SEO) Settings\",\"value\":\"meta\"},\"blog\":{\"name\":\"Blogs\",\"value\":\"blog\"},\"menu\":{\"name\":\"Menu\",\"value\":\"menu\"},\"inte\":{\"name\":\"Integrations\",\"value\":\"inte\"},\"language\":{\"name\":\"Languages\",\"value\":\"language\"},\"files\":{\"name\":\"Uploaded Images\",\"value\":\"files\"}},\"settings\":{\"settings\":{\"name\":\"Settings\",\"value\":\"settings\"},\"general_settings\":{\"name\":\"General Settings\",\"value\":\"general_settings\"},\"providers\":{\"name\":\"Sellers\",\"value\":\"providers\"},\"payments_settings\":{\"name\":\"Payment Methods\",\"value\":\"payments_settings\"},\"bank_accounts\":{\"name\":\"Bank Accounts\",\"value\":\"bank_accounts\"},\"modules\":{\"name\":\"Modules\",\"value\":\"modules\"},\"subject\":{\"name\":\"Support Settings\",\"value\":\"subject\"},\"payments_bonus\":{\"name\":\"Payment Bonuses\",\"value\":\"payments_bonus\"},\"currency-manager\":{\"name\":\"Site Currency Manager\",\"value\":\"currency-manager\"},\"alert_settings\":{\"name\":\"Notification Settings\",\"value\":\"alert_settings\"},\"site_count\":{\"name\":\"Fake Orders\",\"value\":\"site_count\"},\"manager\":{\"name\":\"Manager\",\"value\":\"manager\"}}}', 0, 1, 3, 3, '{\"panel_orders_prefix\":\"\",\"panel_orders_suffix\":\"\"}', 0, 'fixed_colour', '{\"purchased\":\"1\",\"status\":\"1\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_api` int(11) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text DEFAULT NULL,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text DEFAULT NULL,
  `check_refill_status` int(11) DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`) VALUES
(0, 'united', 'united', '', '0000-00-00 00:00:00', '', '1'),
(4, 'Eternity', 'Eternity', '', '0000-00-00 00:00:00', '', '2'),
(2, 'Clementine', 'pitchy', '{\"stylesheets\":[\"public/pitchy/bootstrap.css\",\"public/pitchy/black.css\",\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\",\"public/datepicker/css/bootstrap-datepicker3.min.css\"],\"scripts\":[\"https://code.jquery.com/jquery-3.3.1.min.js\",\"public/pitchy/js/script.js\",\"public/pitchy/js/snowfall.min.js\",\"public/pitchy/js/bundle.js\",\"public/pitchy/js/main.js\",\"public/ajax.js\",\"public/datepicker/js/bootstrap-datepicker.min.js\"]}', '2022-11-21 09:29:47', '', '2'),
(5, 'X Blur', 'xblur', '', '2023-11-07 09:29:47', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 8, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_constants`
--
ALTER TABLE `admin_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=913;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53367;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
