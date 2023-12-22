-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 21, 2023 at 11:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `bike_id` int NOT NULL,
  `registration_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`bike_id`, `registration_number`, `availability`, `photo`, `description`) VALUES
(1, 'ABC123', 1, 'bike1.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.'),
(2, 'XYZ789', 1, 'bike2.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(3, '123456', 0, 'bike3.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(4, '789ABC', 1, 'bike4.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(5, '456DEF', 0, 'bike5.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(6, 'GHI789', 1, 'bike6.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(7, 'JKL321', 1, 'bike7.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(8, 'MNO654', 0, 'bike8.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(9, 'PQR987', 1, 'bike9.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n'),
(10, 'STU456', 1, 'bike10.jpg', 'Un vélo de ville élégant qui combine style et fonctionnalité. Parfait pour les déplacements quotidiens en ville, avec un design moderne et des fonctionnalités pratiques.\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `user_id` int NOT NULL,
  `bike_id` int NOT NULL,
  `res_num` int DEFAULT NULL,
  `res_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('pending','accepted','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`user_id`, `bike_id`, `res_num`, `res_date`, `start_date`, `end_date`, `status`) VALUES
(1, 1, 101, '2023-12-11 10:01:33', '2023-01-01 10:00:00', '2023-01-03 18:00:00', 'accepted'),
(2, 2, 102, '2023-12-11 10:01:33', '2023-02-05 14:30:00', '2023-02-07 12:00:00', 'pending'),
(3, 3, 103, '2023-12-11 10:01:33', '2023-03-10 08:45:00', '2023-03-12 16:30:00', 'rejected'),
(5, 5, 105, '2023-12-11 10:01:33', '2023-05-20 09:15:00', '2023-05-22 17:45:00', 'accepted'),
(6, 6, 106, '2023-12-11 10:01:33', '2023-06-25 13:30:00', '2023-06-27 11:00:00', 'rejected'),
(7, 7, 107, '2023-12-11 10:01:33', '2023-07-30 07:45:00', '2023-08-01 15:30:00', 'pending'),
(8, 8, 108, '2023-12-11 10:01:33', '2023-08-15 11:00:00', '2023-08-18 09:00:00', 'accepted'),
(9, 9, 109, '2023-12-11 10:01:33', '2023-09-20 10:30:00', '2023-09-22 18:15:00', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Client'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login` int NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `login`, `password`, `role_id`) VALUES
(1, 'John', 'Doe', 1001, '$2y$10$pIjIYgG.9QNOi6CzT.H2/eTIKsZxV0mpT.M4t5dLSkAhDC70uNGxW', 1),
(2, 'Jane', 'Smith', 1002, '$2y$10$ExCv66UZXa8JuD8ZDPV1WuRYK/0BILTCU9hqzMUVTL51.rwoJJwbW', 2),
(3, 'Alice', 'Johnson', 1003, '$2y$10$VvU0aKde2GneK/P9Bb1Ejexu4y.3lUTk3ELLxBSgKnh3iISOlMDzi', 2),
(5, 'Emilyyy', 'Taylor', 1005, '$$2y$10$o7G/zROcPLYuo/zzs7iSS.XAcrzDf8zb.buguEobRcTyhwkVKb7HO', 2),
(6, 'Michael', 'Anderson', 1006, '$2y$10$yvAQXiKP1wMsxLsx0X6OlO9qBr7IQp3iOH/PY0RvCjit7d5TK0.tW', 2),
(7, 'Sophia', 'Miller', 1007, '$2y$10$63tdfic8jyljRB70vuaDZOkBgAQdp3CL88IXwyxW0K0U3i0I9IFxu', 2),
(8, 'Daniel', 'Thomas', 1008, '$2y$10$sEHRR58YrODUWD9d6n4sy.FlgiPg2C7tQJ3MHjSDU4w4zovcWB.qu', 2),
(9, 'Olivia', 'Brown', 1009, '$2y$10$uCyZJWnHCAGyAKmvIpwVgOlXzdgqNGcpQbFpI2ILdPIP2Qo8rvf3i', 2),
(11, 'Samuela', 'Koffi', 2004, '$2y$10$.I9zHP/ZiRZspakNko7.BuezIaPetXIbGGm7XAD//TCFR4CVvqZgi', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`bike_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`user_id`,`bike_id`),
  ADD UNIQUE KEY `res_num` (`res_num`),
  ADD KEY `bike_id` (`bike_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `users_ibfk_1` (`role_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`bike_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
