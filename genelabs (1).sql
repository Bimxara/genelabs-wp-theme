-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2020 at 06:03 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genelabs`
--

-- --------------------------------------------------------

--
-- Table structure for table `gene_commentmeta`
--

CREATE TABLE `gene_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gene_comments`
--

CREATE TABLE `gene_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_comments`
--

INSERT INTO `gene_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-20 05:40:18', '2020-07-20 05:40:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gene_links`
--

CREATE TABLE `gene_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gene_options`
--

CREATE TABLE `gene_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_options`
--

INSERT INTO `gene_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/genelabs', 'yes'),
(2, 'home', 'http://localhost/genelabs', 'yes'),
(3, 'blogname', 'Genelabs', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ravindubimsara007@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'genelabs', 'yes'),
(41, 'stylesheet', 'genelabs', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1610775612', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'gene_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1597480825;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1597513225;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1597513245;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1597556419;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597556463;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597556471;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1597729223;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1595224019;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1597479977;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'genelabs', 'yes'),
(146, 'theme_mods_understrap', 'a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1595224844;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(149, '_transient_understrap_categories', '1', 'yes'),
(151, 'theme_mods_genelabsRewamp', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1597149487;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(159, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1597479997;s:7:\"checked\";a:1:{s:8:\"genelabs\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(161, '_site_transient_timeout_php_check_8883e0d0efdc8a3a7f7b7a15e8f243a7', '1597733829', 'no'),
(162, '_site_transient_php_check_8883e0d0efdc8a3a7f7b7a15e8f243a7', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(163, '_transient_health-check-site-status-result', '{\"good\":\"7\",\"recommended\":\"9\",\"critical\":\"1\"}', 'yes'),
(165, '_site_transient_timeout_browser_72f533ef66d493b897f3cfc643e15448', '1597753395', 'no'),
(166, '_site_transient_browser_72f533ef66d493b897f3cfc643e15448', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.105\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(182, 'theme_mods_genelabs', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(202, '_site_transient_timeout_browser_50f6bea7eecdc0cbebce3fe52b001651', '1597897839', 'no'),
(203, '_site_transient_browser_50f6bea7eecdc0cbebce3fe52b001651', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.125\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(204, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1597476283', 'no'),
(205, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"Discussion Group: Introduction to Contributing to WordPress\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/272511923/\";s:6:\"meetup\";s:15:\"Learn WordPress\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-08-18 09:00:00\";s:8:\"end_date\";s:19:\"2020-08-18 10:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:35:\"WordCamp Minneapolis, Minnesota USA\";s:3:\"url\";s:38:\"https://minneapolis.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-08-21 13:45:00\";s:8:\"end_date\";s:19:\"2020-08-21 13:45:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:44.977753;s:9:\"longitude\";d:-93.2650108;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:25:\"WordPress on the Jamstack\";s:3:\"url\";s:65:\"https://www.meetup.com/Colombo-WordPress-Meetup/events/272417517/\";s:6:\"meetup\";s:24:\"Colombo WordPress Meetup\";s:10:\"meetup_url\";s:48:\"https://www.meetup.com/Colombo-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-08-15 17:00:00\";s:8:\"end_date\";s:19:\"2020-08-15 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"LK\";s:8:\"latitude\";d:6.9299998283386;s:9:\"longitude\";d:79.849998474121;}}}}', 'no'),
(229, 'recently_activated', 'a:1:{s:30:\"advanced-custom-fields/acf.php\";i:1597308994;}', 'yes'),
(236, 'acf_version', '5.8.9', 'yes'),
(237, 'category_children', 'a:0:{}', 'yes'),
(246, '_transient_timeout_acf_plugin_updates', '1597554777', 'no'),
(248, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.14\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(269, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(272, '_site_transient_timeout_browser_62a43343fed6a337bac6ae619ca43283', '1598029344', 'no'),
(273, '_site_transient_browser_62a43343fed6a337bac6ae619ca43283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.125\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(294, '_site_transient_timeout_theme_roots', '1597481795', 'no'),
(295, '_site_transient_theme_roots', 'a:1:{s:8:\"genelabs\";s:7:\"/themes\";}', 'no'),
(296, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1597479998;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.14\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.8.14\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.14\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `gene_postmeta`
--

CREATE TABLE `gene_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_postmeta`
--

INSERT INTO `gene_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1597325180:1'),
(4, 8, '_edit_lock', '1597434529:1'),
(5, 8, '_wp_page_template', 'template-ourteam.php'),
(6, 11, '_edit_lock', '1597294164:1'),
(7, 11, '_wp_page_template', 'template-profile.php'),
(8, 13, '_edit_lock', '1597296680:1'),
(9, 13, '_wp_page_template', 'template-technology.php'),
(10, 15, '_edit_lock', '1597429051:1'),
(11, 15, '_wp_page_template', 'template-our-tests.php'),
(12, 17, '_edit_lock', '1597302022:1'),
(13, 18, '_edit_lock', '1597302120:1'),
(14, 18, '_wp_page_template', 'template-contact-us.php'),
(15, 20, '_edit_last', '1'),
(16, 20, '_edit_lock', '1597325181:1'),
(17, 31, '_wp_attached_file', '2020/08/service-item-img-1.jpg'),
(18, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-1-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 32, '_wp_attached_file', '2020/08/service-item-img-6.jpg'),
(20, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-6-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 33, '_wp_attached_file', '2020/08/service-item-img-5.jpg'),
(22, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-5-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 34, '_wp_attached_file', '2020/08/service-item-img-4.jpg'),
(24, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-4-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 35, '_wp_attached_file', '2020/08/service-item-img-3.jpg'),
(26, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-3-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 36, '_wp_attached_file', '2020/08/service-item-img-2.jpg'),
(28, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:580;s:6:\"height\";i:420;s:4:\"file\";s:30:\"2020/08/service-item-img-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"service-item-img-2-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"service-item-img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 6, '_edit_last', '1'),
(30, 6, 'hero_slider_mini_title', 'It is in our DNA'),
(31, 6, '_hero_slider_mini_title', 'field_5f34e850302a1'),
(32, 6, 'hero_slider_hero_title', 'Using the best technology <br>today for a better tomorrow'),
(33, 6, '_hero_slider_hero_title', 'field_5f34e894302a2'),
(34, 6, 'hero_slider_hero_description', 'Sri Lanka\'s premier genetic testing laboratory with most<br> advanced tests to suit the new Era of heathcare'),
(35, 6, '_hero_slider_hero_description', 'field_5f34e8c6302a3'),
(36, 6, 'hero_slider_slider_image', '40'),
(37, 6, '_hero_slider_slider_image', 'field_5f34e8eb302a4'),
(38, 6, 'hero_slider', ''),
(39, 6, '_hero_slider', 'field_5f34e839302a0'),
(40, 6, 'introducing_tests_0_title', 'DNA Paternity<br>Testing'),
(41, 6, '_introducing_tests_0_title', 'field_5f350d90f0242'),
(42, 6, 'introducing_tests_0_read_more_url', ''),
(43, 6, '_introducing_tests_0_read_more_url', 'field_5f350fa3f0243'),
(44, 6, 'introducing_tests_0_image', '31'),
(45, 6, '_introducing_tests_0_image', 'field_5f350fddf0244'),
(46, 6, 'introducing_tests_0_introducing_lable', '1'),
(47, 6, '_introducing_tests_0_introducing_lable', 'field_5f352cb21f4aa'),
(48, 6, 'introducing_tests_1_title', 'Non-invasive Prenatal<br>Testing(NIPT)'),
(49, 6, '_introducing_tests_1_title', 'field_5f350d90f0242'),
(50, 6, 'introducing_tests_1_read_more_url', ''),
(51, 6, '_introducing_tests_1_read_more_url', 'field_5f350fa3f0243'),
(52, 6, 'introducing_tests_1_image', '36'),
(53, 6, '_introducing_tests_1_image', 'field_5f350fddf0244'),
(54, 6, 'introducing_tests_1_introducing_lable', '0'),
(55, 6, '_introducing_tests_1_introducing_lable', 'field_5f352cb21f4aa'),
(56, 6, 'introducing_tests_2_title', 'Pre-implantation Genetic<br>Testing (PGT)'),
(57, 6, '_introducing_tests_2_title', 'field_5f350d90f0242'),
(58, 6, 'introducing_tests_2_read_more_url', ''),
(59, 6, '_introducing_tests_2_read_more_url', 'field_5f350fa3f0243'),
(60, 6, 'introducing_tests_2_image', '35'),
(61, 6, '_introducing_tests_2_image', 'field_5f350fddf0244'),
(62, 6, 'introducing_tests_2_introducing_lable', '0'),
(63, 6, '_introducing_tests_2_introducing_lable', 'field_5f352cb21f4aa'),
(64, 6, 'introducing_tests_3_title', 'BRACA 1 & 2<br>Breast Cancer Panel'),
(65, 6, '_introducing_tests_3_title', 'field_5f350d90f0242'),
(66, 6, 'introducing_tests_3_read_more_url', ''),
(67, 6, '_introducing_tests_3_read_more_url', 'field_5f350fa3f0243'),
(68, 6, 'introducing_tests_3_image', '34'),
(69, 6, '_introducing_tests_3_image', 'field_5f350fddf0244'),
(70, 6, 'introducing_tests_3_introducing_lable', '0'),
(71, 6, '_introducing_tests_3_introducing_lable', 'field_5f352cb21f4aa'),
(72, 6, 'introducing_tests_4_title', 'Cancer Hospital Panel'),
(73, 6, '_introducing_tests_4_title', 'field_5f350d90f0242'),
(74, 6, 'introducing_tests_4_read_more_url', ''),
(75, 6, '_introducing_tests_4_read_more_url', 'field_5f350fa3f0243'),
(76, 6, 'introducing_tests_4_image', '33'),
(77, 6, '_introducing_tests_4_image', 'field_5f350fddf0244'),
(78, 6, 'introducing_tests_4_introducing_lable', '0'),
(79, 6, '_introducing_tests_4_introducing_lable', 'field_5f352cb21f4aa'),
(80, 6, 'introducing_tests_5_title', 'Lung Cancer Mutation<br>Panel'),
(81, 6, '_introducing_tests_5_title', 'field_5f350d90f0242'),
(82, 6, 'introducing_tests_5_read_more_url', ''),
(83, 6, '_introducing_tests_5_read_more_url', 'field_5f350fa3f0243'),
(84, 6, 'introducing_tests_5_image', '32'),
(85, 6, '_introducing_tests_5_image', 'field_5f350fddf0244'),
(86, 6, 'introducing_tests_5_introducing_lable', '0'),
(87, 6, '_introducing_tests_5_introducing_lable', 'field_5f352cb21f4aa'),
(88, 6, 'introducing_tests', '6'),
(89, 6, '_introducing_tests', 'field_5f350052f0241'),
(90, 37, 'hero_slider_mini_title', ''),
(91, 37, '_hero_slider_mini_title', 'field_5f34e850302a1'),
(92, 37, 'hero_slider_hero_title', ''),
(93, 37, '_hero_slider_hero_title', 'field_5f34e894302a2'),
(94, 37, 'hero_slider_hero_description', ''),
(95, 37, '_hero_slider_hero_description', 'field_5f34e8c6302a3'),
(96, 37, 'hero_slider_slider_image', ''),
(97, 37, '_hero_slider_slider_image', 'field_5f34e8eb302a4'),
(98, 37, 'hero_slider', ''),
(99, 37, '_hero_slider', 'field_5f34e839302a0'),
(100, 37, 'introducing_tests_0_title', 'DNA Paternity<br>Testing'),
(101, 37, '_introducing_tests_0_title', 'field_5f350d90f0242'),
(102, 37, 'introducing_tests_0_read_more_url', ''),
(103, 37, '_introducing_tests_0_read_more_url', 'field_5f350fa3f0243'),
(104, 37, 'introducing_tests_0_image', '31'),
(105, 37, '_introducing_tests_0_image', 'field_5f350fddf0244'),
(106, 37, 'introducing_tests_0_introducing_lable', '1'),
(107, 37, '_introducing_tests_0_introducing_lable', 'field_5f352cb21f4aa'),
(108, 37, 'introducing_tests_1_title', 'Non-invasive Prenatal<br>Testing(NIPT)'),
(109, 37, '_introducing_tests_1_title', 'field_5f350d90f0242'),
(110, 37, 'introducing_tests_1_read_more_url', ''),
(111, 37, '_introducing_tests_1_read_more_url', 'field_5f350fa3f0243'),
(112, 37, 'introducing_tests_1_image', '36'),
(113, 37, '_introducing_tests_1_image', 'field_5f350fddf0244'),
(114, 37, 'introducing_tests_1_introducing_lable', '0'),
(115, 37, '_introducing_tests_1_introducing_lable', 'field_5f352cb21f4aa'),
(116, 37, 'introducing_tests_2_title', 'Pre-implantation Genetic<br>Testing (PGT)'),
(117, 37, '_introducing_tests_2_title', 'field_5f350d90f0242'),
(118, 37, 'introducing_tests_2_read_more_url', ''),
(119, 37, '_introducing_tests_2_read_more_url', 'field_5f350fa3f0243'),
(120, 37, 'introducing_tests_2_image', '35'),
(121, 37, '_introducing_tests_2_image', 'field_5f350fddf0244'),
(122, 37, 'introducing_tests_2_introducing_lable', '0'),
(123, 37, '_introducing_tests_2_introducing_lable', 'field_5f352cb21f4aa'),
(124, 37, 'introducing_tests_3_title', 'BRACA 1 & 2<br>Breast Cancer Panel'),
(125, 37, '_introducing_tests_3_title', 'field_5f350d90f0242'),
(126, 37, 'introducing_tests_3_read_more_url', ''),
(127, 37, '_introducing_tests_3_read_more_url', 'field_5f350fa3f0243'),
(128, 37, 'introducing_tests_3_image', '34'),
(129, 37, '_introducing_tests_3_image', 'field_5f350fddf0244'),
(130, 37, 'introducing_tests_3_introducing_lable', '0'),
(131, 37, '_introducing_tests_3_introducing_lable', 'field_5f352cb21f4aa'),
(132, 37, 'introducing_tests_4_title', 'Cancer Hospital Panel'),
(133, 37, '_introducing_tests_4_title', 'field_5f350d90f0242'),
(134, 37, 'introducing_tests_4_read_more_url', ''),
(135, 37, '_introducing_tests_4_read_more_url', 'field_5f350fa3f0243'),
(136, 37, 'introducing_tests_4_image', '33'),
(137, 37, '_introducing_tests_4_image', 'field_5f350fddf0244'),
(138, 37, 'introducing_tests_4_introducing_lable', '0'),
(139, 37, '_introducing_tests_4_introducing_lable', 'field_5f352cb21f4aa'),
(140, 37, 'introducing_tests_5_title', 'Lung Cancer Mutation<br>Panel'),
(141, 37, '_introducing_tests_5_title', 'field_5f350d90f0242'),
(142, 37, 'introducing_tests_5_read_more_url', ''),
(143, 37, '_introducing_tests_5_read_more_url', 'field_5f350fa3f0243'),
(144, 37, 'introducing_tests_5_image', '32'),
(145, 37, '_introducing_tests_5_image', 'field_5f350fddf0244'),
(146, 37, 'introducing_tests_5_introducing_lable', '0'),
(147, 37, '_introducing_tests_5_introducing_lable', 'field_5f352cb21f4aa'),
(148, 37, 'introducing_tests', '6'),
(149, 37, '_introducing_tests', 'field_5f350052f0241'),
(150, 39, 'hero_slider_mini_title', ''),
(151, 39, '_hero_slider_mini_title', 'field_5f34e850302a1'),
(152, 39, 'hero_slider_hero_title', ''),
(153, 39, '_hero_slider_hero_title', 'field_5f34e894302a2'),
(154, 39, 'hero_slider_hero_description', ''),
(155, 39, '_hero_slider_hero_description', 'field_5f34e8c6302a3'),
(156, 39, 'hero_slider_slider_image', ''),
(157, 39, '_hero_slider_slider_image', 'field_5f34e8eb302a4'),
(158, 39, 'hero_slider', ''),
(159, 39, '_hero_slider', 'field_5f34e839302a0'),
(160, 39, 'introducing_tests_0_title', 'DNA Paternity<br>Testing'),
(161, 39, '_introducing_tests_0_title', 'field_5f350d90f0242'),
(162, 39, 'introducing_tests_0_read_more_url', ''),
(163, 39, '_introducing_tests_0_read_more_url', 'field_5f350fa3f0243'),
(164, 39, 'introducing_tests_0_image', '31'),
(165, 39, '_introducing_tests_0_image', 'field_5f350fddf0244'),
(166, 39, 'introducing_tests_0_introducing_lable', '1'),
(167, 39, '_introducing_tests_0_introducing_lable', 'field_5f352cb21f4aa'),
(168, 39, 'introducing_tests_1_title', 'Non-invasive Prenatal<br>Testing(NIPT)'),
(169, 39, '_introducing_tests_1_title', 'field_5f350d90f0242'),
(170, 39, 'introducing_tests_1_read_more_url', ''),
(171, 39, '_introducing_tests_1_read_more_url', 'field_5f350fa3f0243'),
(172, 39, 'introducing_tests_1_image', '36'),
(173, 39, '_introducing_tests_1_image', 'field_5f350fddf0244'),
(174, 39, 'introducing_tests_1_introducing_lable', '0'),
(175, 39, '_introducing_tests_1_introducing_lable', 'field_5f352cb21f4aa'),
(176, 39, 'introducing_tests_2_title', 'Pre-implantation Genetic<br>Testing (PGT)'),
(177, 39, '_introducing_tests_2_title', 'field_5f350d90f0242'),
(178, 39, 'introducing_tests_2_read_more_url', ''),
(179, 39, '_introducing_tests_2_read_more_url', 'field_5f350fa3f0243'),
(180, 39, 'introducing_tests_2_image', '35'),
(181, 39, '_introducing_tests_2_image', 'field_5f350fddf0244'),
(182, 39, 'introducing_tests_2_introducing_lable', '0'),
(183, 39, '_introducing_tests_2_introducing_lable', 'field_5f352cb21f4aa'),
(184, 39, 'introducing_tests_3_title', 'BRACA 1 & 2<br>Breast Cancer Panel'),
(185, 39, '_introducing_tests_3_title', 'field_5f350d90f0242'),
(186, 39, 'introducing_tests_3_read_more_url', ''),
(187, 39, '_introducing_tests_3_read_more_url', 'field_5f350fa3f0243'),
(188, 39, 'introducing_tests_3_image', '34'),
(189, 39, '_introducing_tests_3_image', 'field_5f350fddf0244'),
(190, 39, 'introducing_tests_3_introducing_lable', '0'),
(191, 39, '_introducing_tests_3_introducing_lable', 'field_5f352cb21f4aa'),
(192, 39, 'introducing_tests_4_title', 'Cancer Hospital Panel'),
(193, 39, '_introducing_tests_4_title', 'field_5f350d90f0242'),
(194, 39, 'introducing_tests_4_read_more_url', ''),
(195, 39, '_introducing_tests_4_read_more_url', 'field_5f350fa3f0243'),
(196, 39, 'introducing_tests_4_image', '33'),
(197, 39, '_introducing_tests_4_image', 'field_5f350fddf0244'),
(198, 39, 'introducing_tests_4_introducing_lable', '0'),
(199, 39, '_introducing_tests_4_introducing_lable', 'field_5f352cb21f4aa'),
(200, 39, 'introducing_tests_5_title', 'Lung Cancer Mutation<br>Panel'),
(201, 39, '_introducing_tests_5_title', 'field_5f350d90f0242'),
(202, 39, 'introducing_tests_5_read_more_url', ''),
(203, 39, '_introducing_tests_5_read_more_url', 'field_5f350fa3f0243'),
(204, 39, 'introducing_tests_5_image', '32'),
(205, 39, '_introducing_tests_5_image', 'field_5f350fddf0244'),
(206, 39, 'introducing_tests_5_introducing_lable', '0'),
(207, 39, '_introducing_tests_5_introducing_lable', 'field_5f352cb21f4aa'),
(208, 39, 'introducing_tests', '6'),
(209, 39, '_introducing_tests', 'field_5f350052f0241'),
(210, 40, '_wp_attached_file', '2020/08/slider-img-1.jpg'),
(211, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:566;s:4:\"file\";s:24:\"2020/08/slider-img-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-img-1-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"slider-img-1-1024x424.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"slider-img-1-768x318.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 41, 'hero_slider_mini_title', 'It is in our DNA'),
(213, 41, '_hero_slider_mini_title', 'field_5f34e850302a1'),
(214, 41, 'hero_slider_hero_title', 'Using the best technology <br>today for a better tomorrow'),
(215, 41, '_hero_slider_hero_title', 'field_5f34e894302a2'),
(216, 41, 'hero_slider_hero_description', 'Sri Lanka\'s premier genetic testing laboratory with most<br> advanced tests to suit the new Era of heathcare'),
(217, 41, '_hero_slider_hero_description', 'field_5f34e8c6302a3'),
(218, 41, 'hero_slider_slider_image', '40'),
(219, 41, '_hero_slider_slider_image', 'field_5f34e8eb302a4'),
(220, 41, 'hero_slider', ''),
(221, 41, '_hero_slider', 'field_5f34e839302a0'),
(222, 41, 'introducing_tests_0_title', 'DNA Paternity<br>Testing'),
(223, 41, '_introducing_tests_0_title', 'field_5f350d90f0242'),
(224, 41, 'introducing_tests_0_read_more_url', ''),
(225, 41, '_introducing_tests_0_read_more_url', 'field_5f350fa3f0243'),
(226, 41, 'introducing_tests_0_image', '31'),
(227, 41, '_introducing_tests_0_image', 'field_5f350fddf0244'),
(228, 41, 'introducing_tests_0_introducing_lable', '1'),
(229, 41, '_introducing_tests_0_introducing_lable', 'field_5f352cb21f4aa'),
(230, 41, 'introducing_tests_1_title', 'Non-invasive Prenatal<br>Testing(NIPT)'),
(231, 41, '_introducing_tests_1_title', 'field_5f350d90f0242'),
(232, 41, 'introducing_tests_1_read_more_url', ''),
(233, 41, '_introducing_tests_1_read_more_url', 'field_5f350fa3f0243'),
(234, 41, 'introducing_tests_1_image', '36'),
(235, 41, '_introducing_tests_1_image', 'field_5f350fddf0244'),
(236, 41, 'introducing_tests_1_introducing_lable', '0'),
(237, 41, '_introducing_tests_1_introducing_lable', 'field_5f352cb21f4aa'),
(238, 41, 'introducing_tests_2_title', 'Pre-implantation Genetic<br>Testing (PGT)'),
(239, 41, '_introducing_tests_2_title', 'field_5f350d90f0242'),
(240, 41, 'introducing_tests_2_read_more_url', ''),
(241, 41, '_introducing_tests_2_read_more_url', 'field_5f350fa3f0243'),
(242, 41, 'introducing_tests_2_image', '35'),
(243, 41, '_introducing_tests_2_image', 'field_5f350fddf0244'),
(244, 41, 'introducing_tests_2_introducing_lable', '0'),
(245, 41, '_introducing_tests_2_introducing_lable', 'field_5f352cb21f4aa'),
(246, 41, 'introducing_tests_3_title', 'BRACA 1 & 2<br>Breast Cancer Panel'),
(247, 41, '_introducing_tests_3_title', 'field_5f350d90f0242'),
(248, 41, 'introducing_tests_3_read_more_url', ''),
(249, 41, '_introducing_tests_3_read_more_url', 'field_5f350fa3f0243'),
(250, 41, 'introducing_tests_3_image', '34'),
(251, 41, '_introducing_tests_3_image', 'field_5f350fddf0244'),
(252, 41, 'introducing_tests_3_introducing_lable', '0'),
(253, 41, '_introducing_tests_3_introducing_lable', 'field_5f352cb21f4aa'),
(254, 41, 'introducing_tests_4_title', 'Cancer Hospital Panel'),
(255, 41, '_introducing_tests_4_title', 'field_5f350d90f0242'),
(256, 41, 'introducing_tests_4_read_more_url', ''),
(257, 41, '_introducing_tests_4_read_more_url', 'field_5f350fa3f0243'),
(258, 41, 'introducing_tests_4_image', '33'),
(259, 41, '_introducing_tests_4_image', 'field_5f350fddf0244'),
(260, 41, 'introducing_tests_4_introducing_lable', '0'),
(261, 41, '_introducing_tests_4_introducing_lable', 'field_5f352cb21f4aa'),
(262, 41, 'introducing_tests_5_title', 'Lung Cancer Mutation<br>Panel'),
(263, 41, '_introducing_tests_5_title', 'field_5f350d90f0242'),
(264, 41, 'introducing_tests_5_read_more_url', ''),
(265, 41, '_introducing_tests_5_read_more_url', 'field_5f350fa3f0243'),
(266, 41, 'introducing_tests_5_image', '32'),
(267, 41, '_introducing_tests_5_image', 'field_5f350fddf0244'),
(268, 41, 'introducing_tests_5_introducing_lable', '0'),
(269, 41, '_introducing_tests_5_introducing_lable', 'field_5f352cb21f4aa'),
(270, 41, 'introducing_tests', '6'),
(271, 41, '_introducing_tests', 'field_5f350052f0241'),
(272, 42, '_menu_item_type', 'post_type'),
(273, 42, '_menu_item_menu_item_parent', '0'),
(274, 42, '_menu_item_object_id', '6'),
(275, 42, '_menu_item_object', 'page'),
(276, 42, '_menu_item_target', ''),
(277, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 42, '_menu_item_xfn', ''),
(279, 42, '_menu_item_url', ''),
(280, 42, '_menu_item_orphaned', '1597383529'),
(281, 43, '_menu_item_type', 'post_type'),
(282, 43, '_menu_item_menu_item_parent', '0'),
(283, 43, '_menu_item_object_id', '18'),
(284, 43, '_menu_item_object', 'page'),
(285, 43, '_menu_item_target', ''),
(286, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(287, 43, '_menu_item_xfn', ''),
(288, 43, '_menu_item_url', ''),
(289, 43, '_menu_item_orphaned', '1597383535'),
(290, 44, '_menu_item_type', 'post_type'),
(291, 44, '_menu_item_menu_item_parent', '0'),
(292, 44, '_menu_item_object_id', '15'),
(293, 44, '_menu_item_object', 'page'),
(294, 44, '_menu_item_target', ''),
(295, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 44, '_menu_item_xfn', ''),
(297, 44, '_menu_item_url', ''),
(298, 44, '_menu_item_orphaned', '1597383541'),
(299, 46, '_menu_item_type', 'post_type'),
(300, 46, '_menu_item_menu_item_parent', '0'),
(301, 46, '_menu_item_object_id', '18'),
(302, 46, '_menu_item_object', 'page'),
(303, 46, '_menu_item_target', ''),
(304, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(305, 46, '_menu_item_xfn', ''),
(306, 46, '_menu_item_url', ''),
(308, 47, '_menu_item_type', 'post_type'),
(309, 47, '_menu_item_menu_item_parent', '0'),
(310, 47, '_menu_item_object_id', '15'),
(311, 47, '_menu_item_object', 'page'),
(312, 47, '_menu_item_target', ''),
(313, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(314, 47, '_menu_item_xfn', ''),
(315, 47, '_menu_item_url', ''),
(317, 48, '_edit_last', '1'),
(318, 48, '_edit_lock', '1597432900:1'),
(319, 15, '_edit_last', '1'),
(320, 15, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(321, 15, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(322, 15, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone\r\nLanka to perform this complex test</p>'),
(323, 15, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(324, 15, 'tests', '24'),
(325, 15, '_tests', 'field_5f36c508e7d7b'),
(326, 52, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(327, 52, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(328, 52, 'tests_0_test_description', 'Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone&lt;br&gt;Lanka to perform this complex test'),
(329, 52, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(330, 52, 'tests', '1'),
(331, 52, '_tests', 'field_5f36c508e7d7b'),
(332, 53, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(333, 53, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(334, 53, 'tests_0_test_description', 'Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone&lt;br&gt;Lanka to perform this complex test'),
(335, 53, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(336, 53, 'tests', '1'),
(337, 53, '_tests', 'field_5f36c508e7d7b'),
(338, 54, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(339, 54, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(340, 54, 'tests_0_test_description', 'Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone&lt;br&gt;Lanka to perform this complex test'),
(341, 54, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(342, 54, 'tests', '1'),
(343, 54, '_tests', 'field_5f36c508e7d7b'),
(344, 55, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(345, 55, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(346, 55, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing).  With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome & Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone<br>Lanka to perform this complex test </p> '),
(347, 55, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(348, 55, 'tests', '1'),
(349, 55, '_tests', 'field_5f36c508e7d7b'),
(350, 15, 'tests_1_test_heading', 'Pre-implantation genetic screening (PGS)'),
(351, 15, '_tests_1_test_heading', 'field_5f36c52ce7d7c'),
(352, 15, 'tests_1_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic screening (PGS, also called PGT-A) is a test designed for those undergoing IVF (in-vitro fertlization) procedures. PGS can identify the embryos that if implanted can lead to babies with syndromes like Down, Edward, Patau, Turner &amp; Klinefelter. including IVF, surrogate, egg-donor and twin pregnancies.</p>\r\nGenelabs was the first laboratory in Sri Other benefits of this test are,\r\n<ul class=\"test-list\">\r\n 	<li>Higher chances of pregnancy</li>\r\n 	<li>Reduced risk of miscarriages</li>\r\n 	<li>More confidence in transferring a single embryo, avoiding health risks associated with twin or triplet pregnancies</li>\r\n 	<li>Reduced number of IVF cycles needed to achieve pregnancy, potentially reducing the time to pregnancy and the costs of extra cycles</li>\r\n</ul>'),
(353, 15, '_tests_1_test_description', 'field_5f36c663e7d7d'),
(354, 56, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(355, 56, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(356, 56, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing).  With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome & Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone<br>Lanka to perform this complex test </p> '),
(357, 56, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(358, 56, 'tests', '2'),
(359, 56, '_tests', 'field_5f36c508e7d7b'),
(360, 56, 'tests_1_test_heading', 'Pre-implantation genetic screening (PGS)'),
(361, 56, '_tests_1_test_heading', 'field_5f36c52ce7d7c'),
(362, 56, 'tests_1_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic screening (PGS, also called PGT-A) is a test designed for those undergoing IVF (in-vitro fertlization) procedures. PGS can identify the embryos that if implanted can lead to babies with syndromes like Down, Edward, Patau, Turner & Klinefelter. including IVF, surrogate, egg-donor and twin pregnancies.</p>            \r\n                                        <p>Genelabs was the first laboratory in Sri Other benefits of this test are,</p>\r\n                                        <ul class=\"test-list\">\r\n                                            <li><p>Higher chances of pregnancy</p></li>\r\n                                            <li><p>Reduced risk of miscarriages</p></li>\r\n                                            <li><p>More confidence in transferring a single embryo, avoiding health risks associated with twin or triplet pregnancies</p></li>\r\n                                            <li><p>Reduced number of IVF cycles needed to achieve pregnancy, potentially reducing the time to pregnancy and the costs of extra cycles</p></li>\r\n                                        </ul>'),
(363, 56, '_tests_1_test_description', 'field_5f36c663e7d7d'),
(364, 15, 'tests_2_test_heading', 'Pre-implantation genetic diagnosis (PGD)'),
(365, 15, '_tests_2_test_heading', 'field_5f36c52ce7d7c'),
(366, 15, 'tests_2_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic diagnosis (PGD, also called PGT-M) is designed to identify embryos with inherited genetic abnormalities. These abnormalities (eg: thalassemia), present in one or both parents, could be passed to embryos. During PGD, a small number of cells are removed from the embryo, and the DNA is tested to identify the embryos that have not got the disease gene from the parents.</p>\r\n<p class=\"theme-description-nlsp\">Couples who choose PGD could usually conceive naturally, but are using IVF specifically so that they can have healthy babies, and prevent passing on of the abnormal genes to subsequent generations.</p>'),
(367, 15, '_tests_2_test_description', 'field_5f36c663e7d7d'),
(368, 15, 'tests_3_test_heading', 'BRCA 1 & 2 panel'),
(369, 15, '_tests_3_test_heading', 'field_5f36c52ce7d7c'),
(370, 15, 'tests_3_test_description', '<p class=\"theme-description-nlsp\">BRCA1 and BRCA2 are two related genes, the changes (mutations) of which have been known to increase the risk of breast, ovarian &amp; prostate cancers. In general, about 69-72% of women who inherit a harmful BRCA1 or BRCA2 mutation will develop breast cancer, and 17-44% of women who inherit these mutations will develop ovarian cancer by the age of 80. BRCA2 mutations are also the most common genetic factor in prostate cancers. Since these mutated genes are inherited from parents, identifying the presence of these mutations in healthy family members can help in early diagnosis of breast, ovarian or prostate cancers or prevention of these cancers altogether.</p>'),
(371, 15, '_tests_3_test_description', 'field_5f36c663e7d7d'),
(372, 15, 'tests_4_test_heading', 'Cancer hotspot panel'),
(373, 15, '_tests_4_test_heading', 'field_5f36c52ce7d7c'),
(374, 15, 'tests_4_test_description', '<p class=\"theme-description-nlsp\">Cancer is a genetic disease. Genetic testing has now become essential for many different cancers, with the test results being used for diagnosis of certain cancers, as well as for personalized treatment. The Cancer Hotspot Panel includes 50 genes important in several different cancers analyzed in a single test. It is specially useful for Thyroid cancer, Lung cancer, Colon cancer, gastro-intestinal stromal tumors (GIST), Glioma &amp; certain leukemias.</p>\r\n&nbsp;\r\n<h4>Genes included in the Cancer Hotspot Panel</h4>\r\n<img class=\"img-fluid\" src=\"http://localhost/genelabs/wp-content/uploads/2020/08/cancer-hotspot-panel.jpg\" alt=\"Cancer Hotspot Panel\" />'),
(375, 15, '_tests_4_test_description', 'field_5f36c663e7d7d'),
(376, 57, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(377, 57, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(378, 57, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing).  With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome & Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone<br>Lanka to perform this complex test </p> '),
(379, 57, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(380, 57, 'tests', '5'),
(381, 57, '_tests', 'field_5f36c508e7d7b'),
(382, 57, 'tests_1_test_heading', 'Pre-implantation genetic screening (PGS)'),
(383, 57, '_tests_1_test_heading', 'field_5f36c52ce7d7c'),
(384, 57, 'tests_1_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic screening (PGS, also called PGT-A) is a test designed for those undergoing IVF (in-vitro fertlization) procedures. PGS can identify the embryos that if implanted can lead to babies with syndromes like Down, Edward, Patau, Turner & Klinefelter. including IVF, surrogate, egg-donor and twin pregnancies.</p>            \r\n                                        <p>Genelabs was the first laboratory in Sri Other benefits of this test are,</p>\r\n                                        <ul class=\"test-list\">\r\n                                            <li><p>Higher chances of pregnancy</p></li>\r\n                                            <li><p>Reduced risk of miscarriages</p></li>\r\n                                            <li><p>More confidence in transferring a single embryo, avoiding health risks associated with twin or triplet pregnancies</p></li>\r\n                                            <li><p>Reduced number of IVF cycles needed to achieve pregnancy, potentially reducing the time to pregnancy and the costs of extra cycles</p></li>\r\n                                        </ul>'),
(385, 57, '_tests_1_test_description', 'field_5f36c663e7d7d'),
(386, 57, 'tests_2_test_heading', 'Pre-implantation genetic diagnosis (PGD)'),
(387, 57, '_tests_2_test_heading', 'field_5f36c52ce7d7c'),
(388, 57, 'tests_2_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic diagnosis (PGD, also called PGT-M) is designed to identify embryos with inherited genetic abnormalities. These abnormalities (eg: thalassemia), present in one or both parents, could be passed to embryos.  During PGD, a small number of cells are removed from the embryo, and the DNA is tested to identify the embryos that have not got the disease gene from the parents.</p>            \r\n                                        <p class=\"theme-description-nlsp\">Couples who choose PGD could usually conceive naturally, but are using IVF specifically so that they can have healthy babies, and prevent passing on of the abnormal genes to subsequent generations.</p>   '),
(389, 57, '_tests_2_test_description', 'field_5f36c663e7d7d'),
(390, 57, 'tests_3_test_heading', 'BRCA 1 & 2 panel'),
(391, 57, '_tests_3_test_heading', 'field_5f36c52ce7d7c'),
(392, 57, 'tests_3_test_description', '<p class=\"theme-description-nlsp\">BRCA1 and BRCA2 are two related genes, the changes (mutations) of which have been known to increase the risk of breast, ovarian & prostate cancers. In general, about 69-72% of women who inherit a harmful BRCA1 or BRCA2 mutation will develop breast cancer, and 17-44% of women who inherit these mutations will develop ovarian cancer by the age of 80. BRCA2 mutations are also the most common genetic factor in prostate cancers. Since these mutated genes are inherited from parents, identifying the presence of these mutations in healthy family members can help in early diagnosis of breast, ovarian or prostate cancers or prevention of these cancers altogether.</p>'),
(393, 57, '_tests_3_test_description', 'field_5f36c663e7d7d'),
(394, 57, 'tests_4_test_heading', 'Cancer hotspot panel'),
(395, 57, '_tests_4_test_heading', 'field_5f36c52ce7d7c'),
(396, 57, 'tests_4_test_description', '<p class=\"theme-description-nlsp\">Cancer is a genetic disease.  Genetic testing has now become essential for many different cancers, with the test results being used for diagnosis of certain cancers, as well as for personalized treatment. The Cancer Hotspot Panel includes 50 genes important in several different cancers analyzed in a single test. It is specially useful for Thyroid cancer, Lung cancer, Colon cancer, gastro-intestinal stromal tumors (GIST), Glioma & certain leukemias.</p>            \r\n                                        <br>\r\n                                        <h4>Genes included in the Cancer Hotspot Panel</h4>\r\n                                        <img alt=\"Cancer Hotspot Panel\" class=\"img-fluid\" src=\"assets/images/cancer-hotspot-panel.jpg\">'),
(397, 57, '_tests_4_test_description', 'field_5f36c663e7d7d'),
(398, 58, '_wp_attached_file', '2020/08/cancer-hotspot-panel.jpg'),
(399, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:206;s:4:\"file\";s:32:\"2020/08/cancer-hotspot-panel.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cancer-hotspot-panel-300x52.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:52;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cancer-hotspot-panel-1024x176.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cancer-hotspot-panel-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cancer-hotspot-panel-768x132.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 59, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(401, 59, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(402, 59, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone\r\nLanka to perform this complex test</p>'),
(403, 59, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(404, 59, 'tests', '5'),
(405, 59, '_tests', 'field_5f36c508e7d7b'),
(406, 59, 'tests_1_test_heading', 'Pre-implantation genetic screening (PGS)'),
(407, 59, '_tests_1_test_heading', 'field_5f36c52ce7d7c'),
(408, 59, 'tests_1_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic screening (PGS, also called PGT-A) is a test designed for those undergoing IVF (in-vitro fertlization) procedures. PGS can identify the embryos that if implanted can lead to babies with syndromes like Down, Edward, Patau, Turner &amp; Klinefelter. including IVF, surrogate, egg-donor and twin pregnancies.</p>\r\nGenelabs was the first laboratory in Sri Other benefits of this test are,\r\n<ul class=\"test-list\">\r\n 	<li>Higher chances of pregnancy</li>\r\n 	<li>Reduced risk of miscarriages</li>\r\n 	<li>More confidence in transferring a single embryo, avoiding health risks associated with twin or triplet pregnancies</li>\r\n 	<li>Reduced number of IVF cycles needed to achieve pregnancy, potentially reducing the time to pregnancy and the costs of extra cycles</li>\r\n</ul>'),
(409, 59, '_tests_1_test_description', 'field_5f36c663e7d7d'),
(410, 59, 'tests_2_test_heading', 'Pre-implantation genetic diagnosis (PGD)'),
(411, 59, '_tests_2_test_heading', 'field_5f36c52ce7d7c'),
(412, 59, 'tests_2_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic diagnosis (PGD, also called PGT-M) is designed to identify embryos with inherited genetic abnormalities. These abnormalities (eg: thalassemia), present in one or both parents, could be passed to embryos. During PGD, a small number of cells are removed from the embryo, and the DNA is tested to identify the embryos that have not got the disease gene from the parents.</p>\r\n<p class=\"theme-description-nlsp\">Couples who choose PGD could usually conceive naturally, but are using IVF specifically so that they can have healthy babies, and prevent passing on of the abnormal genes to subsequent generations.</p>'),
(413, 59, '_tests_2_test_description', 'field_5f36c663e7d7d'),
(414, 59, 'tests_3_test_heading', 'BRCA 1 & 2 panel'),
(415, 59, '_tests_3_test_heading', 'field_5f36c52ce7d7c'),
(416, 59, 'tests_3_test_description', '<p class=\"theme-description-nlsp\">BRCA1 and BRCA2 are two related genes, the changes (mutations) of which have been known to increase the risk of breast, ovarian &amp; prostate cancers. In general, about 69-72% of women who inherit a harmful BRCA1 or BRCA2 mutation will develop breast cancer, and 17-44% of women who inherit these mutations will develop ovarian cancer by the age of 80. BRCA2 mutations are also the most common genetic factor in prostate cancers. Since these mutated genes are inherited from parents, identifying the presence of these mutations in healthy family members can help in early diagnosis of breast, ovarian or prostate cancers or prevention of these cancers altogether.</p>'),
(417, 59, '_tests_3_test_description', 'field_5f36c663e7d7d'),
(418, 59, 'tests_4_test_heading', 'Cancer hotspot panel'),
(419, 59, '_tests_4_test_heading', 'field_5f36c52ce7d7c'),
(420, 59, 'tests_4_test_description', '<p class=\"theme-description-nlsp\">Cancer is a genetic disease. Genetic testing has now become essential for many different cancers, with the test results being used for diagnosis of certain cancers, as well as for personalized treatment. The Cancer Hotspot Panel includes 50 genes important in several different cancers analyzed in a single test. It is specially useful for Thyroid cancer, Lung cancer, Colon cancer, gastro-intestinal stromal tumors (GIST), Glioma &amp; certain leukemias.</p>\r\n&nbsp;\r\n<h4>Genes included in the Cancer Hotspot Panel</h4>\r\n<img class=\"img-fluid\" src=\"http://localhost/genelabs/wp-content/uploads/2020/08/cancer-hotspot-panel.jpg\" alt=\"Cancer Hotspot Panel\" />'),
(421, 59, '_tests_4_test_description', 'field_5f36c663e7d7d'),
(422, 15, 'tests_5_test_heading', 'Lung Cancer mutation panel'),
(423, 15, '_tests_5_test_heading', 'field_5f36c52ce7d7c'),
(424, 15, 'tests_5_test_description', '<p class=\"theme-description-nlsp\">This test includes analysis of mutations of EGFR Exons 18-21 including EGFR T790M mutation, which is recommended in molecular testing guidelines for targeted treatment of lung cancer patients. Additionally the test also includes BRAF, KRAS, MET & RET mutations that are suggested to be performed if included as part of a larger panel if performed initially, or when routine EGFR, ALK, and ROS1 testing are negative*.</p>            \r\n                                        <p class=\"theme-description-nlsp special-note\">(*Lindeman NI, Cagle PT, Aisner DL et al. Updated molecular testing guideline for the selection of lung cancer patients for treatment with targeted tyrosine kinase inhibitors: guideline from the College of American Pathologists, the International Association for the Study of Lung Cancer, and the Association for Molecular Pathology. Arch Pathol Lab Med. 2018;142(3):321-346)</p>'),
(425, 15, '_tests_5_test_description', 'field_5f36c663e7d7d'),
(426, 15, 'tests_6_test_heading', 'RAS Extended Plus for Colorectal Cancer'),
(427, 15, '_tests_6_test_heading', 'field_5f36c52ce7d7c'),
(428, 15, 'tests_6_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;This test includes the analysis of all KRAS &amp; NRAS mutations that are recommended as ‘RAS extended’ testing in international guidelines for targeted treatment of Colorectal cancers*. In addition the test also includes BRAF V600E mutation testing which is recommended for colorectal cancer prognostification, and evaluation of Lynch syndrome risk. Other genes tested in the panel are PIK3CA and PTEN for informational purposes.&lt;/p&gt;\r\n&lt;p class=\"theme-description-nlsp special-note\"&gt;(*Molecular Biomarkers for the Evaluation of Colorectal Cancer Guideline From the American Society for Clinical Pathology, College of American Pathologists, Association for Molecular Pathology, and American Society of Clinical Oncology. J Mol Diagn. 2017 Mar; 19(2): 187–225)&lt;/p&gt;'),
(429, 15, '_tests_6_test_description', 'field_5f36c663e7d7d'),
(430, 15, 'tests_7_test_heading', 'Thyroid cancer mutation profile'),
(431, 15, '_tests_7_test_heading', 'field_5f36c52ce7d7c'),
(432, 15, 'tests_7_test_description', '<p class=\"theme-description-nlsp\">The test includes mutation analysis of BRAF, KRAS, NRAS, HRAS, RET genes that are important in diagnosis of Thyroid cancers</p> '),
(433, 15, '_tests_7_test_description', 'field_5f36c663e7d7d'),
(434, 15, 'tests_8_test_heading', 'AML mutation panel'),
(435, 15, '_tests_8_test_heading', 'field_5f36c52ce7d7c'),
(436, 15, 'tests_8_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of several genes important in the treatment of acute myeloid leukemia (AML) that consist of NPM1, FLT3-ITD, FLT3-TKD, IDH1, IDH2, KIT & TP53</p>   '),
(437, 15, '_tests_8_test_description', 'field_5f36c663e7d7d'),
(438, 15, 'tests_9_test_heading', 'GIST mutation panel'),
(439, 15, '_tests_9_test_heading', 'field_5f36c52ce7d7c'),
(440, 15, 'tests_9_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of KIT, PDGFRA & BRAF genes that are important in the treatment of Gastro-intestinal stromal tumors (GIST)</p>'),
(441, 15, '_tests_9_test_description', 'field_5f36c663e7d7d'),
(442, 15, 'tests_10_test_heading', 'Prostate cancer mutation panel'),
(443, 15, '_tests_10_test_heading', 'field_5f36c52ce7d7c'),
(444, 15, 'tests_10_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of BRCA1, BRCA2, ATM, TP53 & MLH1 mutations</p>'),
(445, 15, '_tests_10_test_description', 'field_5f36c663e7d7d'),
(446, 15, 'tests_11_test_heading', 'ABL1 TKI resistance mutations'),
(447, 15, '_tests_11_test_heading', 'field_5f36c52ce7d7c'),
(448, 15, 'tests_11_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test for mutations in the ABL1 gene that are associated with resistance to Tyrosine kinase inhibitor treatment in chronic myeloid leukemia (CML)&lt;/p&gt;'),
(449, 15, '_tests_11_test_description', 'field_5f36c663e7d7d'),
(450, 15, 'tests_12_test_heading', 'MPN mutations'),
(451, 15, '_tests_12_test_heading', 'field_5f36c52ce7d7c'),
(452, 15, 'tests_12_test_description', '<p class=\"theme-description-nlsp\">Detection of JAK2 V617F mutation, JAK2 Exon 12 mutation & MPL mutation</p>'),
(453, 15, '_tests_12_test_description', 'field_5f36c663e7d7d'),
(454, 15, 'tests_13_test_heading', 'TP53 mutation'),
(455, 15, '_tests_13_test_heading', 'field_5f36c52ce7d7c'),
(456, 15, 'tests_13_test_description', '<p class=\"theme-description-nlsp\">Detection of TP53 gene variants that indicate high risk of disease progression and adverse outcomes in patients with chronic lymphocytic leukemia </p>'),
(457, 15, '_tests_13_test_description', 'field_5f36c663e7d7d'),
(458, 15, 'tests_14_test_heading', 'GIST mutation panel'),
(459, 15, '_tests_14_test_heading', 'field_5f36c52ce7d7c'),
(460, 15, 'tests_14_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test for mutations of KIT, PDGFRA &amp; BRAF genes that are important in the treatment of Gastro-intestinal stromal tumors (GIST)&lt;/p&gt;');
INSERT INTO `gene_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(461, 15, '_tests_14_test_description', 'field_5f36c663e7d7d'),
(462, 15, 'tests_15_test_heading', 'IDH1 & IDH2 mutations for glioma'),
(463, 15, '_tests_15_test_heading', 'field_5f36c52ce7d7c'),
(464, 15, 'tests_15_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test used for the morphological diagnosis of diffuse glioma and prognosis stratification of diffuse glioma as well as acute myeloid leukemia&lt;/p&gt;'),
(465, 15, '_tests_15_test_description', 'field_5f36c663e7d7d'),
(466, 15, 'tests_16_test_heading', 'KIT D816V mutation'),
(467, 15, '_tests_16_test_heading', 'field_5f36c52ce7d7c'),
(468, 15, 'tests_16_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of the mutations at D816 position (including D816V) of the KIT gene for diagnosis of systemic mastocytosis &lt;/p&gt;'),
(469, 15, '_tests_16_test_description', 'field_5f36c663e7d7d'),
(470, 15, 'tests_17_test_heading', 'FGFR3 mutation for bladder cancer'),
(471, 15, '_tests_17_test_heading', 'field_5f36c52ce7d7c'),
(472, 15, 'tests_17_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Tests for FGFR3 mutations for the identification of urothelial tumors that may respond to FGFR-targeted therapies&lt;/p&gt;'),
(473, 15, '_tests_17_test_description', 'field_5f36c663e7d7d'),
(474, 15, 'tests_18_test_heading', 'BCR-ABL detection'),
(475, 15, '_tests_18_test_heading', 'field_5f36c52ce7d7c'),
(476, 15, 'tests_18_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;A test carried out for patients with suspected BCR-ABL1-positive hematopoietic neoplasms, predominantly chronic myelogenous leukemia (CML) and acute lymphoblastic leukemia&lt;/p&gt;'),
(477, 15, '_tests_18_test_description', 'field_5f36c663e7d7d'),
(478, 15, 'tests_19_test_heading', 'PML-RARA detection'),
(479, 15, '_tests_19_test_heading', 'field_5f36c52ce7d7c'),
(480, 15, 'tests_19_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of PML-RARA translocation for the diagnosis of acute promyelocytic leukemia (APL)&lt;/p&gt;'),
(481, 15, '_tests_19_test_description', 'field_5f36c663e7d7d'),
(482, 15, 'tests_20_test_heading', 'ALL translocation panel'),
(483, 15, '_tests_20_test_heading', 'field_5f36c52ce7d7c'),
(484, 15, 'tests_20_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of BCR-ABL, t(1;19), t(12;21) &amp; t(4;11) translocations for treatment and prognostic stratification of Acute Lymphocytic Leukemia (ALL)&lt;/p&gt;'),
(485, 15, '_tests_20_test_description', 'field_5f36c663e7d7d'),
(486, 15, 'tests_21_test_heading', 'AML translocation panel'),
(487, 15, '_tests_21_test_heading', 'field_5f36c52ce7d7c'),
(488, 15, 'tests_21_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of t(15;17), Inv(16) &amp; t(8;21) translocations for treatment and prognostic stratification of Acute Myeloid Leukemia (AML)&lt;/p&gt;'),
(489, 15, '_tests_21_test_description', 'field_5f36c663e7d7d'),
(490, 15, 'tests_22_test_heading', 'HLA typing'),
(491, 15, '_tests_22_test_heading', 'field_5f36c52ce7d7c'),
(492, 15, 'tests_22_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Typing of HLA-A, B &amp; DR for donor and recipient matching for organ transplantation purposes&lt;/p&gt;'),
(493, 15, '_tests_22_test_description', 'field_5f36c663e7d7d'),
(494, 15, 'tests_23_test_heading', 'Paternity testing'),
(495, 15, '_tests_23_test_heading', 'field_5f36c52ce7d7c'),
(496, 15, 'tests_23_test_description', '<p class=\"theme-description-nlsp\">DNA Paternity test at Genelabs Medical provide you with accurate and reliable paternity results while ensuring your confidentiality. Our paternity test analyzes 13 CODIS (Combined DNA Index System) loci and 3 other additional loci, to give you a peace of mind with accurate paternity answers. </p>\r\n                                    <p class=\"theme-description-nlsp\">We also offer an at-home sample collection package for those who wish to keep the identity more confidential.</p>\r\n                                    <h4 class=\"mt-4\">How to get a paternity test</h4>\r\n\r\n                                         <div>\r\n                                            <ul class=\"test-step pl-3\">\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 01</p>\r\n                                                    <p class=\"theme-description-nlsp\">Call Genelabs Medical. We will explain the entire process of the paternity test. You have the choice of ordering an at-home paternity test sample collection package, or visit Genelabs Medical to provide us with the required swab samples</p>\r\n                                                </li>\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 02</p>\r\n                                                    <p class=\"theme-description-nlsp\">If choosing at-home collection option; we will ship the sample collection kit to you along with collection instructions, where you need to ship it back to us.</p>\r\n                                                    <p class=\"theme-description-nlsp\">If visiting Genelabs Medical; we will collect the samples and process them.</p>\r\n                                                </li>\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 03</p>\r\n                                                    <p class=\"theme-description-nlsp\">We will issue the results within 3 weeks. You can obtain the results via email, post or simply visit Genelabs medical at your convenience.</p>\r\n                                                </li>\r\n                                            </ul>\r\n\r\n                                            <p class=\"theme-description-nlsp\">Disclaimer: Our paternity test reports are for personal information only, and not for legal purposes.</p>'),
(497, 15, '_tests_23_test_description', 'field_5f36c663e7d7d'),
(498, 60, 'tests_0_test_heading', 'Non-invasive prenatal testing (NIPT)'),
(499, 60, '_tests_0_test_heading', 'field_5f36c52ce7d7c'),
(500, 60, 'tests_0_test_description', '<p class=\"theme-description-nlsp\">Check the DNA of your baby just after 10 weeks of pregnancy using NIPT (Non-invasive prenatal testing). With a blood sample from the mother we can detect baby’s conditions like Down Syndrome, Edward Syndrome, Patau Syndrome, Turner Syndrome &amp; Klinefelter syndrome with upto 99% accuracy. This test is specially recommended worldwide for mothers above 35 years, since the risk of getting these syndromes is increased with increasing maternal age.However it can be performed for anyone\r\nLanka to perform this complex test</p>'),
(501, 60, '_tests_0_test_description', 'field_5f36c663e7d7d'),
(502, 60, 'tests', '24'),
(503, 60, '_tests', 'field_5f36c508e7d7b'),
(504, 60, 'tests_1_test_heading', 'Pre-implantation genetic screening (PGS)'),
(505, 60, '_tests_1_test_heading', 'field_5f36c52ce7d7c'),
(506, 60, 'tests_1_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic screening (PGS, also called PGT-A) is a test designed for those undergoing IVF (in-vitro fertlization) procedures. PGS can identify the embryos that if implanted can lead to babies with syndromes like Down, Edward, Patau, Turner &amp; Klinefelter. including IVF, surrogate, egg-donor and twin pregnancies.</p>\r\nGenelabs was the first laboratory in Sri Other benefits of this test are,\r\n<ul class=\"test-list\">\r\n 	<li>Higher chances of pregnancy</li>\r\n 	<li>Reduced risk of miscarriages</li>\r\n 	<li>More confidence in transferring a single embryo, avoiding health risks associated with twin or triplet pregnancies</li>\r\n 	<li>Reduced number of IVF cycles needed to achieve pregnancy, potentially reducing the time to pregnancy and the costs of extra cycles</li>\r\n</ul>'),
(507, 60, '_tests_1_test_description', 'field_5f36c663e7d7d'),
(508, 60, 'tests_2_test_heading', 'Pre-implantation genetic diagnosis (PGD)'),
(509, 60, '_tests_2_test_heading', 'field_5f36c52ce7d7c'),
(510, 60, 'tests_2_test_description', '<p class=\"theme-description-nlsp\">Pre-implantation genetic diagnosis (PGD, also called PGT-M) is designed to identify embryos with inherited genetic abnormalities. These abnormalities (eg: thalassemia), present in one or both parents, could be passed to embryos. During PGD, a small number of cells are removed from the embryo, and the DNA is tested to identify the embryos that have not got the disease gene from the parents.</p>\r\n<p class=\"theme-description-nlsp\">Couples who choose PGD could usually conceive naturally, but are using IVF specifically so that they can have healthy babies, and prevent passing on of the abnormal genes to subsequent generations.</p>'),
(511, 60, '_tests_2_test_description', 'field_5f36c663e7d7d'),
(512, 60, 'tests_3_test_heading', 'BRCA 1 & 2 panel'),
(513, 60, '_tests_3_test_heading', 'field_5f36c52ce7d7c'),
(514, 60, 'tests_3_test_description', '<p class=\"theme-description-nlsp\">BRCA1 and BRCA2 are two related genes, the changes (mutations) of which have been known to increase the risk of breast, ovarian &amp; prostate cancers. In general, about 69-72% of women who inherit a harmful BRCA1 or BRCA2 mutation will develop breast cancer, and 17-44% of women who inherit these mutations will develop ovarian cancer by the age of 80. BRCA2 mutations are also the most common genetic factor in prostate cancers. Since these mutated genes are inherited from parents, identifying the presence of these mutations in healthy family members can help in early diagnosis of breast, ovarian or prostate cancers or prevention of these cancers altogether.</p>'),
(515, 60, '_tests_3_test_description', 'field_5f36c663e7d7d'),
(516, 60, 'tests_4_test_heading', 'Cancer hotspot panel'),
(517, 60, '_tests_4_test_heading', 'field_5f36c52ce7d7c'),
(518, 60, 'tests_4_test_description', '<p class=\"theme-description-nlsp\">Cancer is a genetic disease. Genetic testing has now become essential for many different cancers, with the test results being used for diagnosis of certain cancers, as well as for personalized treatment. The Cancer Hotspot Panel includes 50 genes important in several different cancers analyzed in a single test. It is specially useful for Thyroid cancer, Lung cancer, Colon cancer, gastro-intestinal stromal tumors (GIST), Glioma &amp; certain leukemias.</p>\r\n&nbsp;\r\n<h4>Genes included in the Cancer Hotspot Panel</h4>\r\n<img class=\"img-fluid\" src=\"http://localhost/genelabs/wp-content/uploads/2020/08/cancer-hotspot-panel.jpg\" alt=\"Cancer Hotspot Panel\" />'),
(519, 60, '_tests_4_test_description', 'field_5f36c663e7d7d'),
(520, 60, 'tests_5_test_heading', 'Lung Cancer mutation panel'),
(521, 60, '_tests_5_test_heading', 'field_5f36c52ce7d7c'),
(522, 60, 'tests_5_test_description', '<p class=\"theme-description-nlsp\">This test includes analysis of mutations of EGFR Exons 18-21 including EGFR T790M mutation, which is recommended in molecular testing guidelines for targeted treatment of lung cancer patients. Additionally the test also includes BRAF, KRAS, MET & RET mutations that are suggested to be performed if included as part of a larger panel if performed initially, or when routine EGFR, ALK, and ROS1 testing are negative*.</p>            \r\n                                        <p class=\"theme-description-nlsp special-note\">(*Lindeman NI, Cagle PT, Aisner DL et al. Updated molecular testing guideline for the selection of lung cancer patients for treatment with targeted tyrosine kinase inhibitors: guideline from the College of American Pathologists, the International Association for the Study of Lung Cancer, and the Association for Molecular Pathology. Arch Pathol Lab Med. 2018;142(3):321-346)</p>'),
(523, 60, '_tests_5_test_description', 'field_5f36c663e7d7d'),
(524, 60, 'tests_6_test_heading', 'RAS Extended Plus for Colorectal Cancer'),
(525, 60, '_tests_6_test_heading', 'field_5f36c52ce7d7c'),
(526, 60, 'tests_6_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;This test includes the analysis of all KRAS &amp; NRAS mutations that are recommended as ‘RAS extended’ testing in international guidelines for targeted treatment of Colorectal cancers*. In addition the test also includes BRAF V600E mutation testing which is recommended for colorectal cancer prognostification, and evaluation of Lynch syndrome risk. Other genes tested in the panel are PIK3CA and PTEN for informational purposes.&lt;/p&gt;\r\n&lt;p class=\"theme-description-nlsp special-note\"&gt;(*Molecular Biomarkers for the Evaluation of Colorectal Cancer Guideline From the American Society for Clinical Pathology, College of American Pathologists, Association for Molecular Pathology, and American Society of Clinical Oncology. J Mol Diagn. 2017 Mar; 19(2): 187–225)&lt;/p&gt;'),
(527, 60, '_tests_6_test_description', 'field_5f36c663e7d7d'),
(528, 60, 'tests_7_test_heading', 'Thyroid cancer mutation profile'),
(529, 60, '_tests_7_test_heading', 'field_5f36c52ce7d7c'),
(530, 60, 'tests_7_test_description', '<p class=\"theme-description-nlsp\">The test includes mutation analysis of BRAF, KRAS, NRAS, HRAS, RET genes that are important in diagnosis of Thyroid cancers</p> '),
(531, 60, '_tests_7_test_description', 'field_5f36c663e7d7d'),
(532, 60, 'tests_8_test_heading', 'AML mutation panel'),
(533, 60, '_tests_8_test_heading', 'field_5f36c52ce7d7c'),
(534, 60, 'tests_8_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of several genes important in the treatment of acute myeloid leukemia (AML) that consist of NPM1, FLT3-ITD, FLT3-TKD, IDH1, IDH2, KIT & TP53</p>   '),
(535, 60, '_tests_8_test_description', 'field_5f36c663e7d7d'),
(536, 60, 'tests_9_test_heading', 'GIST mutation panel'),
(537, 60, '_tests_9_test_heading', 'field_5f36c52ce7d7c'),
(538, 60, 'tests_9_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of KIT, PDGFRA & BRAF genes that are important in the treatment of Gastro-intestinal stromal tumors (GIST)</p>'),
(539, 60, '_tests_9_test_description', 'field_5f36c663e7d7d'),
(540, 60, 'tests_10_test_heading', 'Prostate cancer mutation panel'),
(541, 60, '_tests_10_test_heading', 'field_5f36c52ce7d7c'),
(542, 60, 'tests_10_test_description', '<p class=\"theme-description-nlsp\">Test for mutations of BRCA1, BRCA2, ATM, TP53 & MLH1 mutations</p>'),
(543, 60, '_tests_10_test_description', 'field_5f36c663e7d7d'),
(544, 60, 'tests_11_test_heading', 'ABL1 TKI resistance mutations'),
(545, 60, '_tests_11_test_heading', 'field_5f36c52ce7d7c'),
(546, 60, 'tests_11_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test for mutations in the ABL1 gene that are associated with resistance to Tyrosine kinase inhibitor treatment in chronic myeloid leukemia (CML)&lt;/p&gt;'),
(547, 60, '_tests_11_test_description', 'field_5f36c663e7d7d'),
(548, 60, 'tests_12_test_heading', 'MPN mutations'),
(549, 60, '_tests_12_test_heading', 'field_5f36c52ce7d7c'),
(550, 60, 'tests_12_test_description', '<p class=\"theme-description-nlsp\">Detection of JAK2 V617F mutation, JAK2 Exon 12 mutation & MPL mutation</p>'),
(551, 60, '_tests_12_test_description', 'field_5f36c663e7d7d'),
(552, 60, 'tests_13_test_heading', 'TP53 mutation'),
(553, 60, '_tests_13_test_heading', 'field_5f36c52ce7d7c'),
(554, 60, 'tests_13_test_description', '<p class=\"theme-description-nlsp\">Detection of TP53 gene variants that indicate high risk of disease progression and adverse outcomes in patients with chronic lymphocytic leukemia </p>'),
(555, 60, '_tests_13_test_description', 'field_5f36c663e7d7d'),
(556, 60, 'tests_14_test_heading', 'GIST mutation panel'),
(557, 60, '_tests_14_test_heading', 'field_5f36c52ce7d7c'),
(558, 60, 'tests_14_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test for mutations of KIT, PDGFRA &amp; BRAF genes that are important in the treatment of Gastro-intestinal stromal tumors (GIST)&lt;/p&gt;'),
(559, 60, '_tests_14_test_description', 'field_5f36c663e7d7d'),
(560, 60, 'tests_15_test_heading', 'IDH1 & IDH2 mutations for glioma'),
(561, 60, '_tests_15_test_heading', 'field_5f36c52ce7d7c'),
(562, 60, 'tests_15_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Test used for the morphological diagnosis of diffuse glioma and prognosis stratification of diffuse glioma as well as acute myeloid leukemia&lt;/p&gt;'),
(563, 60, '_tests_15_test_description', 'field_5f36c663e7d7d'),
(564, 60, 'tests_16_test_heading', 'KIT D816V mutation'),
(565, 60, '_tests_16_test_heading', 'field_5f36c52ce7d7c'),
(566, 60, 'tests_16_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of the mutations at D816 position (including D816V) of the KIT gene for diagnosis of systemic mastocytosis &lt;/p&gt;'),
(567, 60, '_tests_16_test_description', 'field_5f36c663e7d7d'),
(568, 60, 'tests_17_test_heading', 'FGFR3 mutation for bladder cancer'),
(569, 60, '_tests_17_test_heading', 'field_5f36c52ce7d7c'),
(570, 60, 'tests_17_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Tests for FGFR3 mutations for the identification of urothelial tumors that may respond to FGFR-targeted therapies&lt;/p&gt;'),
(571, 60, '_tests_17_test_description', 'field_5f36c663e7d7d'),
(572, 60, 'tests_18_test_heading', 'BCR-ABL detection'),
(573, 60, '_tests_18_test_heading', 'field_5f36c52ce7d7c'),
(574, 60, 'tests_18_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;A test carried out for patients with suspected BCR-ABL1-positive hematopoietic neoplasms, predominantly chronic myelogenous leukemia (CML) and acute lymphoblastic leukemia&lt;/p&gt;'),
(575, 60, '_tests_18_test_description', 'field_5f36c663e7d7d'),
(576, 60, 'tests_19_test_heading', 'PML-RARA detection'),
(577, 60, '_tests_19_test_heading', 'field_5f36c52ce7d7c'),
(578, 60, 'tests_19_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of PML-RARA translocation for the diagnosis of acute promyelocytic leukemia (APL)&lt;/p&gt;'),
(579, 60, '_tests_19_test_description', 'field_5f36c663e7d7d'),
(580, 60, 'tests_20_test_heading', 'ALL translocation panel'),
(581, 60, '_tests_20_test_heading', 'field_5f36c52ce7d7c'),
(582, 60, 'tests_20_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of BCR-ABL, t(1;19), t(12;21) &amp; t(4;11) translocations for treatment and prognostic stratification of Acute Lymphocytic Leukemia (ALL)&lt;/p&gt;'),
(583, 60, '_tests_20_test_description', 'field_5f36c663e7d7d'),
(584, 60, 'tests_21_test_heading', 'AML translocation panel'),
(585, 60, '_tests_21_test_heading', 'field_5f36c52ce7d7c'),
(586, 60, 'tests_21_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Detection of t(15;17), Inv(16) &amp; t(8;21) translocations for treatment and prognostic stratification of Acute Myeloid Leukemia (AML)&lt;/p&gt;'),
(587, 60, '_tests_21_test_description', 'field_5f36c663e7d7d'),
(588, 60, 'tests_22_test_heading', 'HLA typing'),
(589, 60, '_tests_22_test_heading', 'field_5f36c52ce7d7c'),
(590, 60, 'tests_22_test_description', '&lt;p class=\"theme-description-nlsp\"&gt;Typing of HLA-A, B &amp; DR for donor and recipient matching for organ transplantation purposes&lt;/p&gt;'),
(591, 60, '_tests_22_test_description', 'field_5f36c663e7d7d'),
(592, 60, 'tests_23_test_heading', 'Paternity testing'),
(593, 60, '_tests_23_test_heading', 'field_5f36c52ce7d7c'),
(594, 60, 'tests_23_test_description', '<p class=\"theme-description-nlsp\">DNA Paternity test at Genelabs Medical provide you with accurate and reliable paternity results while ensuring your confidentiality. Our paternity test analyzes 13 CODIS (Combined DNA Index System) loci and 3 other additional loci, to give you a peace of mind with accurate paternity answers. </p>\r\n                                    <p class=\"theme-description-nlsp\">We also offer an at-home sample collection package for those who wish to keep the identity more confidential.</p>\r\n                                    <h4 class=\"mt-4\">How to get a paternity test</h4>\r\n\r\n                                         <div>\r\n                                            <ul class=\"test-step pl-3\">\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 01</p>\r\n                                                    <p class=\"theme-description-nlsp\">Call Genelabs Medical. We will explain the entire process of the paternity test. You have the choice of ordering an at-home paternity test sample collection package, or visit Genelabs Medical to provide us with the required swab samples</p>\r\n                                                </li>\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 02</p>\r\n                                                    <p class=\"theme-description-nlsp\">If choosing at-home collection option; we will ship the sample collection kit to you along with collection instructions, where you need to ship it back to us.</p>\r\n                                                    <p class=\"theme-description-nlsp\">If visiting Genelabs Medical; we will collect the samples and process them.</p>\r\n                                                </li>\r\n                                                <li>\r\n                                                    <p class=\"step-tag\">Step 03</p>\r\n                                                    <p class=\"theme-description-nlsp\">We will issue the results within 3 weeks. You can obtain the results via email, post or simply visit Genelabs medical at your convenience.</p>\r\n                                                </li>\r\n                                            </ul>\r\n\r\n                                            <p class=\"theme-description-nlsp\">Disclaimer: Our paternity test reports are for personal information only, and not for legal purposes.</p>'),
(595, 60, '_tests_23_test_description', 'field_5f36c663e7d7d'),
(596, 61, '_edit_last', '1'),
(597, 61, '_edit_lock', '1597434177:1'),
(598, 69, '_wp_attached_file', '2020/08/our-team-img-2.jpg'),
(599, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2020/08/our-team-img-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"our-team-img-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"our-team-img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(600, 70, '_wp_attached_file', '2020/08/our-team-img.jpg'),
(601, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/08/our-team-img.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"our-team-img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"our-team-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(602, 8, '_edit_last', '1'),
(603, 8, 'team_0_name', 'Chandanamali Punchihewa, PhD'),
(604, 8, '_team_0_name', 'field_5f36e524d7e61'),
(605, 8, 'team_0_image', '70'),
(606, 8, '_team_0_image', 'field_5f36e539d7e62'),
(607, 8, 'team_0_position', 'CEO/Chief Scientist'),
(608, 8, '_team_0_position', 'field_5f36e54cd7e63'),
(609, 8, 'team_0_description', '<p class=\"theme-description\">Dr. Chandanamali Punchihewa is a graduate of the University of Colombo, and was one of the first in the country to receive an Honours degree in Molecular Biology and Biochemistry from a national university. She read for her PhD at the University of Arizona, ranked among the top 16 graduate schools in USA. Upon winning a competitive postdoctoral fellowship she joined St. Jude Research Hospital, the top pediatric cancer hospital in USA, as a postdoctoral fellow. Her research during this time involved anti-cancer drug discovery and development, and she is a co-inventor holding a US patent on a potential anticancer drug, which is an inhibitor of the protein PCNA.</p>\r\n\r\n                                        <p class=\"theme-description\">Upon completion of the fellowship Dr. Punchihewa continued to carry out research in molecular pathology related to brain cancers at the same hospital, and co-authored many internationally per-reviewed research articles published in high-impact journals. She was a first author in a research publication in one of the world’s highest ranked journals ‘Nature’. In addition to research publications, Dr. Punchihewa has also co-authored literature reviews, and a book chapter on ‘Telomeres and Telomerase in Cancer’, published by the Humana Press, USA. During her tenure as a graduate student and a research professional, Dr. Punchihewa has received many awards and fellowships from the University of Arizona and St. Jude Children’s Research Hospital.</p>\r\n\r\n                                        <p class=\"theme-description\">She returned to Sri Lanka in 2014, and has been instrumental in setting up the Molecular Diagnostics laboratory at Lanka Hospitals Diagnostics, and bringing it up to the standards of the College of American Pathologists. In addition to the routine molecular diagnostics tests, she successfully introduced several new molecular diagnostic tests that have thus far not been available in the country, but are critical for prenatal testing and for patients with cancer.</p>'),
(610, 8, '_team_0_description', 'field_5f36e55cd7e64'),
(611, 8, 'team_0_facebook_url', '#'),
(612, 8, '_team_0_facebook_url', 'field_5f36e56bd7e65'),
(613, 8, 'team_0_linkedin_url', '#'),
(614, 8, '_team_0_linkedin_url', 'field_5f36e581d7e66'),
(615, 8, 'team_1_name', 'Manoj Punchihewa'),
(616, 8, '_team_1_name', 'field_5f36e524d7e61'),
(617, 8, 'team_1_image', '69'),
(618, 8, '_team_1_image', 'field_5f36e539d7e62'),
(619, 8, 'team_1_position', 'Director'),
(620, 8, '_team_1_position', 'field_5f36e54cd7e63'),
(621, 8, 'team_1_description', '<p class=\"theme-description\">Manoj Punchihewa is an entrepreneur with ventures in both USA and Sri Lanka. He received a BSc in Chemical Engineering from the University of Moratuwa, and an MBA from the University of Colombo. Manoj started his career at Unilever where he obtained extensive experience in all manufacturing related activities including Product & process development, manufacturing management, Quality, Engineering & Maintenance, Safety, budgets, cost accounting and Capital investments. He worked in three Unilever personal care product plants as a Plant Manager/Engineer before moving to USA, where he first worked at Desert Whale Jojoba Company as Head of operations managing a cosmetic product manufacturing plant and a 2000-acre Jojoba Plantation.  Then he moved to Koppers Inc. and headed their largest chemical plant. </p>\r\n'),
(622, 8, '_team_1_description', 'field_5f36e55cd7e64'),
(623, 8, 'team_1_facebook_url', '#'),
(624, 8, '_team_1_facebook_url', 'field_5f36e56bd7e65'),
(625, 8, 'team_1_linkedin_url', '#'),
(626, 8, '_team_1_linkedin_url', 'field_5f36e581d7e66'),
(627, 8, 'team', '2'),
(628, 8, '_team', 'field_5f36e511d7e60'),
(629, 71, 'team_0_name', 'Chandanamali Punchihewa, PhD'),
(630, 71, '_team_0_name', 'field_5f36e524d7e61'),
(631, 71, 'team_0_image', '70'),
(632, 71, '_team_0_image', 'field_5f36e539d7e62'),
(633, 71, 'team_0_position', 'CEO/Chief Scientist'),
(634, 71, '_team_0_position', 'field_5f36e54cd7e63'),
(635, 71, 'team_0_description', '<p class=\"theme-description\">Dr. Chandanamali Punchihewa is a graduate of the University of Colombo, and was one of the first in the country to receive an Honours degree in Molecular Biology and Biochemistry from a national university. She read for her PhD at the University of Arizona, ranked among the top 16 graduate schools in USA. Upon winning a competitive postdoctoral fellowship she joined St. Jude Research Hospital, the top pediatric cancer hospital in USA, as a postdoctoral fellow. Her research during this time involved anti-cancer drug discovery and development, and she is a co-inventor holding a US patent on a potential anticancer drug, which is an inhibitor of the protein PCNA.</p>\r\n\r\n                                        <p class=\"theme-description\">Upon completion of the fellowship Dr. Punchihewa continued to carry out research in molecular pathology related to brain cancers at the same hospital, and co-authored many internationally per-reviewed research articles published in high-impact journals. She was a first author in a research publication in one of the world’s highest ranked journals ‘Nature’. In addition to research publications, Dr. Punchihewa has also co-authored literature reviews, and a book chapter on ‘Telomeres and Telomerase in Cancer’, published by the Humana Press, USA. During her tenure as a graduate student and a research professional, Dr. Punchihewa has received many awards and fellowships from the University of Arizona and St. Jude Children’s Research Hospital.</p>\r\n\r\n                                        <p class=\"theme-description\">She returned to Sri Lanka in 2014, and has been instrumental in setting up the Molecular Diagnostics laboratory at Lanka Hospitals Diagnostics, and bringing it up to the standards of the College of American Pathologists. In addition to the routine molecular diagnostics tests, she successfully introduced several new molecular diagnostic tests that have thus far not been available in the country, but are critical for prenatal testing and for patients with cancer.</p>'),
(636, 71, '_team_0_description', 'field_5f36e55cd7e64'),
(637, 71, 'team_0_facebook_url', '#'),
(638, 71, '_team_0_facebook_url', 'field_5f36e56bd7e65'),
(639, 71, 'team_0_linkedin_url', '#'),
(640, 71, '_team_0_linkedin_url', 'field_5f36e581d7e66'),
(641, 71, 'team_1_name', 'Manoj Punchihewa'),
(642, 71, '_team_1_name', 'field_5f36e524d7e61'),
(643, 71, 'team_1_image', '69'),
(644, 71, '_team_1_image', 'field_5f36e539d7e62'),
(645, 71, 'team_1_position', 'Director'),
(646, 71, '_team_1_position', 'field_5f36e54cd7e63'),
(647, 71, 'team_1_description', '<p class=\"theme-description\">Manoj Punchihewa is an entrepreneur with ventures in both USA and Sri Lanka. He received a BSc in Chemical Engineering from the University of Moratuwa, and an MBA from the University of Colombo. Manoj started his career at Unilever where he obtained extensive experience in all manufacturing related activities including Product & process development, manufacturing management, Quality, Engineering & Maintenance, Safety, budgets, cost accounting and Capital investments. He worked in three Unilever personal care product plants as a Plant Manager/Engineer before moving to USA, where he first worked at Desert Whale Jojoba Company as Head of operations managing a cosmetic product manufacturing plant and a 2000-acre Jojoba Plantation.  Then he moved to Koppers Inc. and headed their largest chemical plant. </p>\r\n'),
(648, 71, '_team_1_description', 'field_5f36e55cd7e64'),
(649, 71, 'team_1_facebook_url', '#'),
(650, 71, '_team_1_facebook_url', 'field_5f36e56bd7e65'),
(651, 71, 'team_1_linkedin_url', '#'),
(652, 71, '_team_1_linkedin_url', 'field_5f36e581d7e66'),
(653, 71, 'team', '2'),
(654, 71, '_team', 'field_5f36e511d7e60'),
(655, 72, 'team_0_name', 'Chandanamali Punchihewa, PhD'),
(656, 72, '_team_0_name', 'field_5f36e524d7e61'),
(657, 72, 'team_0_image', '70'),
(658, 72, '_team_0_image', 'field_5f36e539d7e62'),
(659, 72, 'team_0_position', 'CEO/Chief Scientist'),
(660, 72, '_team_0_position', 'field_5f36e54cd7e63'),
(661, 72, 'team_0_description', '<p class=\"theme-description\">Dr. Chandanamali Punchihewa is a graduate of the University of Colombo, and was one of the first in the country to receive an Honours degree in Molecular Biology and Biochemistry from a national university. She read for her PhD at the University of Arizona, ranked among the top 16 graduate schools in USA. Upon winning a competitive postdoctoral fellowship she joined St. Jude Research Hospital, the top pediatric cancer hospital in USA, as a postdoctoral fellow. Her research during this time involved anti-cancer drug discovery and development, and she is a co-inventor holding a US patent on a potential anticancer drug, which is an inhibitor of the protein PCNA.</p>\r\n\r\n                                        <p class=\"theme-description\">Upon completion of the fellowship Dr. Punchihewa continued to carry out research in molecular pathology related to brain cancers at the same hospital, and co-authored many internationally per-reviewed research articles published in high-impact journals. She was a first author in a research publication in one of the world’s highest ranked journals ‘Nature’. In addition to research publications, Dr. Punchihewa has also co-authored literature reviews, and a book chapter on ‘Telomeres and Telomerase in Cancer’, published by the Humana Press, USA. During her tenure as a graduate student and a research professional, Dr. Punchihewa has received many awards and fellowships from the University of Arizona and St. Jude Children’s Research Hospital.</p>\r\n\r\n                                        <p class=\"theme-description\">She returned to Sri Lanka in 2014, and has been instrumental in setting up the Molecular Diagnostics laboratory at Lanka Hospitals Diagnostics, and bringing it up to the standards of the College of American Pathologists. In addition to the routine molecular diagnostics tests, she successfully introduced several new molecular diagnostic tests that have thus far not been available in the country, but are critical for prenatal testing and for patients with cancer.</p>'),
(662, 72, '_team_0_description', 'field_5f36e55cd7e64'),
(663, 72, 'team_0_facebook_url', '#'),
(664, 72, '_team_0_facebook_url', 'field_5f36e56bd7e65'),
(665, 72, 'team_0_linkedin_url', '#'),
(666, 72, '_team_0_linkedin_url', 'field_5f36e581d7e66'),
(667, 72, 'team_1_name', 'Manoj Punchihewa'),
(668, 72, '_team_1_name', 'field_5f36e524d7e61'),
(669, 72, 'team_1_image', '69'),
(670, 72, '_team_1_image', 'field_5f36e539d7e62'),
(671, 72, 'team_1_position', 'Director'),
(672, 72, '_team_1_position', 'field_5f36e54cd7e63'),
(673, 72, 'team_1_description', '<p class=\"theme-description\">Manoj Punchihewa is an entrepreneur with ventures in both USA and Sri Lanka. He received a BSc in Chemical Engineering from the University of Moratuwa, and an MBA from the University of Colombo. Manoj started his career at Unilever where he obtained extensive experience in all manufacturing related activities including Product & process development, manufacturing management, Quality, Engineering & Maintenance, Safety, budgets, cost accounting and Capital investments. He worked in three Unilever personal care product plants as a Plant Manager/Engineer before moving to USA, where he first worked at Desert Whale Jojoba Company as Head of operations managing a cosmetic product manufacturing plant and a 2000-acre Jojoba Plantation.  Then he moved to Koppers Inc. and headed their largest chemical plant. </p>\r\n'),
(674, 72, '_team_1_description', 'field_5f36e55cd7e64'),
(675, 72, 'team_1_facebook_url', '#'),
(676, 72, '_team_1_facebook_url', 'field_5f36e56bd7e65'),
(677, 72, 'team_1_linkedin_url', '#'),
(678, 72, '_team_1_linkedin_url', 'field_5f36e581d7e66'),
(679, 72, 'team', '2'),
(680, 72, '_team', 'field_5f36e511d7e60');

-- --------------------------------------------------------

--
-- Table structure for table `gene_posts`
--

CREATE TABLE `gene_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_posts`
--

INSERT INTO `gene_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-20 05:40:18', '2020-07-20 05:40:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-07-20 05:40:18', '2020-07-20 05:40:18', '', 0, 'http://localhost/genelabs/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-20 05:40:18', '2020-07-20 05:40:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/genelabs/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-07-20 05:40:18', '2020-07-20 05:40:18', '', 0, 'http://localhost/genelabs/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-20 05:40:18', '2020-07-20 05:40:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/genelabs.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-20 05:40:18', '2020-07-20 05:40:18', '', 0, 'http://localhost/genelabs/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-08-11 12:23:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-08-11 12:23:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/genelabs/?p=5', 0, 'post', '', 0),
(6, 1, '2020-08-11 13:27:00', '2020-08-11 13:27:00', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-08-13 12:35:46', '2020-08-13 12:35:46', '', 0, 'http://localhost/genelabs/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-08-11 13:27:00', '2020-08-11 13:27:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-08-11 13:27:00', '2020-08-11 13:27:00', '', 6, 'http://localhost/genelabs/index.php/2020/08/11/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-08-13 04:39:55', '2020-08-13 04:39:55', '', 'OurTeam', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2020-08-14 19:48:47', '2020-08-14 19:48:47', '', 0, 'http://localhost/genelabs/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-08-13 04:39:55', '2020-08-13 04:39:55', '', 'OurTeam', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-08-13 04:39:55', '2020-08-13 04:39:55', '', 8, 'http://localhost/genelabs/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-08-13 04:51:01', '2020-08-13 04:51:01', '', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2020-08-13 04:51:45', '2020-08-13 04:51:45', '', 0, 'http://localhost/genelabs/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-08-13 04:51:01', '2020-08-13 04:51:01', '', 'Profile', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-08-13 04:51:01', '2020-08-13 04:51:01', '', 11, 'http://localhost/genelabs/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-08-13 05:31:34', '2020-08-13 05:31:34', '', 'Technology', '', 'publish', 'closed', 'closed', '', 'technology', '', '', '2020-08-13 05:31:34', '2020-08-13 05:31:34', '', 0, 'http://localhost/genelabs/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-08-13 05:31:34', '2020-08-13 05:31:34', '', 'Technology', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-08-13 05:31:34', '2020-08-13 05:31:34', '', 13, 'http://localhost/genelabs/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-08-13 05:35:45', '2020-08-13 05:35:45', '', 'Our Tests', '', 'publish', 'closed', 'closed', '', 'our-tests', '', '', '2020-08-14 18:10:49', '2020-08-14 18:10:49', '', 0, 'http://localhost/genelabs/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-08-13 05:35:45', '2020-08-13 05:35:45', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-13 05:35:45', '2020-08-13 05:35:45', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-08-13 07:02:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-08-13 07:02:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/genelabs/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-08-13 07:03:24', '2020-08-13 07:03:24', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-08-13 07:03:24', '2020-08-13 07:03:24', '', 0, 'http://localhost/genelabs/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-08-13 07:03:24', '2020-08-13 07:03:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-08-13 07:03:24', '2020-08-13 07:03:24', '', 18, 'http://localhost/genelabs/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Front Page', 'front-page', 'publish', 'closed', 'closed', '', 'group_5f34e70671ec1', '', '', '2020-08-13 12:07:48', '2020-08-13 12:07:48', '', 0, 'http://localhost/genelabs/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Hero Slider', 'hero_slider', 'publish', 'closed', 'closed', '', 'field_5f34e839302a0', '', '', '2020-08-13 07:17:35', '2020-08-13 07:17:35', '', 20, 'http://localhost/genelabs/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mini title', 'mini_title', 'publish', 'closed', 'closed', '', 'field_5f34e850302a1', '', '', '2020-08-13 07:17:35', '2020-08-13 07:17:35', '', 21, 'http://localhost/genelabs/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hero Title', 'hero_title', 'publish', 'closed', 'closed', '', 'field_5f34e894302a2', '', '', '2020-08-13 07:21:48', '2020-08-13 07:21:48', '', 21, 'http://localhost/genelabs/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hero Description', 'hero_description', 'publish', 'closed', 'closed', '', 'field_5f34e8c6302a3', '', '', '2020-08-13 07:17:35', '2020-08-13 07:17:35', '', 21, 'http://localhost/genelabs/?post_type=acf-field&p=24', 2, 'acf-field', '', 0),
(25, 1, '2020-08-13 07:17:35', '2020-08-13 07:17:35', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Slider image', 'slider_image', 'publish', 'closed', 'closed', '', 'field_5f34e8eb302a4', '', '', '2020-08-13 07:17:35', '2020-08-13 07:17:35', '', 21, 'http://localhost/genelabs/?post_type=acf-field&p=25', 3, 'acf-field', '', 0),
(26, 1, '2020-08-13 10:03:40', '2020-08-13 10:03:40', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Introducing Tests', 'introducing_tests', 'publish', 'closed', 'closed', '', 'field_5f350052f0241', '', '', '2020-08-13 10:03:40', '2020-08-13 10:03:40', '', 20, 'http://localhost/genelabs/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 1, '2020-08-13 10:03:40', '2020-08-13 10:03:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5f350d90f0242', '', '', '2020-08-13 10:03:40', '2020-08-13 10:03:40', '', 26, 'http://localhost/genelabs/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2020-08-13 10:03:40', '2020-08-13 10:03:40', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'read more url', 'read_more_url', 'publish', 'closed', 'closed', '', 'field_5f350fa3f0243', '', '', '2020-08-13 10:03:40', '2020-08-13 10:03:40', '', 26, 'http://localhost/genelabs/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2020-08-13 10:03:40', '2020-08-13 10:03:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5f350fddf0244', '', '', '2020-08-13 10:03:40', '2020-08-13 10:03:40', '', 26, 'http://localhost/genelabs/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(30, 1, '2020-08-13 12:07:48', '2020-08-13 12:07:48', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:29:\"Introducing lable on each tab\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Introducing Lable', 'introducing_lable', 'publish', 'closed', 'closed', '', 'field_5f352cb21f4aa', '', '', '2020-08-13 12:07:48', '2020-08-13 12:07:48', '', 26, 'http://localhost/genelabs/?post_type=acf-field&p=30', 3, 'acf-field', '', 0),
(31, 1, '2020-08-13 12:17:47', '2020-08-13 12:17:47', '', 'service-item-img-1', '', 'inherit', 'open', 'closed', '', 'service-item-img-1', '', '', '2020-08-13 12:17:47', '2020-08-13 12:17:47', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-08-13 12:18:23', '2020-08-13 12:18:23', '', 'service-item-img-6', '', 'inherit', 'open', 'closed', '', 'service-item-img-6', '', '', '2020-08-13 12:18:23', '2020-08-13 12:18:23', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-08-13 12:18:24', '2020-08-13 12:18:24', '', 'service-item-img-5', '', 'inherit', 'open', 'closed', '', 'service-item-img-5', '', '', '2020-08-13 12:18:24', '2020-08-13 12:18:24', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-08-13 12:18:24', '2020-08-13 12:18:24', '', 'service-item-img-4', '', 'inherit', 'open', 'closed', '', 'service-item-img-4', '', '', '2020-08-13 12:18:24', '2020-08-13 12:18:24', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-08-13 12:18:25', '2020-08-13 12:18:25', '', 'service-item-img-3', '', 'inherit', 'open', 'closed', '', 'service-item-img-3', '', '', '2020-08-13 12:18:25', '2020-08-13 12:18:25', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-08-13 12:18:26', '2020-08-13 12:18:26', '', 'service-item-img-2', '', 'inherit', 'open', 'closed', '', 'service-item-img-2', '', '', '2020-08-13 12:18:26', '2020-08-13 12:18:26', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/service-item-img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-08-13 12:19:23', '2020-08-13 12:19:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-08-13 12:19:23', '2020-08-13 12:19:23', '', 6, 'http://localhost/genelabs/6-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-08-13 12:21:24', '2020-08-13 12:21:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-08-13 12:21:24', '2020-08-13 12:21:24', '', 6, 'http://localhost/genelabs/6-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-08-13 12:35:33', '2020-08-13 12:35:33', '', 'slider-img-1', '', 'inherit', 'open', 'closed', '', 'slider-img-1', '', '', '2020-08-13 12:35:33', '2020-08-13 12:35:33', '', 6, 'http://localhost/genelabs/wp-content/uploads/2020/08/slider-img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-08-13 12:35:46', '2020-08-13 12:35:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-08-13 12:35:46', '2020-08-13 12:35:46', '', 6, 'http://localhost/genelabs/6-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-08-14 05:38:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-08-14 05:38:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/genelabs/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2020-08-14 05:38:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-08-14 05:38:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/genelabs/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2020-08-14 05:38:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-08-14 05:38:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/genelabs/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-08-14 05:39:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-08-14 05:39:01', '0000-00-00 00:00:00', '', 0, '', 1, 'nav_menu_item', '', 0),
(46, 1, '2020-08-14 05:42:30', '2020-08-14 05:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-08-14 05:42:43', '2020-08-14 05:42:43', '', 0, 'http://localhost/genelabs/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2020-08-14 05:42:30', '2020-08-14 05:42:30', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-08-14 05:42:43', '2020-08-14 05:42:43', '', 0, 'http://localhost/genelabs/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2020-08-14 17:15:22', '2020-08-14 17:15:22', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"template-our-tests.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Our Tests', 'our-tests', 'publish', 'closed', 'closed', '', 'group_5f36c4ffd128c', '', '', '2020-08-14 19:23:31', '2020-08-14 19:23:31', '', 0, 'http://localhost/genelabs/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2020-08-14 17:15:22', '2020-08-14 17:15:22', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Tests', 'tests', 'publish', 'closed', 'closed', '', 'field_5f36c508e7d7b', '', '', '2020-08-14 17:15:22', '2020-08-14 17:15:22', '', 48, 'http://localhost/genelabs/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2020-08-14 17:15:23', '2020-08-14 17:15:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Test heading', 'test_heading', 'publish', 'closed', 'closed', '', 'field_5f36c52ce7d7c', '', '', '2020-08-14 17:15:23', '2020-08-14 17:15:23', '', 49, 'http://localhost/genelabs/?post_type=acf-field&p=50', 0, 'acf-field', '', 0),
(51, 1, '2020-08-14 17:15:23', '2020-08-14 17:15:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Test Description', 'test_description', 'publish', 'closed', 'closed', '', 'field_5f36c663e7d7d', '', '', '2020-08-14 19:23:31', '2020-08-14 19:23:31', '', 49, 'http://localhost/genelabs/?post_type=acf-field&#038;p=51', 1, 'acf-field', '', 0),
(52, 1, '2020-08-14 17:23:12', '2020-08-14 17:23:12', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 17:23:12', '2020-08-14 17:23:12', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-08-14 17:23:30', '2020-08-14 17:23:30', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 17:23:30', '2020-08-14 17:23:30', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-08-14 17:27:33', '2020-08-14 17:27:33', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 17:27:33', '2020-08-14 17:27:33', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-08-14 18:00:44', '2020-08-14 18:00:44', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 18:00:44', '2020-08-14 18:00:44', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-08-14 18:01:31', '2020-08-14 18:01:31', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 18:01:31', '2020-08-14 18:01:31', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-08-14 18:03:51', '2020-08-14 18:03:51', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 18:03:51', '2020-08-14 18:03:51', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-08-14 18:04:49', '2020-08-14 18:04:49', '', 'cancer-hotspot-panel', '', 'inherit', 'open', 'closed', '', 'cancer-hotspot-panel', '', '', '2020-08-14 18:04:49', '2020-08-14 18:04:49', '', 0, 'http://localhost/genelabs/wp-content/uploads/2020/08/cancer-hotspot-panel.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-08-14 18:05:07', '2020-08-14 18:05:07', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 18:05:07', '2020-08-14 18:05:07', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-08-14 18:10:49', '2020-08-14 18:10:49', '', 'Our Tests', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-08-14 18:10:49', '2020-08-14 18:10:49', '', 15, 'http://localhost/genelabs/15-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-08-14 19:27:17', '2020-08-14 19:27:17', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"template-ourteam.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'group_5f36e50487151', '', '', '2020-08-14 19:45:19', '2020-08-14 19:45:19', '', 0, 'http://localhost/genelabs/?post_type=acf-field-group&#038;p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2020-08-14 19:27:17', '2020-08-14 19:27:17', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Team', 'team', 'publish', 'closed', 'closed', '', 'field_5f36e511d7e60', '', '', '2020-08-14 19:27:17', '2020-08-14 19:27:17', '', 61, 'http://localhost/genelabs/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2020-08-14 19:27:17', '2020-08-14 19:27:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Name', 'name', 'publish', 'closed', 'closed', '', 'field_5f36e524d7e61', '', '', '2020-08-14 19:27:17', '2020-08-14 19:27:17', '', 62, 'http://localhost/genelabs/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 1, '2020-08-14 19:27:17', '2020-08-14 19:27:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5f36e539d7e62', '', '', '2020-08-14 19:27:17', '2020-08-14 19:27:17', '', 62, 'http://localhost/genelabs/?post_type=acf-field&p=64', 1, 'acf-field', '', 0),
(65, 1, '2020-08-14 19:27:17', '2020-08-14 19:27:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'position', 'position', 'publish', 'closed', 'closed', '', 'field_5f36e54cd7e63', '', '', '2020-08-14 19:27:17', '2020-08-14 19:27:17', '', 62, 'http://localhost/genelabs/?post_type=acf-field&p=65', 2, 'acf-field', '', 0),
(66, 1, '2020-08-14 19:27:18', '2020-08-14 19:27:18', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5f36e55cd7e64', '', '', '2020-08-14 19:45:19', '2020-08-14 19:45:19', '', 62, 'http://localhost/genelabs/?post_type=acf-field&#038;p=66', 3, 'acf-field', '', 0),
(67, 1, '2020-08-14 19:27:18', '2020-08-14 19:27:18', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook URL', 'facebook_url', 'publish', 'closed', 'closed', '', 'field_5f36e56bd7e65', '', '', '2020-08-14 19:27:18', '2020-08-14 19:27:18', '', 62, 'http://localhost/genelabs/?post_type=acf-field&p=67', 4, 'acf-field', '', 0),
(68, 1, '2020-08-14 19:27:18', '2020-08-14 19:27:18', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'linkedin URL', 'linkedin_url', 'publish', 'closed', 'closed', '', 'field_5f36e581d7e66', '', '', '2020-08-14 19:27:18', '2020-08-14 19:27:18', '', 62, 'http://localhost/genelabs/?post_type=acf-field&p=68', 5, 'acf-field', '', 0),
(69, 1, '2020-08-14 19:48:11', '2020-08-14 19:48:11', '', 'our-team-img-2', '', 'inherit', 'open', 'closed', '', 'our-team-img-2', '', '', '2020-08-14 19:48:33', '2020-08-14 19:48:33', '', 8, 'http://localhost/genelabs/wp-content/uploads/2020/08/our-team-img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-08-14 19:48:12', '2020-08-14 19:48:12', '', 'our-team-img', '', 'inherit', 'open', 'closed', '', 'our-team-img', '', '', '2020-08-14 19:48:32', '2020-08-14 19:48:32', '', 8, 'http://localhost/genelabs/wp-content/uploads/2020/08/our-team-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-08-14 19:48:32', '2020-08-14 19:48:32', '', 'OurTeam', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-08-14 19:48:32', '2020-08-14 19:48:32', '', 8, 'http://localhost/genelabs/8-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-08-14 19:48:47', '2020-08-14 19:48:47', '', 'OurTeam', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-08-14 19:48:47', '2020-08-14 19:48:47', '', 8, 'http://localhost/genelabs/8-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gene_termmeta`
--

CREATE TABLE `gene_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gene_terms`
--

CREATE TABLE `gene_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_terms`
--

INSERT INTO `gene_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gene_term_relationships`
--

CREATE TABLE `gene_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_term_relationships`
--

INSERT INTO `gene_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(46, 2, 0),
(47, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gene_term_taxonomy`
--

CREATE TABLE `gene_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_term_taxonomy`
--

INSERT INTO `gene_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gene_usermeta`
--

CREATE TABLE `gene_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_usermeta`
--

INSERT INTO `gene_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'genelabs_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'gene_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'gene_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"899bed439f6d9fcb0ac4e7d2b26a28cceff4a53266d8facbe140de7a1fe5309f\";a:4:{s:10:\"expiration\";i:1597321392;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1597148592;}s:64:\"daa089f64df0c88258414c086bcd86da639ae696d74e9cc6827dccd0b87655eb\";a:4:{s:10:\"expiration\";i:1598502637;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.125 Safari/537.36\";s:5:\"login\";i:1597293037;}}'),
(17, 1, 'gene_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'gene_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'gene_user-settings-time', '1597428280'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `gene_users`
--

CREATE TABLE `gene_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gene_users`
--

INSERT INTO `gene_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'genelabs_admin', '$P$BM26JSl55h7Yfmi0XHq0eCeuYuhJax.', 'genelabs_admin', 'ravindubimsara007@gmail.com', 'http://localhost/genelabs', '2020-07-20 05:40:16', '', 0, 'genelabs_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gene_commentmeta`
--
ALTER TABLE `gene_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gene_comments`
--
ALTER TABLE `gene_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `gene_links`
--
ALTER TABLE `gene_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `gene_options`
--
ALTER TABLE `gene_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `gene_postmeta`
--
ALTER TABLE `gene_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gene_posts`
--
ALTER TABLE `gene_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `gene_termmeta`
--
ALTER TABLE `gene_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gene_terms`
--
ALTER TABLE `gene_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `gene_term_relationships`
--
ALTER TABLE `gene_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `gene_term_taxonomy`
--
ALTER TABLE `gene_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `gene_usermeta`
--
ALTER TABLE `gene_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `gene_users`
--
ALTER TABLE `gene_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gene_commentmeta`
--
ALTER TABLE `gene_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gene_comments`
--
ALTER TABLE `gene_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gene_links`
--
ALTER TABLE `gene_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gene_options`
--
ALTER TABLE `gene_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `gene_postmeta`
--
ALTER TABLE `gene_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- AUTO_INCREMENT for table `gene_posts`
--
ALTER TABLE `gene_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `gene_termmeta`
--
ALTER TABLE `gene_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gene_terms`
--
ALTER TABLE `gene_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gene_term_taxonomy`
--
ALTER TABLE `gene_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gene_usermeta`
--
ALTER TABLE `gene_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gene_users`
--
ALTER TABLE `gene_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
