-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 03:15 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gst`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount`
--

CREATE TABLE `amount` (
  `ID` int(10) NOT NULL,
  `name_of_service/product` varchar(20) NOT NULL,
  `hsn_acs` int(20) NOT NULL,
  `uom` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `rate` int(10) NOT NULL,
  `amt` int(10) NOT NULL,
  `less_discount` int(10) NOT NULL,
  `taxable_value` int(10) NOT NULL,
  `CGST_rate` int(10) NOT NULL,
  `CGST_amt` int(50) NOT NULL,
  `SGST_rate` int(10) NOT NULL,
  `SGST_amt` int(50) NOT NULL,
  `IGST_rate` int(10) NOT NULL,
  `IGST_amt` int(11) NOT NULL,
  `total` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amount`
--

INSERT INTO `amount` (`ID`, `name_of_service/product`, `hsn_acs`, `uom`, `qty`, `rate`, `amt`, `less_discount`, `taxable_value`, `CGST_rate`, `CGST_amt`, `SGST_rate`, `SGST_amt`, `IGST_rate`, `IGST_amt`, `total`) VALUES
(11, 'Shirt', 258, 12, 10, 5, 50, 5, 48, 2, 1, 2, 1, 0, 0, 49),
(10, 'Horse', 123, 12, 10, 5, 50, 5, 48, 2, 1, 2, 1, 0, 0, 49);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `reverse_charge` int(10) NOT NULL,
  `transportation_mode` varchar(200) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `vehicle_number` varchar(10) NOT NULL,
  `invoice_date` date NOT NULL,
  `D_O_S` date NOT NULL,
  `state` varchar(200) NOT NULL,
  `P_O_S` varchar(200) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `r_state` varchar(200) NOT NULL,
  `c_state` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `reverse_charge`, `transportation_mode`, `invoice_no`, `vehicle_number`, `invoice_date`, `D_O_S`, `state`, `P_O_S`, `r_name`, `c_name`, `r_address`, `c_address`, `gstin`, `r_state`, `c_state`) VALUES
(7, 1234, 'BUS', 'AMKS/17-18/00000', '1234', '2017-12-31', '2017-12-31', 'Maha', 'Bom', 'akki', 'leela', 'kandivali', 'bhandup', '24ABCCG1234ZZXX', 'Maha', 'Maha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount`
--
ALTER TABLE `amount`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amount`
--
ALTER TABLE `amount`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
