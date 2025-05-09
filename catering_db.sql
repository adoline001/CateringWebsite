-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2025 at 04:47 PM
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
-- Database: `catering_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `description`, `price`, `category`, `image_url`, `created_at`) VALUES
(1, 'Wedding Package Premium', '5-course meal with premium selections', 45.99, 'Weddings', 'cateringimage/Wedding Buffet.jpg', '2025-05-03 17:22:12'),
(2, 'Corporate Lunch Box', 'Executive lunch box with healthy options', 12.50, 'Corporate', 'cateringimage/lunch-box.jpg', '2025-05-03 17:22:12'),
(9, 'Grilled Chicken', 'Served with seasonal vegetables and potatoes.', 15.99, NULL, 'cateringimage/chicken.jpg', '2025-05-05 12:31:51'),
(10, 'Vegan Platter', 'A mix of grilled vegetables, hummus, and falafel.', 12.50, NULL, 'cateringimage/Vegan.jpg', '2025-05-05 12:31:51'),
(11, 'Caesar Salad', 'Fresh romaine lettuce, parmesan, and homemade dressing.', 9.99, NULL, 'cateringimage/salad.jpg', '2025-05-05 12:31:51'),
(12, 'Beef Lasagna', 'Layers of pasta, beef, and cheese baked to perfection.', 14.75, NULL, 'cateringimage/lasagna.jpg', '2025-05-05 12:31:51'),
(13, 'Fruit Tart', 'Crispy tart filled with cream and topped with seasonal fruits.', 7.50, NULL, 'cateringimage/tart.jpg', '2025-05-05 12:31:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
