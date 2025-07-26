-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2025 at 01:57 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `group_todos`
--

CREATE TABLE `group_todos` (
  `id` bigint NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `group_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `group_todos`
--

INSERT INTO `group_todos` (`id`, `title`, `created_by`, `group_id`) VALUES
(3, 'project 1', NULL, NULL),
(4, 'project 2', NULL, NULL),
(5, 'proyek bangunan', NULL, NULL),
(6, 'proyek anif', NULL, NULL),
(22, 'pbo', 7, NULL),
(26, 'punya punyaa', 8, NULL),
(27, 'tes', 9, NULL),
(28, 'project hari ini', 7, NULL),
(29, 'hari ini kedua', 7, NULL),
(33, 'test deadline', 7, NULL),
(34, 'proyek hoho', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_member`
--

CREATE TABLE `project_member` (
  `id` bigint NOT NULL,
  `group_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `project_member`
--

INSERT INTO `project_member` (`id`, `group_id`, `user_id`) VALUES
(9, 22, 8),
(13, 26, 5),
(14, 27, 5),
(15, 27, 8),
(17, 28, 5),
(18, 28, 8),
(19, 29, 8),
(26, 33, 8),
(27, 33, 5),
(28, 33, 9),
(29, 34, 9),
(30, 34, 5),
(31, 34, 7);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint NOT NULL,
  `task` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `completed_at` date DEFAULT NULL,
  `complete_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `task`, `completed`, `user_id`, `deadline`, `group_id`, `title`, `created_by`, `completed_at`, `complete_at`) VALUES
(91, 'test', 1, 5, '2025-07-22', NULL, NULL, NULL, NULL, '2025-07-26'),
(93, 'ayang aa', 1, 8, '2025-07-22', 33, NULL, NULL, NULL, '2025-07-22'),
(94, 'telat', 0, 8, '2025-07-22', 33, NULL, NULL, NULL, NULL),
(95, 'telat lagi', 1, 5, '2025-07-22', 33, NULL, NULL, NULL, '2025-07-26'),
(96, 'test', 1, 7, '2025-07-22', NULL, NULL, NULL, NULL, '2025-07-22'),
(97, 'deadline', 1, 7, '2025-07-22', NULL, NULL, NULL, NULL, '2025-07-25'),
(98, 'hoho', 0, 9, '2025-07-26', 33, NULL, NULL, NULL, NULL),
(99, 'hehe', 0, 8, '2025-07-26', 33, NULL, NULL, NULL, NULL),
(100, 'test', 0, 8, '2025-07-26', 29, NULL, NULL, NULL, NULL),
(101, 'bobooooooo', 0, 8, '2025-07-26', NULL, NULL, NULL, NULL, NULL),
(102, 'tugas anif', 0, 5, '2025-07-26', 34, NULL, NULL, NULL, NULL),
(103, 'tugas anif lagi', 1, 5, '2025-07-26', 34, NULL, NULL, NULL, '2025-07-26'),
(104, 'samara bobo', 1, 9, '2025-07-26', 34, NULL, NULL, NULL, '2025-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `username`, `email`) VALUES
(5, '$2a$10$pTvkmyPHRtKbjgrMgbX1GOzv8BCO2Lrxm3Ta3IMY7cBuwBeGwtVbq', 'anif', 'anip@gmail.com'),
(6, '$2a$10$6C/CpyVNn17UQZHkdpz4VuT8Q07sTHfIdxSJSluumR.x60hN9L/om', 'jaman', 'jaman@gmail.com'),
(7, '$2a$10$.2Y5qfmwJ/noTFkIfazLWOLv4AWoxfptTV2G.tqVTKPIciw7M2npq', 'burhan', 'burhan@gmail.com'),
(8, '$2a$10$cH.mDbUw3dUdFv6F/rLdtuebY/FzAPIH3.fhwtAig48Mf3uoKrR2a', 'samara', 'samarabuanat@gmail.com'),
(9, '$2a$10$vJ0gWNJL7OrJqGD.IkM3xeJ5uUS8zCaxKBW03ZtiEvgb/vciO0fri', 'sam', 'samarabuanat@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_todos`
--
ALTER TABLE `group_todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_group_created_by` (`created_by`),
  ADD KEY `FKhq2hhl40dieosoknbqj02jm8i` (`group_id`);

--
-- Indexes for table `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `fk_group` (`group_id`),
  ADD KEY `FKrb13clsxm4j6t4kwdqvo4q3nt` (`created_by`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_todos`
--
ALTER TABLE `group_todos`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `group_todos`
--
ALTER TABLE `group_todos`
  ADD CONSTRAINT `fk_group_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKhq2hhl40dieosoknbqj02jm8i` FOREIGN KEY (`group_id`) REFERENCES `group_todos` (`id`);

--
-- Constraints for table `project_member`
--
ALTER TABLE `project_member`
  ADD CONSTRAINT `project_member_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group_todos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_member_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `FK3ju26rdbtvey9t2vm08idphxx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk_group` FOREIGN KEY (`group_id`) REFERENCES `group_todos` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FKrb13clsxm4j6t4kwdqvo4q3nt` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
