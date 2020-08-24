-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2020 at 09:22 PM
-- Server version: 5.7.17-log
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'تقنية المعلومات', NULL, NULL),
(2, 'هندسة البرمجيات', NULL, NULL),
(3, 'كيمياء', '2020-08-24 15:43:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-08-23 20:27:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com سجل دخل من رقم آيبي 127.0.0.1', '', 1, '2020-08-23 20:27:37', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'تعديل ابراهيم السنهوري في ادارة المستخدمين', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>ابراهيم السنهوري</td></tr><tr><td>photo</td><td></td><td>uploads/1/2020-08/29825827_20190329102815.jpeg</td></tr><tr><td>password</td><td>$2y$10$.ko.hMC5S.NoOEijbd2KM.x.EKEYR0giGFJs.QxUg1qJwYt5zzBCa</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2020-08-23 20:36:24', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com تسجيل خروج', '', 1, '2020-08-23 20:36:30', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com تسجيل خروج', '', 1, '2020-08-23 20:36:31', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com سجل دخل من رقم آيبي 127.0.0.1', '', 1, '2020-08-23 20:36:35', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com سجل دخل من رقم آيبي 127.0.0.1', '', 1, '2020-08-24 04:36:50', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/18', 'حذف خدمة في تطبيقات النظام', '', 1, '2020-08-24 05:05:45', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'اضافة بيانات جديدة ادارة المشاريع في ادارة القوائم', '', 1, '2020-08-24 05:06:23', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'تعديل ادارة المشاريع في ادارة القوائم', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-08-24 05:07:31', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'اضافة بيانات جديدة ادارة المستخدمين في ادارة القوائم', '', 1, '2020-08-24 05:08:15', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'تعديل ادارة المستخدمين في ادارة القوائم', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-08-24 05:08:39', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'حذف خدمة العملاء في تطبيقات النظام', '', 1, '2020-08-24 05:39:35', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'اضافة بيانات جديدة احصائيات العملاء في الاحصائيات والرسوم البيانية', '', 1, '2020-08-24 05:52:07', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'اضافة بيانات جديدة احصائيات العملاء في ادارة القوائم', '', 1, '2020-08-24 06:09:28', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'تعديل احصائيات العملاء في ادارة القوائم', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-08-24 06:09:44', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/20', 'حذف الخبراء في تطبيقات النظام', '', 1, '2020-08-24 06:11:44', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/22', 'حذف المستثمرون في تطبيقات النظام', '', 1, '2020-08-24 06:11:57', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/types/add-save', 'اضافة بيانات جديدة النوع الاول في انواع المشاريع', '', 1, '2020-08-24 08:57:00', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/types/add-save', 'اضافة بيانات جديدة ibrahim في انواع المشاريع', '', 1, '2020-08-24 08:57:08', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/16', 'حذف انواع المشاريع في تطبيقات النظام', '', 1, '2020-08-24 08:58:48', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/types26/add-save', 'اضافة بيانات جديدة النوع الثالث في انواع المشاريع', '', 1, '2020-08-24 09:00:18', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/types26/delete/2', 'حذف ibrahim في انواع المشاريع', '', 1, '2020-08-24 09:00:24', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/17', 'حذف المشاريع المتاحة في تطبيقات النظام', '', 1, '2020-08-24 09:01:18', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/notifications/delete/2', 'حذف هناك عميل بحاجة الى توثيق في Notifications', '', 1, '2020-08-24 09:06:00', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/notifications/delete/1', 'حذف هناك عميل بحاجة الى توثيق في Notifications', '', 1, '2020-08-24 09:06:04', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'اضافة بيانات جديدة الاحصائيات العامة في الاحصائيات والرسوم البيانية', '', 1, '2020-08-24 09:24:07', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/edit-save/2', 'تعديل الاحصائيات العامة في الاحصائيات والرسوم البيانية', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>alahsaeyat-alaaam</td><td></td></tr></tbody></table>', 1, '2020-08-24 09:27:37', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'اضافة بيانات جديدة احصائيات في ادارة القوائم', '', 1, '2020-08-24 09:28:13', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'تعديل احصائيات في ادارة القوائم', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-08-24 09:28:47', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com سجل دخل من رقم آيبي 127.0.0.1', '', 1, '2020-08-24 15:22:53', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'اضافة بيانات جديدة كيمياء في تخصصات المشروع', '', 1, '2020-08-24 15:43:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'تخصصات المشروع', 'Route', 'AdminCategories1ControllerGetIndex', NULL, 'fa fa-flag', 8, 1, 0, 1, 4, '2020-08-24 04:37:38', NULL),
(2, 'المدن', 'Route', 'AdminCities1ControllerGetIndex', NULL, 'fa fa-map', 8, 1, 0, 1, 3, '2020-08-24 04:38:34', NULL),
(3, 'وسوم المشاريع', 'Route', 'AdminTags1ControllerGetIndex', NULL, 'fa fa-hashtag', 8, 1, 0, 1, 2, '2020-08-24 04:39:40', NULL),
(8, 'ادارة المشاريع', 'Route', '#', 'normal', 'fa fa-road', 0, 1, 0, 1, 1, '2020-08-24 05:06:23', '2020-08-24 05:07:31'),
(9, 'ادارة المستخدمين', 'Route', '#', 'normal', 'fa fa-users', 0, 1, 0, 1, 2, '2020-08-24 05:08:15', '2020-08-24 05:08:39'),
(10, 'المبتكرون', 'Route', 'AdminUsers191ControllerGetIndex', NULL, 'fa fa-user-secret', 9, 1, 0, 1, 1, '2020-08-24 05:09:34', NULL),
(12, 'خدمة العملاء', 'Route', 'AdminContacts21ControllerGetIndex', NULL, 'fa fa-heart', 9, 1, 0, 1, 4, '2020-08-24 05:40:32', NULL),
(13, 'احصائيات العملاء', 'Statistic', 'statistic_builder/show/ahsaeyat-alaamla', 'normal', 'fa fa-signal', 9, 1, 0, 1, 6, '2020-08-24 06:09:27', '2020-08-24 06:09:43'),
(15, 'الخبراء', 'Route', 'AdminUsers23ControllerGetIndex', NULL, 'fa fa-user-md', 9, 1, 0, 1, 2, '2020-08-24 06:13:05', NULL),
(16, 'المستثمرون', 'Route', 'AdminUsers24ControllerGetIndex', NULL, 'fa fa-user-plus', 9, 1, 0, 1, 3, '2020-08-24 06:14:59', NULL),
(17, 'صلاحيات المستخدمين', 'Route', 'AdminRolesControllerGetIndex', NULL, 'fa fa-user-times', 9, 1, 0, 1, 5, '2020-08-24 06:18:51', NULL),
(18, 'انواع المشاريع', 'Route', 'AdminTypes26ControllerGetIndex', NULL, 'fa fa-star', 8, 1, 0, 1, 5, '2020-08-24 08:59:14', NULL),
(19, 'المشاريع المتاحة', 'Route', 'AdminProjects27ControllerGetIndex', NULL, 'fa fa-road', 8, 1, 0, 1, 1, '2020-08-24 09:01:53', NULL),
(20, 'احصائيات', 'Statistic', 'statistic_builder/show/alahsaeyat-alaaam', 'normal', 'fa fa-home', 0, 1, 1, 1, NULL, '2020-08-24 09:28:13', '2020-08-24 09:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(9, 8, 1),
(11, 9, 1),
(12, 10, 1),
(13, 11, 1),
(14, 12, 1),
(16, 13, 1),
(17, 14, 1),
(18, 15, 1),
(19, 16, 1),
(20, 17, 1),
(21, 18, 1),
(22, 19, 1),
(23, NULL, 1),
(24, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(3, 'صلاحيات الوصول', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(4, 'ادارة المستخدمين', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-08-23 20:27:11', NULL, NULL),
(5, 'اعدادات النظام', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(6, 'تطبيقات النظام', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(7, 'ادارة القوائم', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(8, 'قوالب البريد الإلكتروني', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(9, 'الاحصائيات والرسوم البيانية', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(10, 'انشاء API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(11, 'سجلات النظام', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-08-23 20:27:11', NULL, NULL),
(12, 'تخصصات المشروع', 'fa fa-flag', 'categories', 'categories', 'AdminCategories1Controller', 0, 0, '2020-08-24 04:37:38', NULL, NULL),
(13, 'المدن', 'fa fa-map', 'cities', 'cities', 'AdminCities1Controller', 0, 0, '2020-08-24 04:38:33', NULL, NULL),
(14, 'وسوم المشاريع', 'fa fa-hashtag', 'tags', 'tags', 'AdminTags1Controller', 0, 0, '2020-08-24 04:39:40', NULL, NULL),
(15, 'خدمة العملاء', 'fa fa-heart', 'contacts', 'contacts', 'AdminContacts1Controller', 0, 0, '2020-08-24 04:40:45', NULL, '2020-08-24 05:39:35'),
(16, 'انواع المشاريع', 'fa fa-star', 'types', 'types', 'AdminTypes1Controller', 0, 0, '2020-08-24 04:41:46', NULL, '2020-08-24 08:58:48'),
(17, 'المشاريع المتاحة', 'fa fa-road', 'projects', 'projects', 'AdminProjects1Controller', 0, 0, '2020-08-24 04:42:43', NULL, '2020-08-24 09:01:18'),
(18, 'خدمة', 'fa fa-heart', 'contacts18', 'contacts', 'AdminContacts18Controller', 0, 0, '2020-08-24 04:48:00', NULL, '2020-08-24 05:05:45'),
(19, 'المبتكرون', 'fa fa-user-secret', 'users19', 'users', 'AdminUsers191Controller', 0, 0, '2020-08-24 05:09:34', NULL, NULL),
(20, 'الخبراء', 'fa fa-user-md', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2020-08-24 05:11:30', NULL, '2020-08-24 06:11:44'),
(21, 'خدمة العملاء', 'fa fa-heart', 'contacts21', 'contacts', 'AdminContacts21Controller', 0, 0, '2020-08-24 05:40:31', NULL, NULL),
(22, 'المستثمرون', 'fa fa-money', 'users23', 'users', 'AdminCmsUsers22Controller', 0, 0, '2020-08-24 06:10:26', NULL, '2020-08-24 06:11:58'),
(23, 'الخبراء', 'fa fa-user-md', 'users23', 'users', 'AdminUsers23Controller', 0, 0, '2020-08-24 06:13:05', NULL, NULL),
(24, 'المستثمرون', 'fa fa-user-plus', 'users24', 'users', 'AdminUsers24Controller', 0, 0, '2020-08-24 06:14:59', NULL, NULL),
(25, 'صلاحيات المستخدمين', 'fa fa-user-times', 'roles', 'roles', 'AdminRolesController', 0, 0, '2020-08-24 06:18:50', NULL, NULL),
(26, 'انواع المشاريع', 'fa fa-star', 'types26', 'types', 'AdminTypes26Controller', 0, 0, '2020-08-24 08:59:14', NULL, NULL),
(27, 'المشاريع المتاحة', 'fa fa-road', 'projects27', 'projects', 'AdminProjects27Controller', 0, 0, '2020-08-24 09:01:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(3, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:37:33', NULL),
(4, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:46:02', NULL),
(5, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:47:46', NULL),
(6, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:50:38', NULL),
(7, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:53:04', NULL),
(8, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:54:15', NULL),
(9, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:57:09', NULL),
(10, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 09:58:32', NULL),
(11, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:00:17', NULL),
(12, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:10:48', NULL),
(13, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:19:44', NULL),
(14, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:21:30', NULL),
(15, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:23:53', NULL),
(16, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:30:38', NULL),
(17, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:33:03', NULL),
(18, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:34:44', NULL),
(19, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:37:42', NULL),
(20, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:37:55', NULL),
(21, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:43:58', NULL),
(22, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:48:13', NULL),
(23, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:48:26', NULL),
(24, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:51:07', NULL),
(25, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 10:58:43', NULL),
(26, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:04:05', NULL),
(27, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:04:24', NULL),
(28, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:09:20', NULL),
(29, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:09:34', NULL),
(30, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:14:39', NULL),
(31, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:15:05', NULL),
(32, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 11:18:29', NULL),
(33, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 12:24:07', NULL),
(34, 1, 'هناك عميل بحاجة الى توثيق', 'http://127.0.0.1:8000/admin/users18', 0, '2020-08-24 12:25:03', NULL),
(35, 1, 'هناك عميل بحاجة الى توثيق', 'http://localhost:8000/admin/users18', 0, '2020-08-24 15:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2020-08-23 20:27:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(2, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(3, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(4, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(5, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(6, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(7, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(8, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(9, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(10, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(11, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(12, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-08-23 20:27:11', NULL, 'شاشة الدخول والتسجيل', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-08-23 20:27:11', NULL, 'شاشة الدخول والتسجيل', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2020-08-23 20:27:11', NULL, 'شاشة الدخول والتسجيل', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات البريد', 'SMTP Password'),
(10, 'appname', 'منصة ابتكار', 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-08/5331fd0742242aad2589fd4ebd933a50.png', 'upload_image', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Logo'),
(13, 'favicon', 'uploads/2020-08/6c1ae0b7bdb51089851b40b3f4831561.png', 'upload_image', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-08-23 20:27:11', NULL, 'اعدادات عامة', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'احصائيات العملاء', 'ahsaeyat-alaamla', '2020-08-24 05:52:07', NULL),
(2, 'الاحصائيات العامة', 'alahsaeyat-alaaam', '2020-08-24 09:24:07', '2020-08-24 09:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '31314a9c22790d40329d64611d51354c', 'smallbox', 'area1', 0, NULL, '{\"name\":\"\\u0627\\u0644\\u0645\\u0628\\u062a\\u0643\\u0631\\u0648\\u0646\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"SELECT COUNT(name)\\r\\nFROM users\\r\\nWHERE roles_id = 1;\"}', '2020-08-24 05:54:26', NULL),
(2, 1, '7ce2241c79d1f5cf3016b93aa5e26883', 'smallbox', 'area2', 0, NULL, '{\"name\":\"\\u0627\\u0644\\u062e\\u0628\\u0631\\u0627\\u0621\",\"icon\":\"ion-trophy\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"SELECT COUNT(name)\\r\\nFROM users\\r\\nWHERE roles_id = 2;\"}', '2020-08-24 06:00:28', NULL),
(3, 1, '2c45b0916df97504997575522b9562ae', 'smallbox', 'area3', 0, NULL, '{\"name\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631\\u0648\\u0646\",\"icon\":\"ion-cash\",\"color\":\"bg-aqua\",\"link\":\"#\",\"sql\":\"SELECT COUNT(name)\\r\\nFROM users\\r\\nWHERE roles_id = 3;\"}', '2020-08-24 06:01:36', NULL),
(4, 2, '4d4a510ce223abf26a945aed6edf9f6a', 'smallbox', 'area1', 0, NULL, '{\"name\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\",\"icon\":\"ion-calculator\",\"color\":\"bg-aqua\",\"link\":\"#\",\"sql\":\"SELECT COUNT(name)\\r\\nFROM projects;\"}', '2020-08-24 09:24:18', NULL),
(5, 2, '8fe84189f21581de1c193056853981f5', 'smallbox', 'area2', 0, NULL, '{\"name\":\"\\u0627\\u0644\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a\",\"icon\":\"ion-cash\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":null}', '2020-08-24 09:26:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'ابراهيم السنهوري', 'uploads/1/2020-08/29825827_20190329102815.jpeg', 'admin@crudbooster.com', '$2y$10$.ko.hMC5S.NoOEijbd2KM.x.EKEYR0giGFJs.QxUg1qJwYt5zzBCa', 1, '2020-08-23 20:27:11', '2020-08-23 20:36:24', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `query`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ibrahim', 'developer', 'ibrahimelsanhouri@gmail.com', '2020-08-24 05:38:19', '2020-08-24 05:38:19');

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
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `study` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `users_id` int(10) UNSIGNED NOT NULL,
  `categories_id` int(11) NOT NULL,
  `types_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `prototype` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `sales` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `marketing` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `design` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `commerce` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `licenses` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `summary`, `details`, `file`, `study`, `users_id`, `categories_id`, `types_id`, `created_at`, `updated_at`, `cost`, `image`, `operation`, `prototype`, `sales`, `marketing`, `design`, `commerce`, `licenses`) VALUES
(1, 'متجر الكترون', 'متجر الكتروني متجر الكتروني  رمتجر الكتروني متجر الكتروني', 'متجر الكتروني متجر الكتروني  رمتجر الكتروني متجر الكتروني  متجر الكتروني متجر الكتروني  رمتجر الكتروني متجر الكتروني  متجر الكتروني متجر الكتروني  رمتجر الكتروني متجر الكتروني', 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\phpDEA1.tmp', 'off', 10, 2, 2, '2020-08-23 17:09:36', '2020-08-23 17:09:36', 50000, 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\phpDEA2.tmp', 'on', 'off', 'on', 'off', 'off', 'off', 'on'),
(2, 'احصائيات العملاء', 'احصائيات العملاء', 'هل يوجد دراسات فنية و تراخيص ؟\r\n\r\n  هل يوجد دراسات فنية و تراخيص ؟\r\n\r\n  هل يوجد دراسات فنية و تراخيص ؟', 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\phpECE2.tmp', 'off', 10, 2, 1, '2020-08-24 09:15:09', '2020-08-24 09:15:09', 300000, 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\phpED02.tmp', 'off', 'off', 'on', 'off', 'on', 'on', 'on'),
(3, 'تطبيق توصيل', 'تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل', 'تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل تطبيق توصيل', 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\php23E1.tmp', 'on', 16, 2, 1, '2020-08-24 16:03:54', '2020-08-24 16:03:54', 100000, 'C:\\Users\\Ibrahim Elsanhouri\\AppData\\Local\\Temp\\php23F1.tmp', 'on', 'off', 'on', 'off', 'on', 'on', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'مبتكر', '2020-08-23 23:39:49', '2020-08-23 23:39:49'),
(2, 'خبير', '2020-08-23 23:39:49', '2020-08-23 23:39:49'),
(3, 'مستثمر', '2020-08-23 23:40:00', '2020-08-23 23:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'النوع الاول', '2020-08-24 08:57:00', NULL),
(3, 'النوع الثالث', '2020-08-24 09:00:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(10) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `password` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `categories_id`, `roles_id`, `password`, `active`, `verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'عبدالله المقبل', 'abdulla@gmail.com', 565579480, 1, 1, '$2y$10$29rwl2sgQXMObbDRdMkxS.s1zlQtNiU94wqA0VGzYbOhlWwfCIpBW', 1, 1, 'shlG3hcRMn3wUnGJ6oz1sGVirJ0sLneIEaKruufG4jugUYrNNvIsdh5xcthj', '2020-08-24 15:19:17', '2020-08-24 15:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(14, 16, 'DNHSzYBkei6rXvho6uxoGAPGpthvHXwscxFWDAgmIFdjp2WBBK', '2020-08-24 15:19:17', '2020-08-24 15:19:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
