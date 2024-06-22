-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 09:22 PM
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
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `father_name` text DEFAULT NULL,
  `account_num` int(11) DEFAULT NULL,
  `account_type` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nationality` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone_num` text DEFAULT NULL,
  `marital_status` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `qualification` text DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `loan` int(11) DEFAULT 0,
  `open_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `father_name`, `account_num`, `account_type`, `dob`, `nationality`, `address`, `phone_num`, `marital_status`, `email`, `qualification`, `balance`, `pin`, `loan`, `open_date`) VALUES
(24, 'Abubakar', 'Shahzad', 1538769064, 'Current', '2004-01-12', 'Pakistani', 'Fasialabad', '03217650781', 'unmarried', 'abubakarshahzad@gmail.com', 'Graduate', 1788621.20, 3631, 0, '2024-05-19'),
(25, 'Abdullah', 'Shahzad', 1165328127, 'Savings', '2008-05-04', 'Pakistani', 'Islamabad', '03229652748', 'unmarried', 'abdullah123@email.com', 'Matric', 130000.00, 8585, 15000, '2024-05-19'),
(26, 'Ahmad', 'Afzaal', 1765557207, 'Current', '2005-03-15', 'Oman', 'Lahore', '03064190330', 'Married', 'ahmadafzaal@gmail.com', 'Inter', 145000.00, 590, 0, '2024-05-19'),
(27, 'Sara', 'Ahmad', 1806624512, 'Current', '2008-12-09', 'Paksitani', 'Islamabad', '03449685742', 'unmarried', 'saraahmad45@email.com', 'Graduate', 384250.00, 5555, 0, '2024-05-19'),
(28, 'Abbas', 'Ali', 1404803221, 'Savings', '1998-06-12', 'Pakistani', 'Faisalabad', '03235694521', 'Married', 'abbasali980@email.com', 'Matric', 133000.00, 1212, 120000, '2024-05-19'),
(30, 'Umar', 'Shafiq', 1207704356, 'Savings', '1999-04-17', 'Pakistani', 'Faisalabad', '03968574125', 'Married', 'umar123@gmail.com', 'Matric', 301372.50, 8888, 0, '2024-05-20'),
(31, 'Ahmad', 'Adnan', 1816330349, 'Savings', '2006-12-26', 'Pakistani', 'Faisalabad', '03216607219', 'unmarried', 'ahmadadnana88@email.com', 'Inter', 158000.00, 9810, 50000, '2024-05-20'),
(32, 'Zahra', 'Ali', 1473645472, 'Current', '2009-09-15', 'Pakistani', 'Lahore', '03218596512', 'unmarried', 'zahrafatima@email.com', 'Graduate', 254000.00, 2222, 0, '2024-05-20'),
(33, 'Abid', 'Hussain', 1713995332, 'Current', '1988-08-22', 'Pakistani', 'Islamabd', '03449674855', 'Married', 'abidali78@gmail.com', 'Matric', 321585.00, 3331, 130000, '2024-05-21'),
(34, 'Amir', 'Nawaz', 1290126757, 'Savings', '2001-04-16', 'Paksitani', 'Lahore', '03129647256', 'Married', 'amir22@gmail.com', 'Matric', 257000.00, 5896, 80000, '2024-05-21'),
(35, 'Imran', 'Aslam', 1631529720, 'Current', '1988-02-03', 'Pakistani', 'Lahore', '03229674582', 'Married', 'imran690@email.com', 'Matric', 136000.00, 5963, 0, '2024-05-22'),
(36, 'Zain ', 'Ali', 1724242473, 'Savings', '2001-09-01', 'Pakistani', 'Faisalabad', '03249685241', 'uunmarried', 'zain88@gmail.com', 'Inter', 156000.00, 2695, 100000, '2024-05-23'),
(37, 'Haider', 'Ali', 1760980033, 'Current', '1986-05-19', 'Pakistani', 'Faisalabad', '03129685456', 'Married', 'haiderali512@email.com', 'Matric', 330000.00, 569, 18000, '2024-05-24'),
(38, 'Subhan', 'Sohail', 1480261306, 'Debit', '2002-09-21', 'Pakistani', 'Lahore', '03249685124', 'Unmarried', 'subhan123@email.com', 'Matric', 100000.00, 1234, 20000, '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `bankstatement`
--

CREATE TABLE `bankstatement` (
  `statement_id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `Debit` decimal(10,2) DEFAULT NULL,
  `Credit` decimal(10,2) DEFAULT NULL,
  `balance_after_transaction` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bankstatement`
--

INSERT INTO `bankstatement` (`statement_id`, `account_id`, `transaction_date`, `description`, `Debit`, `Credit`, `balance_after_transaction`) VALUES
(11, 24, '2024-05-19', 'Initial deposit', 0.00, 20000.00, 20000.00),
(12, 24, '2024-05-19', 'Deposit', 0.00, 20000.00, 40000.00),
(13, 25, '2024-05-19', 'Initial deposit', 0.00, 8000.00, 8000.00),
(14, 26, '2024-05-19', 'Initial deposit', 0.00, 10000.00, 10000.00),
(15, 27, '2024-05-19', 'Initial deposit', 0.00, 8000.00, 8000.00),
(16, 28, '2024-05-19', 'Initial deposit', 0.00, 30000.00, 30000.00),
(17, 24, '2024-05-19', 'WithDraw Via Atm', 6000.00, 0.00, 34000.00),
(18, 24, '2024-05-19', 'Pay Zakat', 850.00, 0.00, 33150.00),
(20, 30, '2024-05-20', 'Initial deposit', 0.00, 20000.00, 20000.00),
(21, 31, '2024-05-20', 'Initial deposit', 0.00, 8000.00, 8000.00),
(22, 32, '2024-05-20', 'Initial deposit', 0.00, 12000.00, 12000.00),
(23, 24, '2024-05-20', 'Deposit', 0.00, 50000.00, 83150.00),
(24, 24, '2024-05-20', 'WithDraw Via Atm', 5000.00, 0.00, 78150.00),
(25, 24, '2024-05-20', 'Deposit', 0.00, 200000.00, 278150.00),
(26, 25, '2024-05-20', 'Loan ', 0.00, 20000.00, 28000.00),
(27, 26, '2024-05-20', 'Deposit Via Atm', 0.00, 80000.00, 90000.00),
(28, 31, '2024-05-20', 'Loan ', 0.00, 100000.00, 108000.00),
(29, 31, '2024-05-20', 'Loan Repay', 50000.00, 0.00, 58000.00),
(30, 27, '2024-05-20', 'Deposit', 0.00, 300000.00, 308000.00),
(31, 27, '2024-05-20', 'WithDraw Via Atm', 78000.00, 0.00, 230000.00),
(32, 27, '2024-05-20', 'Pay Zakat', 5750.00, 0.00, 224250.00),
(33, 27, '2024-05-20', 'WithDraw', 20000.00, 0.00, 204250.00),
(34, 33, '2024-05-21', 'Initial deposit', 0.00, 16000.00, 16000.00),
(35, 34, '2024-05-21', 'Initial deposit', 0.00, 12000.00, 12000.00),
(36, 33, '2024-05-21', 'Deposit', 0.00, 200000.00, 216000.00),
(37, 33, '2024-05-21', 'Pay Zakat', 5400.00, 0.00, 210600.00),
(38, 33, '2024-05-21', 'WithDraw Via Atm', 10000.00, 0.00, 200600.00),
(39, 34, '2024-05-21', 'Loan ', 0.00, 100000.00, 112000.00),
(40, 34, '2024-05-21', 'WithDraw', 20000.00, 0.00, 92000.00),
(41, 24, '2024-05-21', 'Deposit Via Atm', 0.00, 500000.00, 778150.00),
(42, 24, '2024-05-21', 'WithDraw Via Atm', 50000.00, 0.00, 728150.00),
(43, 25, '2024-05-21', 'Deposit', 0.00, 300000.00, 328000.00),
(44, 25, '2024-05-21', 'Loan Repay', 5000.00, 0.00, 323000.00),
(45, 32, '2024-05-21', 'Deposit Via Atm', 0.00, 80000.00, 92000.00),
(46, 32, '2024-05-21', 'Deposit Via Atm', 0.00, 30000.00, 122000.00),
(47, 32, '2024-05-21', 'WithDraw Via Atm', 15000.00, 0.00, 107000.00),
(48, 24, '2024-05-21', 'WithDraw Via Atm', 100000.00, 0.00, 628150.00),
(49, 27, '2024-05-21', 'Deposit', 0.00, 300000.00, 504250.00),
(50, 30, '2024-05-21', 'Deposit', 0.00, 256000.00, 276000.00),
(51, 28, '2024-05-21', 'Loan ', 0.00, 200000.00, 230000.00),
(52, 34, '2024-05-21', 'Loan Repay', 20000.00, 0.00, 72000.00),
(53, 28, '2024-05-21', 'WithDraw', 8000.00, 0.00, 222000.00),
(54, 33, '2024-05-21', 'Pay Zakat', 5015.00, 0.00, 195585.00),
(55, 24, '2024-05-21', 'WithDraw Via Atm', 59000.00, 0.00, 569150.00),
(56, 25, '2024-05-21', 'WithDraw Via Atm', 80000.00, 0.00, 243000.00),
(57, 26, '2024-05-21', 'WithDraw Via Atm', 15000.00, 0.00, 75000.00),
(58, 32, '2024-05-21', 'WithDraw Via Atm', 7000.00, 0.00, 100000.00),
(59, 35, '2024-05-22', 'Initial deposit', 0.00, 16000.00, 16000.00),
(60, 35, '2024-05-22', 'Deposit', 0.00, 50000.00, 66000.00),
(61, 34, '2024-05-22', 'Deposit', 0.00, 80000.00, 152000.00),
(62, 32, '2024-05-22', 'Deposit', 0.00, 56000.00, 156000.00),
(63, 33, '2024-05-22', 'WithDraw', 30000.00, 0.00, 165585.00),
(64, 31, '2024-05-22', 'WithDraw', 20000.00, 0.00, 38000.00),
(65, 33, '2024-05-22', 'Loan ', 0.00, 150000.00, 315585.00),
(66, 28, '2024-05-22', 'Loan Repay', 60000.00, 0.00, 162000.00),
(67, 24, '2024-05-22', 'WithDraw Via Atm', 96000.00, 0.00, 473150.00),
(68, 25, '2024-05-22', 'WithDraw Via Atm', 25000.00, 0.00, 218000.00),
(69, 26, '2024-05-22', 'Deposit Via Atm', 0.00, 100000.00, 175000.00),
(70, 27, '2024-05-22', 'WithDraw Via Atm', 70000.00, 0.00, 434250.00),
(71, 30, '2024-05-22', 'Pay Zakat', 6900.00, 0.00, 269100.00),
(72, 24, '2024-05-22', 'Deposit Via Atm', 0.00, 200000.00, 673150.00),
(73, 36, '2024-05-23', 'Initial deposit', 0.00, 6000.00, 6000.00),
(74, 36, '2024-05-23', 'Deposit', 0.00, 50000.00, 56000.00),
(75, 35, '2024-05-23', 'Deposit', 0.00, 70000.00, 136000.00),
(76, 34, '2024-05-23', 'Deposit', 0.00, 105000.00, 257000.00),
(77, 33, '2024-05-23', 'Deposit', 0.00, 26000.00, 341585.00),
(78, 32, '2024-05-23', 'Deposit', 0.00, 98000.00, 254000.00),
(79, 31, '2024-05-23', 'Deposit', 0.00, 200000.00, 238000.00),
(80, 30, '2024-05-23', 'Deposit Via Atm', 0.00, 60000.00, 329100.00),
(81, 28, '2024-05-23', 'Deposit Via Atm', 0.00, 20000.00, 182000.00),
(82, 27, '2024-05-23', 'Deposit Via Atm', 0.00, 15000.00, 449250.00),
(83, 26, '2024-05-23', 'Deposit Via Atm', 0.00, 20000.00, 195000.00),
(84, 25, '2024-05-23', 'WithDraw Via Atm', 8000.00, 0.00, 210000.00),
(85, 24, '2024-05-23', 'WithDraw', 86000.00, 0.00, 587150.00),
(86, 24, '2024-05-23', 'Deposit', 0.00, 50000.00, 637150.00),
(87, 36, '2024-05-23', 'Loan ', 0.00, 100000.00, 156000.00),
(88, 24, '2024-05-24', 'WithDraw', 150000.00, 0.00, 487150.00),
(89, 24, '2024-05-24', 'Deposit Via Atm', 0.00, 58000.00, 545150.00),
(90, 25, '2024-05-24', 'WithDraw', 80000.00, 0.00, 130000.00),
(91, 26, '2024-05-24', 'WithDraw', 50000.00, 0.00, 145000.00),
(92, 27, '2024-05-24', 'WithDraw', 65000.00, 0.00, 384250.00),
(93, 28, '2024-05-24', 'WithDraw', 29000.00, 0.00, 153000.00),
(94, 30, '2024-05-24', 'WithDraw', 20000.00, 0.00, 309100.00),
(95, 31, '2024-05-24', 'WithDraw Via Atm', 80000.00, 0.00, 158000.00),
(96, 37, '2024-05-24', 'Initial deposit', 0.00, 20000.00, 20000.00),
(97, 24, '2024-05-24', 'Deposit', 0.00, 150000.00, 695150.00),
(98, 24, '2024-05-24', 'WithDraw', 20000.00, 0.00, 675150.00),
(99, 37, '2024-05-24', 'Loan ', 0.00, 18000.00, 38000.00),
(100, 33, '2024-05-24', 'Loan Repay', 20000.00, 0.00, 321585.00),
(101, 24, '2024-05-27', 'Deposit Via Atm', 0.00, 500000.00, 1175150.00),
(102, 24, '2024-05-27', 'WithDraw Via Atm', 89000.00, 0.00, 1086150.00),
(103, 24, '2024-05-27', 'Deposit Via Atm', 0.00, 15000.00, 1101150.00),
(104, 24, '2024-05-27', 'Pay Zakat', 27528.75, 0.00, 1073621.25),
(105, 24, '2024-05-28', 'WithDraw', 300000.00, 0.00, 773621.25),
(106, 24, '2024-05-28', 'Deposit', 0.00, 800000.00, 1573621.25),
(107, 24, '2024-05-28', 'Deposit Via Atm', 0.00, 20000.00, 1593621.25),
(108, 24, '2024-05-28', 'WithDraw Via Atm', 80000.00, 0.00, 1513621.25),
(109, 24, '2024-05-28', 'WithDraw Via Atm', 50000.00, 0.00, 1463621.25),
(110, 24, '2024-05-28', 'WithDraw Via Atm', 30000.00, 0.00, 1433621.25),
(111, 24, '2024-05-28', 'WithDraw Via Atm', 90000.00, 0.00, 1343621.25),
(112, 24, '2024-05-28', 'Deposit Via Atm', 0.00, 20000.00, 1363621.25),
(113, 24, '2024-05-31', 'Deposit', 0.00, 120000.00, 1483621.25),
(114, 24, '2024-06-01', 'WithDraw', 60000.00, 0.00, 1423621.25),
(115, 24, '2024-06-01', 'WithDraw Via Atm', 5000.00, 0.00, 1418621.25),
(116, 28, '2024-06-03', 'Loan Repay', 20000.00, 0.00, 133000.00),
(117, 30, '2024-06-03', 'Pay Zakat', 7727.50, 0.00, 301372.50),
(118, 37, '2024-06-03', 'Deposit', 0.00, 300000.00, 338000.00),
(119, 37, '2024-06-03', 'WithDraw', 8000.00, 0.00, 330000.00),
(120, 24, '2024-06-09', 'Deposit', 0.00, 85000.00, 1503621.25),
(121, 38, '2024-06-10', 'Initial deposit', 0.00, 10000.00, 10000.00),
(122, 38, '2024-06-10', 'Deposit', 0.00, 50000.00, 60000.00),
(123, 38, '2024-06-10', 'Deposit Via Atm', 0.00, 20000.00, 80000.00),
(124, 24, '2024-06-13', 'Deposit Via Atm', 0.00, 285000.00, 1788621.25),
(125, 38, '2024-06-14', 'Loan ', 0.00, 20000.00, 100000.00);

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id_BANK` int(11) NOT NULL DEFAULT 1,
  `BANK_MONEY` float DEFAULT NULL,
  `loan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`id_BANK`, `BANK_MONEY`, `loan`) VALUES
(2, 3588000, 533000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_num` (`account_num`);

--
-- Indexes for table `bankstatement`
--
ALTER TABLE `bankstatement`
  ADD PRIMARY KEY (`statement_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id_BANK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bankstatement`
--
ALTER TABLE `bankstatement`
  MODIFY `statement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankstatement`
--
ALTER TABLE `bankstatement`
  ADD CONSTRAINT `bankstatement_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
