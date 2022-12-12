-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 07:15 PM
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
-- Database: `chemistry_dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `stock_id` varchar(10) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `defective` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`stock_id`, `item_name`, `in_stock`, `defective`) VALUES
('TD201', 'Bunsen burner', 5, 0),
('TD201', 'Bunsen burner', 5, 0),
('TD221', 'crucible tong', 5, 2),
('PF201', 'electronic balance', 5, 0),
('TD201', 'hot plate', 5, 0),
('TD201', 'Meker Burner', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `glasswares`
--

CREATE TABLE `glasswares` (
  `stock_id` varchar(10) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `defective` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `glasswares`
--

INSERT INTO `glasswares` (`stock_id`, `item_name`, `in_stock`, `defective`) VALUES
('TD201', 'Boiling Tube', 5, 0),
('TD221', 'beaker', 5, 10),
('PF201', 'Buchner funnel', 5, 0),
('TD201', 'burette', 5, 0),
('TD201', 'erlenmeyer flasks', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inorganic_chemicals`
--

CREATE TABLE `inorganic_chemicals` (
  `stock_id` varchar(10) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'Inorganic',
  `in_stock` decimal(5,2) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inorganic_chemicals`
--

INSERT INTO `inorganic_chemicals` (`stock_id`, `item_name`, `type`, `in_stock`, `expiry_date`) VALUES
('PF102', ' aluminum sulfate', 'Inorganic', '20.00', '2022-12-31'),
('PF103', ' ammonia', 'Inorganic', '30.00', '2022-12-31'),
('TF102', ' ammonium nitrate', 'Inorganic', '2.00', '2022-12-02'),
('ET102', ' ammonium sulfate', 'Inorganic', '20.00', '2022-12-04'),
('PF120', ' carbon black', 'Inorganic', '20.00', '2022-12-14'),
('PF130', 'chlorine', 'Inorganic', '20.00', '2022-12-31'),
('PF105', ' hydrochloric acid', 'Inorganic', '20.00', '2022-12-31'),
('PF150', ' hydrogen peroxide', 'Inorganic', '20.00', '2022-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `organic_chemicals`
--

CREATE TABLE `organic_chemicals` (
  `stock_id` varchar(10) NOT NULL,
  `item_name` varchar(60) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'Organic',
  `in_stock` decimal(5,2) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organic_chemicals`
--

INSERT INTO `organic_chemicals` (`stock_id`, `item_name`, `type`, `in_stock`, `expiry_date`) VALUES
('PF102', 'Methane', 'Organic', '25.50', '2023-01-10'),
('PF102', 'Methane', 'Organic', '25.50', '2023-01-10'),
('PF103', 'Butane', 'Organic', '2.50', '2023-01-01'),
('TF102', 'Ethylene', 'Organic', '30.00', '2023-01-10'),
('PF120', 'Acetylene', 'Organic', '1.50', '2023-01-20'),
('PF125', 'Polythene', 'Organic', '25.50', '2023-02-10'),
('PF130', 'Polystyrene', 'Organic', '45.50', '2023-01-12'),
('PF178', 'Chloroform', 'Organic', '20.00', '2023-01-15'),
('EF102', 'Methyl alcohol', 'Organic', '25.50', '2023-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` varchar(10) NOT NULL,
  `inward_date` date NOT NULL,
  `received_qty` decimal(5,2) NOT NULL,
  `rate` decimal(8,2) NOT NULL,
  `total` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Triggers `stock`
--
DELIMITER $$
CREATE TRIGGER `default_date` BEFORE INSERT ON `stock` FOR EACH ROW if ( isnull(new.inward_date) ) then
 set new.inward_date=curdate();
end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `whole_chemicals`
-- (See below for the actual view)
--
CREATE TABLE `whole_chemicals` (
`stock_id` varchar(10)
,`item_name` varchar(60)
,`type` varchar(10)
,`in_stock` decimal(5,2)
,`expiry_date` date
);

-- --------------------------------------------------------

--
-- Structure for view `whole_chemicals`
--
DROP TABLE IF EXISTS `whole_chemicals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `whole_chemicals`  AS SELECT `organic_chemicals`.`stock_id` AS `stock_id`, `organic_chemicals`.`item_name` AS `item_name`, `organic_chemicals`.`type` AS `type`, `organic_chemicals`.`in_stock` AS `in_stock`, `organic_chemicals`.`expiry_date` AS `expiry_date` FROM `organic_chemicals` union all select `inorganic_chemicals`.`stock_id` AS `stock_id`,`inorganic_chemicals`.`item_name` AS `item_name`,`inorganic_chemicals`.`type` AS `type`,`inorganic_chemicals`.`in_stock` AS `in_stock`,`inorganic_chemicals`.`expiry_date` AS `expiry_date` from `inorganic_chemicals`  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
