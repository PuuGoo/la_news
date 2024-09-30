-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2024 lúc 10:51 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `la_news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_one` varchar(255) DEFAULT NULL,
  `home_two` varchar(255) DEFAULT NULL,
  `home_three` varchar(255) DEFAULT NULL,
  `home_four` varchar(255) DEFAULT NULL,
  `news_category_one` varchar(255) DEFAULT NULL,
  `news_details_one` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `home_one`, `home_two`, `home_three`, `home_four`, `news_category_one`, `news_details_one`, `created_at`, `updated_at`) VALUES
(1, '1811510442459640.jpg', '1811510463014108.jpg', '1811510482951738.jpg', '1811510494793568.jpg', '1811510505952044.png', '1811510517449191.png', NULL, '2024-09-28 23:24:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:3;', 1727682086),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1727682086;', 1727682086),
('761f22b2c1593d0bb87e0b606f990ba4974706de', 'i:2;', 1727661575),
('761f22b2c1593d0bb87e0b606f990ba4974706de:timer', 'i:1727661575;', 1727661575),
('ca3512f4dfa95a03169c5a670a4c91a19b3077b4', 'i:2;', 1727661062),
('ca3512f4dfa95a03169c5a670a4c91a19b3077b4:timer', 'i:1727661062;', 1727661062),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:3;', 1727682116),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1727682116;', 1727682116),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:10:\"group_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:31:{i:0;a:5:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"category.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:8:\"category\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:1;a:5:{s:1:\"a\";i:2;s:1:\"b\";s:13:\"category.list\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:8:\"category\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:2;a:5:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"category.add\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:8:\"category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:3;a:5:{s:1:\"a\";i:4;s:1:\"b\";s:13:\"category.edit\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:8:\"category\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:4;a:5:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"category.delete\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:8:\"category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:5;a:5:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"subcategory.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:11:\"subCategory\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:5:{s:1:\"a\";i:7;s:1:\"b\";s:16:\"subcategory.list\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:11:\"subCategory\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:5:{s:1:\"a\";i:8;s:1:\"b\";s:15:\"subcategory.add\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:11:\"subCategory\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:5:{s:1:\"a\";i:9;s:1:\"b\";s:16:\"subcategory.edit\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:11:\"subCategory\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:5:{s:1:\"a\";i:10;s:1:\"b\";s:18:\"subcategory.delete\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:11:\"subCategory\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:5:{s:1:\"a\";i:11;s:1:\"b\";s:9:\"news.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"news\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:5:{s:1:\"a\";i:12;s:1:\"b\";s:9:\"news.list\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"news\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:5:{s:1:\"a\";i:13;s:1:\"b\";s:8:\"news.add\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"news\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:5:{s:1:\"a\";i:14;s:1:\"b\";s:9:\"news.edit\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"news\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:5:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"news.delete\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"news\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:5:{s:1:\"a\";i:16;s:1:\"b\";s:11:\"banner.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:6:\"banner\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:5:{s:1:\"a\";i:17;s:1:\"b\";s:10:\"photo.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"photo\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:17;a:5:{s:1:\"a\";i:18;s:1:\"b\";s:10:\"photo.list\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"photo\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:18;a:5:{s:1:\"a\";i:19;s:1:\"b\";s:9:\"photo.add\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"photo\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:19;a:5:{s:1:\"a\";i:20;s:1:\"b\";s:10:\"photo.edit\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"photo\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:20;a:5:{s:1:\"a\";i:21;s:1:\"b\";s:12:\"photo.delete\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"photo\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:21;a:5:{s:1:\"a\";i:22;s:1:\"b\";s:10:\"video.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"video\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:5:{s:1:\"a\";i:23;s:1:\"b\";s:10:\"video.list\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"video\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:5:{s:1:\"a\";i:24;s:1:\"b\";s:9:\"video.add\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"video\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:5:{s:1:\"a\";i:25;s:1:\"b\";s:10:\"video.edit\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"video\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:5:{s:1:\"a\";i:26;s:1:\"b\";s:12:\"video.delete\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"video\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:9:\"live.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"live\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:11:\"review.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:6:\"review\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:8:\"seo.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:3:\"seo\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:12:\"setting.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:30;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:9:\"role.menu\";s:1:\"c\";s:3:\"web\";s:1:\"d\";s:4:\"role\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"SuperAdmin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"Editor\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:8:\"Reporter\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}}}', 1727745078);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(5, 'POLITICS', 'politics', '2024-09-24 10:05:00', NULL),
(6, 'BIZ-ECON', 'biz-econ', '2024-09-24 10:10:00', NULL),
(7, 'INTERNATIONAL', 'international', '2024-09-24 10:15:00', NULL),
(8, 'SPORTS', 'sports', '2024-09-24 10:20:00', NULL),
(9, 'ENTERTAINMENT', 'entertainment', '2024-09-24 10:25:00', NULL),
(10, 'EDUCATION', 'education', '2024-09-24 10:30:00', NULL),
(11, 'SCI-TECH', 'sci-tech', '2024-09-24 10:35:00', NULL),
(12, 'WORKLIFE', 'worklife', '2024-09-24 10:40:00', NULL),
(13, 'TRAVEL', 'travel', '2024-09-24 10:45:00', NULL),
(14, 'FUTURE', 'future', '2024-09-24 10:50:00', NULL),
(15, 'CULTURE', 'culture', '2024-09-24 10:55:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `live_tvs`
--

CREATE TABLE `live_tvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `live_image` varchar(255) DEFAULT NULL,
  `live_url` varchar(255) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `live_tvs`
--

INSERT INTO `live_tvs` (`id`, `live_image`, `live_url`, `post_date`, `created_at`, `updated_at`) VALUES
(1, '1811525011062664.jpg', 'https://www.youtube.com/embed/jfKfPfyJRdk?si=NvsAlwcKIM6-wTWQ', '29-09-2024', NULL, '2024-09-29 10:14:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '0001_01_01_000000_create_users_table', 1),
(23, '0001_01_01_000001_create_cache_table', 1),
(24, '0001_01_01_000002_create_jobs_table', 1),
(25, '2024_09_22_044250_create_categories_table', 1),
(26, '2024_09_22_074140_create_sub_categories_table', 1),
(27, '2024_09_22_115505_create_news_posts_table', 1),
(28, '2024_09_28_080104_create_banners_table', 2),
(29, '2024_09_29_050741_create_photo_galleries_table', 3),
(30, '2024_09_29_081939_create_video_galleries_table', 4),
(31, '2024_09_29_094258_create_live_tvs_table', 5),
(32, '2024_09_29_120549_create_reviews_table', 6),
(33, '2024_09_29_152041_create_seo_settings_table', 7),
(34, '2024_09_29_161207_create_permission_tables', 8),
(35, '2024_09_30_071403_create_notifications_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_posts`
--

CREATE TABLE `news_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_title_slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `news_details` text NOT NULL,
  `tags` text NOT NULL,
  `breaking_news` int(11) DEFAULT NULL,
  `top_slider` int(11) DEFAULT NULL,
  `first_section_three` int(11) DEFAULT NULL,
  `first_section_nine` int(11) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `post_month` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_posts`
--

INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(2, 5, 4, 1, 'Bangladesh beat Netherlands by 9 runs', 'bangladesh-beat-netherlands-by-9-runs', '1811072512526347.jpg', '<p>Prime Minister Sheikh Hasina on Monday joined the funeral of Queen Elizabeth II along with other world leaders at Westminster Abbey in London.<br><br>Hundreds of dignitaries are there including the Queen\'s former prime ministers as well as US President Joe Biden and French President Emmanuel Macron, reports BSS.<br><br>Sheikh Rehana, younger sister of Prime Minister Sheikh Hasina, also joined the funeral.<br><br>Queen\'s funeral service is taking place at Westminster Abbey - the building in which she was married and crowned.<br><br>Her coffin, draped in flags and topped by the Imperial State Crown, was drawn to the church on a gun carriage by Royal Navy sailors.<br><br>On September 15, Sheikh Hasina arrived in London on an official visit to the United Kingdom (UK) to attend the funeral of Queen Elizabeth II.<br><br>A sombre mood on the streets around Buckingham Palace where people are gathering to watch a procession after the service.<br><br>It will take the Queen\'s coffin on a final jouey through London and on to Windsor Castle for a second service.<br><br>Earlier, on Sunday moing, Prime Minister Sheikh Hasina along with her younger sister Sheikh Rehana went to the Palace of Westminster to pay their last respect to the late Queen where the body of Elizabeth II was kept in the Lying-in-State.<br><br>She paid respect to the Queen at her lying-in-state in Westminster Hall and sign a book of condolence at Lancaster House. Sheikh Rehana also signed condolence book.</p>', 'awesome,Cricket', 1, 1, 1, 1, '26-09-2024', 'September', 1, 8, '2024-09-26 10:00:00', '2024-09-30 01:00:37'),
(3, 5, 0, 1, 'Politics AL\'s national council to be held Dec 24', 'politics-al\'s-national-council-to-be-held-dec-24', '1811072567618563.webp', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,climate,nations', 1, 1, 0, 0, '24-09-2024', 'September', 1, 4, '2024-09-24 10:05:00', '2024-09-29 08:58:09'),
(4, 5, 0, 1, 'Global warming palpable for 96% of humans', 'global-warming-palpable-for-96%-of-humans', '1811072577616648.webp', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,adaptation', 1, 1, 0, 0, '24-09-2024', 'September', 1, 1, '2024-09-24 10:10:00', '0000-00-00 00:00:00'),
(5, 8, 4, 1, 'Five dengue patients die; 440 hospitalized in 24 hrs', 'five-dengue-patients-die;-440-hospitalized-in-24-hrs', '1811072580121535.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,apace', 1, 1, 0, 1, '24-09-2024', 'September', 1, 3, '2024-09-24 10:15:00', '2024-09-25 20:45:46'),
(6, 8, 4, 1, 'Sports Australia-England T20 World Cup clash washed out', 'sports-australia-england-t20-world-cup-clash-washed-out', '1811072581916842.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome', 0, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 10:20:00', '0000-00-00 00:00:00'),
(7, 7, 0, 1, 'Biz-Econ EU approves effective ban on new fossil fuel', 'biz-econ-eu-approves-effective-ban-on-new-fossil-fuel', '1811072583470363.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,Nations', 1, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 10:25:00', '0000-00-00 00:00:00'),
(8, 7, 0, 1, 'Putin blasts West, says world faces most', 'putin-blasts-west,-says-world-faces-most', '1811072585166745.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,vulnerable', 1, 1, 1, 1, '24-09-2024', 'September', 1, 2, '2024-09-24 10:30:00', '2024-09-29 07:48:11'),
(9, 7, 0, 1, 'North Korea fires two missiles into sea', 'north-korea-fires-two-missiles-into-sea', '1811072586563917.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,tropical', 1, 1, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 10:35:00', '0000-00-00 00:00:00'),
(10, 9, 9, 1, 'Bangladeshi universities strive to draw', 'bangladeshi-universities-strive-to-draw', '1811073428111516.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,climate', 1, 1, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 10:40:00', '0000-00-00 00:00:00'),
(11, 9, 9, 1, 'Ireland-Afghanistan match washed out', 'ireland-afghanistan-match-washed-out', '1811073440767064.webp', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,estimates', 1, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 10:45:00', '0000-00-00 00:00:00'),
(12, 9, 8, 1, 'Sports Ronaldo scores as Man Utd win sets up group decider', 'sports-ronaldo-scores-as-man-utd-win-sets-up-group-decider', '1811073505218574.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,tropical', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 10:50:00', '0000-00-00 00:00:00'),
(13, 9, 8, 1, 'Elon Musk completes $44bn Twitter takeover', 'elon-musk-completes-$44bn-twitter-takeover', '1811073509841812.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,estimates', 0, 1, 1, 1, '24-09-2024', 'September', 1, 2, '2024-09-24 10:55:00', '2024-09-30 00:42:21');
INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(14, 10, 0, 1, 'Banning motorcycles on highways recommended', 'banning-motorcycles-on-highways-recommended', '1811073512289576.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,essentially', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 11:00:00', '0000-00-00 00:00:00'),
(15, 10, 0, 1, 'BNP opened fire on demonstrators demanding', 'bnp-opened-fire-on-demonstrators-demanding', '1811073515459975.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,adaptation', 0, 0, 1, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:05:00', '0000-00-00 00:00:00'),
(16, 11, 0, 1, 'In nail-biting contest, Zimbabwe defeat Pakistan', 'in-nail-biting-contest,-zimbabwe-defeat-pakistan', '1811073518030990.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 11:10:00', '0000-00-00 00:00:00'),
(17, 11, 0, 1, 'Taylor Swift edits music video after fatphobia', 'taylor-swift-edits-music-video-after-fatphobia', '1811073518964423.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,Egypt', 1, 1, 1, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:15:00', '0000-00-00 00:00:00'),
(18, 12, 0, 1, 'Lalbagh police station OC, 4 SIs sued over looting', 'lalbagh-police-station-oc,-4-sis-sued-over-looting', '1811073521114703.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,estimates', 0, 0, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:20:00', '0000-00-00 00:00:00'),
(19, 12, 0, 1, 'Final decision on IMF loan will come within', 'final-decision-on-imf-loan-will-come-within', '1811073522095337.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,advisory', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 11:25:00', '0000-00-00 00:00:00'),
(20, 12, 0, 1, 'Five members of \'Jamaatul Hindal\' remanded', 'five-members-of-\'jamaatul-hindal\'-remanded', '1811073523512196.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,climate', 0, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:30:00', '0000-00-00 00:00:00'),
(21, 12, 0, 1, 'The young US men choosing vasectomies', 'the-young-us-men-choosing-vasectomies', '1811073525252463.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,nations', 0, 0, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:35:00', '0000-00-00 00:00:00'),
(22, 13, 0, 1, 'Kohli stars again as ominous India thrash Netherlands', 'kohli-stars-again-as-ominous-india-thrash-netherlands', '1811073689581105.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome', 0, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:40:00', '0000-00-00 00:00:00'),
(23, 13, 0, 1, 'One Covid death, 137 cases recorded in 24 hrs', 'one-covid-death,-137-cases-recorded-in-24-hrs', '1811073696260244.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,panel', 1, 0, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:45:00', '0000-00-00 00:00:00'),
(24, 9, 9, 1, 'Three dengue patients die; 899 hospitalized in 24 hrs', 'three-dengue-patients-die;-899-hospitalized-in-24-hrs', '1811073698323671.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,advisory', 0, 0, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:50:00', '0000-00-00 00:00:00'),
(25, 9, 9, 1, 'National BNP rally: Transport strike called in Rangpur', 'national-bnp-rally:-transport-strike-called-in-rangpur', '1811073698619335.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,modest', 0, 0, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 11:55:00', '0000-00-00 00:00:00');
INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(26, 9, 9, 1, 'Apple iPad review: 10th-gen tablet finally', 'apple-ipad-review:-10th-gen-tablet-finally', '1811073702133871.webp', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p>n<p></p>n<p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p>n<p></p>n<p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p>n<p></p>n<p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p>n<p></p>n<p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p>n<p></p>n<p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p>n<p></p>n<p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p>n<p></p>n<p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p>n<p></p>n<p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p>n<p></p>n<p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p>n<p></p>n<p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p>n<p></p>n<p><strong>- \'Unfair and tragic\' -</strong></p>n<p></p>n<p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p>n<p></p>n<p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p>n<p></p>n<p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p>n<p></p>n<p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p>n<p></p>n<p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p>n<p></p>n<p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p>n<p></p>n<p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,pledge', 0, 0, 0, 0, '24-09-2024', 'September', 0, 0, '2024-09-24 12:00:00', '0000-00-00 00:00:00'),
(27, 9, 8, 1, 'BCCI announces equal match fee for men', 'bcci-announces-equal-match-fee-for-men', '1811073705272682.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,decade', 0, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 12:05:00', '0000-00-00 00:00:00'),
(28, 9, 8, 1, 'Writ seeks uninterrupted mobile network in Suprem', 'writ-seeks-uninterrupted-mobile-network-in-suprem', '1811073708404881.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\'s impact on temperatures over the last 12 months, researchers have said.</p><p></p><p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p><p></p><p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p><p></p><p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p><p></p><p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p><p></p><p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p><p></p><p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\'s average surface temperature compared to an earlier reference period -- to people\'s day-to-day experience.</p><p></p><p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p><p></p><p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p><p></p><p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p><p></p><p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p><p></p><p><strong>- \'Unfair and tragic\' -</strong></p><p></p><p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p><p></p><p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p><p></p><p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p><p></p><p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p><p></p><p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p><p></p><p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p><p></p><p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,panel', 0, 1, 0, 1, '24-09-2024', 'September', 1, 0, '2024-09-24 12:10:00', '0000-00-00 00:00:00'),
(29, 5, 0, 1, 'Reaction to wounding of former Pakistan PM Imran Khan', 'reaction-to-wounding-of-former-pakistan-pm-imran-khan', '1811073710881264.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,party,violence', 0, 0, 0, 0, '24-09-2024', 'September', 1, 1, '2024-09-24 12:15:00', '0000-00-00 00:00:00'),
(30, 6, 0, 1, 'Man suspected of attacking Pakistan ex-PM Imran Khan shot dead', 'man-suspected-of-attacking-pakistan-ex-pm-imran-khan-shot-dead', '1811073712992906.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,ARINDAM', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:20:00', '0000-00-00 00:00:00'),
(31, 6, 0, 1, 'Nine dengue patients die; 882 hospitalized in 24 hrs', 'nine-dengue-patients-die;-882-hospitalized-in-24-hrs', '1811073715162518.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,eye', 0, 0, 0, 0, '24-09-2024', 'September', 1, 1, '2024-09-24 12:25:00', '2024-09-25 20:26:16'),
(32, 6, NULL, 1, 'One Covid death, 140 cases recorded in 24 hrs', 'one-covid-death,-140-cases-recorded-in-24-hrs', '1811073837134615.jpg', '<p>Whether they realised it or not, some 7.6 billion people -- 96 percent of humanity -- felt global warming\\\'s impact on temperatures over the last 12 months, researchers have said.</p>\r\n<p>&nbsp;</p>\r\n<p>But some regions felt it far more sharply and frequently than others, according to a report based on peer-reviewed methods from Climate Central, a climate science think tank.</p>\r\n<p>&nbsp;</p>\r\n<p>People in tropical regions and on small islands surrounded by heat-absorbing oceans were disproportionately impacted by human-induced temperature increases to which they barely contributed.</p>\r\n<p>&nbsp;</p>\r\n<p>Among the 1,021 cities analysed between September 2021 and October 2022, the capitals of Samoa and Palau in the South Pacific have been experiencing the most disceible climate fingerprints, the researchers said in the report, released on Thursday.</p>\r\n<p>&nbsp;</p>\r\n<p>Spiking temperatures in these locations were commonly four to five times more likely to occur than in a hypothetical world in which global warming had never happened.</p>\r\n<p>&nbsp;</p>\r\n<p>Lagos, Mexico City and Singapore were among the most highly exposed major cities, with human-induced heat increasing health risks to millions.</p>\r\n<p>&nbsp;</p>\r\n<p>Researchers at Climate Central, led by chief scientist Ben Strauss, looked for a way to bridge the gap between planetary-scale global warming -- usually expressed as Earth\\\'s average surface temperature compared to an earlier reference period -- to people\\\'s day-to-day experience.</p>\r\n<p>&nbsp;</p>\r\n<p>\"\"\"\"Diagnosing climate fingerprints lets people know that their experiences are symptoms of climate change,\"\"\"\" Strauss told AFP. \"\"\"\"It represents a signal and shows we must adapt.\"\"\"\"</p>\r\n<p>&nbsp;</p>\r\n<p>Using seven decades of high-resolution daily temperature data from the European Centre for Medium-range Weather Forecasts (ECMWF) and two dozen climate models, Strauss and his team created a tool -- the Climate Shift Index.</p>\r\n<p>&nbsp;</p>\r\n<p>The tool calculates the likelihood that unusually warm weather at a specific location on any given day is due to climate change.</p>\r\n<p>&nbsp;</p>\r\n<p>In 26 cities, for example, at least 250 of the 365 days from October 2021 saw temperature increases that were at least three times more likely due to climate change.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>- \\\'Unfair and tragic\\\' -</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Most of these cities were in east Africa, Mexico, Brazil, small island states, and the Malay Archipelago -- a string of some 25,000 islands belonging to Indonesia and the Philippines.</p>\r\n<p>&nbsp;</p>\r\n<p>\"\"\"\"The effect of warming is much more noticeable in the equatorial belt because there has been historically less temperature variability there,\"\"\"\" Strauss told AFP.</p>\r\n<p>&nbsp;</p>\r\n<p>This is why even a relatively modest rise in local temperatures brought on by global warming registers so clearly on the index, he explained.</p>\r\n<p>&nbsp;</p>\r\n<p>\"\"\"\"Island temperatures are strongly shaped by the temperature of the ocean around them,\"\"\"\" said Strauss, who has also mapped the projected impacts of sea level rise on coastal areas worldwide.</p>\r\n<p>&nbsp;</p>\r\n<p>\"\"\"\"To see that small island states have essentially already lost their historical climates -- even as they face losing their land from rising seas -- feels very unfair and tragic.\"\"\"\"</p>\r\n<p>&nbsp;</p>\r\n<p>The urgent need for money to help vulnerable tropical nations adapt to climate impacts will be squarely on the table when nearly 200 countries meet in 10 days for United Nations climate talks in Egypt.</p>\r\n<p>&nbsp;</p>\r\n<p>Rich nations have yet to honour a decade-old pledge to ramp up climate financing for developing nations to $100 billion per year, even though the UN\\\'s climate advisory panel, the IPCC, estimates that annual adaptation costs could hit one trillion dollars by 2050 if warming continues apace.</p>', 'awesome,violence', 1, NULL, NULL, NULL, '26-09-2024', 'September', 1, 1, '2024-09-26 12:30:00', '2024-09-25 20:18:41'),
(33, 11, 0, 1, 'RpCC polls to be held on Dec 27', 'rpcc-polls-to-be-held-on-dec-27', '1811073838840760.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,completely', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:35:00', '0000-00-00 00:00:00'),
(34, 12, 0, 1, 'Jail Killing Day observed', 'jail-killing-day-observed', '1811073840765900.webp', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,BAGCHI', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:40:00', '0000-00-00 00:00:00'),
(35, 12, 0, 1, 'Pakistan keep hopes live by ending South Africa\'s unbeaten run', 'pakistan-keep-hopes-live-by-ending-south-africa\'s-unbeaten-run', '1811073844651314.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,supporters', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:45:00', '0000-00-00 00:00:00'),
(36, 12, 0, 1, 'PSG win 2-1 at Juventus but finish second in group', 'psg-win-2-1-at-juventus-but-finish-second-in-group', '1811073846760323.webp', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,closely', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:50:00', '0000-00-00 00:00:00'),
(37, 13, 0, 1, 'Giroud double helps AC Milan secure last-16 place', 'giroud-double-helps-ac-milan-secure-last-16-place', '1811073847747356.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,ongoing', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 12:55:00', '0000-00-00 00:00:00'),
(38, 13, 0, 1, 'Win against India will be called an upset: Shakib Al Hasan', 'win-against-india-will-be-called-an-upset:-shakib-al-hasan', '1811073851067072.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,leaders', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:00:00', '0000-00-00 00:00:00'),
(39, 13, 0, 1, 'New office timing for banks 10am to 5pm', 'new-office-timing-for-banks-10am-to-5pm', '1811073853728312.webp', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,leaders', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:05:00', '0000-00-00 00:00:00'),
(40, 14, 0, 1, 'Priyanka Chopra’s next film gets a release date', 'priyanka-chopra’s-next-film-gets-a-release-date', '1811073855010149.webp', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,violence', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:10:00', '0000-00-00 00:00:00'),
(41, 14, 0, 1, 'Highmore\'s take on \'The Good Doctor\' completing 100 episodes', 'highmore\'s-take-on-\'the-good-doctor\'-completing-100-episodes', '1811073856510640.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:15:00', '0000-00-00 00:00:00'),
(42, 14, 0, 1, 'Producer-director Azizur Rahman Buli dies', 'producer-director-azizur-rahman-buli-dies', '1811073859019168.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,Imran', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:20:00', '0000-00-00 00:00:00'),
(43, 15, 0, 1, '4th Bangladesh Film Festival to begin in Kolkata on Saturday', '4th-bangladesh-film-festival-to-begin-in-kolkata-on-saturday', '1811073859434424.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,BAGCHI', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:25:00', '0000-00-00 00:00:00'),
(44, 15, 0, 1, 'Dogecoin surges on Elon Musk\'s Twitter deal', 'dogecoin-surges-on-elon-musk\'s-twitter-deal', '1811073862364546.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,unacceptable', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:30:00', '0000-00-00 00:00:00');
INSERT INTO `news_posts` (`id`, `category_id`, `subcategory_id`, `user_id`, `news_title`, `news_title_slug`, `image`, `news_details`, `tags`, `breaking_news`, `top_slider`, `first_section_three`, `first_section_nine`, `post_date`, `post_month`, `status`, `view_count`, `created_at`, `updated_at`) VALUES
(45, 15, 0, 1, 'I predicted the doom of ex-Twitter heads', 'i-predicted-the-doom-of-ex-twitter-heads', '1811073863613733.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,continue', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:35:00', '0000-00-00 00:00:00'),
(46, 9, 8, 1, 'Taylor Swift edits music video after fatphobia accusations', 'taylor-swift-edits-music-video-after-fatphobia-accusations', '1811073864746742.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,Taylor', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:40:00', '0000-00-00 00:00:00'),
(47, 9, 9, 1, 'Ashok Selvan, Ritu Varma on ‘Nitham Oru Vaanam’', 'ashok-selvan,-ritu-varma-on-‘nitham-oru-vaanam’', '1811073867147170.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,unacceptable,always', 0, 0, 0, 0, '24-09-2024', 'September', 1, 0, '2024-09-24 13:45:00', '0000-00-00 00:00:00'),
(48, 9, 9, 1, 'Priyanka Chopra’s next film gets a release date', 'priyanka-chopra’s-next-film-gets-a-release-date', '1811073868081462.jpg', '<div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>Former Pakistan Prime Minister Imran Khan was shot and wounded in the shin on Thursday when his anti-govement protest convoy came under attack in what his aides said was a clear assassination attempt.</p><p>PAKISTAN PRIME MINISTER SHEHBAZ SHARIF</p><p>I strongly condemn the firing at Imran Khan\'s rally. An immediate report of the incident has been sought from the Interior Minister. We pray for the speedy recovery of Imran and other injured. The Federation will provide all possible support to the Punjab govement in the security/investigation of the incident. Violence should have no place in national politics.</p><p>PAKISTAN PRESIDENT ARIF ALVI</p><p>Strongly condemn heinous assassination attempt on ex-PM of Pakistan, the brave @ImranKhanPTI. I have sought immediate reports from authorities. I pray for his speedy recovery and of all those injured. My condolences to family of deceased political worker who died during the incident.</p></div></div></div></div><div class=\"\"\"\"><div class=\"\"\"\">Advertisement</div></div></div><p></p><div id=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div class=\"\"\"\"><div><p>CANADIAN PRIME MINISTER JUSTIN TRUDEAU</p><p>The attack on Imran Khan and his supporters is completely unacceptable, and I strongly condemn this violence. It has no place in politics, in any democracy, or in our society. I&rsquo;m wishing a speedy recovery to Imran and all who were injured today.</p><p>PAKISTANI NOBEL PEACE PRIZE WINNER MALALA YOUSAFZAI</p><p>Attacks on leaders of any political belief or party are always wrong. And violence is never an acceptable protest. Wishing Imran Khan a full recovery.</p><p>INDIAN FOREIGN MINISTRY SPOKESMAN ARINDAM BAGCHI</p><p>It\'s a development that just took place. We\'re closely keeping an eye on and we\'ll continue to monitor ongoing developments.</p></div></div></div></div></div>', 'awesome,condemn', 0, 0, 0, 0, '24-09-2024', 'September', 1, 1, '2024-09-24 13:50:00', '2024-09-28 19:07:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('032befa8-592b-4371-ad1d-3e25c40bc8a0', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', '2024-09-30 00:52:57', '2024-09-30 00:52:55', '2024-09-30 00:52:57'),
('08ee1f73-5fa5-41ee-9372-e5622f6e875f', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 35, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:42:29', '2024-09-30 00:42:29'),
('1fa5f2b8-4abc-4513-978f-d9fdae844cf8', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 36, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:42:29', '2024-09-30 00:42:29'),
('331102c8-81c2-45c5-8a84-a0be38804be4', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 36, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:26', '2024-09-30 00:51:26'),
('42ddd395-d818-407e-be2c-17d3b4d24f5f', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 36, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:30', '2024-09-30 00:51:30'),
('4fa26b0e-c704-4198-a8aa-0f2c4f04bc34', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 35, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:55', '2024-09-30 00:52:55'),
('55febc32-4fe1-4157-8978-6b414626b246', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', '2024-09-30 00:51:32', '2024-09-30 00:51:30', '2024-09-30 00:51:32'),
('64d3817f-b8fc-4b95-9b28-0be440783fa5', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 4, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:42:29', '2024-09-30 00:42:29'),
('6517824e-930d-45a9-bb93-dd9bd0898385', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 35, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:51', '2024-09-30 00:52:51'),
('65a35e22-60ec-4889-b6f2-ac0815276f39', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 36, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:55', '2024-09-30 00:52:55'),
('69ac736d-4ba1-4f33-b605-7a840eac8440', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', '2024-09-30 00:51:32', '2024-09-30 00:51:26', '2024-09-30 00:51:32'),
('6b0e8897-ebc3-4864-9aec-01c0f52177fc', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 35, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:26', '2024-09-30 00:51:26'),
('6d399eed-c2af-4a4e-863c-f050f44286b2', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 36, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:51', '2024-09-30 00:52:51'),
('a4e801c4-f61f-4543-93fc-381d1d6cbff1', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 4, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:55', '2024-09-30 00:52:55'),
('b6cfb890-911a-4ec9-a8d2-b1d16c9dbb53', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', '2024-09-30 00:51:08', '2024-09-30 00:42:29', '2024-09-30 00:51:08'),
('cb8fdcf9-bad4-4383-8163-b4f5e328dfb7', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 4, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:52:51', '2024-09-30 00:52:51'),
('f0c533ac-38c2-4cf4-a638-f2531312f0ad', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"message\":\"New Review Added In News\"}', '2024-09-30 00:52:57', '2024-09-30 00:52:51', '2024-09-30 00:52:57'),
('f3983722-91f7-4c1f-9c7b-c4cbaf364443', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 4, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:30', '2024-09-30 00:51:30'),
('f3d6414d-f77a-455f-b55d-6c5e0e53479f', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 4, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:26', '2024-09-30 00:51:26'),
('f80d92e1-4d37-4e5b-964d-4cb0e707da02', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 35, '{\"message\":\"New Review Added In News\"}', NULL, '2024-09-30 00:51:30', '2024-09-30 00:51:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'category.menu', 'web', 'category', '2024-09-29 09:41:16', '2024-09-29 09:41:16'),
(2, 'category.list', 'web', 'category', '2024-09-29 09:41:29', '2024-09-29 09:41:29'),
(3, 'category.add', 'web', 'category', '2024-09-29 09:41:36', '2024-09-29 09:41:36'),
(4, 'category.edit', 'web', 'category', '2024-09-29 09:41:45', '2024-09-29 09:41:45'),
(5, 'category.delete', 'web', 'category', '2024-09-29 09:41:53', '2024-09-29 09:41:53'),
(6, 'subcategory.menu', 'web', 'subCategory', '2024-09-29 09:42:03', '2024-09-29 09:42:03'),
(7, 'subcategory.list', 'web', 'subCategory', '2024-09-29 09:42:49', '2024-09-29 09:42:49'),
(8, 'subcategory.add', 'web', 'subCategory', '2024-09-29 09:42:51', '2024-09-29 09:42:51'),
(9, 'subcategory.edit', 'web', 'subCategory', '2024-09-29 09:42:52', '2024-09-29 09:42:52'),
(10, 'subcategory.delete', 'web', 'subCategory', '2024-09-29 09:42:54', '2024-09-29 09:42:54'),
(11, 'news.menu', 'web', 'news', '2024-09-29 09:44:00', '2024-09-29 09:44:00'),
(12, 'news.list', 'web', 'news', '2024-09-29 09:44:01', '2024-09-29 09:44:01'),
(13, 'news.add', 'web', 'news', '2024-09-29 09:44:03', '2024-09-29 09:44:03'),
(14, 'news.edit', 'web', 'news', '2024-09-29 09:44:05', '2024-09-29 09:44:05'),
(15, 'news.delete', 'web', 'news', '2024-09-29 09:44:07', '2024-09-29 09:44:07'),
(16, 'banner.menu', 'web', 'banner', '2024-09-29 09:45:19', '2024-09-29 09:45:19'),
(17, 'photo.menu', 'web', 'photo', '2024-09-29 09:45:59', '2024-09-29 09:45:59'),
(18, 'photo.list', 'web', 'photo', '2024-09-29 09:46:01', '2024-09-29 09:46:01'),
(19, 'photo.add', 'web', 'photo', '2024-09-29 09:46:02', '2024-09-29 09:46:02'),
(20, 'photo.edit', 'web', 'photo', '2024-09-29 09:46:04', '2024-09-29 09:46:04'),
(21, 'photo.delete', 'web', 'photo', '2024-09-29 09:46:05', '2024-09-29 09:46:05'),
(22, 'video.menu', 'web', 'video', '2024-09-29 09:47:15', '2024-09-29 09:47:15'),
(23, 'video.list', 'web', 'video', '2024-09-29 09:47:16', '2024-09-29 09:47:16'),
(24, 'video.add', 'web', 'video', '2024-09-29 09:47:17', '2024-09-29 09:47:17'),
(25, 'video.edit', 'web', 'video', '2024-09-29 09:47:18', '2024-09-29 09:47:18'),
(26, 'video.delete', 'web', 'video', '2024-09-29 09:47:20', '2024-09-29 09:47:20'),
(27, 'live.menu', 'web', 'live', '2024-09-29 09:47:41', '2024-09-29 09:47:41'),
(28, 'review.menu', 'web', 'review', '2024-09-29 09:47:54', '2024-09-29 09:47:54'),
(29, 'seo.menu', 'web', 'seo', '2024-09-29 09:48:02', '2024-09-29 09:48:02'),
(30, 'setting.menu', 'web', 'admin', '2024-09-29 09:48:13', '2024-09-29 09:48:13'),
(31, 'role.menu', 'web', 'role', '2024-09-29 09:48:21', '2024-09-29 09:48:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_gallery` varchar(255) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photo_galleries`
--

INSERT INTO `photo_galleries` (`id`, `photo_gallery`, `post_date`, `created_at`, `updated_at`) VALUES
(3, '1811509929978706.jpg', '29 September 2024', NULL, '2024-09-28 23:14:54'),
(4, '1811509771283681.jpg', '29 September 2024', NULL, '2024-09-28 23:12:22'),
(6, '1811510916715531.jpg', '29 September 2024', NULL, NULL),
(7, '1811510916792665.jpg', '29 September 2024', NULL, NULL),
(8, '1811510916867904.jpg', '29 September 2024', NULL, NULL),
(9, '1811510916941493.jpg', '29 September 2024', NULL, NULL),
(10, '1811510917016439.jpg', '29 September 2024', NULL, NULL),
(11, '1811510917089140.jpg', '29 September 2024', NULL, NULL),
(12, '1811510917161917.jpg', '29 September 2024', NULL, NULL),
(13, '1811510917235702.jpg', '29 September 2024', NULL, NULL),
(14, '1811510917315844.webp', '29 September 2024', NULL, NULL),
(15, '1811510917433887.jpg', '29 September 2024', NULL, NULL),
(16, '1811510917520879.webp', '29 September 2024', NULL, NULL),
(19, '1811519439831296.jpg', '29 September 2024', '2024-09-29 01:09:03', NULL),
(20, '1811519658990004.webp', '29 September 2024', '2024-09-29 08:49:32', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `news_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 'I don\'t know this news!', '1', '2024-09-29 07:26:16', '2024-09-29 08:14:23'),
(5, 2, 2, 'This news is so very helpful!', '0', '2024-09-29 07:26:31', NULL),
(7, 8, 1, 'I think that this company is very amazing!', '1', '2024-09-29 07:48:33', '2024-09-29 07:51:50'),
(8, 13, 2, 'This post so cool!', '1', '2024-09-30 00:42:29', '2024-09-30 00:43:46'),
(11, 13, 2, 'adasdas', '0', '2024-09-30 00:52:51', NULL),
(12, 13, 2, 'asdasdasd', '0', '2024-09-30 00:52:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2024-09-29 10:02:43', '2024-09-29 11:15:43'),
(2, 'Admin', 'web', '2024-09-29 10:03:21', '2024-09-29 10:03:21'),
(3, 'Editor', 'web', '2024-09-29 10:03:34', '2024-09-29 10:03:34'),
(4, 'Reporter', 'web', '2024-09-29 10:03:44', '2024-09-29 10:03:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 3),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 4),
(31, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'La News is a website popular at Viet Nam', 'La News By Digi Poly', 'La News,Digi Poly,News For Viet Nam', 'Website provide many news multi topic as Bussiness, Entertaiment,....', NULL, '2024-09-29 08:29:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MBNgSjoeoVLukwqKV1aOgKe3SOaHvb6fVkHsHAe4', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQlRqYWVUZUhTYTB2dDNVNDZBWWhrWVdxODRpeXB3UzhaZzZmdkRIQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9uZXdzL2RldGFpbHMvMTMvZWxvbi1tdXNrLWNvbXBsZXRlcy0kNDRibi10d2l0dGVyLXRha2VvdmVyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjY6ImJsb2cxMyI7aToxO30=', 1727682775),
('UF8kFHFSNQmvSd6nf6oKPMEJX3zJRfRRrs7sQ48v', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTFjTDBlRVNGYVc3QUFqTHdBbzIwVnlPS0xSS01GdlE3dUNkZ2w2cCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1727686232);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(4, 8, 'CRICKET', 'cricket', '2024-09-24 10:05:00', NULL),
(5, 8, 'FOOTBAL', 'footbal', '2024-09-24 10:10:00', NULL),
(6, 8, 'HOCKEY', 'hockey', '2024-09-24 10:15:00', NULL),
(7, 9, 'MOVIE', 'movie', '2024-09-24 10:20:00', NULL),
(8, 9, 'HOLLYWOOD', 'hollywood', '2024-09-24 10:25:00', NULL),
(9, 9, 'BOLLYWOOD', 'bollywood', '2024-09-24 10:30:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$ZChOd31jpB5z6HJHOzBB7uo2xHTbgRVh95PuNAVcQC7pwgOCApNta', '202409221228avatar_panda.avif', '0984004258', 'admin', 'active', 'jrO40HKgSzZCQls2aSbUGL4vqKdzhwTsfpkKGDzupKKgTyqQ4cMUQmHdvSk0', NULL, '2024-09-29 18:05:10'),
(2, 'User', 'user', 'user@gmail.com', '2024-09-30 00:41:54', '$2y$12$jz.RJhDMJURzmUz1xDaIteWbmAzv2yhYo/40.rniQIfALg1OSwsTO', '202409291304avatar_panda.avif', NULL, 'user', 'active', NULL, NULL, '2024-09-30 00:41:54'),
(3, 'Lisandro Cassin', NULL, 'denesik.araceli@example.net', '2024-09-22 05:28:09', '$2y$12$0NFjjBT6nnbXO.7QIWfuduWuNIeW4pROKQ490Am4fBqWO.adEZbd2', NULL, '+1 (726) 436-0730', 'user', 'inactive', 'acBC9RagAa', '2024-09-22 05:28:09', '2024-09-22 05:28:09'),
(4, 'Sylvan Bayer', 'bayer', 'tiffany27@example.net', '2024-09-22 05:28:09', '$2y$12$0NFjjBT6nnbXO.7QIWfuduWuNIeW4pROKQ490Am4fBqWO.adEZbd2', NULL, '+1-937-390-3321', 'admin', 'active', 'h5XMvg2pq7', '2024-09-22 05:28:09', '2024-09-29 16:34:19'),
(5, 'Dr. Estell Dietrich DVM', NULL, 'doyle.karina@example.com', '2024-09-22 05:28:09', '$2y$12$0NFjjBT6nnbXO.7QIWfuduWuNIeW4pROKQ490Am4fBqWO.adEZbd2', NULL, '575-227-5217', 'user', 'active', 'a14eM9DVGG', '2024-09-22 05:28:09', '2024-09-22 05:28:09'),
(35, 'Editor', 'editor', 'editor@gmail.com', NULL, '$2y$12$.gFJwUThFjH3X6bbfyqPQuVZJQbhNU4nIDQxwyUAGesaG9SM5mnBK', NULL, '0984004258', 'admin', 'active', NULL, '2024-09-29 16:38:13', '2024-09-29 16:38:17'),
(36, 'Reporter', 'reporter', 'reporter@gmail.com', NULL, '$2y$12$I4cRtkCzS3RluzDgeJgfCOBY8XBBUfepAnOfurydNA5P6tmDUe8fm', NULL, '0984004258', 'admin', 'active', NULL, '2024-09-29 16:40:33', '2024-09-29 18:06:59'),
(41, 'test', NULL, 'test@gmail.com', '2024-09-29 18:58:40', '$2y$12$/5NRHzrs5tQtlDhuT56pVuP/1MRtRsUw0y.dLo15NHvJv/hM4IRie', NULL, NULL, 'user', 'active', NULL, '2024-09-29 18:58:21', '2024-09-29 18:58:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_image` varchar(255) DEFAULT NULL,
  `video_title` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `post_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video_galleries`
--

INSERT INTO `video_galleries` (`id`, `video_image`, `video_title`, `video_url`, `post_date`, `created_at`, `updated_at`) VALUES
(2, '1811520708881497.jpg', 'Pakistan set up Asia Cup final1', 'https://www.youtube.com/watch?v=LplA-UYwA38', '29-09-2024', '2024-09-29 09:06:13', NULL),
(3, '1811520725835313.jpg', 'Bangladesh beat Netherlands by 9 runs', 'https://www.youtube.com/watch?v=Dc3u6mzjDAk', '29-09-2024', '2024-09-29 09:06:30', '2024-09-29 09:36:25'),
(4, '1811520741206201.webp', 'Rise Of The Empires OTTOMAN  UNSTOPPABLE', 'https://www.youtube.com/watch?v=HaIjR05n1Vc', '29-09-2024', '2024-09-29 09:06:44', '2024-09-29 09:36:17'),
(5, '1811520757008631.jpg', 'K-drama Multifandom MV - Unstoppable Heroines', 'https://www.youtube.com/watch?v=e1sT2wUu4xQ', '29-09-2024', '2024-09-29 09:06:59', '2024-09-29 09:36:07'),
(6, '1811525371951009.jpg', 'Kdrama Multifemale  National Womens Day', 'https://www.youtube.com/watch?v=w9JvGk__Ffw', '29-09-2024', '2024-09-29 09:17:59', '2024-09-29 10:20:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `live_tvs`
--
ALTER TABLE `live_tvs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `news_posts`
--
ALTER TABLE `news_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_news_id_foreign` (`news_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `live_tvs`
--
ALTER TABLE `live_tvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `news_posts`
--
ALTER TABLE `news_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
