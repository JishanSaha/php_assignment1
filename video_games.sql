-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2025 at 11:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_games_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `video_games`
--

CREATE TABLE `video_games` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `release_date` date NOT NULL,
  `platform` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_games`
--

INSERT INTO `video_games` (`id`, `title`, `genre`, `release_date`, `platform`, `rating`, `price`, `image_url`) VALUES
(1, 'Elden Ring', 'RPG', '2022-02-25', 'PC', 9.8, 59.99, 'https://assets-prd.ignimgs.com/2021/06/12/elden-ring-button-03-1623460560664.jpg'),
(2, 'Zelda: TOTK', 'Adventure', '2023-05-12', 'Switch', 9.7, 69.99, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e5b128bb-af63-4d6a-9ac0-373961479b6c/dgzd82x-1ed19725-2f94-4fb9-9e0e-bbee8c27a8f6.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U1YjEyOGJiLWFmNjMtNGQ2YS05YWMwLTM3Mzk2MTQ3OWI2Y1wvZGd6ZDgyeC0xZWQxOTcyNS0yZjk0LTRmYjktOWUwZS1iYmVlOGMyN2E4ZjYuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LkdXAOMTHTI1lkbtDdzkkMaMKSPsI9E124FlmA9kx4M'),
(3, 'Cyberpunk 2077', 'RPG', '2020-12-10', 'PC', 8.5, 39.99, 'https://www.cyberpunk.net/build/images/social-thumbnail-en-ddcf4d23.jpg'),
(4, 'FIFA 24', 'Sports', '2023-09-29', '', 8.2, 59.99, 'https://i.pinimg.com/736x/b1/fa/a2/b1faa25f8499f1edb5353e3109b91ad3.jpg'),
(5, 'God of War Ragnarok', 'Action', '2022-11-09', 'PS5', 9.5, 69.99, 'https://image.api.playstation.com/vulcan/ap/rnd/202207/1210/aqZdSwWyy9JcQ66BxHDKrky6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `video_games`
--
ALTER TABLE `video_games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `video_games`
--
ALTER TABLE `video_games`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
