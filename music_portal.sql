-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 17, 2024 at 07:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pid` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(70) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `username`, `pid`, `qty`, `price`, `date`, `time`, `status`) VALUES
(1, 'user', 3, 1, 85000, '2023-08-18', '17:43:21', 'payed'),
(4, 'user', 1, 2, 200000, '2023-08-19', '08:15:06', 'payed'),
(4, 'user', 8, 2, 33600, '2023-08-19', '08:15:06', 'payed'),
(2, 'user1', 1, 10, 1000000, '2023-08-19', '08:02:37', 'payed'),
(3, 'user1', 1, 1, 100000, '2023-08-19', '08:06:55', 'payed'),
(0, 'user1', 2, 1, 410000, '0000-00-00', '00:00:00', 'pending'),
(4, 'user', 2, 1, 350000, '2023-08-19', '08:15:06', 'payed'),
(5, 'user', 2, 2, 700000, '2023-08-26', '03:11:32', 'payed'),
(5, 'user', 1, 2, 200000, '2023-08-26', '03:11:32', 'payed');

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

CREATE TABLE `c_order` (
  `id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `ward` int(11) NOT NULL,
  `municipality` varchar(70) NOT NULL,
  `district` varchar(70) NOT NULL,
  `tole` varchar(70) NOT NULL,
  `price` bigint(20) NOT NULL,
  `ph` bigint(20) NOT NULL,
  `payment` text NOT NULL,
  `status` varchar(70) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_order`
--

INSERT INTO `c_order` (`id`, `username`, `date`, `time`, `ward`, `municipality`, `district`, `tole`, `price`, `ph`, `payment`, `status`) VALUES
(1, 'user', '2023-08-18', '17:43:21', 4, 'Chandragiri', 'Kathmandu', 'Galban', 905000, 9841902307, 'PAY-64dfadb9a62c54.63508338.png', 'pending'),
(2, 'user1', '2023-08-19', '08:02:37', 4, 'chcandragriri', 'Kathmandu', 'galban', 1000000, 9841902307, 'PAY-64e0771db28445.50643527.docx', 'rejected'),
(3, 'user1', '2023-08-19', '08:06:55', 4, 'chandragiri', 'Kathmandu', 'galban', 100000, 9841902306, 'PAY-64e0781fbe2644.09381892.png', 'approved'),
(4, 'user', '2023-08-19', '08:15:06', 4, 'chandragiri', 'Kathmandu', 'galban', 583600, 9812325234, 'PAY-64e07a0a7b08d4.67879163.jpg', 'approved'),
(5, 'user', '2023-08-26', '03:11:32', 4, 'chandragiri', 'Kathmandu', 'galban', 900000, 9812345678, 'PAY-64e96d64a82ec3.32655946.jpg', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL,
  `msg` text DEFAULT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `msg`, `username`) VALUES
(1, 'Hello', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pid` text NOT NULL,
  `price` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `payment` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `date` date NOT NULL,
  `municipality` varchar(70) NOT NULL,
  `tole` varchar(70) NOT NULL,
  `ward` int(11) NOT NULL,
  `ph` int(11) NOT NULL,
  `district` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `pid`, `price`, `qty`, `payment`, `status`, `date`, `municipality`, `tole`, `ward`, `ph`, `district`) VALUES
(200, 'user', '1', 110000, 1, 'PAY-64d9bc3c6e8140.79404492.jpg', 'approved', '2023-08-14', 'chandragiri', 'galban', 4, 2147483647, 'Kathmandu'),
(201, 'user', '3', 89000, 1, 'PAY-64e02831d99381.65102321.png', 'Pending', '2023-08-19', 'chandragiri', 'galban', 4, 2147483647, 'Kathmandu'),
(202, 'user', '2', 350000, 1, 'PAY-64e876fab2b965.03046833.jpg', 'Pending', '2023-08-25', 'chandragiri', 'galban', 4, 2147483647, 'Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` bigint(20) NOT NULL,
  `product` text NOT NULL,
  `p_type` text NOT NULL,
  `brand` varchar(30) NOT NULL,
  `price` bigint(20) NOT NULL,
  `img_url` text NOT NULL,
  `detail` text NOT NULL,
  `featured` varchar(6) NOT NULL DEFAULT 'Add'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `product`, `p_type`, `brand`, `price`, `img_url`, `detail`, `featured`) VALUES
(1, 'Yamaha_slg200N', 'Guitar', 'Yamaha', 110000, 'IMG-649841770410c4.00031644.jfif', 'The Yamaha SLG200S Silent Guitar is an exceptional instrument that harmonizes the beauty of acoustic guitar tones with the convenience of a portable and silent design. Its innovative construction and cutting-edge features make it a perfect choice for musicians exploring Nepal\'s breathtaking landscapes without compromising their musical expression. The SLG200S is designed with both practice and performance in mind, making it an ideal companion for musicians in Nepal. Its unique design allows players to enjoy a traditional guitar\'s rich and authentic acoustic sound.', 'Remove'),
(2, 'Fender Telecaster Deluxe', 'Guitar', 'Fender', 410000, 'IMG-649a9e99bb40b8.02482821.png', 'Fenderâ€™s American Professional II Telecaster Deluxe puts a new spin on the hugely popular model, with upgrades aimed at the professional player. The iconic Tele Deluxe styling remains, but it benefits from a contoured neck heel and a redesigned 3-saddle bridge, which makes it easier than ever to get a clean setup with perfect intonation. Tim Shaw V-Mod II Double Tap humbuckers provide the fat sound you would expect from a Tele Deluxe, but they pull the wool off the top end, yielding a stunning hi-fi tone.', 'Remove'),
(3, 'Mapex Tornado TND5254TFJ â€“ Ebony Yellow Grain', 'Drum', 'Mapex', 89000, 'IMG-64a93683018943.63353298.png', 'Tornado Series Studio Version Drum shells feature a wrap finish Drum shells are made from basswood Colour: Ebony Yellow Grain', 'Remove'),
(4, 'Yamaha PSR-F52 Portable Keyboard', 'Keyboard', 'Yamaha', 19000, 'IMG-64a9388203f985.42839902.png', 'The Yamaha PSR-F52 Portable Keyboard is a versatile and compact instrument that brings joy to musicians in Nepal and beyond. With its 61 touch-sensitive keys, it offers a responsive playing experience that resonates with musicians. Featuring a variety of instrument voices, including pianos, guitars, and strings, it allows for creative exploration across various genres commonly appreciated in Nepals vibrant music scene.', 'Add'),
(7, 'D\'Addario EJ26 Phosphor Bronze Custom Light Acoustic Strings', 'Accessories', 'DAddario', 1300, 'IMG-64dfa715572607.42372337.jpg', 'EJ26 is a custom light Phosphor Bronze set that features lighter top and bottom strings for ease of playability and balance. Since D\'Addario introduced Phosphor Bronze guitar strings in 1974, they have been synonymous with warm and well-balanced acoustic tone.', 'Add'),
(8, 'CONCERT SIZE UKULELE LAGOON TURQUOISE - RULAGOON', 'Ukulele', 'Ortega', 16800, 'IMG-64dfa8ba133037.54227008.png', '4-String Ukulele, Right, LAGOON TURQUOISE, Concert (RULAGOON)', 'Remove'),
(9, 'Ortega RUFIRE Concert Ukulele', 'Ukulele', 'Ortega', 16800, 'IMG-64dfa92dcaef09.58567241.jpg', '4-String Ukulele, Right, Fire Red, Concert RUFIRE', 'Add'),
(10, 'Shure SV100X Vocal Microphone', 'Mic', 'Shure', 3900, 'IMG-64e03a5f27d4f9.81423336.jpg', 'The Shure SV100 is a handheld cardioid dynamic microphone offering a frequency response tailored for reproduction of vocals and speech in concert venues, lectures, houses of worship, karaoke, and presentations. Its dynamic element requires no power source and delivers a frequency response of 50 Hz to 15 kHz.', 'Add'),
(12, 'Yamaha MG12XU Analog Mixer', 'Midi', 'Yamaha', 4900, 'IMG-64e03b2f8c6e99.16340491.jpg', '12-Channel Mixing Console\r\nMax. 6 Mic / 12 Line Inputs (4 mono + 4 stereo)\r\n2 GROUP Buses + 1 Stereo Bus\r\n2 AUX (incl. FX)\r\nâ€œD-PREâ€ mic preamps with an inverted Darlington circuit\r\n1-Knob compressors\r\nHigh-grade effects: SPX with 24 programs\r\n24-bit / 192kHz 2in / 2out USB Audio functions\r\nWorks with the iPad (2 or later) through the Apple iPad Camera Connection Kit / Lightning to USB Camera Adapter', 'Add'),
(13, 'Yamaha_slg200N', 'Guitar', 'Yamaha', 1100000, 'IMG-64e078f41617c4.07148800.jpg', 'HGSDFH', 'Add');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `price` int(11) NOT NULL,
  `rid` text NOT NULL,
  `img` text NOT NULL,
  `detail` text NOT NULL,
  `username` varchar(150) NOT NULL,
  `rp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`price`, `rid`, `img`, `detail`, `username`, `rp`) VALUES
(1000, 'set1', 'set1.png', 'Jackson J22 Electric Guitars, Yamaha TRBX35 Bass Guitar, Pearl Rock&Roll Drum Set, Lead Microphone', '', 1),
(1000, 'set2', 'set2.jpg', 'Yamaha F335 Acoustic Guitar, Jackson J22 Electric Guitar, Yamaha TRBX35 Bass Guitar, Alesis Strike Electric Drum Set', '', 1),
(1000, 'set3', 'set3.jpg', 'Yamaha F335 Acoustic Guitar, Jackson J22 Electric Guitar, Yamaha TRBX35 Bass Guitar, Alesis Strike Electric Drum Set, Casio KS40 Portable Keyboard', '', 1),
(1000, 'set4', 'set4.jpg', 'Yamaha F335 Acoustic Guitar, Jackson J22 Electric Guitar, Yamaha TRBX35 Bass Guitar, Alesis Strike Electric Drum Set, Yamaha Psr-E273 Portable Keyboard', '', 1),
(1000, 'set5', 'set5.jpg', 'Yamaha F335 Acoustic Guitar, Jackson J22 Electric Guitar, Yamaha TRBX35 Bass Guitar, Alesis Strike Electric Drum Set, Donner DDP-80 Digital Piano', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `r_order`
--

CREATE TABLE `r_order` (
  `username` varchar(150) NOT NULL,
  `rid` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `hrs` int(11) NOT NULL,
  `r_price` bigint(20) NOT NULL,
  `payment` text NOT NULL,
  `district` varchar(50) NOT NULL,
  `municipality` varchar(70) NOT NULL,
  `tole` varchar(70) NOT NULL,
  `ward` int(11) NOT NULL,
  `ph` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `pid` bigint(20) DEFAULT NULL,
  `sale_amt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`pid`, `sale_amt`) VALUES
(1, 100000),
(3, 85000),
(2, 350000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `user_type`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'pukarpradhn78@gmail.com', 'admin'),
('pratik', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratikshrestha76@gmail.com', 'user'),
('user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user633@gmail.com', 'user'),
('user1', 'ee11cbb19052e40b07aac0ca060c23ee', 'user@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_order`
--
ALTER TABLE `c_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_order`
--
ALTER TABLE `c_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
