-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2017 at 04:56 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karang`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Index', 'index', '2016-03-22 01:52:09', '2016-03-22 01:52:09'),
(3, 'Delete', 'delete', '2016-03-22 01:52:20', '2016-03-22 01:52:20'),
(4, 'Update', 'update', '2016-03-22 01:52:32', '2016-03-22 01:52:32'),
(5, 'View', 'view', '2016-03-22 01:52:43', '2016-03-22 01:52:43'),
(6, 'Create', 'create', '2016-03-22 01:52:49', '2016-03-22 01:52:49'),
(8, 'Publish UnPublish', 'publish', '2016-03-23 05:43:26', '2016-03-23 05:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `cruds`
--

CREATE TABLE `cruds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('y','n') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `title`, `controller`, `slug`, `order`, `icon`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard', 'DashboardController', 'dashboard', 1, '', NULL, NULL),
(2, NULL, 'Development', '#', 'development', 22, '', NULL, '2016-03-22 02:48:49'),
(3, 2, 'Menu', 'MenuController', 'menu', 1, '', NULL, NULL),
(9, 2, 'Action', 'ActionController', 'action', 2, '', '2016-03-22 00:47:57', '2016-03-22 00:47:57'),
(10, NULL, 'User', '#', 'user', 2, '', '2016-03-22 02:48:39', '2016-03-22 02:48:39'),
(11, 10, 'Role', 'RoleController', 'role', 1, '', '2016-03-22 02:49:40', '2016-03-22 02:49:40'),
(12, 10, 'Manage User', 'UserController', 'manage-user', 3, '', '2016-03-22 05:10:31', '2016-03-22 05:10:31'),
(13, 10, 'Profile', 'ProfileController', 'profile', 9, '', '2016-03-23 00:49:10', '2016-03-23 00:49:10'),
(14, NULL, 'Media Library', '#', 'media-library', 10, '', '2016-03-23 02:40:57', '2016-03-23 02:40:57'),
(15, 14, 'Image', 'ImageController', 'image', 1, '', '2016-03-23 02:41:14', '2016-03-23 02:41:14'),
(16, 2, 'Crud', 'CrudController', 'crud', 7, '', '2016-03-23 03:13:58', '2016-03-23 03:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_actions`
--

CREATE TABLE `menu_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_actions`
--

INSERT INTO `menu_actions` (`id`, `menu_id`, `action_id`, `created_at`, `updated_at`) VALUES
(12, 9, 2, '2016-03-22 02:46:45', '2016-03-22 02:46:45'),
(13, 9, 3, '2016-03-22 02:46:45', '2016-03-22 02:46:45'),
(14, 9, 4, '2016-03-22 02:46:45', '2016-03-22 02:46:45'),
(15, 9, 6, '2016-03-22 02:46:45', '2016-03-22 02:46:45'),
(16, 3, 2, '2016-03-22 02:47:20', '2016-03-22 02:47:20'),
(17, 3, 3, '2016-03-22 02:47:20', '2016-03-22 02:47:20'),
(18, 3, 4, '2016-03-22 02:47:20', '2016-03-22 02:47:20'),
(19, 3, 5, '2016-03-22 02:47:20', '2016-03-22 02:47:20'),
(20, 3, 6, '2016-03-22 02:47:20', '2016-03-22 02:47:20'),
(27, 11, 2, '2016-03-22 04:15:59', '2016-03-22 04:15:59'),
(28, 11, 3, '2016-03-22 04:15:59', '2016-03-22 04:15:59'),
(29, 11, 4, '2016-03-22 04:15:59', '2016-03-22 04:15:59'),
(30, 11, 5, '2016-03-22 04:15:59', '2016-03-22 04:15:59'),
(31, 11, 6, '2016-03-22 04:15:59', '2016-03-22 04:15:59'),
(32, 12, 2, '2016-03-22 05:10:49', '2016-03-22 05:10:49'),
(33, 12, 3, '2016-03-22 05:10:49', '2016-03-22 05:10:49'),
(34, 12, 4, '2016-03-22 05:10:49', '2016-03-22 05:10:49'),
(35, 12, 6, '2016-03-22 05:10:49', '2016-03-22 05:10:49'),
(36, 13, 2, '2016-03-23 00:49:23', '2016-03-23 00:49:23'),
(37, 15, 2, '2016-03-23 02:49:42', '2016-03-23 02:49:42'),
(42, 16, 2, '2016-03-23 05:45:37', '2016-03-23 05:45:37'),
(43, 16, 3, '2016-03-23 05:45:37', '2016-03-23 05:45:37'),
(44, 16, 4, '2016-03-23 05:45:37', '2016-03-23 05:45:37'),
(45, 16, 6, '2016-03-23 05:45:37', '2016-03-23 05:45:37'),
(46, 16, 8, '2016-03-23 05:45:38', '2016-03-23 05:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_21_085136_create_roles_table', 1),
('2016_03_21_085231_add_fields_in_users_table_part1', 1),
('2016_03_21_085759_create_menus_table', 1),
('2016_03_21_103405_add_field_order_in_menus_table', 1),
('2016_03_22_075205_create_actions_table', 1),
('2016_03_22_085343_create_menu_actions_table', 1),
('2016_03_22_112144_create_rights_table', 1),
('2016_03_22_124429_add_field_username_in_users_table', 1),
('2016_03_22_125816_edit_fk_role_id_in_users_table', 1),
('2016_03_23_100734_create_cruds_table', 1),
('2016_03_23_130035_create_user_activities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_action_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`id`, `role_id`, `menu_action_id`, `created_at`, `updated_at`) VALUES
(225, 4, 12, '2016-03-23 02:29:40', '2016-03-23 02:29:40'),
(295, 1, 27, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(296, 1, 28, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(297, 1, 29, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(298, 1, 30, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(299, 1, 31, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(300, 1, 32, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(301, 1, 33, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(302, 1, 34, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(303, 1, 35, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(304, 1, 36, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(305, 1, 16, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(306, 1, 17, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(307, 1, 18, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(308, 1, 19, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(309, 1, 20, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(310, 1, 12, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(311, 1, 13, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(312, 1, 14, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(313, 1, 15, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(314, 1, 42, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(315, 1, 43, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(316, 1, 44, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(317, 1, 45, '2017-08-03 09:55:54', '2017-08-03 09:55:54'),
(318, 1, 46, '2017-08-03 09:55:54', '2017-08-03 09:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', NULL, NULL),
(4, 'admin', '2016-03-22 05:52:56', '2016-03-22 05:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `gender` enum('pria','wanita') COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `gender`, `address`, `phone`, `username`) VALUES
(6, 'TRINATA', 'reza.wikrama3@gmail.com', '$2y$10$dD6TjxbMYcfKIyBGXkvyV.jXZwtST0i5JcZAi0QEUu1mtfiUdbePG', 'AOUOrsaslxxjnc2JIw8AHKKidXkawhSWBVcWaRXzhn5zWm43yFPPhft5w2l3', '2016-03-22 06:07:29', '2016-03-24 09:16:08', 1, 'pria', '', 0, 'superadmin'),
(7, 'admin', 'ultramantigar@gmail.com', '$2y$10$gPafGNqLHVtVtPgO7/KqjeqGwLhBr/ZSe1G3YnZWp80Yo8GcpdYRG', 'AsrSmU1PESaINwJGI1pH1KQgrYetdGz0QyQO5y02Ix0rfOGVIIOvh1ugrwgD', '2016-03-22 06:08:00', '2016-03-23 02:51:11', 4, 'pria', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `action` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `user_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 6, 'superadmin Login', '2017-08-03 09:55:04', '2017-08-03 09:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actions_slug_index` (`slug`);

--
-- Indexes for table `cruds`
--
ALTER TABLE `cruds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`),
  ADD KEY `menus_controller_index` (`controller`),
  ADD KEY `menus_slug_index` (`slug`);

--
-- Indexes for table `menu_actions`
--
ALTER TABLE `menu_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_actions_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_actions_action_id_foreign` (`action_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rights_menu_action_id_foreign` (`menu_action_id`),
  ADD KEY `rights_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_activities_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cruds`
--
ALTER TABLE `cruds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `menu_actions`
--
ALTER TABLE `menu_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_actions`
--
ALTER TABLE `menu_actions`
  ADD CONSTRAINT `menu_actions_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_actions_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `rights_menu_action_id_foreign` FOREIGN KEY (`menu_action_id`) REFERENCES `menu_actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rights_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD CONSTRAINT `user_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
