-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2026 at 11:56 PM
-- Server version: 8.0.40
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db5e`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nilai_akhir` float NOT NULL,
  `nilai_huruf` varchar(5) NOT NULL,
  `predikat` varchar(50) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_lengkap`, `nilai_akhir`, `nilai_huruf`, `predikat`, `reg_date`, `modified_date`, `foto`) VALUES
('3202416001', 'John Lennon', 95, 'A', 'Sangat Memuaskan', '2026-10-25 10:15:05', '2026-10-25 10:15:05', '3202416001_1792923305.jpg'),
('3202416007', 'Ringo Starr', 93, 'A', 'Sangat Memuaskan', '2026-10-25 10:20:19', '2026-10-25 10:20:19', '3202416007_1792923619.jpg'),
('3202416009', 'Lamine Yamal', 54, 'C', 'Cukup Memuaskan', '2026-10-25 10:29:38', '2026-10-25 10:29:38', '3202416009_1792924178.jpg'),
('3202416010', 'Lionel Messi', 80, 'B', 'Memuaskan', '2026-10-25 10:21:55', '2026-10-25 10:21:55', '3202416010_1792923715.jpg'),
('3202416011', 'Neymar Jr', 75, 'B', 'Memuaskan', '2026-10-25 10:24:11', '2026-10-25 10:24:22', '3202416011_1792923851.jpg'),
('3202416099', 'George Harrison', 96, 'A', 'Sangat Memuaskan', '2026-10-25 10:18:55', '2026-10-25 10:18:55', '3202416099_1792923535.jpg'),
('3202416100', 'Paul McCartney', 98, 'A', 'Sangat Memuaskan', '2026-10-25 10:17:18', '2026-10-25 10:17:18', '3202416100_1792923438.jpg'),
('3202416107', 'Cristiano Ronaldo', 78, 'B', 'Memuaskan', '2026-10-25 10:23:24', '2026-10-25 10:23:24', '3202416107_1792923804.jpg'),
('3202416110', 'Kylian Mbappe', 55, 'C', 'Cukup Memuaskan', '2026-10-25 10:27:47', '2026-10-25 10:27:47', '3202416110_1792924067.jpg'),
('3202416190', 'Martin Braithwaite', 10, 'E', 'Tidak Lulus', '2026-10-25 10:32:06', '2026-10-25 10:32:06', '3202416190_1792924326.jpg'),
('3202416199', 'Harry Maguire', 40, 'D', 'Kurang Memuaskan', '2026-10-25 10:30:54', '2026-10-25 10:30:54', '3202416199_1792924254.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(4, 'Muhammad', 'Refan', 'refan@gmail.com', '2026-10-08 07:33:13'),
(5, 'Muhammad', 'Ridwansyah', 'ridwann@gmail.com', '2026-10-08 07:33:49'),
(7, 'Wayan', 'Aditia', 'wayan@gmail.com', '2026-10-08 07:45:03'),
(8, 'Caesha', 'Nabila', 'sana@gmail.com', '2026-10-08 07:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id_photo` int UNSIGNED NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `uploaded_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id_photo`, `file_name`, `uploaded_date`) VALUES
(1, 'img/barca.jpg', '2026-10-20 06:47:33'),
(2, 'img/123.jpeg', '2026-10-20 07:00:55'),
(3, 'img/blackbird.gif', '2026-10-20 07:16:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id_photo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id_photo` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
