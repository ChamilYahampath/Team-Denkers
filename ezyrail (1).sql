-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 12:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyrail`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Fname`, `Lname`, `NIC`, `Tel`, `UserName`, `Password`) VALUES
('Chamil', 'yahanpath', '12132321', '1231223', 'chamil', '1234'),
('Kasun', 'Dhananjaya', '200117202070', '0758462129', 'Kasun', '123'),
('Kasun', 'Dhanajaya', '200117202070', '0758462129', 'Kasuna', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `normalticket`
--

CREATE TABLE `normalticket` (
  `TicketNumber` varchar(15) NOT NULL,
  `Date` date NOT NULL,
  `From` varchar(50) NOT NULL,
  `To` varchar(50) NOT NULL,
  `Adult` int(11) NOT NULL DEFAULT 0,
  `Child` int(11) NOT NULL DEFAULT 0,
  `Class` varchar(50) NOT NULL DEFAULT ''' ''',
  `JureyType` varchar(50) NOT NULL DEFAULT 'single',
  `Amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normalticket`
--

INSERT INTO `normalticket` (`TicketNumber`, `Date`, `From`, `To`, `Adult`, `Child`, `Class`, `JureyType`, `Amount`) VALUES
('NT00001', '2023-03-01', 'Colombo', 'Kandy', 2, 0, '2', 'Single', 1200),
('NT00002', '0000-00-00', '', '', 0, 0, '', '', 0),
('NT00004', '0000-00-00', '', '', 0, 0, '', '', 0),
('NT00006', '2023-03-02', 'Colombo', 'Kandy', 0, 0, '', '', 0),
('NT00007', '2023-03-02', 'Colombo', 'Kandy', 0, 0, '', '', 0),
('NT00008', '2023-03-02', 'Galle', 'Colombo', 1, 0, '1', 'Single', 0),
('NT00009', '2023-03-14', 'Galle', 'Kalutara', 2, 0, '1', 'Single', 0),
('NT00010', '2023-03-08', 'Colombo', 'Galle', 0, 0, '\' \'', 'single', 0),
('NT00011', '2023-03-01', 'Colombo', 'Galle', 0, 0, '\' \'', 'single', 0),
('NT00012', '2023-03-07', 'Colombo', 'Galle', 0, 0, '\' \'', 'single', 0),
('NT00013', '2023-03-07', 'Colombo', 'Kalutara', 0, 0, '\' \'', 'single', 0),
('NT00014', '2023-03-07', 'Colombo', 'Galle', 0, 0, '\' \'', 'single', 0),
('NT00015', '2023-03-14', 'Colombo', 'Kalutara', 0, 0, '\' \'', 'single', 0),
('NT00016', '2023-03-01', 'Colombo', 'Galle', 0, 0, '\' \'', 'single', 0),
('NT00017', '2023-03-01', 'Colombo', 'Kalutara', 0, 1, '2', 'Single', 0),
('NT00018', '2023-03-07', 'Colombo', 'Kalutara', 2, 1, '1', 'Single', 0),
('NT00019', '2023-03-07', 'Galle', 'Kandy', 3, 1, '1', 'Single', 0),
('NT00020', '2023-03-06', 'Colombo', 'Kalutara', 3, 0, '2', 'Single', 600),
('NT00021', '2023-03-01', 'Colombo', 'Kalutara', 4, 0, '1', 'Single', 1600),
('NT00022', '2023-03-01', 'Kalutara', 'Colombo', 3, 0, '1', 'Single', 1200),
('NT00023', '2023-03-06', 'Galle', 'Kandy', 3, 1, '1', 'Single', 4900);

-- --------------------------------------------------------

--
-- Table structure for table `ticketprice`
--

CREATE TABLE `ticketprice` (
  `D1` varchar(50) NOT NULL,
  `D2` varchar(50) NOT NULL,
  `First` double NOT NULL,
  `Second` double NOT NULL,
  `Third` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticketprice`
--

INSERT INTO `ticketprice` (`D1`, `D2`, `First`, `Second`, `Third`) VALUES
('Colombo', 'Galle', 1000, 500, 250),
('Colombo', 'Kalutara', 400, 200, 100),
('Colombo', 'Kandy', 1200, 600, 300),
('Galle', 'Kalutara', 600, 300, 150),
('Galle', 'Kandy', 1400, 700, 350),
('Kandy', 'Kalutara', 800, 400, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`NIC`,`UserName`);

--
-- Indexes for table `normalticket`
--
ALTER TABLE `normalticket`
  ADD PRIMARY KEY (`TicketNumber`);

--
-- Indexes for table `ticketprice`
--
ALTER TABLE `ticketprice`
  ADD PRIMARY KEY (`D1`,`D2`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
