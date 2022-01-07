-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2022 at 01:20 PM
-- Server version: 5.7.35
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newhomet_newhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chung Cư', 'chung-cu', 'image/category/category-icon-buy-blue63.svg', '2021-12-11 07:36:11', '2021-12-04 01:37:47', '2021-12-11 07:36:11'),
(2, 'Chung Cư', 'chung-cu', '/image/category/category-icon-buy-blue92.svg', '2021-12-15 15:03:32', '2021-12-04 01:44:55', '2021-12-15 15:03:32'),
(3, 'Nhà Bán Lẻ 2', 'nha-ban-le', '/image/category/category-icon-sell-blue43.svg', '2021-12-15 15:03:40', '2021-12-04 01:45:19', '2021-12-15 15:03:40'),
(4, 'Đất nền', 'dat-nen', '/image/category/tiles84.png', '2021-12-15 15:03:07', '2021-12-04 01:55:28', '2021-12-15 15:03:07'),
(5, 'Đất nền 2', 'dat-nen', '/image/category/tiles84.png', '2021-12-15 15:03:29', '2021-12-04 01:55:28', '2021-12-15 15:03:29'),
(6, 'Đất nền 10', 'dat-nen', '/image/category/tiles84.png', '2021-12-15 15:03:01', '2021-12-04 01:55:28', '2021-12-15 15:03:01'),
(7, 'Đất nền 11', 'dat-nen', '/image/category/tiles84.png', '2021-12-15 15:03:04', '2021-12-04 01:55:28', '2021-12-15 15:03:04'),
(8, 'Đất nền 13', 'dat-nen', '/image/category/tiles84.png', '2021-12-11 23:07:49', '2021-12-04 01:55:28', '2021-12-11 23:07:49'),
(9, 'Chung Cư 1', 'chung-cu', '/image/category/category-icon-buy-blue92.svg', '2021-12-11 23:07:42', '2021-12-04 01:44:55', '2021-12-11 23:07:42'),
(10, 'Nhà Bán Lẻ 1', 'nha-ban-le', '/image/category/category-icon-sell-blue43.svg', '2021-12-11 23:04:43', '2021-12-04 01:45:19', '2021-12-11 23:04:43'),
(11, 'Chung Cư 2', 'chung-cu', '/image/category/category-icon-buy-blue92.svg', '2021-12-11 23:05:50', '2021-12-04 01:44:55', '2021-12-11 23:05:50'),
(12, 'danh mục test', 'danh-muc-test', '/image/category/Convert-Pictures-To-JPEG-Step-24-Version-251.jpg', '2021-12-12 03:06:31', '2021-12-11 23:24:57', '2021-12-12 03:06:31'),
(14, 'okoke', 'okoke', NULL, '2021-12-14 06:58:36', '2021-12-14 06:58:15', '2021-12-14 06:58:36'),
(15, 'hsahaa', 'hsahaa', NULL, '2021-12-14 07:00:09', '2021-12-14 07:00:01', '2021-12-14 07:00:09'),
(16, 'haha', 'haha', NULL, '2021-12-14 07:16:20', '2021-12-14 07:16:14', '2021-12-14 07:16:20'),
(17, 'danh mục test', 'danh-muc-test', '/image/category/image0.png', '2021-12-15 15:02:57', '2021-12-14 07:30:55', '2021-12-15 15:02:57'),
(18, 'haa', 'haa', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1639580160/tptrcaghvgteogkrmoqh.jpg', '2021-12-25 09:29:56', '2021-12-15 07:55:51', '2021-12-25 09:29:56'),
(19, 'dự án', 'du-an', NULL, '2021-12-18 07:20:26', '2021-12-18 07:19:45', '2021-12-18 07:20:26'),
(20, 'haha', 'haha', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1639812035/pqteqys0djmcw3lt5rs9.png', '2021-12-18 07:20:28', '2021-12-18 07:20:20', '2021-12-18 07:20:28'),
(21, 'hakll', 'hakll', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1639815585/knb3mqwt4jkdeqcshrip.png', '2021-12-25 09:29:59', '2021-12-18 07:55:05', '2021-12-25 09:29:59'),
(22, 'haha', 'haha', NULL, '2021-12-18 08:35:39', '2021-12-18 08:35:32', '2021-12-18 08:35:39'),
(23, 'haha', 'haha', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1639816564/g8r1av5927ge8oqveqyn.png', '2021-12-18 08:36:46', '2021-12-18 08:35:53', '2021-12-18 08:36:46'),
(24, 'love', 'love', NULL, '2021-12-18 08:40:09', '2021-12-18 08:40:05', '2021-12-18 08:40:09'),
(25, 'Đất nền', 'dat-nen', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1639818270/t9k6kzf81ok3wsgctowr.png', '2021-12-25 09:30:02', '2021-12-18 09:04:17', '2021-12-25 09:30:02'),
(26, 'Dự án', 'du-an', NULL, '2021-12-25 09:30:37', '2021-12-25 09:30:31', '2021-12-25 09:30:37'),
(27, 'Dự án', 'du-an', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640424663/v8fqrb6euugtyw2tftac.jpg', NULL, '2021-12-25 09:30:42', '2021-12-25 09:30:42'),
(28, 'Đất nền', 'dat-nen', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640511956/fhxtboi4gela7hv9v9ex.jpg', NULL, '2021-12-26 09:45:37', '2021-12-26 09:45:37'),
(29, 'Nhà bán lẻ', 'nha-ban-le', 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641479810/wxrhlxsfzoffzrodziyn.jpg', NULL, '2022-01-06 14:36:49', '2022-01-06 14:36:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `body`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 20, 8, 'Bán nhà kh', 1, '2022-01-03 16:00:53', '2022-01-03 15:14:00', '2022-01-03 16:00:53'),
(5, 20, 8, 'xịn', 1, NULL, '2022-01-03 15:34:49', '2022-01-03 15:34:49'),
(6, 20, 8, 'aaa', 1, '2022-01-03 16:06:53', '2022-01-03 15:35:12', '2022-01-03 16:06:53'),
(7, 20, 8, 'aaa', 1, '2022-01-03 16:01:35', '2022-01-03 15:36:22', '2022-01-03 16:01:35'),
(8, 20, 8, 'aa', 1, '2022-01-03 16:00:47', '2022-01-03 15:37:45', '2022-01-03 16:00:47'),
(9, 20, 8, 'k', 1, NULL, '2022-01-03 16:07:32', '2022-01-03 16:07:32'),
(10, 20, 8, 'kkk', 1, NULL, '2022-01-03 16:07:41', '2022-01-03 16:07:41'),
(11, 20, 8, 'kk', 1, NULL, '2022-01-03 16:08:11', '2022-01-03 16:08:11'),
(12, 20, 8, 'a', 1, '2022-01-03 16:08:39', '2022-01-03 16:08:35', '2022-01-03 16:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `full_name`, `email`, `phone_number`, `bank_account_number`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Tiến', 'tranminhtien@gmail.com', '0123456789', '123456789 - VPBank', 3, NULL, '2021-12-04 01:58:03', '2021-12-04 01:58:03'),
(2, 'Huỳnh Đình Thảo', 'huynhdinhthao@gmail.com', '0123456789', '123456789 - Vietcombank', 3, NULL, '2021-12-04 01:58:23', '2021-12-04 01:58:23'),
(3, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VCB - 0967794663', 17, '2021-12-18 14:41:44', '2021-12-18 14:21:04', '2021-12-18 14:41:44'),
(4, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VCB - 0967794663', 17, '2021-12-18 14:42:54', '2021-12-18 14:42:47', '2021-12-18 14:42:54'),
(5, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VCB - 0967794663', 17, '2021-12-18 14:43:37', '2021-12-18 14:43:31', '2021-12-18 14:43:37'),
(6, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VPB - 0967794663', 17, '2021-12-18 14:45:44', '2021-12-18 14:44:31', '2021-12-18 14:45:44'),
(7, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VPB - 0967794663', 17, '2021-12-19 14:08:49', '2021-12-18 14:49:06', '2021-12-19 14:08:49'),
(8, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VCB - 0967794663', 17, NULL, '2021-12-21 15:13:59', '2021-12-21 15:13:59'),
(9, 'Phan Quốc Tuấn', 'phanquoctuan00@gmail.com', '0967794663', 'VPB - 0967794663', 17, NULL, '2021-12-22 14:33:32', '2021-12-22 14:33:32'),
(10, 'Huỳnh Đình Thảo', 'delaycaca@gmail.com', '0774758409', 'ACB - ACB - 0774758409', 18, NULL, '2021-12-26 06:32:39', '2021-12-26 06:32:39'),
(11, 'Huỳnh Đình Thảo', 'delaycaca@gmail.com', '0774758409', 'VCB - ACB - 0774758409', 22, NULL, '2022-01-04 05:52:13', '2022-01-04 05:52:13'),
(12, 'Phạm Kỷ Nguyên', 'phamkynguyen@gmail.com', '0935046139', 'VCB - 0935046139', 22, NULL, '2022-01-06 14:40:38', '2022-01-06 14:40:38'),
(13, 'Trần Minh Tiến', 'tranminhtien@gmail.com', '0934568375', 'TCB - 0774758409', 22, NULL, '2022-01-06 14:42:49', '2022-01-06 14:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 20, 10, '2021-12-31 06:41:40', '2021-12-31 06:41:40'),
(13, 20, 9, '2022-01-01 06:45:54', '2022-01-01 06:45:54'),
(15, 20, 7, '2022-01-02 04:45:56', '2022-01-02 04:45:56'),
(16, 21, 13, '2022-01-04 05:59:33', '2022-01-04 05:59:33'),
(17, 20, 16, '2022-01-04 06:00:01', '2022-01-04 06:00:01'),
(18, 20, 18, '2022-01-06 14:54:19', '2022-01-06 14:54:19');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2021_12_24_224113_create_votes_table', 2),
(28, '2021_12_24_224149_create_comments_table', 2),
(29, '2021_12_24_230507_create_oders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `description`, `content`, `user_id`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tieu De', 'tieu-de', 'dess', '<h1>Tuan</h1>', 17, 6, '2021-12-28 13:11:08', '2021-12-27 14:38:46', '2021-12-28 13:11:08'),
(2, 'Tuấn đây nè update', 'Tuấn đây nè update', 'Rất hay', '<h1>Hâhaaa</h1>', 17, 6, '2022-01-02 04:29:09', '2021-12-28 13:14:17', '2022-01-02 04:29:09'),
(3, 'ha', 'ha', 'a', '<h1>Tuan</h1>', 17, 7, NULL, '2021-12-28 13:16:18', '2021-12-28 13:16:18'),
(4, 'aaa', 'aaa', 'a', '<h1>Tuan</h1>', 17, 7, '2021-12-28 14:09:32', '2021-12-28 13:17:11', '2021-12-28 14:09:32'),
(5, 'aa', 'aa', 'a', '<h1>Tuan</h1>', 17, 6, '2021-12-28 14:09:28', '2021-12-28 13:34:08', '2021-12-28 14:09:28'),
(6, 'Test update', 'Test update', 'Des', '<p>Ngon lắm xịn xò lắm</p>', 17, 6, NULL, '2021-12-28 14:08:02', '2021-12-28 14:08:19'),
(7, 'Post-news', 'post-news', 'Des', '<p>good</p>', 17, 7, NULL, '2021-12-30 12:44:46', '2021-12-30 12:44:46'),
(8, 'Căn hộ cho người thu nhập thấp', 'can-ho-cho-nguoi-thu-nhap-thap', 'full nội thất', '<p>phù hợp cho người thu nhập thấp</p>', 22, 15, NULL, '2022-01-04 05:58:40', '2022-01-04 05:58:40'),
(9, 'Cen Land: Vượt qua thách thức, doanh thu cao nhất lịch sử', 'cen-land-vuot-qua-thach-thuc-doanh-thu-cao-nhat-lich-su', 'Vượt qua những thách thức của đại dịch, năm 2021 đánh dấu bước tăng trưởng ngoạn mục và doanh thu cao nhất lịch sử của CTCP Bất động sản Thế Kỷ (Cen Land, HOSE: CRE), giữ vững vị thế trên thị trường bất động sản (BĐS).', '<p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><strong style=\"box-sizing: border-box; font-weight: bolder; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 11.5pt; background: white;\">Vượt qua thách thức</span></strong></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Do dịch bệnh còn diễn biến phức tạp, thị trường<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>tiếp tục chịu nhiều ảnh hưởng. Theo báo cáo của Hội môi giới<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>Việt Nam, ở thời điểm giãn cách xã hội, hơn 80% sàn giao dịch không có doanh thu hoặc doanh thu rất thấp.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Ngay khi kết thúc giãn cách, một lượng lớn tiền không nhỏ rút từ các lĩnh vực khác đang có xu hướng đổ vào<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>để tìm cơ hội đầu tư do nguồn cung khan hiếm và lo ngại nguy cơ lạm phát cao. Theo dự báo, nhu cầu mua<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>để đầu tư tiếp tục tăng cao trong 1-2 năm tới.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Nắm bắt nhu cầu của thị trường, tận dụng cơ hội đó, Cen Land đã đẩy mạnh mảng đầu tư thứ cấp, tập trung vào các phân khúc đang nóng của thị trường. Đầu 2021, Cen Land đã quyết định đầu tư 517 tỷ đồng dự án Hinode Royal Park và 815 tỷ đồng vào dự án Louis City</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>Hoàng Mai</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">.</span></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><img src=\"https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641364794-creanh-1.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; object-fit: cover; margin: 0px auto;\"></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><em style=\"box-sizing: border-box;\"><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Louis City – Một trong những dự án trọng điểm của Cen Land trong năm 2021.</span></em></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Hiện, danh mục đầu tư của Cen Land bao gồm 6 dự án: Louis City<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Hoàng Mai,<span>&nbsp;</span></span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Hinode Royal Park, Bình Minh Garden, C-Sky View, Casamia Hội An và Trinity Tower.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Mảng đầu tư thứ cấp ghi nhận doanh thu 3.371 tỷ tăng trưởng 533% so với cùng kỳ năm 2020. Trong đó hai dự án Hinode Royal Park và Louis City Hoàng Mai đóng góp chính vào doanh thu 9 tháng của Cen Land. Doanh thu 10 tháng ghi nhận kỷ lục 5.000 tỷ, đạt 100% kế hoạch cả năm 2021</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>được ĐHCĐ thông qua.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Theo đại diện của Cen Land, khả năng Cen Land sẽ vượt kế hoạch cả năm về doanh thu trên 5.000 tỷ đồng và lợi nhuận sau thuế hơn 408 tỷ đồng, ghi nhận kết quả cao nhất trong lịch sử từ khi thành lập.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Kế hoạch 2021 là năm khởi đầu cho một giai đoạn tăng tốc, mở rộng thị phần của Cen Land để xây dựng một nền tảng phân phối<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>lớn nhất tại Việt Nam và mục tiêu duy trì tốc độ tăng trưởng doanh thu trên 80%/năm từ nay đến năm 2023.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><strong style=\"box-sizing: border-box; font-weight: bolder; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Sẵn sàng bứt phá mạnh mẽ</span></strong></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Năm 2022, Cen Land sẵn sàng đón nhận thách thức, bứt phá mạnh mẽ với kỳ vọng thị trường<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>sẽ phục hồi và giao dịch sôi động trở lại. Cen Land tiếp tục đặt ra mục tiêu mới với hơn 10.000 tỷ doanh thu, tăng trưởng gấp đôi kế hoạch dự kiến năm 2021.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\">Để chuẩn bị nguồn lực cho việc thực hiện kế hoạch 2022 và gia nhập CLB tỷ USD, Cen Land đẩy mạnh ký kết hợp tác chiến lược với các định chế tài chính và các chủ đầu lớn.</p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Mới đây, Cen Land đã ký kết thỏa thuận hợp tác chiến lược toàn diện với CTCP Tập đoàn Đầu tư IPA. Trong giai đoạn từ 03/12 – 15/12/2021, IPA đã đăng ký mua 22 triệu cổ phiếu CRE tương ứng 10,66% vốn của Cen Land. Bên cạnh đó, Cen Land cũng đã bắt tay với các chủ đầu tư lớn như</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">:<span>&nbsp;</span></span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Hồng Lam Xuân Thành</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">, Vinhomes, Novaland, V.F.I Group,</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">... hứa hẹn nguồn hàng và tài chính dồi dào cho kế hoạch 2022.</span></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><br style=\"box-sizing: border-box;\"></span><img src=\"https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641364802-creanh-2.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; object-fit: cover; margin: 0px auto;\"></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><em style=\"box-sizing: border-box;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Cen Land và I.P.A hoàn tất thương vụ hợp tác với giá trị hơn 700 tỷ đồng</span></em><em style=\"box-sizing: border-box;\"><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">.</span></em></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Chủ tịch HĐQT Cen Land, ông Nguyễn Trung Vũ đã tiết lộ, Cen Land đã có một nguồn hàng lớn, đáp ứng nhu cầu của thị trường và dự kiến sẽ bùng nổ trong năm 2022.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Cen Land cũng tiếp tục mở rộng quy mô hoạt động tại<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">thị trường miền Nam</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">. Theo kế hoạch, Cen Land sẽ mở thêm văn phòng đại diện TP.HCM bên cạnh Cen Sài Gòn và chi nhánh Cen TP.HCM, điều này nhằm tăng cường sự hỗ trợ từ hội sở cho thị trường<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span>&nbsp;</span>lớn nhất cả nước</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><strong style=\"box-sizing: border-box; font-weight: bolder; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Kế hoạch tăng vốn 4.600 tỷ</span></strong></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Năm 2021, Cen Land đã hoàn thành phát hành cổ phiếu tăng vốn điều lệ. Tổng số lượng cổ phiếu chào bán và phát hành là trên 105 triệu cổ phiếu, với mệnh giá 10 nghìn đồng. Tổng giá trị cổ phiếu chào bán và phát hành theo mệnh giá là trên 1.055 tỷ đồng. Sau khi phát hành gần 105,6 triệu cổ phiếu, vốn điều lệ lên gần 2.016 tỷ đồng.</span>&nbsp;</p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Đầu năm 2022, Cen Land sẽ trình cổ đông phương án phát hành cổ phiếu tăng vốn điều lệ. Theo đó, tổng số lượng cổ phiếu phát hành thêm dự kiến là hơn 262 triệu cổ phiếu, trong đó gần 60,5 triệu cổ phiếu thưởng tỷ lệ 30% và gần 201,6 triệu cổ phiếu chào bán 1:1 cho cổ đông hiện hữu với giá 10.000 đồng/cổ phiếu.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><img src=\"https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/01/1641364811-creanh-3-1.jpg\" style=\"box-sizing: border-box; vertical-align: middle; border-style: none; max-width: 100%; object-fit: cover; margin: 0px auto;\"></p><p class=\"MsoNormal\" align=\"center\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: center;\"><em style=\"box-sizing: border-box;\"><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Cen Land sở hữu hệ sinh thái dịch vụ BĐS số 1.</span></em></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Như vậy, nếu đợt phát hành đạt kỳ vọng, vốn điều lệ của Cen</span><span>&nbsp;</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Land sẽ tăng từ 2.016 tỷ đồng lên hơn 4.637 tỷ đồng. Nguồn vốn tăng thêm này sẽ giúp Cen Land cải thiện đáng kể sức khỏe tài chính công ty, hỗ trợ mảng đầu tư thứ cấp bứt phá mạnh mẽ và là động lực chính cho tăng trưởng trong thời gian tới.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Với nguồn tài chính này, con thuyền Cen Land đang được tiếp đà và đang hướng tới trở thành một “Blue-chip” trong năm 2022 với vốn hóa hàng chục nghìn tỷ đồng.</span></p><p class=\"MsoNormal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Roboto !important; line-height: 24px; text-indent: 0px; font-size: 16px; font-weight: 400; color: rgb(51, 51, 51); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\"><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">Trên thị trường chứng khoán, cổ phiếu CRE của Cen Land nằm trong top những mã cổ phiếu được nhà đầu tư quan tâm trong lĩnh vực kinh doanh<span>&nbsp;</span></span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">BĐS</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">. Giá cổ phiếu CRE tăng lên mức 43.000 đồng/cp (ngày 23/12</span><span lang=\"EN-GB\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">/2021</span><span lang=\"VI\" style=\"box-sizing: border-box; font-family: Roboto !important; line-height: 1.5 !important; text-indent: unset !important; font-size: 16px !important;\">). Khối lượng giao dịch luôn đạt ở mức cao, đạt bình quân hơn 1.5 triệu đơn vị/phiên kể từ đầu năm.</span></p>', 22, 18, NULL, '2022-01-06 14:52:46', '2022-01-06 14:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `code_bill_oder` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_bill_payment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oders`
--

INSERT INTO `oders` (`id`, `user_id`, `product_id`, `status`, `end_time`, `code_bill_oder`, `code_bill_payment`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 20, 6, 'Đang chờ đặt cọc', '2022-01-02 08:53:41', NULL, NULL, NULL, '2022-01-01 09:44:20', '2022-01-01 08:53:41', '2022-01-01 09:44:20'),
(6, 20, 7, 'Đang chờ đặt cọc', '2022-01-02 09:47:21', NULL, NULL, NULL, '2022-01-01 10:44:58', '2022-01-01 09:47:21', '2022-01-01 10:44:58'),
(7, 20, 7, 'Đã thanh toán', '2022-01-28 05:32:36', '123123123', NULL, NULL, '2022-01-06 09:42:15', '2022-01-03 10:21:38', '2022-01-06 09:42:15'),
(8, 20, 16, 'Đã đặt cọc, chờ thanh toán', '2022-01-30 09:41:55', '12312323', '123', NULL, '2022-01-06 09:42:19', '2022-01-04 06:00:17', '2022-01-06 09:42:19'),
(9, 20, 16, 'Đang chờ đặt cọc', '2022-01-06 06:06:46', '23123', NULL, NULL, '2022-01-06 07:01:19', '2022-01-04 06:06:46', '2022-01-06 07:01:19'),
(10, 20, 8, 'Đang chờ đặt cọc', '2022-02-05 05:43:33', '009', NULL, NULL, '2022-01-06 09:42:42', '2022-01-06 05:43:33', '2022-01-06 09:42:42'),
(11, 20, 10, 'Đang chờ đặt cọc', '2022-01-16 09:43:04', '001', NULL, NULL, '2022-01-06 10:28:27', '2022-01-06 09:43:04', '2022-01-06 10:28:27'),
(12, 20, 9, 'Đang chờ đặt cọc', '2022-01-26 09:44:51', '009', NULL, NULL, '2022-01-06 10:28:24', '2022-01-06 09:44:51', '2022-01-06 10:28:24'),
(13, 20, 16, 'Đã thanh toán', NULL, '002', NULL, NULL, '2022-01-06 09:47:02', '2022-01-06 09:46:19', '2022-01-06 09:47:02'),
(14, 20, 17, 'Đã thanh toán', NULL, '222', NULL, NULL, '2022-01-06 09:51:30', '2022-01-06 09:50:20', '2022-01-06 09:51:30'),
(15, 20, 17, 'Đã thanh toán', NULL, '001', NULL, NULL, '2022-01-06 10:33:12', '2022-01-06 10:28:44', '2022-01-06 10:33:12'),
(16, 20, 17, 'Đã thanh toán', NULL, '001', '002', NULL, '2022-01-06 10:37:23', '2022-01-06 10:33:48', '2022-01-06 10:37:23'),
(17, 20, 18, 'Đã thanh toán', NULL, '12345678', NULL, NULL, '2022-01-06 14:57:58', '2022-01-06 14:55:07', '2022-01-06 14:57:58');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(66, 'App\\Models\\User', 2, 'newHome', '9816963e94ebfcf8398a4599db33bc92092cd58c86e37c00c4490ad44e0668b4', '[\"*\"]', '2022-01-02 15:10:38', '2022-01-02 14:54:25', '2022-01-02 15:10:38'),
(67, 'App\\Models\\User', 3, 'newHome', '5b103a49121f894f4376d8d804f600e58112e3ad6b8fa515a98c6bedeea4e47b', '[\"*\"]', '2022-01-02 15:16:29', '2022-01-02 15:10:05', '2022-01-02 15:16:29'),
(68, 'App\\Models\\User', 20, 'newHome', 'eca6f7f31456b20b77f3ca874ceba01408fa2dca0058d1d5153c011f970cf95e', '[\"*\"]', '2022-01-03 10:07:08', '2022-01-03 09:38:59', '2022-01-03 10:07:08'),
(69, 'App\\Models\\User', 17, 'newHome', '19c0ee9dd254d5e90dc542be5ee2a723ccaff0f2b574d33b609427b4ad1afd1c', '[\"*\"]', '2022-01-03 10:09:54', '2022-01-03 10:07:25', '2022-01-03 10:09:54'),
(70, 'App\\Models\\User', 20, 'newHome', '2c8c1474deeeee9e6af4924bcb636ab125dc714cad3ea5e124d198fe61d9dff9', '[\"*\"]', '2022-01-03 12:19:46', '2022-01-03 10:10:05', '2022-01-03 12:19:46'),
(71, 'App\\Models\\User', 2, 'newHome', '8706c6243e65350fdbfb8ec6b56b1eaf0dc47233ed3a0284cced05870b3c944e', '[\"*\"]', '2022-01-03 12:10:03', '2022-01-03 11:51:41', '2022-01-03 12:10:03'),
(72, 'App\\Models\\User', 1, 'newHome', 'c1eab12f32b2513c967a99bee349079195d05c8defeb0e27724b6587ebde9cf4', '[\"*\"]', '2022-01-03 12:20:04', '2022-01-03 12:19:57', '2022-01-03 12:20:04'),
(73, 'App\\Models\\User', 17, 'newHome', 'c0f4be715b10779193f57733f8a9ec926c10a47ed10c00bf92025583d2178794', '[\"*\"]', '2022-01-03 13:02:08', '2022-01-03 12:20:10', '2022-01-03 13:02:08'),
(74, 'App\\Models\\User', 20, 'newHome', '21ebfa2d48ee49d222b72825f00c0dfce7d0522bdf818aaf883b795bb9db4e98', '[\"*\"]', '2022-01-03 13:52:44', '2022-01-03 13:02:15', '2022-01-03 13:52:44'),
(75, 'App\\Models\\User', 2, 'newHome', '3c585fa2d5c2039173dd8ec39ca01d6b5eafab95541c29f7c4ed6a6ab4404ebb', '[\"*\"]', '2022-01-03 15:11:50', '2022-01-03 15:05:39', '2022-01-03 15:11:50'),
(76, 'App\\Models\\User', 17, 'newHome', 'e320064864257b73908f191f06c0b6a91266b29cc4cfb4d5a1bbb966018470b0', '[\"*\"]', '2022-01-03 15:13:29', '2022-01-03 15:09:39', '2022-01-03 15:13:29'),
(77, 'App\\Models\\User', 20, 'newHome', 'c4f565aa42f2e07815eb0e66d5f96ba5803476917758b6a6581e71395c45e526', '[\"*\"]', '2022-01-03 16:08:39', '2022-01-03 15:13:37', '2022-01-03 16:08:39'),
(78, 'App\\Models\\User', 2, 'newHome', '1d88f4f584afddb53c23e2a056899eba72993eea600d846807feff6b24994505', '[\"*\"]', '2022-01-03 15:34:48', '2022-01-03 15:31:51', '2022-01-03 15:34:48'),
(79, 'App\\Models\\User', 17, 'newHome', 'fe86b735b07480bbf9d879529d8d62f40df8a61ba6bfd66773ace38028f2e984', '[\"*\"]', '2022-01-04 05:59:21', '2022-01-03 16:13:30', '2022-01-04 05:59:21'),
(80, 'App\\Models\\User', 1, 'newHome', 'a601e1912be53c23458f15f09c52190fb9729ab75bedc7229b6cfa353b85b30b', '[\"*\"]', '2022-01-04 05:44:47', '2022-01-04 05:08:16', '2022-01-04 05:44:47'),
(81, 'App\\Models\\User', 3, 'newHome', '3dd637e7f6841a3ca178f8b0f4066d3a69734a797a26e0f97c21614016d90426', '[\"*\"]', '2022-01-04 05:28:33', '2022-01-04 05:24:29', '2022-01-04 05:28:33'),
(82, 'App\\Models\\User', 21, 'newHome', '56f461d9a82cb63f76280ec8bc53073695d98ce65f411d05aceef2edfcf70019', '[\"*\"]', '2022-01-04 05:48:05', '2022-01-04 05:47:39', '2022-01-04 05:48:05'),
(83, 'App\\Models\\User', 22, 'newHome', '611a8d70f7a531de00e6d902baa8374cb1500925d9b777a2738b1b18bb9ed81d', '[\"*\"]', '2022-01-04 05:59:06', '2022-01-04 05:49:44', '2022-01-04 05:59:06'),
(84, 'App\\Models\\User', 21, 'newHome', 'd5522fbca342f65fb5860366cb154fd6d15b61c17664250bec91816fee620d83', '[\"*\"]', '2022-01-04 06:40:22', '2022-01-04 05:59:19', '2022-01-04 06:40:22'),
(85, 'App\\Models\\User', 20, 'newHome', '40c8ea4f25c7962454e552096b1c1f564da89028beea7267a979f3f8a75002fe', '[\"*\"]', '2022-01-04 06:01:43', '2022-01-04 05:59:48', '2022-01-04 06:01:43'),
(86, 'App\\Models\\User', 17, 'newHome', '5d5679de5f0b09aadf043554e849d048d0dc298bd93478656f63d792ebe0ab0d', '[\"*\"]', '2022-01-04 06:02:45', '2022-01-04 06:01:54', '2022-01-04 06:02:45'),
(87, 'App\\Models\\User', 20, 'newHome', 'df1d8468f2aa57e42f460df2fb6518411dfa380edf94a576ce10fa28cbae3b60', '[\"*\"]', '2022-01-04 06:06:47', '2022-01-04 06:02:58', '2022-01-04 06:06:47'),
(88, 'App\\Models\\User', 17, 'newHome', '8a83a5f106286190d1d6d2931c7e1cc7ee914b6baf71ad667386f73bd3372303', '[\"*\"]', NULL, '2022-01-04 06:09:05', '2022-01-04 06:09:05'),
(89, 'App\\Models\\User', 20, 'newHome', 'c99f7edefa959d6b4dfaeefb918e54928f0393131ab9a208c384b0dc33b8fe03', '[\"*\"]', '2022-01-04 06:09:24', '2022-01-04 06:09:19', '2022-01-04 06:09:24'),
(90, 'App\\Models\\User', 1, 'newHome', '9f47987fcb78dd828ea58f78e7b9d4da0b57d3ff3ef40f8abab86a5a356fca36', '[\"*\"]', '2022-01-06 05:11:54', '2022-01-04 06:16:47', '2022-01-06 05:11:54'),
(91, 'App\\Models\\User', 22, 'newHome', 'bd2058fa7ebcb29a931483a81eea801b359a16581eb480f4721cce71c5fc6a91', '[\"*\"]', '2022-01-04 06:43:00', '2022-01-04 06:41:51', '2022-01-04 06:43:00'),
(92, 'App\\Models\\User', 1, 'newHome', 'f613dc293fff4f8f480de1d8e2ddb8049f270b19524d2ae8db0d939be8be26a0', '[\"*\"]', '2022-01-04 06:44:07', '2022-01-04 06:43:15', '2022-01-04 06:44:07'),
(93, 'App\\Models\\User', 22, 'newHome', '596bfa528470d85e8ffb7f29662d44cb2d15bd03d041b8566f8f4df6a22f1619', '[\"*\"]', '2022-01-04 06:52:01', '2022-01-04 06:44:21', '2022-01-04 06:52:01'),
(94, 'App\\Models\\User', 1, 'newHome', 'c739827c7f07c827c59f34b6de874ba1e9fa5089f15bfd27fbd47bcdfaba1174', '[\"*\"]', '2022-01-04 14:08:27', '2022-01-04 06:52:08', '2022-01-04 14:08:27'),
(95, 'App\\Models\\User', 17, 'newHome', 'b600ed5926d5a783ab1b38edb6e3f48ab8437207e478f7485e8510b868108a16', '[\"*\"]', '2022-01-06 11:32:04', '2022-01-04 14:08:37', '2022-01-06 11:32:04'),
(96, 'App\\Models\\User', 3, 'newHome', 'd08af42e3e48c66dec4d679e18417aa391deba035521d08d6d340b977b958681', '[\"*\"]', '2022-01-05 13:56:55', '2022-01-05 13:55:13', '2022-01-05 13:56:55'),
(97, 'App\\Models\\User', 17, 'newHome', '408a8f275eb03ec10e50fe178e4e40a5c96074ff241d8f43a6e7fc9f900a8bcc', '[\"*\"]', '2022-01-05 14:21:28', '2022-01-05 13:57:19', '2022-01-05 14:21:28'),
(98, 'App\\Models\\User', 1, 'newHome', '9daf22b3068b0925213031ed48f67032056510c98af35b8be3558200c71b997d', '[\"*\"]', '2022-01-05 14:23:41', '2022-01-05 14:09:23', '2022-01-05 14:23:41'),
(99, 'App\\Models\\User', 20, 'newHome', '198170d78ff8a053167a3ac4584c284b94485b666e1cb622af6dd2359d87868d', '[\"*\"]', '2022-01-06 05:55:15', '2022-01-06 05:12:08', '2022-01-06 05:55:15'),
(100, 'App\\Models\\User', 17, 'newHome', '7fc9de05cc049857313e4b6f86a59baa84d67ce0ecf2ef7a66153bbef539c35c', '[\"*\"]', '2022-01-06 09:42:23', '2022-01-06 06:00:04', '2022-01-06 09:42:23'),
(101, 'App\\Models\\User', 20, 'newHome', 'ef3a5043302986567d27472ef0c286239406ffeb3319c457654b21a277705261', '[\"*\"]', '2022-01-06 09:43:27', '2022-01-06 09:42:33', '2022-01-06 09:43:27'),
(102, 'App\\Models\\User', 17, 'newHome', '31de3af97bc2bb1112f2618b7c9f58345443d07e0fc7815de3ea3e345f6330b9', '[\"*\"]', '2022-01-06 09:43:53', '2022-01-06 09:43:38', '2022-01-06 09:43:53'),
(103, 'App\\Models\\User', 20, 'newHome', '86f1af7cc77b4dc015be580d364621990aa3c47b4c9f4f94f09ede147476ba97', '[\"*\"]', '2022-01-06 09:45:15', '2022-01-06 09:44:13', '2022-01-06 09:45:15'),
(104, 'App\\Models\\User', 17, 'newHome', '2d388de30ec506acbf24416a90f5109df0b43365b9beb5bfe9e8b6dcfa68a452', '[\"*\"]', '2022-01-06 09:45:46', '2022-01-06 09:45:30', '2022-01-06 09:45:46'),
(105, 'App\\Models\\User', 20, 'newHome', '83a72a68c5b52cbe7036c6cb442fe92a9bee1a38b10f37099be699b82d8b5478', '[\"*\"]', '2022-01-06 09:46:29', '2022-01-06 09:45:56', '2022-01-06 09:46:29'),
(106, 'App\\Models\\User', 17, 'newHome', '36db3271994ee896ada994589a5782a0160d4a7a4eda32a631d59e44ee3c6cd6', '[\"*\"]', '2022-01-06 09:49:42', '2022-01-06 09:46:38', '2022-01-06 09:49:42'),
(107, 'App\\Models\\User', 20, 'newHome', '57c1006a26783197fc3d375f611211f9afba7eeffdafd171afb33e0c81acbcfb', '[\"*\"]', '2022-01-06 09:50:50', '2022-01-06 09:49:48', '2022-01-06 09:50:50'),
(108, 'App\\Models\\User', 17, 'newHome', '5a47db42abbb09e3e2df17257b9d317a7d449b4d4cb983ebaf47ba90adb0ebb9', '[\"*\"]', '2022-01-06 10:27:59', '2022-01-06 09:50:58', '2022-01-06 10:27:59'),
(109, 'App\\Models\\User', 17, 'newHome', '2cbdd44161cc7d754705fffbd6e48c356e12a80c4770e957f49f7bc9ce90c869', '[\"*\"]', NULL, '2022-01-06 10:28:03', '2022-01-06 10:28:03'),
(110, 'App\\Models\\User', 20, 'newHome', '58736f1921197a97ad2b6f2d0cc5a003065f98eed22c0357a89f1962b96890ea', '[\"*\"]', '2022-01-06 10:29:15', '2022-01-06 10:28:15', '2022-01-06 10:29:15'),
(111, 'App\\Models\\User', 17, 'newHome', '0be7d8256ca981c679bbd29a26430bdc1f7361f3268700930acc3632440f756c', '[\"*\"]', '2022-01-06 10:33:21', '2022-01-06 10:29:32', '2022-01-06 10:33:21'),
(112, 'App\\Models\\User', 20, 'newHome', 'bf72adc344e19fc600b06ed9f9695769bb78bcc66f50b55ace963be3bf5e9e81', '[\"*\"]', '2022-01-06 10:34:12', '2022-01-06 10:33:29', '2022-01-06 10:34:12'),
(113, 'App\\Models\\User', 17, 'newHome', 'd8de7254663cddc7c2bc27ce739c51f975932b6c0189b05dd0c85765476668fe', '[\"*\"]', '2022-01-06 10:35:09', '2022-01-06 10:34:20', '2022-01-06 10:35:09'),
(114, 'App\\Models\\User', 20, 'newHome', '586ddf2ff81c6d9fc0c45db508b44eb83156883628f9408e61b8ea3e7701a87c', '[\"*\"]', '2022-01-06 10:36:45', '2022-01-06 10:35:17', '2022-01-06 10:36:45'),
(115, 'App\\Models\\User', 17, 'newHome', '926fe2cbc568917780e4a2127b4e73a9446f6bbdc65edcf025be17edac486a8d', '[\"*\"]', '2022-01-06 15:59:12', '2022-01-06 10:36:56', '2022-01-06 15:59:12'),
(116, 'App\\Models\\User', 22, 'newHome', '4c4cd32d45a710eb988a0c42d6c6cb26c7013062a0e659a039473dd4be7fe6d1', '[\"*\"]', NULL, '2022-01-06 13:32:16', '2022-01-06 13:32:16'),
(117, 'App\\Models\\User', 1, 'newHome', '54a1352fe17e899acb04f3c3516004f9f630250b5879cb2de964ffbf99bf5236', '[\"*\"]', '2022-01-06 14:37:13', '2022-01-06 14:35:05', '2022-01-06 14:37:13'),
(118, 'App\\Models\\User', 22, 'newHome', '384eb9f93a421aa096518c01453596b34c9a36799b2fb6aeb13714a97f75ab1d', '[\"*\"]', '2022-01-06 14:53:44', '2022-01-06 14:37:34', '2022-01-06 14:53:44'),
(119, 'App\\Models\\User', 20, 'newHome', 'aa4ecd078ec89a26f0631afe23644f0b58d537d0af55fefca01571d5a2baa39c', '[\"*\"]', '2022-01-06 14:57:25', '2022-01-06 14:54:06', '2022-01-06 14:57:25'),
(120, 'App\\Models\\User', 22, 'newHome', '7114b94a7e0baac292005bd0ee22d15f17130ef118871ebf758087303563aa7d', '[\"*\"]', '2022-01-06 14:58:34', '2022-01-06 14:57:33', '2022-01-06 14:58:34'),
(121, 'App\\Models\\User', 17, 'newHome', 'e2ee5b1b6e17ac6f9725fbb3c0e76d9226248b6c414dbc5a2bba620fb179434c', '[\"*\"]', '2022-01-06 17:36:35', '2022-01-06 17:24:07', '2022-01-06 17:36:35'),
(122, 'App\\Models\\User', 1, 'newHome', '17d8c3321da70daf2c361bda9a08d14495f3734223ced7aeddc7eecfc142410b', '[\"*\"]', '2022-01-06 17:58:22', '2022-01-06 17:37:06', '2022-01-06 17:58:22'),
(123, 'App\\Models\\User', 17, 'newHome', '4a9157c6f7740497fe2392e2cfd0254a6419bb0bea870ad5177a0435976ae5e3', '[\"*\"]', '2022-01-06 17:58:57', '2022-01-06 17:58:44', '2022-01-06 17:58:57'),
(124, 'App\\Models\\User', 17, 'newHome', 'b54f472b6037620f0d242188ba2435b5b36676d0d48ff526ed69cdb72a115572', '[\"*\"]', '2022-01-07 10:15:39', '2022-01-07 10:10:20', '2022-01-07 10:15:39'),
(125, 'App\\Models\\User', 1, 'newHome', 'f6b9c88248164df84b7f4e44597bc82eac4d926dd18ec5e197132d43a7c45e74', '[\"*\"]', '2022-01-07 10:28:58', '2022-01-07 10:15:47', '2022-01-07 10:28:58'),
(126, 'App\\Models\\User', 17, 'newHome', '5ebf36c89bdb93cb17f76c63d5c66a61cdb6b7e1dee969e0eb2dff4df377d51b', '[\"*\"]', '2022-01-07 10:30:08', '2022-01-07 10:29:05', '2022-01-07 10:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposit_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposit_time` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `employees` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `category_id`, `price`, `deposit_price`, `deposit_time`, `image`, `ward`, `district`, `city`, `status`, `user_id`, `employees`, `deleted_at`, `created_at`, `updated_at`, `quantity`) VALUES
(6, 'Vincom update', 'vincom-update', 'ha', 27, '123123', '12', 1, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640425257/tgydozbjqyrjabje3yfk.jpg', '20767-Xã Bình Lâm', '512-Huyện Hiệp Đức', '49-Tỉnh Quảng Nam', 'Đã có người đặt cọc', 17, 8, NULL, '2021-12-25 09:40:33', '2022-01-01 08:53:41', 0),
(7, 'LaLaNa', 'lalana', '2', 27, '123', '1', 1, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640425669/xrs9zx0y7d3dk4javotc.jpg', '2242-Xã Xuân Lập', '71-Huyện Lâm Bình', '8-Tỉnh Tuyên Quang', 'Đã có người đặt cọc', 17, 9, NULL, '2021-12-25 09:47:22', '2022-01-06 09:42:15', 1),
(8, 'nhà cấp 4', 'nha-cap-4', 'đầy đủ tiện nghi', 27, '1000000000', '400000000', 30, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640500584/juoj74ifh09zbnrrpa8b.jpg', '20260-Phường Khuê Trung', '495-Quận Cẩm Lệ', '48-Thành phố Đà Nẵng', 'Đã có người đặt cọc', 18, 10, NULL, '2021-12-26 06:36:05', '2022-01-06 05:43:33', 0),
(9, 'căn hộ', 'can-ho', 'đầy đủ tiện nghi', 27, '5000000000', '1000000000', 20, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640500710/z4dcntou4t1ieanrimtm.jpg', '26872-Phường 13', '764-Quận Gò Vấp', '79-Thành phố Hồ Chí Minh', 'Đã có người đặt cọc', 18, 10, NULL, '2021-12-26 06:38:00', '2022-01-06 09:44:51', 0),
(10, 'VILLAGE', 'village', 'full nội thất', 27, '10000000000', '2000000000', 10, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640506651/a5rzpr6gfxaychj2hxyd.jpg', '20266-Phường Nại Hiên Đông', '493-Quận Sơn Trà', '48-Thành phố Đà Nẵng', 'Đã có người đặt cọc', 18, 10, NULL, '2021-12-26 08:17:02', '2022-01-06 09:43:04', 0),
(11, 'Homestay', 'homestay', 'đầy đủ nội thất', 27, '2000000000', '1000000000', 5, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640506771/bq4ibvloeycpsawgaoia.jpg', '26764-Phường Thạnh Xuân', '761-Quận 12', '79-Thành phố Hồ Chí Minh', 'Đang bán', 18, 10, NULL, '2021-12-26 08:18:59', '2021-12-26 08:18:59', 1),
(12, 'VILLAGE ĐÀ NẴNG', 'village-da-nang', 'đầy đủ nội thất', 27, '7000000000', '2000000000', 10, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640510147/ybk7n1vkllyscp5tcdkp.jpg', '20197-Phường Hòa Khánh Bắc', '490-Quận Liên Chiểu', '48-Thành phố Đà Nẵng', 'Đang bán', 18, 10, NULL, '2021-12-26 09:15:14', '2021-12-26 09:15:14', 1),
(13, 'home land', 'home-land', 'view đẹp', 28, '4000000000', '2000000000', 4, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640875061/k3gcypdj7vtepyuyhaxt.jpg', '26875-Phường 17', '764-Quận Gò Vấp', '79-Thành phố Hồ Chí Minh', 'Đang bán', 17, 9, NULL, '2021-12-30 14:37:45', '2021-12-30 14:37:45', 1),
(14, 'Vincom Plaza', 'vincom-plaza', 'nhaf xin', 27, '1200', '120', 2, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641274641/twucvutgcndwlezwc3li.png', '769-Thị trấn Mèo Vạc', '27-Huyện Mèo Vạc', '2-Tỉnh Hà Giang', 'Đang bán', 17, 8, NULL, '2022-01-04 05:37:28', '2022-01-04 05:37:28', 5),
(15, 'căn hộ cao cấp', 'can-ho-cao-cap', 'đầy đủ nội thất', 27, '4000000', '3000000', 5, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641275800/ego3ahxk3fyn592hqpsr.jpg', '20230-Phường Thuận Phước', '492-Quận Hải Châu', '48-Thành phố Đà Nẵng', 'Đang bán', 22, 11, NULL, '2022-01-04 05:56:46', '2022-01-04 05:56:46', 1),
(16, 'Cenhome', 'cenhome', 'nhà xịn xò', 27, '12000', '12', 2, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641275935/vsueihhpon5zqa3qo38v.jpg', '43-Phường Hàng Mã', '2-Quận Hoàn Kiếm', '1-Thành phố Hà Nội', 'Đã có người đặt cọc', 17, 9, NULL, '2022-01-04 05:59:09', '2022-01-06 09:46:19', 0),
(17, 'test', 'test', 'ma xinj', 28, '121212', '12', 1, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641462507/xfxyjvmhtoc2ufwrasuj.png', '1270-Phường Sông Bằng', '40-Thành phố Cao Bằng', '4-Tỉnh Cao Bằng', 'Đang bán', 17, 9, NULL, '2022-01-06 09:48:25', '2022-01-06 10:34:36', 8),
(18, 'Nhà Đất Mới', 'nha-dat-moi', 'Không có', 29, '4300000000', '300', 3, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641480485/cl7esflsvxqcfgzponab.jpg', '27445-Phường Bình Trị Đông', '777-Quận Bình Tân', '79-Thành phố Hồ Chí Minh', 'Đã có người đặt cọc', 22, 13, NULL, '2022-01-06 14:48:07', '2022-01-06 14:55:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640498327/ftiu0sllwzgtwijyqmil.png', NULL, '2021-12-26 05:58:16', '2021-12-26 05:58:16'),
(2, 6, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640500221/oxdmbe9ey0zncoecaieg.png', NULL, '2021-12-26 06:30:02', '2021-12-26 06:30:02'),
(3, 6, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1640500255/grrv0sxo2tlrmm5je94i.png', NULL, '2021-12-26 06:30:26', '2021-12-26 06:30:26'),
(4, 18, 'https://res.cloudinary.com/dkimwmu70/image/upload/v1641480561/fpwz4l0kfcniw6n6dqnu.jpg', NULL, '2022-01-06 14:50:11', '2022-01-06 14:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_informations`
--

CREATE TABLE `product_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_informations`
--

INSERT INTO `product_informations` (`id`, `title`, `content`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', 6, NULL, '2021-12-26 05:51:06', '2021-12-26 05:51:06'),
(2, 'tt', 'tt', 6, NULL, '2021-12-26 05:51:19', '2021-12-26 05:51:19'),
(3, 'ha', 'ha', 6, NULL, '2021-12-26 05:54:26', '2021-12-26 05:54:26'),
(4, 'hihi', 'haha', 6, NULL, '2021-12-26 05:54:26', '2021-12-26 05:54:26'),
(5, 'a', 'a', 6, NULL, '2021-12-26 06:25:10', '2021-12-26 06:25:10'),
(6, 'a', 'a', 6, NULL, '2021-12-26 06:26:32', '2021-12-26 06:26:32'),
(7, 'a', 'a', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(8, 'tt', 'tt', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(9, 'ha', 'ha', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(10, 'hihi', 'haha', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(11, 'a', 'a', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(12, 'a', 'a', 6, NULL, '2021-12-30 03:23:03', '2021-12-30 03:23:03'),
(13, 'haha', 'haa', 7, NULL, '2021-12-30 05:10:39', '2021-12-30 05:10:39'),
(14, 'Căn hộ ngàn sao', 'view đẹp, nội thất cao cấp', 15, NULL, '2022-01-04 05:57:20', '2022-01-04 05:57:20'),
(15, 'Kết cấu', '1 trệt 1 lầu, BTCT, đúc thật.', 18, NULL, '2022-01-06 14:50:11', '2022-01-06 14:50:11'),
(16, 'Vị trí', 'cách mặt tiền Bình Trị Đông 10m, hẻm thẳng 1 trục. Sang trọng, cách Ngã tư bốn xã 5 phút, Vòng xoay Phú Lâm, Đầm Sen, Aeon Mall Bình Tân, Bệnh viện Bình Tân, ….', 18, NULL, '2022-01-06 14:50:11', '2022-01-06 14:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `account_type`, `active`, `created_at`, `updated_at`, `phone_number`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$AueH7OjT1Xfxpw6jRcHAFulCjRZWzepDjjWhdsctSKNwX5IVSBSSW', NULL, 0, 1, '2021-12-04 01:28:50', '2021-12-04 01:28:50', NULL),
(2, 'user1', 'user1@gmail.com', NULL, '$2y$10$qsYaGpXLu9BszZSeGjDIhubS6nK2OJhnMfvSCJwULrZidqGhO6C6C', NULL, 1, 1, '2021-12-04 01:29:04', '2022-01-06 14:37:03', NULL),
(3, 'user2', 'user2@gmail.com', NULL, '$2y$10$lAxtiYEWbQuCM/EjLLaU3e8EmNUANoWQBJTL.Kojs4afa.MWcgBsS', NULL, 2, 1, '2021-12-04 01:29:12', '2021-12-12 03:19:51', NULL),
(4, 'Tuan Day', 'bandat@gmail.com', NULL, '$2y$10$nqZS.pz85N6q7jTsquWp0uAgWAJ.Ldk1FyPXou0IYt6.JCM4YL.Zm', NULL, 2, 0, '2021-12-05 00:02:20', '2021-12-12 03:19:49', NULL),
(5, 'hah ha', 'tien@gmail.com', NULL, '$2y$10$2abeaeZkxDlqqoNFr76.S.YunI.4kfeIzYGoNTpjf/o4398qhLdkK', NULL, 1, 1, '2021-12-11 06:24:12', '2021-12-18 08:41:49', NULL),
(6, 'admin2', 'admin2@gmail.com', NULL, '$2y$10$UfR1u4aM7bG0dEGO1dGq3uWXsc8c0Iad07ln5bvAg1W/vRQJ9jzvq', NULL, 0, 1, '2021-12-11 19:40:45', '2021-12-11 23:54:52', NULL),
(15, 'huynh thao', 'thaohuynhitk4@gmailc.om', NULL, '$2y$10$RrqSC0auZu9D9BrcNqVaX.a6gNNh4bIN89smfcKcpR02KiFlbHP5m', NULL, 1, 0, '2021-12-12 01:46:40', '2022-01-04 05:44:23', NULL),
(16, 'Phan Tuấn', 'adminnnn@gmail.com', NULL, '$2y$10$k.WSOibIKjnkqKOXb0yjQOunQ5R47f9eP5zFgc99EkfqXiGc/qqKy', NULL, 0, 1, '2021-12-12 03:10:53', '2021-12-12 03:10:53', NULL),
(17, 'Phan Tuấn', 'nguoiban@gmail.com', NULL, '$2y$10$KAhEmA3drObseQtTgx6tSOlcRFgNHQqwHQhwno1EXdagSFxpjAOAu', NULL, 2, 1, '2021-12-18 09:03:09', '2021-12-18 09:03:09', NULL),
(18, 'huynh thao', 'delaycaca@gmail.com', NULL, '$2y$10$WdYY.IvsGzD89js/EKvd7eSUE57Lp/InIkemuGk5mHp7xXaT0xt3S', NULL, 2, 1, '2021-12-26 06:31:35', '2021-12-26 06:31:35', NULL),
(19, 'Huynh Thao', 'nguoimuanha@gmail.com', NULL, '$2y$10$PSf90lIQ0r3u3uGbnuWUXeoy7rk8WoqF.34y63TRe6qAqtb8BG7Ei', NULL, 1, 1, '2021-12-26 06:39:07', '2021-12-26 06:39:07', NULL),
(20, 'Phan Tuấn', 'nguoimua@gmail.com', NULL, '$2y$10$C/YOr2okzzJVWzKTGxoYxeMGArzHCKHwapIWPVw.24nTnjouIz6fa', NULL, 1, 1, '2021-12-31 05:37:13', '2021-12-31 05:37:13', NULL),
(21, 'huynh thao', 'thaohuynh@gmail.com', NULL, '$2y$10$Tzj5v0Exe4hQbAGiNTkNW.SgIOCFQ853ujM7aJms6wUYPkFhJDmre', NULL, 1, 1, '2022-01-04 05:47:30', '2022-01-04 05:47:30', NULL),
(22, 'huynh thao', 'thaoban@gmail.com', NULL, '$2y$10$sbUIDfwn4mk/vY/H/9rpRe.jvrjhRZCbuNNKk5/kzlpt4PiGi.M/e', NULL, 2, 1, '2022-01-04 05:49:30', '2022-01-04 05:49:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_vote` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_informations`
--
ALTER TABLE `product_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_informations`
--
ALTER TABLE `product_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
