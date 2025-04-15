-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 11:46 AM
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
-- Database: `ict`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `pengguna` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `jawatan` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `no_tell` int(12) NOT NULL,
  `no_tell_pej` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `pengguna`, `username`, `email`, `password`, `jawatan`, `unit`, `no_tell`, `no_tell_pej`) VALUES
(1, 'admin', 'admin', 'sarah98@gmail.com', 'admin@1', 'btrm', 'btmr', 432432, 423423);

-- --------------------------------------------------------

--
-- Table structure for table `itemlaptop`
--

CREATE TABLE `itemlaptop` (
  `id` int(11) NOT NULL,
  `jenama_model` varchar(100) NOT NULL,
  `no_siri` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_store` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemlaptop`
--

INSERT INTO `itemlaptop` (`id`, `jenama_model`, `no_siri`, `tempat_store`) VALUES
(14, 'Dell Vostro 3400', '163WVC3', 'Stor'),
(11, 'DELL XPS 13 ULTRABOOK', '25FKPY1', 'Stor'),
(1, 'HP IDS UMA-820', '5CG5524CV1', 'Stor'),
(9, 'DELL XPS 13 ULTRABOOK', '75FKPY1', 'Stor'),
(13, 'Dell Vostro 3400', '7Z45VC3', 'Unit Kawalan'),
(7, 'HP EliteBook Folio 1040 G2', '8CG55207Y5', 'Stor'),
(5, 'HP EliteBook Folio 1040 G2', '8CG55207Y6', 'Stor'),
(3, 'HP EliteBook Folio 1040 G2', '8CG55207Y8', 'Stor'),
(6, 'HP EliteBook Folio 1040 G2', '8CG55207YC', 'Stor'),
(4, 'HP EliteBook Folio 1040 G2', '8CG55207YD', 'Stor'),
(8, 'HP EliteBook Folio 1040 G2', '8CG55207YJ', 'Stor'),
(2, 'HP IDS UMA-820', '8CG55207YL', 'Stor'),
(10, 'DELL XPS 13 ULTRABOOK', '95FKPY1', 'Stor'),
(12, 'DELL XPS 13 ULTRABOOK', 'B5FKPY1', 'Stor'),
(16, 'MACBOOK PRO 13.3', 'C1MP342NDTY3', 'Bilik ICT'),
(23, 'Lenono Think Pad L14', 'PF3NV8HV', 'Bilik Aset'),
(18, 'Lenono Think Pad L14', 'PF3P68Q6', 'Bhgn H Pinjam'),
(21, 'Lenono Think Pad L14', 'PF3P6RG9', 'Bilik Aset'),
(19, 'Lenono Think Pad L14', 'PF3P6TL2', 'Bhgn H Pinjam'),
(22, 'Lenono Think Pad L14', 'PF3PA4PG', 'Bilik Aset'),
(20, 'Lenono Think Pad L14', 'PF3PAF77', 'Bhgn H Pinjam'),
(24, 'Lenono Think Pad L14', 'PF3PBAPQ', 'Bilik Aset'),
(17, 'MACBOOK PRO 13.3', 'SC1MQL4BJDTY3', 'Bilik ICT'),
(15, 'MACBOOK PRO 13.3', 'SC1MQL4DDDTY3', 'Bilik ICT');

-- --------------------------------------------------------

--
-- Table structure for table `itempc`
--

CREATE TABLE `itempc` (
  `id` int(11) NOT NULL,
  `jenama_model` varchar(50) NOT NULL,
  `no_siri` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_store` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itempc`
--

INSERT INTO `itempc` (`id`, `jenama_model`, `no_siri`, `tempat_store`) VALUES
(168, 'Lenovo 8708', 'L3A0244', 'Stor 32'),
(167, 'Lenovo 8124', 'L3EN586', 'Stor 32'),
(104, 'Lenovo 3598', 'PB1ZYK1', 'Stor 32'),
(26, 'Lenovo 3156', 'PBAARN5', 'Stor 33'),
(95, 'Lenovo 3156', 'PBAARP2', 'Stor 32'),
(94, 'Lenovo 3156', 'PBAARP4', 'Stor 32'),
(93, 'Lenovo 3156', 'PBAARP5', 'Stor 32'),
(20, 'Lenovo 3156', 'PBAARY2', 'Stor 33'),
(96, 'Lenovo 3156', 'PBAATF0', 'Stor 32'),
(30, 'Lenovo 3392', 'PBB0T6N', 'Stor 33'),
(124, 'Lenovo 3156', 'PBBLGH1', 'Stor 32'),
(166, 'Lenovo 2116', 'PBBV14C', 'Stor 32'),
(4, 'Lenovo 2116', 'PBBV14E', 'Stor 33'),
(97, 'Lenovo 3156', 'PBBV15Y', 'Stor 32'),
(6, 'Lenovo 2116', 'PBBV16P', 'Stor 33'),
(164, 'Lenovo 2116', 'PBBV24N', 'Stor 32'),
(25, 'Lenovo 3392', 'PBG4Y4V', 'Stor 33'),
(19, 'Lenovo 3392', 'PBG4Y5Y', 'Stor 33'),
(17, 'Lenovo 3392', 'PBG4Z4Y', 'Stor 33'),
(24, 'Lenovo 3392', 'PBG4Z5K', 'Stor 33'),
(11, 'Lenovo 3392', 'PBG4Z5L', 'Stor 33'),
(10, 'Lenovo 3392', 'PBG4Z5P', 'Stor 33'),
(13, 'Lenovo 3392', 'PBG4Z6N', 'Stor 33'),
(7, 'Lenovo 3392', 'PBG4Z7A', 'Stor 33'),
(12, 'Lenovo 3392', 'PBG4Z7C', 'Stor 33'),
(2, 'Lenovo 3392', 'PBG4Z7F', 'Stor 33'),
(15, 'Lenovo 3392', 'PBG5M5P', 'Stor 33'),
(21, 'Lenovo 3392', 'PBG5M5Y', 'Stor 33'),
(29, 'Lenovo 3392', 'PBG5P7N', 'Stor 33'),
(8, 'Lenovo 3392', 'PBG5R0H', 'Stor 33'),
(9, 'Lenovo 3392', 'PBG5R0M', 'Stor 33'),
(1, 'Lenovo 3392', 'PBG5R1R', 'Bilik 33'),
(18, 'Lenovo 3392', 'PBG5R6D', 'Stor 33'),
(14, 'Lenovo 3156', 'PBHWZD8', 'Stor 33'),
(16, 'Lenovo 3156', 'PBKFLT5', 'Stor 33'),
(100, 'Lenovo 3156', 'PBZ2ZAW', 'Stor 32'),
(3, 'Lenovo 2116', 'PBZ2ZBT', 'Stor 33'),
(101, 'Lenovo 3156', 'PBZ2ZCC', 'Stor 32'),
(46, 'Lenovo 2116', 'PBZ2ZEZ', 'Stor 33'),
(126, 'Lenovo 3156', 'PBZ2ZFC', 'Stor 32'),
(98, 'Lenovo 3156', 'PBZ2ZGG', 'Stor 32'),
(99, 'Lenovo 3156', 'PBZ2ZGR', 'Stor 32'),
(125, 'Lenovo 3156', 'PBZ2ZKB', 'Stor 32'),
(45, 'Lenovo 2116', 'PBZ2ZKE', 'Stor 33'),
(144, 'Lenovo 10AS', 'PC010FB7', 'Stor 32'),
(146, 'Lenovo 10AS', 'PC010FD8', 'Stor 32'),
(148, 'Lenovo 10AS', 'PC010FD9', 'Stor 32'),
(151, 'Lenovo 10AS', 'PC010FDF', 'Stor 32'),
(145, 'Lenovo 10AS', 'PC010FDV', 'Stor 32'),
(23, 'Lenovo 10AS', 'PC010FDY', 'Stor 33'),
(150, 'Lenovo 10AS', 'PC010FE4', 'Stor 32'),
(127, 'Lenovo 10AS', 'PC010FED', 'Stor 32'),
(149, 'Lenovo 10AS', 'PC010FFX', 'Stor 32'),
(147, 'Lenovo 10AS', 'PC010FGC', 'Stor 32'),
(22, 'Lenovo 0829', 'R82EFHW', 'Stor 33'),
(5, 'Lenovo 0829', 'R82EFPZ', 'Stor 33'),
(113, 'Lenovo 7279', 'R883YEH', 'Stor 32'),
(161, 'Lenovo 830', 'R8D8Z9L', 'Stor 32'),
(108, 'Lenovo 830', 'R8D9A3R', 'Stor 32'),
(79, 'Lenovo 830', 'R8D9A4N', 'Stor 32'),
(120, 'Lenovo 830', 'R8D9M2F', 'Stor 32'),
(75, 'Lenovo 7507', 'R8K7A0H', 'Stor 32'),
(114, 'Lenovo 830', 'R8K7A1F', 'Stor 32'),
(160, 'Lenovo 830', 'R8K7C4G', 'Stor 32'),
(69, 'Lenovo 830', 'R8K7C8B', 'Stor 32'),
(82, 'Lenovo 830', 'R8K7C8D', 'Stor 32'),
(86, 'Lenovo 830', 'R8K7C8E', 'Stor 32'),
(139, 'Lenovo 830', 'R8K7G7D', 'Stor 32'),
(70, 'Lenovo 830', 'R8K7G7E', 'Stor 32'),
(141, 'Lenovo 830', 'R8K7G7K', 'Stor 32'),
(63, 'Lenovo 830', 'R8K7H0W', 'Stor 32'),
(156, 'Lenovo 830', 'R8K7H1L', 'Stor 32'),
(132, 'Lenovo 830', 'R8K7H8H', 'Stor 32'),
(159, 'Lenovo 830', 'R8K7H8T', 'Stor 32'),
(90, 'Lenovo 830', 'R8K7H9B', 'Stor 32'),
(137, 'Lenovo 830', 'R8K7H9N', 'Stor 32'),
(117, 'Lenovo 830', 'R8K7K1L', 'Stor 32'),
(85, 'Lenovo 830', 'R8K7K1X', 'Stor 32'),
(109, 'Lenovo 830', 'R8L8V4G', 'Stor 32'),
(157, 'Lenovo 830', 'R8L8V4W', 'Stor 32'),
(136, 'Lenovo 830', 'R8L8V5E', 'Stor 32'),
(83, 'Lenovo 830', 'R8L8V5K', 'Stor 32'),
(143, 'Lenovo 830', 'R8L8W6B', 'Stor 32'),
(110, 'Lenovo 830', 'R8L8W6X', 'Stor 32'),
(162, 'Lenovo 830', 'R8L8W7E', 'Stor 32'),
(73, 'Lenovo 830', 'R8L8W7H', 'Stor 32'),
(27, 'Lenovo 0830', 'R8L8X1C', 'Stor 33'),
(138, 'Lenovo 830', 'R8L8X1L', 'Stor 32'),
(105, 'Lenovo 830', 'R8L8X1P', 'Stor 32'),
(142, 'Lenovo 830', 'R8L8X1R', 'Stor 32'),
(155, 'Lenovo 830', 'R8L8X1W', 'Stor 32'),
(116, 'Lenovo 830', 'R8L8X1Y', 'Stor 32'),
(111, 'Lenovo 830', 'R8L8X2A', 'Stor 32'),
(154, 'Lenovo 830', 'R8L8X2E', 'Stor 32'),
(89, 'Lenovo 830', 'R8L8X2H', 'Stor 32'),
(92, 'Lenovo 830', 'R8L8Z6X', 'Stor 32'),
(66, 'Lenovo 830', 'R8L8Z7C', 'Stor 32'),
(118, 'Lenovo 830', 'R8L8Z8K', 'Stor 32'),
(123, 'Lenovo 830', 'R8L8Z9G', 'Stor 32'),
(61, 'Lenovo 830', 'R8L8Z9L', 'Stor 32'),
(119, 'Lenovo 830', 'R8L8Z9R', 'Stor 32'),
(91, 'Lenovo 830', 'R8L9A0A', 'Stor 32'),
(72, 'Lenovo 830', 'R8L9A0B', 'Stor 32'),
(140, 'Lenovo 830', 'R8M0G5M', 'Stor 32'),
(107, 'Lenovo 830', 'R8M0G7Y', 'Stor 32'),
(134, 'Lenovo 830', 'R8M0G9L', 'Stor 32'),
(67, 'Lenovo 830', 'R8M0G9P', 'Stor 32'),
(115, 'Lenovo 830', 'R8M0G9T', 'Stor 32'),
(71, 'Lenovo 830', 'R8M0G9V', 'Stor 32'),
(121, 'Lenovo 830', 'R8M0H0E', 'Stor 32'),
(81, 'Lenovo 830', 'R8M0H0K', 'Stor 32'),
(133, 'Lenovo 830', 'R8M0H0M', 'Stor 32'),
(88, 'Lenovo 830', 'R8M0H0X', 'Stor 32'),
(78, 'Lenovo 830', 'R8M0H4E', 'Stor 32'),
(163, 'Lenovo 830', 'R8M0H4N', 'Stor 32'),
(106, 'Lenovo 830', 'R8M0H4Y', 'Stor 32'),
(135, 'Lenovo 830', 'R8M0H5E', 'Stor 32'),
(80, 'Lenovo 830', 'R8M0H7K', 'Stor 32'),
(152, 'Lenovo 7507', 'R8P789R', 'Stor 32'),
(62, 'Lenovo 7507', 'R8P789X', 'Stor 32'),
(122, 'Lenovo 7507', 'R8P791F', 'Stor 32'),
(77, 'Lenovo 7507', 'R8P934W', 'Stor 32'),
(129, 'Lenovo 7507', 'R8P942C', 'Stor 32'),
(130, 'Lenovo 7507', 'R8V669D', 'Stor 32'),
(131, 'Lenovo 7507', 'R8V673A', 'Stor 32'),
(158, 'Lenovo 7507', 'R8V673F', 'Stor 32'),
(48, 'Lenovo 7507', 'R8V678D', 'Stor 33'),
(84, 'Lenovo 7507', 'R8V681E', 'Stor 32'),
(76, 'Lenovo 7507', 'R8V682N', 'Stor 32'),
(74, 'Lenovo 7507', 'R8V684T', 'Stor 32'),
(103, 'Lenovo 7507', 'R8W472L', 'Stor 32'),
(65, 'Lenovo 7507', 'R8W474F', 'Stor 32'),
(87, 'Lenovo 7507', 'R8W479M', 'Stor 32'),
(64, 'Lenovo 7507', 'R8W479N', 'Stor 32'),
(112, 'Lenovo 7507', 'R8W481D', 'Stor 32'),
(153, 'Lenovo 7507', 'R8W481M', 'Stor 32'),
(47, 'Lenovo 7507', 'R8W482D', 'Stor 33'),
(102, 'Lenovo 7507', 'R8W484M', 'Stor 32'),
(68, 'Lenovo 7507', 'R8W484Y', 'Stor 32'),
(128, 'Lenovo 7507', 'R8W485L', 'Stor 32'),
(31, 'Lenovo 7507', 'R8Z157P', 'Stor 33'),
(165, 'HP', 'SGH9310D50', 'Stor 32');

-- --------------------------------------------------------

--
-- Table structure for table `itemprinter`
--

CREATE TABLE `itemprinter` (
  `id` int(11) NOT NULL,
  `jenama_model` varchar(100) NOT NULL,
  `no_siri` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_store` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemprinter`
--

INSERT INTO `itemprinter` (`id`, `jenama_model`, `no_siri`, `tempat_store`) VALUES
(10, 'Oki C332', 'BW0B026701C0', 'Stor'),
(7, 'BW35000821', 'KDN/IMI101/H/23/278', 'Stor'),
(6, 'BW35000823', 'KDN/IMI101/H/23/279', 'Stor'),
(9, 'BW35000820', 'KDN/IMI101/H/23/281', 'Stor'),
(5, 'BW35000819', 'KDN/IMI101/H/23/282', 'Stor'),
(8, 'BW37041977', 'KDN/IMI101/H/23/283', 'Stor'),
(3, 'X3C8009866', 'KDN/IMI101/R/22/1692', 'Stor'),
(2, 'X3C8009818', 'KDN/IMI101/R/22/1693', 'Stor'),
(4, 'X3C8009820', 'KDN/IMI101/R/22/2316', 'Stor'),
(1, 'X3C8010574', 'KDN/IMI101/R/22/6986', 'Stor');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(100) NOT NULL,
  `pengguna` varchar(50) NOT NULL,
  `peralatan` varchar(50) NOT NULL,
  `jenis` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `jawatan` text NOT NULL,
  `unit` text NOT NULL,
  `no_tel` int(255) NOT NULL,
  `tkeluar` date NOT NULL,
  `pengesahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `pengguna`, `peralatan`, `jenis`, `name`, `email`, `jawatan`, `unit`, `no_tel`, `tkeluar`, `pengesahan`) VALUES
(2, 'raisha1', 'LAPTOP', 'DELL XPS 13 ULTRABOOK - 25FKPY1', 'FSDAF', 'sarahnereesa98@gmail.com', 'DFASD', 'DFSA', 12, '2025-03-20', 'admin'),
(3, 'Intikha', 'LAPTOP', '', 'intan', 'intanzulaikha803@gmail.com', 'intern', 'technical', 192941710, '2025-04-09', '');

-- --------------------------------------------------------

--
-- Table structure for table `pinjamanpc`
--

CREATE TABLE `pinjamanpc` (
  `id_pinjaman` int(11) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `peralatan` varchar(100) NOT NULL,
  `jenis` text NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `jawatan` text NOT NULL,
  `unit` text NOT NULL,
  `no_tel` int(255) NOT NULL,
  `tkeluar` date NOT NULL,
  `pengesahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjamanpc`
--

INSERT INTO `pinjamanpc` (`id_pinjaman`, `pengguna`, `peralatan`, `jenis`, `name`, `email`, `jawatan`, `unit`, `no_tel`, `tkeluar`, `pengesahan`) VALUES
(3, 'raisha1', 'PC', 'Lenovo 8708 - L3A0244, Lenovo 8124 - L3EN586', 'DSAF, TWE', 'SAF21@F, TEWTW@3', 'FDF, GSG', 'FAD, DGSSD', 0, '2025-03-20', 'admin'),
(4, 'raisha1', 'PC', 'Lenovo 3598 - PB1ZYK1, Lenovo 3156 - PBAARN5', 'Sofea, sarah', 'sarahnereesa98@gmail.com, sarahnereesa98@gmail.com', 'btmr, btmr', 'btmr, btmr', 0, '2025-03-19', 'admin'),
(5, 'raisha1', 'PC', '', 'sarah nereesa, sofea adnan', 'sarahnereesa98@gmail.com, sarahnereesa98@gmail.com', 'btmr, btmr', 'btmr, btmr', 12, '2025-03-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `pinjamanprinter`
--

CREATE TABLE `pinjamanprinter` (
  `id_pinjaman` int(11) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `peralatan` varchar(100) NOT NULL,
  `jenis` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `jawatan` text NOT NULL,
  `unit` text NOT NULL,
  `no_tel` int(255) NOT NULL,
  `tkeluar` date NOT NULL,
  `pengesahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pinjamanprinter`
--

INSERT INTO `pinjamanprinter` (`id_pinjaman`, `pengguna`, `peralatan`, `jenis`, `name`, `email`, `jawatan`, `unit`, `no_tel`, `tkeluar`, `pengesahan`) VALUES
(1, 'raisha1', 'PRINTER', 'Oki C332 - BW0B026701C0, BW35000821 - KDN/IMI101/H/23/278', 'sarah, sarah', 'sarahnereesa98@gmail.com, sarahnereesa98@gmail.com', 'fdsf, rewr', 'dfsd, erew', 0, '2025-03-19', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pengguna` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jawatan` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `no_tell` int(12) NOT NULL,
  `no_tell_pej` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pengguna`, `username`, `email`, `password`, `jawatan`, `unit`, `no_tell`, `no_tell_pej`) VALUES
(1, 'raisha', 'raisha1', 'sarahnereesa98@gmail.com', 'Raisha@1', 'btmr', 'btmr', 554354, 543534),
(2, 'Intan', 'Intikha', 'intanzulaikha803@gmail.com', 'Intanikha@803', 'intern', 'Technical', 192941710, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemlaptop`
--
ALTER TABLE `itemlaptop`
  ADD PRIMARY KEY (`no_siri`),
  ADD UNIQUE KEY `id_pinjaman` (`id`);

--
-- Indexes for table `itempc`
--
ALTER TABLE `itempc`
  ADD PRIMARY KEY (`no_siri`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `itemprinter`
--
ALTER TABLE `itemprinter`
  ADD PRIMARY KEY (`no_siri`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `pinjamanpc`
--
ALTER TABLE `pinjamanpc`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `pinjamanprinter`
--
ALTER TABLE `pinjamanprinter`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itemlaptop`
--
ALTER TABLE `itemlaptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `itempc`
--
ALTER TABLE `itempc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `itemprinter`
--
ALTER TABLE `itemprinter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pinjamanpc`
--
ALTER TABLE `pinjamanpc`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pinjamanprinter`
--
ALTER TABLE `pinjamanprinter`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
