-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 02:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatable_example`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `city` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mobile`, `city`) VALUES
(6, ' aluminum sulfate', 'Inorganic', '25.00', '2022-12-31'),
(7, ' ammonia', 'Inorganic', '30.00', '2022-12-31'),
(8, ' ammonium nitrate', 'Inorganic', '2.00', '2022-12-02'),
(9, ' ammonium sulfate', 'Inorganic', '20.00', '2022-12-04'),
(10, ' carbon black', 'Inorganic', '20.00', '2022-12-14'),
(11, 'chlorine', 'Inorganic', '20.00', '2022-12-31'),
(12, ' hydrochloric acid', 'Inorganic', '20.00', '2022-12-31'),
(13, ' hydrogen peroxide', 'Inorganic', '20.00', '2022-12-31'),
(14, 'Methane', 'Organic', '25.50', '2023-01-10'),
(15, 'Methane', 'Organic', '25.50', '2023-01-10'),
(16, 'Butane', 'Organic', '2.50', '2023-01-01'),
(17, 'Ethylene', 'Organic', '30.00', '2023-01-10'),
(18, 'Acetylene', 'Organic', '1.50', '2023-01-20'),
(19, 'Polythene', 'Organic', '25.50', '2023-02-10'),
(20, 'Polystyrene', 'Organic', '45.50', '2023-01-12'),
(21, 'Chloroform', 'Organic', '20.00', '2023-01-15'),
(22, 'Methyl alcohol', 'Organic', '25.50', '2023-01-10'),
(23, ' aluminum sulfate', 'Inorganic', '20.00', '2022-12-31'),
(24, ' ammonia', 'Inorganic', '30.00', '2022-12-31'),
(25, ' ammonium nitrate', 'Inorganic', '2.00', '2022-12-02'),
(26, ' ammonium sulfate', 'Inorganic', '20.00', '2022-12-04'),
(27, ' carbon black', 'Inorganic', '20.00', '2022-12-14'),
(28, 'chlorine', 'Inorganic', '20.00', '2022-12-31'),
(29, ' hydrochloric acid', 'Inorganic', '20.00', '2022-12-31'),
(30, ' hydrogen peroxide', 'Inorganic', '20.00', '2022-12-31'),
(31, 'Methane', 'Organic', '25.50', '2023-01-10'),
(32, 'Methane', 'Organic', '25.50', '2023-01-10'),
(33, 'Butane', 'Organic', '2.50', '2023-01-01'),
(34, 'Ethylene', 'Organic', '30.00', '2023-01-10'),
(35, 'Acetylene', 'Organic', '1.50', '2023-01-20'),
(36, 'Polythene', 'Organic', '25.50', '2023-02-10'),
(37, 'Polystyrene', 'Organic', '45.50', '2023-01-12'),
(38, 'Chloroform', 'Organic', '20.00', '2023-01-15'),
(39, 'Methyl alcohol', 'Organic', '25.50', '2023-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
