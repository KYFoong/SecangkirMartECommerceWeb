-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 08:40 AM
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
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(3, 'Sarendha', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(5, 'KYF', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Sarendha', 'sarendha@gmail.com', '0167585440', 'Food is Good');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` float(100,2) DEFAULT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Sarendha', '0167585440', 'sarendha@gmail.com', 'paytm', 'No 19 , Jalan Dagang 2, Taman Dagang Jaya, Ampang, Ampang, Selangor, Malaysia - 68000', 'Sky Juice (10 x 1) - ', 10.00, '2024-06-11', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(18, 'DutchLady Chocolate Flavoured Milk', 'drinks', 2.50, 'DutchLady Chocolate Flavoured Milk.jpg'),
(19, 'Milo Cup IceCream', 'desserts', 2.50, 'Milo Cup IceCream .jpg'),
(20, 'Milo Original Drink 240ml', 'drinks', 2.50, 'Milo Original Drink 240ml.png'),
(21, 'Nescafe Coffee Orginal Flavour Drink 240ml', 'drinks', 2.90, 'Nescafe Coffee Orginal Flavour Drink 240ml.png'),
(22, 'Nestle Drumstick Valinila Ice Cream', 'desserts', 4.00, 'Nestle Drumstick Valinila Ice Cream.jpg'),
(23, 'Nestle Kitkat Ice Cream', 'desserts', 4.50, 'Nestle Kitkat Ice Cream.jpg'),
(24, 'Nestle Milo Stick Ice cream', 'desserts', 3.00, 'Nestle Milo Stick Ice cream.webp'),
(25, 'Seasons Soya Milk', 'drinks', 1.50, 'Seasons Soya Milk.png'),
(26, 'Spritzer Mineral Water 1.25L', 'drinks', 2.00, 'Spritzer Mineral Water 1.25L.png'),
(27, 'Walls Solero Split Lime IceCream', 'desserts', 1.00, 'Walls Solero Split Lime IceCream.jpg'),
(28, 'Yeos Chrysanthemum Tea (Less Sugar) 1L', 'drinks', 3.60, 'Yeos Chrysanthemum Tea (Less Sugar) 1L.png'),
(29, 'Cadbury Dairy Milk Chocolate Original', 'food', 9.90, 'Cadbury Dairy Milk Chocolate Original.png'),
(30, 'Chipsmore Double Chocolate Chips Cookies', 'food', 3.50, 'Chipsmore Double Chocolate Chips Cookies.png'),
(31, 'Cintan Curry Soup Noodles', 'food', 4.30, 'Cintan Curry Soup Noodles.png'),
(32, 'Gardenia Quick Bites Bread Chocolate Flavour', 'food', 1.50, 'Gardenia Quick Bites Bread Chocolate Flavour.png'),
(33, 'Gardenia Quick Bites Bread Vanila Flavour', 'food', 1.50, 'Gardenia Quick Bites Bread Vanila Flavour.png'),
(34, 'JackNJill Roller Coaster Spicy Chicken', 'food', 2.70, 'JackNJill Roller Coaster Spicy Chicken.png'),
(35, 'Maggie Hot Cup Noodle Asam Laksa', 'food', 2.50, 'Maggie Hot Cup Noodle Asam Laksa.jpg'),
(36, 'Maggie Hot Cup Noodle Curry', 'food', 2.50, 'Maggie Hot Cup Noodle Curry.jpg'),
(37, 'Maggie Instant Noodles Chicken Flavour', 'food', 4.50, 'Maggie Instant Noodles Chicken Flavour.png'),
(38, 'Maggie Instant Noodles Curry Flavour', 'food', 4.50, 'Maggie Instant Noodles Curry Flavour.png'),
(39, 'Mamee Chef Curry Laksa', 'food', 4.80, 'Mamee Chef Curry Laksa.png'),
(40, 'Mamee Chef Spicy Chicken Shiitake', 'food', 4.80, 'Mamee Chef Spicy Chicken Shiitake.png'),
(41, 'MiSedaap Mi Goreng Asli Instant Fried Noodles', 'food', 4.30, 'MiSedaap Mi Goreng Asli Instant Fried Noodles.png'),
(42, 'MisterPotato Chips Hot and Spicy', 'food', 2.80, 'MisterPotato Chips Hot and Spicy.png'),
(43, 'MisterPotato Crisps Original', 'food', 2.90, 'MisterPotato Crisps Original.png'),
(44, 'Munchy&#39;s Lexus Peanut Butter Sandwich', 'food', 4.20, 'Munchy_s Lexus Peanut Butter Sandwich.png'),
(45, 'Munchy&#39;s Lexus Vegetable Crackers', 'food', 4.20, 'Munchy_s Lexus Vegetable Crackers.png'),
(46, 'Munchy&#39;s Oat Krunch Breakfast Dark Chocolate', 'food', 4.80, 'Munchy_s Oat Krunch Breakfast Dark Chocolate.png'),
(47, 'Munchy&#39;s Oat Krunch Breakfast Strawberry and Blackcurrant', 'food', 4.80, 'Munchy_s Oat Krunch Breakfast Strawberry and Blackcurrant.png'),
(48, 'Pocky Chocolate Flavour Stick', 'food', 2.00, 'Pocky Chocolate Flavour Stick.png'),
(49, 'Richeese Nabati Cheese Wafer Extra', 'food', 2.50, 'Richeese Nabati Cheese Wafer Extra.jpg'),
(50, 'Samyang Hot Chicken Cheese Ramen', 'food', 4.90, 'Samyang Hot Chicken Cheese Ramen.png'),
(51, 'Samyang Hot Chicken Ramen Original', 'food', 4.90, 'Samyang Hot Chicken Ramen Original.png'),
(52, 'Twisties Cheeky Cheedar Cheese', 'food', 2.50, 'Twisties Cheeky Cheedar Chees.png'),
(53, 'Twisties Chipster Flaming BBQ', 'food', 2.30, 'Twisties Chipster Flaming BBQ.png'),
(54, 'FaberCastell 3Colors BallPen', 'stationery', 3.10, 'FaberCastell 3Colors BallPen.webp'),
(55, 'FaberCastell Black BallPen', 'stationery', 3.10, 'FaberCastell Black BallPen.jpg'),
(57, 'FaberCastell BluePen', 'stationery', 3.50, 'FaberCastell BluePen.webp'),
(58, 'FaberCastell Eraser', 'stationery', 1.00, 'FaberCastell Eraser.jpg'),
(59, 'FaberCastell PlasticRuler 15cm', 'stationery', 1.00, 'FaberCastell PlasticRuler 15cm.webp'),
(60, 'IK A4 photostat paper 70GM 450SHEET', 'stationery', 12.50, 'IK A4 photostat paper 70GM 450SHEET.jpg'),
(61, 'Masterprint A4 Test Pad 70GSM 50SHEET', 'stationery', 5.50, 'Masterprint A4 Test Pad 70GSM 50SHEET.jpg'),
(62, 'Masterprint A4 Test Pad 70GSM 70SHEET', 'stationery', 9.50, 'Masterprint A4 Test Pad 70GSM 70SHEET.jpg'),
(63, 'Masterprint A4 Test Pad 70GSM 100SHEET', 'stationery', 11.50, 'Masterprint A4 Test Pad 70GSM 100SHEET.jpg'),
(64, 'Pentel Hi-Polymer Eraser', 'stationery', 1.00, 'Pentel Hi-Polymer Eraser.jpg'),
(65, 'Scissor', 'stationery', 1.20, 'Scissor.png'),
(66, 'Stabilo 2B Pencil', 'stationery', 3.20, 'Stabilo 2B Pencil.png'),
(67, 'UniPaper Foolscap Testpad A4 70GSM 100SHEET', 'stationery', 5.80, 'UniPaper Foolscap Testpad A4 70GSM 100SHEET.jpg'),
(68, 'UniPaper Foolscap Testpad A4 80GSM 80SHEET', 'stationery', 7.50, 'UniPaper Foolscap Testpad A4 80GSM 80SHEET.jpg'),
(69, 'Kuat Harimau Dishwashing Liquid Lime 900ml', 'home and personal', 8.90, '1_ Kuat Harimau Dishwashing Liquid Lime 900ml.jpg'),
(70, 'Dynamo Liquid Detergent Refill 1.4kg', 'home and personal', 17.80, '1_Dynamo Liquid Detergent Refill 1.4kg.jpg'),
(71, 'Dynamo Liquid Detergent Refill 2.5kg', 'home and personal', 25.60, '2_Dynamo Liquid Detergent Refill 2,5kg.jpg'),
(72, 'Joy Dishwashing Liquid Sparkling Lime 780ml', 'home and personal', 12.80, '1_Joy Dishwashing Liquid Sparkling LIme 780ml.jpg'),
(73, 'Sunlight Dishwashing Liquid Sparking Lime 750ml', 'home and personal', 10.80, '1_Sunlight Dishwashing Liquid Sparking Lime 750ml.jpg'),
(74, 'Top Detergent Refill 3.2kg', 'home and personal', 21.00, '1_Top Detergent Refill 3.2kg.png'),
(75, 'Top Detergent Refill 1.8kg', 'home and personal', 10.50, '3_Top Detergent Refill 1.8kg.jpg'),
(76, 'Baygon Cockroach Control 570ml', 'home and personal', 12.90, 'Baygon Cockroach Control 570ml.jpg'),
(77, 'Head&shoulders Hair Shampoo', 'home and personal', 14.90, 'Head&shoulders Hair Shampoo.jpg'),
(78, 'Lifebouy Body Shampoo 950ml', 'home and personal', 15.60, 'Lifebouy Body Shampoo 950ml.png'),
(79, 'Raud FLying Insect Killer Odourless 400G', 'home and personal', 10.50, 'Raud FLying Insect Killer Odourless 400G.jpg'),
(80, 'Rejoice Shampoo 900ml', 'home and personal', 19.90, 'Rejoice Shampoo 900ml.jpg'),
(81, 'Ridsect Advance Mosquito Spray 600ml', 'home and personal', 11.90, 'Ridsect Advance Mosquito Spray 600ml.png'),
(82, 'Butter Croissants', 'desserts', 3.90, 'Butter Croissants.jpg'),
(83, 'Chocolate Cake Slice', 'desserts', 10.90, 'Chocolate Cake Slice.jpg'),
(84, 'Chocolate Dipped Doughnuts', 'desserts', 5.90, 'Chocolate Dipped Doughnuts.webp'),
(85, 'Classic Cheesecake', 'desserts', 10.90, 'Classic Cheesecake.jpg'),
(86, 'RedVelvet Cak', 'desserts', 10.90, 'RedVelvet Cake.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Sarendha', 'sarendha@gmail.com', '0167585440', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'No 19 , Jalan Dagang 2, Taman Dagang Jaya, Ampang, Ampang, Selangor, Malaysia - 68000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
