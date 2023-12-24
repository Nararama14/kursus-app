-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2023 at 06:54 PM
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
-- Database: `kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `materi_kursus`
--

CREATE TABLE `materi_kursus` (
  `id` int NOT NULL,
  `nama` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kursus` varchar(500) NOT NULL,
  `link` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `materi_kursus`
--

INSERT INTO `materi_kursus` (`id`, `nama`, `deskripsi`, `jenis_kursus`, `link`) VALUES
(1, 'statistik dasar', 'Lorem ipsum dolor sit amet, ', 'matematika2', 'https://press.umsida.ac.id/index.php/umsidapress/article/view/978-979-3401-73-7'),
(2, 'sejarah 1', 'Lorem ipsum dolor sit amet, ', 'IPS', 'https://ebook.erlanggaonline.co.id/auth/info_product/detail/0049070210'),
(3, 'sejarah 2', 'Lorem ipsum dolor sit amet, ', 'IPS2', 'https://ebook.erlanggaonline.co.id/auth/info_product/detail/0049070210');

-- --------------------------------------------------------

--
-- Table structure for table `nama_kursus`
--

CREATE TABLE `nama_kursus` (
  `id` int NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `durasi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nama_kursus`
--

INSERT INTO `nama_kursus` (`id`, `nama`, `alamat`, `deskripsi`, `durasi`) VALUES
(1, 'matematika', 'jl. adhyaksa', 'Lorem ipsum dolor sit amet ', '2023-12-31'),
(2, 'matematika 2', 'jl adhyaksa', 'Lorem ipsum dolor sit amet, ', '2024-01-31'),
(3, 'IPS', 'jl adhyaksa', 'Lorem ipsum dolor sit amet, ', '2024-01-31'),
(4, 'IPS2', 'jl adhyaksa 5', 'Lorem ipsum dolor sit amet, ', '2024-01-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi_kursus`
--
ALTER TABLE `materi_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nama_kursus`
--
ALTER TABLE `nama_kursus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi_kursus`
--
ALTER TABLE `materi_kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nama_kursus`
--
ALTER TABLE `nama_kursus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
