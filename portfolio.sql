-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2023 at 02:04 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'app'),
(2, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Karim Maged', 'kareemcs@gmail.com', 'Hello', 'Hi How are you'),
(2, 'Maged', 'Maged@gmail.com', 'Hi', 'Hi How is life ? '),
(3, 'Karim Maged', 'kareemcs@gmail.com', 'Hello', 'Hi How are you'),
(4, 'Ahmed', 'Ahmed@gmail.com', 'Quiz', 'what is the different between Frontend and Backend'),
(5, 'Karim Maged', 'kareemcs@gmail.com', 'Hello', 'Hi How are you'),
(6, 'Maged', 'Maged@gmail.com', 'Hi', 'Hi How is life ? ');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `pre` int NOT NULL,
  `post` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `icon`, `pre`, `post`, `title`) VALUES
(3, 'bi bi-emoji-smile', 0, 15, 'Assistents'),
(4, 'bi bi-book', 0, 50, 'Books'),
(5, 'bi bi-book', 0, 30, 'Courses'),
(6, 'bi bi-emoji-smile', 0, 10, 'Happy Clients');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `company` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`company`, `url`, `id`) VALUES
('Karim', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `project_date` date NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `category`, `client`, `project_date`, `url`, `text`, `image`) VALUES
(1, 'Restaurant', '1', 'Karim', '2023-06-15', 'https://karimcs41211.github.io/RestaurantKarim/', 'Restaurant', 'assets/img/portfolio/portfolio-1.jpg'),
(2, 'CRUDS', '2', 'Karim', '2023-06-15', 'https://karimcs41211.github.io/CRUDS/', 'CRUDS', 'assets/img/portfolio/portfolio-2.jpg');

-- --------------------------------------------------------



--
-- 
--



-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `icon`, `color`) VALUES
(1, 'Web Development\r\n', 'bi bi-globe', 'ffbb2c'),
(2, 'Networks\r\n', 'bi bi-hdd-network', '4CEB95'),
(3, 'Problem Solving and Algorithms\r\n', 'ri-bar-chart-box-line', 'E75C54'),
(4, 'Communication', 'bi bi-send', 'ffbb2c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `linkedin` text NOT NULL,
  `github` text NOT NULL,
  `slogan` text NOT NULL,
  `birthday` date NOT NULL,
  `website` text NOT NULL,
  `phone` text NOT NULL,
  `city` text NOT NULL,
  `age` text NOT NULL,
  `degree` text NOT NULL,
  `freelance` int NOT NULL,
  `certification` text NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--


INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `title`, `place`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `github`, `slogan`, `birthday`, `website`, `phone`, `city`, `age`, `degree`, `freelance`, `certification`, `address`) VALUES
(1, 'Karim', 'Karim', 'kareemcs41211@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Web Developer', 'KSA', '#', '#', '#', '#', '#', '#', 'Karim Maged', '2003-07-02', 'https://Karim.com', '+966 53 010 2767', 'Buraidah', '20', 'Bsc in CS', 1, 'CS', 'Buraidah,Qassim.');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);



--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;



--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
