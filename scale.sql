-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 12:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scale`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `year`, `period`, `created_at`, `updated_at`) VALUES
(1, '2018-2019', '2018-04-01 to 2019-07-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2019-2020', '2019-10-01 to 2020-04-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `natt_stu_id` int(11) NOT NULL,
  `satt_date` date NOT NULL,
  `satt_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `natt_teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `natt_stu_id`, `satt_date`, `satt_status`, `natt_teacher_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-21', 'P', 1, NULL, NULL),
(2, 1, '2019-05-22', 'P', 1, NULL, NULL),
(3, 1, '2019-05-23', 'P', 1, NULL, NULL),
(4, 1, '2019-05-24', 'P', 1, NULL, NULL),
(5, 1, '2019-05-25', 'P', 1, NULL, NULL),
(6, 1, '2019-05-26', 'P', 1, NULL, NULL),
(7, 1, '2019-05-27', 'P', 1, NULL, NULL),
(8, 1, '2019-05-28', 'P', 1, NULL, NULL),
(9, 1, '2019-05-29', 'P', 1, NULL, NULL),
(10, 1, '2019-05-30', 'P', 1, NULL, NULL),
(11, 1, '2019-06-01', 'P', 1, NULL, NULL),
(12, 1, '2019-06-02', 'P', 1, NULL, NULL),
(13, 1, '2019-06-03', 'P', 1, NULL, NULL),
(14, 1, '2019-06-04', 'P', 1, NULL, NULL),
(15, 1, '2019-06-05', 'P', 1, NULL, NULL),
(16, 1, '2019-06-06', 'P', 1, NULL, NULL),
(17, 1, '2019-06-07', 'P', 1, NULL, NULL),
(18, 1, '2019-06-08', 'P', 1, NULL, NULL),
(19, 1, '2019-06-09', 'P', 1, NULL, NULL),
(20, 1, '2019-06-10', 'P', 1, NULL, NULL),
(21, 1, '2019-06-11', 'P', 1, NULL, NULL),
(22, 1, '2019-06-12', 'P', 1, NULL, NULL),
(23, 2, '2019-05-21', 'P', 2, NULL, NULL),
(24, 2, '2019-05-22', 'P', 2, NULL, NULL),
(25, 2, '2019-05-23', 'P', 2, NULL, NULL),
(26, 2, '2019-05-24', 'P', 2, NULL, NULL),
(27, 2, '2019-05-25', 'P', 2, NULL, NULL),
(28, 2, '2019-05-26', 'P', 2, NULL, NULL),
(29, 2, '2019-05-27', 'P', 2, NULL, NULL),
(30, 2, '2019-05-28', 'P', 2, NULL, NULL),
(31, 2, '2019-05-29', 'P', 2, NULL, NULL),
(32, 2, '2019-05-30', 'P', 2, NULL, NULL),
(33, 2, '2019-06-01', 'P', 2, NULL, NULL),
(34, 2, '2019-06-02', 'P', 2, NULL, NULL),
(35, 2, '2019-06-03', 'P', 2, NULL, NULL),
(36, 2, '2019-06-04', 'P', 2, NULL, NULL),
(37, 2, '2019-06-05', 'P', 2, NULL, NULL),
(38, 2, '2019-06-06', 'P', 2, NULL, NULL),
(39, 2, '2019-06-07', 'P', 2, NULL, NULL),
(40, 2, '2019-06-08', 'P', 2, NULL, NULL),
(41, 2, '2019-06-09', 'P', 2, NULL, NULL),
(42, 2, '2019-06-10', 'P', 2, NULL, NULL),
(43, 2, '2019-06-11', 'P', 2, NULL, NULL),
(44, 2, '2019-06-12', 'P', 2, NULL, NULL),
(45, 3, '2019-05-21', 'P', 1, NULL, NULL),
(46, 3, '2019-05-22', 'P', 1, NULL, NULL),
(47, 3, '2019-05-23', 'P', 1, NULL, NULL),
(48, 3, '2019-05-24', 'P', 1, NULL, NULL),
(49, 3, '2019-05-25', 'P', 1, NULL, NULL),
(50, 3, '2019-05-26', 'P', 1, NULL, NULL),
(51, 3, '2019-05-27', 'P', 1, NULL, NULL),
(52, 3, '2019-05-28', 'P', 1, NULL, NULL),
(53, 3, '2019-05-29', 'P', 1, NULL, NULL),
(54, 3, '2019-05-30', 'P', 1, NULL, NULL);

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
(3, '2019_05_18_100043_create_attendances_table', 1),
(4, '2019_05_18_100106_create_teachers_table', 1),
(5, '2019_05_18_100127_create_results_table', 1),
(6, '2019_05_18_100146_create_students_table', 1);

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
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nres_stu_id` int(11) NOT NULL,
  `nres_teacher_id` int(11) NOT NULL,
  `sres_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sres_academic_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `nres_stu_id`, `nres_teacher_id`, `sres_status`, `sres_academic_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fail', '2018-04-01 to 2019-07-31', NULL, NULL),
(2, 2, 2, 'Pass', '2018-04-01 to 2019-07-31', NULL, NULL),
(3, 3, 1, 'Pass', '2018-04-01 to 2019-07-31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 'Student1 One', 1, NULL, NULL),
(2, 'Student1 Two', 1, NULL, NULL),
(3, 'Student1 Three', 1, NULL, NULL),
(4, 'Student1 Four', 1, NULL, NULL),
(5, 'Student2 Five', 2, NULL, NULL),
(6, 'Student2 Six', 2, NULL, NULL),
(7, 'Student2 Seven', 2, NULL, NULL),
(8, 'Student2 Eight', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_name`, `created_at`, `updated_at`) VALUES
(1, 'Teacher One', NULL, NULL),
(2, 'Teacher Two', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
