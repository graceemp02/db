-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 11:31 AM
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
-- Database: `plc`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminprofile`
--

CREATE TABLE `adminprofile` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(40) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `email` varchar(40) NOT NULL DEFAULT 'abc@abc.com',
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `rst_pass_code` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `adminprofile`
--

INSERT INTO `adminprofile` (`Id`, `FullName`, `Username`, `email`, `phone`, `password`, `creationDate`, `rst_pass_code`) VALUES
(1, 'Muhammad Raza', 'razasahu', 'razasahu@gmail.com', '+923197321315', 'raza321', '2022-05-27 19:39:57', NULL),
(2, 'Faith', 'faithadmin', 'info.iamredapple@gmail.com', '1235', 'faith123', '2022-06-10 21:36:46', NULL),
(3, 'Farmin', 'farminadmin', 'service.iamredapple@gmail.com', '156468', 'farmin123', '2022-07-26 18:04:39', NULL),
(5, 'Grace Automation', 'gaes', 'graceaes2@gmail.com', '+923197321315', 'gaes3@beecollabs', '2022-07-27 06:17:52', 187008),
(9, 'Anees Malik', 'anees', 'grace.emp02@gmail.com', '3523', 'anees@123', '2022-11-21 16:59:13', 989810);

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_img`
--

CREATE TABLE `advertisement_img` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `machine_name` varchar(100) DEFAULT NULL,
  `machine_api` varchar(100) DEFAULT NULL,
  `ad_pic` varchar(100) DEFAULT NULL,
  `ad_time` int(11) DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `advertisement_img`
--

INSERT INTO `advertisement_img` (`id`, `client_id`, `client_name`, `machine_id`, `machine_name`, `machine_api`, `ad_pic`, `ad_time`) VALUES
(21, 88, 'Kennel Club LAX ', 179, 'Cottages', 'kzHQbnvs2G', NULL, 5),
(22, 88, 'Kennel Club LAX ', 180, 'Room 5', 'GaY6L9e5Zp', NULL, 30),
(23, 88, 'Kennel Club LAX ', 181, 'Room 3', 'lr5YYTTdqM', 'img/88_logo.png', 30),
(24, 88, 'Kennel Club LAX ', 182, 'Room 1', '9KFqXc7wK4', NULL, 30),
(25, 88, 'Kennel Club LAX ', 183, 'Room 7', 'jYjeARZb5O', NULL, 30),
(26, 88, 'Kennel Club LAX ', 184, 'Grooming', '6gZNn4rTTi', NULL, 30),
(27, 88, 'Kennel Club LAX ', 185, 'Lobby', 'oOh3ku5i3O', NULL, 30),
(33, 90, 'Faith', 194, 'Machine1', 'rgyBpJTg5u', NULL, 5),
(34, 90, 'Faith', 195, 'Faith Machine', 'HKqhvSYNsS', NULL, 1),
(35, 90, 'Faith', 196, 'Test Machine', 'FT9D3WkUfA', NULL, 20),
(36, 90, 'Faith', 197, 'Grace 01', 'YgsYKySRDf', NULL, 5),
(37, 90, 'Faith', 198, 'Jan 14', 'dJAzu4EmQX', NULL, 1),
(38, 90, 'Faith', 199, 'Grace 02', '1SF6bjNbfH', NULL, 1),
(40, 93, 'Grace', 201, 'grace', 'OFduyW2AvZ', NULL, 30);

-- --------------------------------------------------------

--
-- Table structure for table `companydata`
--

CREATE TABLE `companydata` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `outEnvReport` varchar(255) DEFAULT NULL,
  `inEnvReport` varchar(255) DEFAULT NULL,
  `engrDesign` varchar(255) DEFAULT NULL,
  `acType` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `outAirAssessment` varchar(255) DEFAULT NULL,
  `layoutCleanAir` varchar(255) DEFAULT NULL,
  `bpApproveFau` varchar(255) DEFAULT NULL,
  `bpApproveSupply` varchar(255) DEFAULT NULL,
  `bpIndoor` varchar(255) DEFAULT NULL,
  `bpOutdoor` varchar(255) DEFAULT NULL,
  `bpExhaust` varchar(255) DEFAULT NULL,
  `bpFresh` varchar(255) DEFAULT NULL,
  `bpPlc` varchar(255) DEFAULT NULL,
  `bpDash` varchar(255) DEFAULT NULL,
  `bpHvac` varchar(255) DEFAULT NULL,
  `bpApproveFauStatus` int(11) NOT NULL DEFAULT 0,
  `bpApproveSupplyStatus` int(11) NOT NULL DEFAULT 0,
  `bpIndoorStatus` int(11) NOT NULL DEFAULT 0,
  `bpOutdoorStatus` int(11) NOT NULL DEFAULT 0,
  `bpExhaustStatus` int(11) NOT NULL DEFAULT 0,
  `bpFreshStatus` int(11) NOT NULL DEFAULT 0,
  `bpPlcStatus` int(11) NOT NULL DEFAULT 0,
  `bpDashStatus` int(11) NOT NULL DEFAULT 0,
  `bpHvacStatus` int(11) NOT NULL DEFAULT 0,
  `outAirAssessmentName` varchar(255) DEFAULT NULL,
  `layoutCleanAirName` varchar(255) DEFAULT NULL,
  `bpApproveFauName` varchar(255) DEFAULT NULL,
  `bpApproveSupplyName` varchar(255) DEFAULT NULL,
  `bpIndoorName` varchar(255) DEFAULT NULL,
  `bpOutdoorName` varchar(255) DEFAULT NULL,
  `bpExhaustName` varchar(255) DEFAULT NULL,
  `bpFreshName` varchar(255) DEFAULT NULL,
  `bpPlcName` varchar(255) DEFAULT NULL,
  `bpDashName` varchar(255) DEFAULT NULL,
  `bpHvacName` varchar(255) DEFAULT NULL,
  `companyName` varchar(200) DEFAULT NULL,
  `projectManager` varchar(100) DEFAULT NULL,
  `ackDesign` varchar(255) DEFAULT NULL,
  `roughFau` varchar(255) DEFAULT NULL,
  `roughDuct` varchar(255) DEFAULT NULL,
  `roughWiring` varchar(255) DEFAULT NULL,
  `roughTV` varchar(255) DEFAULT NULL,
  `indoorSensorLoc` varchar(255) DEFAULT NULL,
  `outdoorSensorLoc` varchar(255) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `roughFauStatus` int(11) NOT NULL DEFAULT 0,
  `roughDuctStatus` int(11) NOT NULL DEFAULT 0,
  `roughWiringStatus` int(11) NOT NULL DEFAULT 0,
  `roughTVStatus` int(11) NOT NULL DEFAULT 0,
  `ackDesignName` varchar(255) DEFAULT NULL,
  `roughFauName` varchar(255) DEFAULT NULL,
  `roughDuctName` varchar(255) DEFAULT NULL,
  `roughWiringName` varchar(255) DEFAULT NULL,
  `roughTVName` varchar(255) DEFAULT NULL,
  `indoorSensorLocName` varchar(255) DEFAULT NULL,
  `outdoorSensorLocName` varchar(255) DEFAULT NULL,
  `contractName` varchar(255) DEFAULT NULL,
  `depositCheque` varchar(200) DEFAULT NULL,
  `equipmentSetting` varchar(200) DEFAULT NULL,
  `internalDuct` varchar(200) DEFAULT NULL,
  `exhaust` varchar(200) DEFAULT NULL,
  `wiring` varchar(200) DEFAULT NULL,
  `finalPayment` varchar(200) DEFAULT NULL,
  `certificationApplication` varchar(255) DEFAULT NULL,
  `certificationApplicationName` varchar(255) DEFAULT NULL,
  `certificationApproveBy` varchar(100) DEFAULT NULL,
  `warrantyAgreeDate` date DEFAULT NULL,
  `agreementCertification` varchar(255) DEFAULT NULL,
  `agreementCertificationName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `companydata`
--

INSERT INTO `companydata` (`id`, `client_id`, `client_name`, `outEnvReport`, `inEnvReport`, `engrDesign`, `acType`, `model`, `units`, `outAirAssessment`, `layoutCleanAir`, `bpApproveFau`, `bpApproveSupply`, `bpIndoor`, `bpOutdoor`, `bpExhaust`, `bpFresh`, `bpPlc`, `bpDash`, `bpHvac`, `bpApproveFauStatus`, `bpApproveSupplyStatus`, `bpIndoorStatus`, `bpOutdoorStatus`, `bpExhaustStatus`, `bpFreshStatus`, `bpPlcStatus`, `bpDashStatus`, `bpHvacStatus`, `outAirAssessmentName`, `layoutCleanAirName`, `bpApproveFauName`, `bpApproveSupplyName`, `bpIndoorName`, `bpOutdoorName`, `bpExhaustName`, `bpFreshName`, `bpPlcName`, `bpDashName`, `bpHvacName`, `companyName`, `projectManager`, `ackDesign`, `roughFau`, `roughDuct`, `roughWiring`, `roughTV`, `indoorSensorLoc`, `outdoorSensorLoc`, `contract`, `roughFauStatus`, `roughDuctStatus`, `roughWiringStatus`, `roughTVStatus`, `ackDesignName`, `roughFauName`, `roughDuctName`, `roughWiringName`, `roughTVName`, `indoorSensorLocName`, `outdoorSensorLocName`, `contractName`, `depositCheque`, `equipmentSetting`, `internalDuct`, `exhaust`, `wiring`, `finalPayment`, `certificationApplication`, `certificationApplicationName`, `certificationApproveBy`, `warrantyAgreeDate`, `agreementCertification`, `agreementCertificationName`) VALUES
(20, 88, 'Kennel Club LAX ', 'files/88_outEnvReport_stepper_motor1.jpg', 'files/88_inEnvReport_stepper_motor1.jpg', 'files/88_engrDesign_stepper_motor1.jpg', 'sdsad', 'Model Number', 25, 'files/88_outAirAssessment_stepper_motor2.jpg', NULL, 'files/88_bpApproveFau_stepper_motor1.jpg', 'files/88_bpApproveSupply_stepper_motor1.jpg', 'files/88_bpIndoor_stepper_motor1.jpg', NULL, 'files/88_bpExhaust_stepper_motor2.jpg', 'Fresh', 'plc', 'Dash', 'Hvac', 3, 2, 2, 0, 2, 2, 3, 2, 2, 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'Grace', 'Anees Malik', 'files/88_ackDesign_stepper_motor1.jpg', 'files/88_roughFau_fire_detection1.jpg', 'files/test.pdf', NULL, 'files/88_roughTV_fire_detection1.jpg', NULL, 'files/88_outdoorSensorLoc_Screenshot 2023-01-03 210250.png', 'files/88_contract_nfclogo.jpg', 3, 2, 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21321521', '25', NULL, '00', NULL, NULL, 'Anees Malik', '2023-04-16', NULL, NULL),
(22, 90, 'Faith', '', '', '', 'a;djf', ';kaljdsfk', NULL, '', 'files/88_outAirAssessment_stepper_motor2.jpg', '', '', '', '', '', '', '', '', '', 3, 2, 0, 1, 1, 1, 1, 1, 1, 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', 'a.txt', NULL, NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 91, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 92, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 93, 'Grace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 94, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 98, 'Grace Client', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 99, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companyfiledetails`
--

CREATE TABLE `companyfiledetails` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `fileName` varchar(200) DEFAULT NULL,
  `fileDetails` text DEFAULT NULL,
  `uploadTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `companyfiledetails`
--

INSERT INTO `companyfiledetails` (`id`, `customer_id`, `fileName`, `fileDetails`, `uploadTime`) VALUES
(1, 88, 'bpApproveSupply', '', '2023-01-17 17:24:24'),
(2, 88, 'bpIndoor', '', '2023-01-17 17:24:24'),
(3, 88, 'bpOutdoor', '', '2023-01-17 17:24:24'),
(4, 88, 'bpExhaust', '', '2023-01-17 17:24:24'),
(5, 88, 'bpFresh', '', '2023-01-17 17:24:24'),
(6, 88, 'bpPlc', '', '2023-01-17 17:24:24'),
(7, 88, 'bpDash', '', '2023-01-17 17:24:24'),
(8, 88, 'bpHvac', '', '2023-01-17 17:24:24'),
(9, 90, 'bpHvac', '', '2023-01-24 09:55:05'),
(10, 90, 'bpApproveSupply', '', '2023-01-25 07:19:57'),
(11, 90, 'bpIndoor', '', '2023-01-25 07:19:58'),
(12, 90, 'bpOutdoor', '', '2023-01-25 07:19:58'),
(13, 90, 'bpExhaust', '', '2023-01-25 07:19:58'),
(14, 90, 'bpFresh', '', '2023-01-25 07:19:58'),
(15, 90, 'bpPlc', '', '2023-01-25 07:19:58'),
(16, 90, 'bpDash', '', '2023-01-25 07:19:58'),
(17, 90, 'bpHvac', '', '2023-01-25 07:19:58'),
(18, 88, 'bpApproveSupply', '', '2023-01-25 10:25:53'),
(19, 88, 'bpIndoor', '', '2023-01-25 10:25:59'),
(20, 88, 'bpOutdoor', '', '2023-01-25 10:26:05'),
(21, 88, 'bpExhaust', '', '2023-01-25 10:26:30'),
(22, 88, 'bpExhaust', '', '2023-01-25 10:26:35'),
(23, 88, 'bpFresh', '', '2023-01-25 10:26:44'),
(24, 88, 'bpPlc', '', '2023-01-25 10:26:54'),
(25, 88, 'bpDash', '', '2023-01-25 10:27:04'),
(26, 88, 'bpFresh', '', '2023-01-25 10:27:09'),
(27, 88, 'bpHvac', '', '2023-01-25 10:27:16'),
(28, 90, 'bpApproveSupply', '', '2023-01-25 10:30:27'),
(29, 90, 'bpIndoor', '', '2023-01-25 10:30:46'),
(30, 90, 'bpOutdoor', '', '2023-01-25 10:30:52'),
(31, 90, 'bpHvac', '', '2023-01-25 10:31:26'),
(32, 90, 'bpDash', '', '2023-01-25 10:31:33'),
(33, 90, 'bpPlc', '', '2023-01-25 10:31:39'),
(34, 90, 'bpFresh', '', '2023-01-25 10:31:45'),
(35, 90, 'bpExhaust', '', '2023-01-25 10:32:05'),
(36, 88, 'bpApproveFau', 'test changed', '2023-01-26 15:38:01'),
(37, 88, 'bpApproveFau', 'test changed', '2023-01-26 15:38:53'),
(38, 88, 'bpApproveFau', 'test comment', '2023-01-26 15:41:18'),
(39, 88, 'bpApproveSupply', 'check', '2023-01-26 16:23:06'),
(40, 88, 'bpApproveFau', 'test comment', '2023-01-26 16:25:32'),
(41, 88, 'ackDesign', '3 by 3', '2023-01-27 10:20:14'),
(42, 88, 'outdoorSensorLoc', 'indoor test', '2023-01-27 10:28:21'),
(43, 88, 'outdoorSensorLoc', 'outdoor test', '2023-01-27 10:28:34'),
(44, 88, 'contract', 'contract agreement', '2023-01-27 10:28:56'),
(45, 88, 'bpIndoor', '0123', '2023-02-10 16:42:11'),
(46, 88, 'bpIndoor', '0123', '2023-02-10 16:43:48'),
(47, 88, 'bpIndoor', '0123', '2023-02-10 16:44:42'),
(48, 88, 'bpIndoor', '0123', '2023-02-10 16:45:40'),
(49, 88, 'bpIndoor', '0123', '2023-02-10 16:46:23'),
(50, 88, 'bpExhaust', '123', '2023-02-11 08:48:25'),
(51, 88, 'bpIndoor', '0123', '2023-02-11 08:49:19'),
(52, 88, 'ackDesign', '3 by 3', '2023-02-11 08:54:31'),
(53, 88, 'ackDesign', '3 by 3 X 2', '2023-02-11 08:55:20'),
(54, 88, 'bpApproveFau', 'test comment', '2023-02-11 11:05:39'),
(55, 88, 'bpApproveFau', 'test comment', '2023-02-11 11:06:23'),
(56, 88, 'bpApproveSupply', 'check', '2023-02-11 11:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `control_final`
--

CREATE TABLE `control_final` (
  `ID` int(11) NOT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `Machine Name` varchar(50) DEFAULT NULL,
  `Machine API Token` varchar(100) DEFAULT NULL,
  `Customer Name` varchar(50) DEFAULT NULL,
  `R1_Low_Fan` tinyint(4) DEFAULT 0,
  `R2_High_Fan` tinyint(4) DEFAULT 0,
  `R3_UVC` tinyint(4) DEFAULT 0,
  `R4_Bipol` tinyint(4) DEFAULT 0,
  `R5_Return_Damper` tinyint(4) DEFAULT 0,
  `R6_Supply_Damper` tinyint(4) DEFAULT 0,
  `R7_Air_Conditioning` tinyint(4) DEFAULT 0,
  `R8_Heat` tinyint(4) DEFAULT 0,
  `R9_Spare` tinyint(4) DEFAULT 0,
  `R10_Spare` tinyint(4) DEFAULT 0,
  `Manual_Mode` tinyint(4) DEFAULT 0,
  `Override_1` tinyint(4) DEFAULT 0,
  `Override_2` tinyint(4) DEFAULT 0,
  `Override_RST` tinyint(4) DEFAULT 0,
  `spare1` tinyint(4) NOT NULL DEFAULT 0,
  `spare2` tinyint(4) NOT NULL DEFAULT 0,
  `Shift_Start_Time` varchar(20) DEFAULT '0',
  `Shift_End_Time` varchar(20) DEFAULT '0',
  `Sys_Override_Time` varchar(20) DEFAULT '0',
  `TVOC` int(11) NOT NULL DEFAULT 0,
  `PM10` int(11) NOT NULL DEFAULT 0,
  `PM25` int(11) NOT NULL DEFAULT 0,
  `CO2` int(11) NOT NULL DEFAULT 0,
  `auto_off_prog_mod_client` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `control_final`
--

INSERT INTO `control_final` (`ID`, `machine_id`, `Machine Name`, `Machine API Token`, `Customer Name`, `R1_Low_Fan`, `R2_High_Fan`, `R3_UVC`, `R4_Bipol`, `R5_Return_Damper`, `R6_Supply_Damper`, `R7_Air_Conditioning`, `R8_Heat`, `R9_Spare`, `R10_Spare`, `Manual_Mode`, `Override_1`, `Override_2`, `Override_RST`, `spare1`, `spare2`, `Shift_Start_Time`, `Shift_End_Time`, `Sys_Override_Time`, `TVOC`, `PM10`, `PM25`, `CO2`, `auto_off_prog_mod_client`) VALUES
(148, 179, 'Cottages', 'kzHQbnvs2G', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 0, '9', '17', '2', 0, 0, 0, 0, 1),
(149, 180, 'Room 5', 'GaY6L9e5Zp', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, '9', '16', '2', 0, 0, 0, 0, 1),
(150, 181, 'Room 3', 'lr5YYTTdqM', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, '1100', '16', '2', 0, 0, 0, 0, 2),
(151, 182, 'Room 1', '9KFqXc7wK4', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, '8', '16', '2', 0, 0, 0, 0, 0),
(152, 183, 'Room 7', 'jYjeARZb5O', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, '9', '16', '2', 0, 0, 0, 0, 0),
(153, 184, 'Grooming', '6gZNn4rTTi', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, '9', '16', '2', 0, 0, 0, 0, 0),
(154, 185, 'Lobby', 'oOh3ku5i3O', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '9', '17', '2', 0, 0, 0, 0, 0),
(161, 194, 'Machine1', 'rgyBpJTg5u', 'Faith', 0, 0, 1, 1, 1, 1, 1, 0, 1, NULL, 1, 0, 0, 1, 0, 0, '10', '17', '2', 5, 6, 7, 100, 2),
(162, 195, 'Faith Machine', 'HKqhvSYNsS', 'Faith', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 200, 2),
(163, 196, 'Test Machine', 'FT9D3WkUfA', 'Faith', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 300, 0),
(164, 197, 'Grace 01', 'YgsYKySRDf', 'Faith', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 400, 0),
(165, 198, 'Jan 14', 'dJAzu4EmQX', 'Faith', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 500, 0),
(166, 199, 'Grace 02', '1SF6bjNbfH', 'Faith', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', 0, 0, 0, 600, 0),
(168, 201, 'grace', 'OFduyW2AvZ', 'Grace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT 'default@plc.com',
  `phone` varchar(15) NOT NULL DEFAULT '0000-0000000',
  `password` varchar(40) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_id` varchar(50) DEFAULT NULL,
  `company_pass` varchar(50) DEFAULT NULL,
  `com_rst_pass_code` int(6) DEFAULT NULL,
  `dateCreation` timestamp NOT NULL DEFAULT current_timestamp(),
  `rst_pass_code` varchar(20) DEFAULT NULL,
  `plc_data_loss` tinyint(4) DEFAULT NULL,
  `display_plc_data_loss` tinyint(4) NOT NULL DEFAULT 0,
  `ack_plc_data_loss` tinyint(4) NOT NULL DEFAULT 0,
  `email_plc_data_loss` tinyint(4) NOT NULL DEFAULT 0,
  `plc_error` tinyint(4) NOT NULL DEFAULT 0,
  `display_plc_error` tinyint(4) NOT NULL DEFAULT 0,
  `ack_plc_error` tinyint(4) NOT NULL DEFAULT 0,
  `io_mod_error` tinyint(4) NOT NULL DEFAULT 0,
  `display_io_mod_error` tinyint(4) NOT NULL DEFAULT 0,
  `ack_io_mod_error` tinyint(4) NOT NULL DEFAULT 0,
  `sys_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `display_sys_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `ack_sys_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `io_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `display_io_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `ack_io_config_error` tinyint(4) NOT NULL DEFAULT 0,
  `spare1` int(11) DEFAULT NULL,
  `spare2` int(11) DEFAULT NULL,
  `spare3` int(11) DEFAULT NULL,
  `spare4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Id`, `FullName`, `email`, `phone`, `password`, `company_name`, `company_email`, `company_id`, `company_pass`, `com_rst_pass_code`, `dateCreation`, `rst_pass_code`, `plc_data_loss`, `display_plc_data_loss`, `ack_plc_data_loss`, `email_plc_data_loss`, `plc_error`, `display_plc_error`, `ack_plc_error`, `io_mod_error`, `display_io_mod_error`, `ack_io_mod_error`, `sys_config_error`, `display_sys_config_error`, `ack_sys_config_error`, `io_config_error`, `display_io_config_error`, `ack_io_config_error`, `spare1`, `spare2`, `spare3`, `spare4`) VALUES
(88, 'Kennel Club LAX ', 'kimberly@kennelclublax.com', '(310)361-2592', 'kennel@123', 'Red Apple Air', NULL, 'redappleair', 'redappleair@123', NULL, '2022-11-11 17:55:08', NULL, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 'Faith', 'razaoffice007@gmail.com', '23423', 'faith@123', 'Company 1', 'grace.emp02@gmail.com', 'company1', 'anees', NULL, '2022-12-03 16:36:44', NULL, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(93, 'Grace', 'grace.emp02@gmail.com', '123', '123', 'Grace', NULL, 'grace', '123', NULL, '2023-03-07 15:47:05', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(94, 'Anees Malik', 'anees@anees.com', '123', '123', 'Grace', 'grace.emp02@gmail.com', 'anees', 'anees', NULL, '2023-03-10 10:52:20', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(98, 'Grace Client', 'grace.emp03@gmail.com', '123', '123', 'Grace Automation & Engineering Services', 'grace.emp02@gmail.com', 'anees', 'anees', NULL, '2023-03-10 13:56:47', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(99, 'Test', 'test@test.com', '123', '123', 'Test Company', 'test@test.com', 'test', '123', NULL, '2023-03-10 13:58:34', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `display_final`
--

CREATE TABLE `display_final` (
  `ID` int(11) NOT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `Machine Name` varchar(50) DEFAULT NULL,
  `Machine API Token` varchar(100) DEFAULT NULL,
  `Customer Name` varchar(50) DEFAULT NULL,
  `R1_Status` tinyint(4) NOT NULL DEFAULT 0,
  `R2_Status` tinyint(4) NOT NULL DEFAULT 0,
  `R3_Status` tinyint(4) NOT NULL DEFAULT 0,
  `R4_Status` tinyint(4) NOT NULL DEFAULT 0,
  `R5_Status` tinyint(4) NOT NULL DEFAULT 0,
  `R6_Status` int(11) NOT NULL DEFAULT 0,
  `R7_Status_Spare` tinyint(4) NOT NULL DEFAULT 0,
  `R8_Status_Spare` tinyint(4) NOT NULL DEFAULT 0,
  `R9_Status_Spare` tinyint(4) NOT NULL DEFAULT 0,
  `R10_Status_Spare` tinyint(4) NOT NULL DEFAULT 0,
  `AQI` int(11) NOT NULL DEFAULT 0,
  `In_Temperature` int(11) NOT NULL DEFAULT 0,
  `In_Humidity` int(11) NOT NULL DEFAULT 0,
  `In_CO2` int(11) NOT NULL DEFAULT 0,
  `In_VOC` int(11) NOT NULL DEFAULT 0,
  `In_PM_2_5` int(11) NOT NULL DEFAULT 0,
  `In_PM_10` int(11) NOT NULL DEFAULT 0,
  `In_CO` int(11) NOT NULL DEFAULT 0,
  `Out_Temperature` int(11) NOT NULL DEFAULT 0,
  `Out_Humidity` int(11) NOT NULL DEFAULT 0,
  `Out_O3` int(11) NOT NULL DEFAULT 0,
  `Out_SO2` int(11) NOT NULL DEFAULT 0,
  `Out_CO` int(11) NOT NULL DEFAULT 0,
  `Out_CO2` int(11) NOT NULL DEFAULT 0,
  `Out_NO2` int(11) NOT NULL DEFAULT 0,
  `Out_PM_2_5` int(11) NOT NULL DEFAULT 0,
  `Out_PM_10` int(11) NOT NULL DEFAULT 0,
  `Out_Radon_Spare` int(11) NOT NULL DEFAULT 0,
  `R1_Man_Status` tinyint(4) DEFAULT 0,
  `R2_Man_Status` tinyint(4) DEFAULT 0,
  `R3_Man_Status` tinyint(4) DEFAULT 0,
  `R4_Man_Status` tinyint(4) DEFAULT 0,
  `R5_Man_Status` tinyint(4) DEFAULT 0,
  `R6_Man_Status` tinyint(4) DEFAULT 0,
  `R7_Man_Status` tinyint(4) DEFAULT 0,
  `R8_Man_Status` tinyint(4) DEFAULT 0,
  `R9_Man_Status` tinyint(4) DEFAULT 0,
  `R10_Man_Status` tinyint(4) DEFAULT 0,
  `Manual_Mode_Blink_Indicator` tinyint(4) DEFAULT 0,
  `Override_1_Status` tinyint(4) DEFAULT 0,
  `Override_2_Status` tinyint(4) DEFAULT 0,
  `System_Violated` tinyint(4) DEFAULT 0,
  `System_Violated_Logic` tinyint(4) DEFAULT 0,
  `email_sys_violate` tinyint(4) NOT NULL DEFAULT 0,
  `ack_sys_violate` tinyint(4) DEFAULT 0,
  `Replace_Filter` tinyint(4) DEFAULT 0,
  `shift_in_time` tinyint(4) DEFAULT 0,
  `spare7` tinyint(4) DEFAULT 0,
  `spare6` tinyint(4) DEFAULT 0,
  `spare5` tinyint(4) DEFAULT 0,
  `spare4` tinyint(4) DEFAULT 0,
  `spare3` tinyint(4) DEFAULT 0,
  `spare2` tinyint(4) DEFAULT 0,
  `spare1` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `display_final`
--

INSERT INTO `display_final` (`ID`, `machine_id`, `Machine Name`, `Machine API Token`, `Customer Name`, `R1_Status`, `R2_Status`, `R3_Status`, `R4_Status`, `R5_Status`, `R6_Status`, `R7_Status_Spare`, `R8_Status_Spare`, `R9_Status_Spare`, `R10_Status_Spare`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2_5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2_5`, `Out_PM_10`, `Out_Radon_Spare`, `R1_Man_Status`, `R2_Man_Status`, `R3_Man_Status`, `R4_Man_Status`, `R5_Man_Status`, `R6_Man_Status`, `R7_Man_Status`, `R8_Man_Status`, `R9_Man_Status`, `R10_Man_Status`, `Manual_Mode_Blink_Indicator`, `Override_1_Status`, `Override_2_Status`, `System_Violated`, `System_Violated_Logic`, `email_sys_violate`, `ack_sys_violate`, `Replace_Filter`, `shift_in_time`, `spare7`, `spare6`, `spare5`, `spare4`, `spare3`, `spare2`, `spare1`) VALUES
(145, 179, 'Cottages', 'kzHQbnvs2G', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 180, 'Room 5', 'GaY6L9e5Zp', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 181, 'Room 3', 'lr5YYTTdqM', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 182, 'Room 1', '9KFqXc7wK4', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 183, 'Room 7', 'jYjeARZb5O', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 184, 'Grooming', '6gZNn4rTTi', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 185, 'Lobby', 'oOh3ku5i3O', 'Kennel Club LAX ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 194, 'Machine1', 'rgyBpJTg5u', 'Faith', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0),
(158, 195, 'Faith Machine', 'HKqhvSYNsS', 'Faith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0),
(159, 196, 'Test Machine', 'FT9D3WkUfA', 'Faith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(160, 197, 'Grace 01', 'YgsYKySRDf', 'Faith', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(161, 198, 'Jan 14', 'dJAzu4EmQX', 'Faith', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(162, 199, 'Grace 02', '1SF6bjNbfH', 'Faith', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(164, 201, 'grace', 'OFduyW2AvZ', 'Grace', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `display_log`
--

CREATE TABLE `display_log` (
  `ID` int(11) NOT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `Machine API Token` varchar(50) DEFAULT NULL,
  `AQI` int(11) DEFAULT NULL,
  `In_Temperature` int(11) DEFAULT NULL,
  `In_Humidity` int(11) DEFAULT NULL,
  `In_CO2` int(11) DEFAULT NULL,
  `In_VOC` int(11) DEFAULT NULL,
  `In_PM_2.5` int(11) DEFAULT NULL,
  `In_PM_10` int(11) DEFAULT NULL,
  `In_CO` int(11) DEFAULT NULL,
  `Out_Temperature` int(11) DEFAULT NULL,
  `Out_Humidity` int(11) DEFAULT NULL,
  `Out_O3` int(11) DEFAULT NULL,
  `Out_SO2` int(11) DEFAULT NULL,
  `Out_CO` int(11) DEFAULT NULL,
  `Out_CO2` int(11) DEFAULT NULL,
  `Out_NO2` int(11) DEFAULT NULL,
  `Out_PM_2.5` int(11) DEFAULT NULL,
  `Out_PM_10` int(11) DEFAULT NULL,
  `Out_Radon_Spare` int(11) DEFAULT NULL,
  `timeStamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `display_log`
--

INSERT INTO `display_log` (`ID`, `machine_id`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2.5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2.5`, `Out_PM_10`, `Out_Radon_Spare`, `timeStamp`) VALUES
(1, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(2, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(3, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(4, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(5, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(6, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(7, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:19'),
(8, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(9, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(10, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(11, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(12, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(13, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(14, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 17:10:56'),
(15, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(16, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(17, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(18, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(19, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(20, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(21, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 18:00:01'),
(22, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(23, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(24, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(25, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(26, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(27, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(28, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 20:00:02'),
(29, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(30, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(31, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(32, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(33, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(34, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(35, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-02 22:00:02'),
(36, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(37, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(38, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(39, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(40, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(41, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(42, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 00:00:01'),
(43, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(44, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(45, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(46, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(47, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(48, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(49, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 02:00:01'),
(50, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(51, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(52, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(53, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(54, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(55, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(56, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 04:00:01'),
(57, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(58, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(59, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(60, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(61, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(62, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(63, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 06:00:01'),
(64, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(65, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(66, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(67, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(68, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(69, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(70, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 08:00:01'),
(71, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(72, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(73, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(74, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(75, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(76, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(77, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 10:00:01'),
(78, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(79, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(80, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(81, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(82, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(83, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(84, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 12:00:01'),
(85, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(86, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(87, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(88, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(89, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(90, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(91, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 14:00:01'),
(92, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(93, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(94, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(95, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(96, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(97, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(98, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-03 16:00:01'),
(99, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(100, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(101, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(102, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(103, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(104, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(105, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(106, 194, 'rgyBpJTg5u', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 00:00:02'),
(107, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(108, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(109, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(110, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(111, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(112, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(113, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(114, 194, 'rgyBpJTg5u', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 08:00:01'),
(115, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(116, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(117, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(118, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(119, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(120, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(121, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(122, 194, 'rgyBpJTg5u', 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-04 16:00:01'),
(123, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(124, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(125, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(126, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(127, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(128, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(129, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(130, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 00:00:01'),
(131, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(132, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(133, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(134, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(135, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(136, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(137, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(138, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 08:00:01'),
(139, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(140, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(141, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(142, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(143, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(144, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(145, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(146, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-05 16:00:01'),
(147, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(148, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(149, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(150, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(151, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(152, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(153, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(154, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 00:00:02'),
(155, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(156, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(157, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(158, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(159, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(160, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(161, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(162, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 08:00:01'),
(163, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(164, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(165, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(166, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(167, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(168, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(169, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(170, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-06 16:00:01'),
(171, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(172, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(173, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(174, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(175, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(176, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(177, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(178, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 00:00:01'),
(179, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(180, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(181, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(182, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(183, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(184, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(185, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(186, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 08:00:01'),
(187, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(188, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(189, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(190, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(191, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(192, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(193, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(194, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-07 16:00:01'),
(195, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(196, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(197, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(198, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(199, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(200, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(201, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(202, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 00:00:01'),
(203, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(204, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(205, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(206, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(207, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(208, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(209, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(210, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 08:00:01'),
(211, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(212, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(213, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(214, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(215, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(216, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(217, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(218, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-08 16:00:02'),
(219, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(220, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(221, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(222, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(223, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(224, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(225, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(226, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 00:00:01'),
(227, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(228, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(229, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(230, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(231, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(232, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(233, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(234, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 08:00:01'),
(235, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:01'),
(236, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:01'),
(237, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:01'),
(238, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:01'),
(239, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:02'),
(240, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:02'),
(241, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:02'),
(242, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-09 16:00:02'),
(243, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(244, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(245, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(246, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(247, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(248, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(249, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(250, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 00:00:01'),
(251, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(252, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(253, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(254, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(255, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(256, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(257, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(258, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 08:00:01'),
(259, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:01'),
(260, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:01'),
(261, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:01'),
(262, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:01'),
(263, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:02'),
(264, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:02'),
(265, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:02'),
(266, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-10 16:00:02'),
(267, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(268, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(269, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(270, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(271, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(272, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(273, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(274, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 00:00:02'),
(275, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(276, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(277, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(278, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(279, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(280, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(281, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(282, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 08:00:01'),
(283, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(284, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(285, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(286, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(287, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(288, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(289, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(290, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-11 16:00:01'),
(291, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(292, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(293, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(294, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(295, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(296, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(297, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(298, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 00:00:01'),
(299, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(300, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(301, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(302, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(303, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(304, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(305, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(306, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 08:00:01'),
(307, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(308, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(309, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(310, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(311, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(312, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(313, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(314, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-12 16:00:01'),
(315, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(316, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(317, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(318, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(319, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(320, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(321, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(322, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 00:00:01'),
(323, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(324, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(325, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(326, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(327, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(328, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(329, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(330, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 08:00:01'),
(331, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(332, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(333, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(334, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(335, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(336, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(337, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(338, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-13 16:00:01'),
(339, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(340, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(341, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(342, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(343, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(344, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(345, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(346, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 00:00:01'),
(347, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(348, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(349, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(350, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(351, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(352, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(353, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(354, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 08:00:01'),
(355, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(356, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(357, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(358, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(359, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(360, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(361, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(362, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-14 16:00:02'),
(363, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(364, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(365, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(366, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(367, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(368, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(369, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(370, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 00:00:01'),
(371, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(372, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(373, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(374, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(375, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(376, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(377, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(378, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 08:00:02'),
(379, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(380, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(381, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(382, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(383, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(384, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(385, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(386, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-15 16:00:01'),
(387, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(388, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(389, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(390, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(391, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(392, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(393, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(394, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 00:00:01'),
(395, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(396, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(397, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(398, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(399, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(400, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(401, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(402, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 08:00:02'),
(403, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(404, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(405, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(406, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(407, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(408, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(409, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(410, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-16 16:00:02'),
(411, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:01'),
(412, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(413, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(414, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(415, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(416, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(417, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(418, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 00:00:02'),
(419, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(420, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(421, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(422, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(423, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(424, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(425, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(426, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 08:00:01'),
(427, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(428, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(429, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(430, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(431, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(432, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(433, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(434, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-17 16:00:01'),
(435, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(436, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(437, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(438, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(439, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(440, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(441, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(442, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 00:00:02'),
(443, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(444, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(445, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(446, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(447, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(448, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(449, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(450, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 08:00:02'),
(451, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(452, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(453, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(454, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(455, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(456, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(457, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(458, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-18 16:00:01'),
(459, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(460, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(461, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(462, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(463, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(464, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(465, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02'),
(466, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 00:00:02');
INSERT INTO `display_log` (`ID`, `machine_id`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2.5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2.5`, `Out_PM_10`, `Out_Radon_Spare`, `timeStamp`) VALUES
(467, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(468, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(469, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(470, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(471, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(472, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(473, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(474, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 08:00:01'),
(475, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(476, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(477, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(478, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(479, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(480, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(481, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(482, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-19 16:00:01'),
(483, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(484, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(485, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(486, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(487, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(488, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(489, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(490, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 00:00:01'),
(491, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(492, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(493, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(494, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(495, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(496, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(497, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(498, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 08:00:01'),
(499, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(500, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(501, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(502, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(503, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(504, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(505, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(506, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-20 16:00:01'),
(507, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(508, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(509, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(510, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(511, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(512, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(513, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(514, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 00:00:02'),
(515, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(516, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(517, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(518, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(519, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(520, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(521, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(522, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 08:00:01'),
(523, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(524, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(525, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(526, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(527, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(528, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(529, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(530, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-21 16:00:01'),
(531, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(532, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(533, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(534, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(535, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(536, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(537, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(538, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 00:00:01'),
(539, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(540, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(541, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(542, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(543, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(544, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(545, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(546, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 08:00:02'),
(547, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(548, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(549, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(550, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(551, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(552, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(553, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(554, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-22 16:00:01'),
(555, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(556, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(557, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(558, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(559, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(560, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(561, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:01'),
(562, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 00:00:02'),
(563, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(564, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(565, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(566, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(567, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(568, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(569, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(570, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 08:00:01'),
(571, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(572, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(573, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(574, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(575, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(576, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(577, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(578, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-23 16:00:01'),
(579, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(580, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(581, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(582, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(583, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(584, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(585, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(586, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 00:00:02'),
(587, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(588, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(589, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(590, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(591, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(592, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(593, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(594, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 08:00:01'),
(595, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(596, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(597, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(598, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(599, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(600, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(601, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(602, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(603, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-24 16:00:02'),
(604, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(605, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(606, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(607, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(608, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(609, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(610, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(611, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(612, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 00:00:01'),
(613, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(614, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(615, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(616, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(617, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(618, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(619, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(620, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(621, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 08:00:02'),
(622, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(623, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(624, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(625, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(626, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(627, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(628, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(629, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(630, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-25 16:00:01'),
(631, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(632, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(633, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(634, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(635, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(636, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(637, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(638, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(639, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 00:00:01'),
(640, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(641, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(642, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(643, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(644, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(645, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(646, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(647, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(648, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 08:00:01'),
(649, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(650, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(651, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(652, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(653, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(654, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(655, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(656, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(657, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-26 16:00:01'),
(658, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(659, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(660, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(661, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(662, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(663, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(664, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(665, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(666, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 00:00:01'),
(667, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(668, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(669, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(670, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(671, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(672, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(673, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(674, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(675, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 08:00:01'),
(676, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(677, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(678, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(679, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(680, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(681, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(682, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(683, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(684, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-27 16:00:01'),
(685, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(686, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(687, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(688, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(689, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(690, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(691, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(692, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(693, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 00:00:01'),
(694, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(695, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(696, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(697, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(698, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(699, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(700, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(701, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(702, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 08:00:01'),
(703, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(704, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(705, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(706, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(707, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(708, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(709, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(710, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(711, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-28 16:00:01'),
(712, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(713, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(714, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(715, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(716, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(717, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(718, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(719, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(720, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 00:00:01'),
(721, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(722, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(723, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(724, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(725, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(726, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(727, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(728, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(729, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 08:00:01'),
(730, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(731, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(732, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(733, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(734, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(735, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(736, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(737, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(738, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-29 16:00:01'),
(739, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(740, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(741, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(742, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(743, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(744, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(745, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(746, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(747, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 00:00:01'),
(748, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(749, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(750, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(751, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(752, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(753, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(754, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(755, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(756, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 08:00:01'),
(757, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(758, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(759, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(760, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(761, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(762, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(763, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(764, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(765, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-30 16:00:01'),
(766, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(767, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(768, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(769, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(770, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(771, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(772, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(773, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(774, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 00:00:01'),
(775, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(776, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(777, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(778, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(779, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(780, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(781, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(782, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(783, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 08:00:02'),
(784, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(785, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(786, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(787, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(788, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(789, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(790, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(791, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(792, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-12-31 16:00:01'),
(793, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(794, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(795, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(796, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(797, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(798, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(799, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(800, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(801, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 00:00:01'),
(802, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(803, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(804, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(805, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(806, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(807, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(808, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(809, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(810, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 08:00:01'),
(811, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(812, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(813, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(814, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(815, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(816, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(817, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(818, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(819, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-01 16:00:01'),
(820, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(821, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(822, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(823, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(824, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(825, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(826, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(827, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(828, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 00:00:01'),
(829, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(830, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(831, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(832, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(833, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(834, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(835, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(836, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(837, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 08:00:02'),
(838, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(839, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(840, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(841, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(842, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(843, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(844, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(845, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(846, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-02 16:00:01'),
(847, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(848, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(849, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(850, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(851, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(852, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(853, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(854, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(855, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 00:00:02'),
(856, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(857, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(858, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(859, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(860, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(861, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(862, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(863, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(864, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 08:00:01'),
(865, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(866, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(867, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(868, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(869, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(870, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(871, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(872, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(873, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-03 16:00:02'),
(874, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(875, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(876, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(877, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(878, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(879, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(880, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(881, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(882, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 00:00:01'),
(883, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(884, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(885, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(886, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(887, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(888, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(889, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(890, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(891, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 08:00:01'),
(892, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(893, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(894, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(895, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(896, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(897, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(898, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(899, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(900, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-04 16:00:01'),
(901, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(902, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(903, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(904, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(905, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(906, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(907, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(908, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(909, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 00:00:01'),
(910, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(911, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(912, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(913, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(914, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(915, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(916, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(917, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(918, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 08:00:01'),
(919, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(920, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(921, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(922, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(923, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(924, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(925, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(926, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(927, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-05 16:00:01'),
(928, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(929, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(930, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(931, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(932, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(933, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01');
INSERT INTO `display_log` (`ID`, `machine_id`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2.5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2.5`, `Out_PM_10`, `Out_Radon_Spare`, `timeStamp`) VALUES
(934, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(935, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(936, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 00:00:01'),
(937, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(938, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(939, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(940, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(941, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(942, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(943, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(944, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(945, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 08:00:01'),
(946, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(947, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(948, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(949, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(950, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(951, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(952, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(953, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(954, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-06 16:00:01'),
(955, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:01'),
(956, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:01'),
(957, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:01'),
(958, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:01'),
(959, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:01'),
(960, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:02'),
(961, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:02'),
(962, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:02'),
(963, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 00:00:02'),
(964, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(965, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(966, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(967, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(968, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(969, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(970, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(971, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(972, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 08:00:01'),
(973, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(974, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(975, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(976, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(977, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(978, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(979, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(980, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(981, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-07 16:00:01'),
(982, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(983, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(984, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(985, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(986, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(987, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(988, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(989, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(990, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 00:00:01'),
(991, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(992, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(993, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(994, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(995, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(996, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(997, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(998, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(999, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 08:00:01'),
(1000, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1001, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1002, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1003, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1004, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1005, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1006, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1007, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1008, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-08 16:00:01'),
(1009, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1010, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1011, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1012, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1013, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1014, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1015, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1016, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1017, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 00:00:02'),
(1018, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1019, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1020, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1021, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1022, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1023, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1024, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1025, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1026, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 08:00:01'),
(1027, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1028, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1029, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1030, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1031, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1032, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1033, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1034, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1035, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-09 16:00:01'),
(1036, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1037, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1038, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1039, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1040, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1041, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1042, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1043, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1044, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 00:00:01'),
(1045, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1046, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1047, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1048, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1049, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1050, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1051, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1052, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1053, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 08:00:01'),
(1054, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1055, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1056, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1057, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1058, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1059, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1060, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1061, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1062, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-10 16:00:01'),
(1063, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:01'),
(1064, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:01'),
(1065, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:01'),
(1066, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:01'),
(1067, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1068, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1069, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1070, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1071, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1072, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 00:00:02'),
(1073, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1074, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1075, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1076, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1077, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1078, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1079, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1080, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1081, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1082, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 08:00:01'),
(1083, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1084, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1085, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1086, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1087, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1088, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1089, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1090, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1091, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1092, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-11 16:00:01'),
(1093, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1094, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1095, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1096, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1097, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1098, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1099, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1100, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1101, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1102, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 00:00:02'),
(1103, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1104, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1105, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1106, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1107, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1108, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1109, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1110, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1111, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1112, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 08:00:01'),
(1113, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1114, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1115, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1116, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1117, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1118, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1119, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1120, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1121, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1122, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-12 16:00:01'),
(1123, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1124, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1125, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1126, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1127, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1128, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1129, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1130, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1131, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1132, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 00:00:01'),
(1133, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1134, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1135, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1136, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1137, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1138, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1139, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1140, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1141, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1142, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 08:00:01'),
(1143, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1144, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1145, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1146, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1147, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1148, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1149, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1150, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1151, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1152, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-13 16:00:01'),
(1153, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1154, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1155, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1156, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1157, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1158, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1159, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1160, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1161, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1162, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1163, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 00:00:01'),
(1164, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1165, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1166, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1167, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1168, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1169, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1170, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1171, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1172, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1173, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1174, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 08:00:01'),
(1175, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1176, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1177, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1178, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1179, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1180, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1181, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1182, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1183, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1184, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1185, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1186, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1187, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-14 16:00:01'),
(1188, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1189, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1190, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1191, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1192, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1193, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1194, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1195, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1196, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1197, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1198, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1199, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1200, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 00:00:01'),
(1201, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1202, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1203, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1204, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1205, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1206, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1207, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1208, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1209, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1210, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1211, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1212, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1213, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 08:00:01'),
(1214, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1215, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1216, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1217, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1218, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1219, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1220, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1221, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1222, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1223, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1224, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1225, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1226, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-15 16:00:01'),
(1227, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:01'),
(1228, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:01'),
(1229, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1230, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1231, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1232, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1233, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1234, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1235, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1236, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1237, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1238, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1239, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 00:00:02'),
(1240, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1241, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1242, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1243, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1244, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1245, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1246, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1247, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1248, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1249, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1250, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1251, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1252, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 08:00:01'),
(1253, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1254, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1255, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1256, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1257, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1258, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1259, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1260, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1261, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1262, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1263, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1264, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1265, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-16 16:00:01'),
(1266, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1267, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1268, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1269, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1270, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1271, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1272, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1273, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1274, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1275, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1276, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1277, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1278, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 00:00:01'),
(1279, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1280, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1281, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1282, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1283, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1284, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1285, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1286, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1287, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1288, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1289, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1290, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1291, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 08:00:01'),
(1292, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1293, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1294, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1295, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1296, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1297, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1298, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1299, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1300, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1301, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1302, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1303, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1304, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-17 16:00:02'),
(1305, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:01'),
(1306, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:01'),
(1307, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:01'),
(1308, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:01'),
(1309, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:01'),
(1310, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1311, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1312, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1313, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1314, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1315, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1316, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1317, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 00:00:02'),
(1318, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1319, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1320, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1321, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1322, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1323, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1324, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1325, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1326, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1327, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1328, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1329, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1330, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 08:00:01'),
(1331, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1332, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1333, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1334, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1335, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1336, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1337, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1338, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1339, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1340, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1341, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1342, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1343, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-18 16:00:01'),
(1344, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1345, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1346, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1347, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1348, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1349, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1350, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1351, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1352, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1353, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1354, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1355, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1356, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 00:00:01'),
(1357, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1358, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1359, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1360, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1361, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1362, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1363, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1364, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1365, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1366, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1367, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1368, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1369, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 08:00:01'),
(1370, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1371, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1372, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1373, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1374, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1375, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1376, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1377, 194, 'rgyBpJTg5u', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1378, 195, 'HKqhvSYNsS', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1379, 196, 'FT9D3WkUfA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1380, 197, 'YgsYKySRDf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1381, 198, 'dJAzu4EmQX', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1382, 199, '1SF6bjNbfH', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-19 16:00:01'),
(1383, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:01'),
(1384, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:01'),
(1385, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:01'),
(1386, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:01'),
(1387, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1388, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1389, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1390, 194, 'rgyBpJTg5u', 95, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-20 00:00:02'),
(1391, 195, 'HKqhvSYNsS', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1392, 196, 'FT9D3WkUfA', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1393, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1394, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1395, 199, '1SF6bjNbfH', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 00:00:02'),
(1396, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:01'),
(1397, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:01'),
(1398, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1399, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1400, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1401, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02');
INSERT INTO `display_log` (`ID`, `machine_id`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2.5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2.5`, `Out_PM_10`, `Out_Radon_Spare`, `timeStamp`) VALUES
(1402, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1403, 194, 'rgyBpJTg5u', 95, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-20 08:00:02'),
(1404, 195, 'HKqhvSYNsS', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1405, 196, 'FT9D3WkUfA', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1406, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1407, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1408, 199, '1SF6bjNbfH', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 08:00:02'),
(1409, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1410, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1411, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1412, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1413, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1414, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1415, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1416, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-20 16:00:01'),
(1417, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1418, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1419, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-20 16:00:01'),
(1420, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1421, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1422, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1423, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1424, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1425, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1426, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1427, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-21 00:00:01'),
(1428, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1429, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1430, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 00:00:01'),
(1431, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1432, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1433, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1434, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1435, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1436, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1437, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1438, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-21 08:00:01'),
(1439, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1440, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1441, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 08:00:01'),
(1442, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1443, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1444, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1445, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1446, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1447, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1448, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1449, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-21 16:00:01'),
(1450, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1451, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1452, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-21 16:00:01'),
(1453, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1454, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1455, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1456, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1457, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1458, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1459, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1460, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-22 00:00:02'),
(1461, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1462, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1463, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 00:00:02'),
(1464, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1465, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1466, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1467, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1468, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1469, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1470, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1471, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-22 08:00:02'),
(1472, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1473, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1474, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 08:00:02'),
(1475, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1476, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1477, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1478, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1479, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1480, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1481, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1482, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-22 16:00:01'),
(1483, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1484, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1485, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-22 16:00:01'),
(1486, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1487, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1488, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1489, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1490, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1491, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1492, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1493, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-23 00:00:01'),
(1494, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1495, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1496, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 00:00:01'),
(1497, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1498, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1499, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1500, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1501, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1502, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1503, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1504, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-23 08:00:01'),
(1505, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1506, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1507, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 08:00:01'),
(1508, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1509, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1510, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1511, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1512, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1513, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1514, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1515, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-23 16:00:01'),
(1516, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1517, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1518, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-23 16:00:01'),
(1519, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:01'),
(1520, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:01'),
(1521, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:01'),
(1522, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:01'),
(1523, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:01'),
(1524, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:02'),
(1525, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:02'),
(1526, 194, 'rgyBpJTg5u', 50, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-24 00:00:02'),
(1527, 196, 'FT9D3WkUfA', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:02'),
(1528, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:02'),
(1529, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 00:00:02'),
(1530, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1531, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1532, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1533, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1534, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1535, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1536, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1537, 194, 'rgyBpJTg5u', 90, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-24 08:00:01'),
(1538, 196, 'FT9D3WkUfA', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1539, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1540, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 08:00:01'),
(1541, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1542, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1543, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1544, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1545, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1546, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1547, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1548, 194, 'rgyBpJTg5u', 90, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-24 16:00:01'),
(1549, 196, 'FT9D3WkUfA', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1550, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1551, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-24 16:00:01'),
(1552, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1553, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1554, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1555, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1556, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1557, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1558, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1559, 194, 'rgyBpJTg5u', 90, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-25 00:00:01'),
(1560, 196, 'FT9D3WkUfA', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1561, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1562, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 00:00:01'),
(1563, 179, 'kzHQbnvs2G', 97, 74, 34, 392, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1564, 180, 'GaY6L9e5Zp', 95, 75, 41, 720, 28, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1565, 181, 'lr5YYTTdqM', 95, 76, 45, 753, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1566, 182, '9KFqXc7wK4', 94, 75, 46, 599, 141, 13, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1567, 183, 'jYjeARZb5O', 91, 74, 54, 821, 17, 32, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1568, 184, '6gZNn4rTTi', 95, 82, 42, 859, 20, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1569, 185, 'oOh3ku5i3O', 95, 83, 38, 679, 1, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1570, 194, 'rgyBpJTg5u', 90, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '2023-01-25 08:00:01'),
(1571, 196, 'FT9D3WkUfA', 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1572, 197, 'YgsYKySRDf', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01'),
(1573, 198, 'dJAzu4EmQX', 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-01-25 08:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `error_history`
--

CREATE TABLE `error_history` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `er_name` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `error_history`
--

INSERT INTO `error_history` (`id`, `customer_id`, `er_name`, `time`) VALUES
(1, 90, 'PLC Data Loss Error', '2022-12-03 16:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `gaesdata`
--

CREATE TABLE `gaesdata` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `noSystems` int(11) DEFAULT NULL,
  `scheduleName` varchar(200) DEFAULT NULL,
  `checqueNo` varchar(50) DEFAULT NULL,
  `paymentAmount` varchar(50) DEFAULT NULL,
  `agreementName` varchar(200) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `agreement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gaesdata`
--

INSERT INTO `gaesdata` (`id`, `customer_id`, `customer_name`, `noSystems`, `scheduleName`, `checqueNo`, `paymentAmount`, `agreementName`, `schedule`, `agreement`) VALUES
(18, 88, 'Kennel Club LAX ', 123, '', '123', '456', NULL, 'files/88_schedule_bg-mobile-fallback.jpg', 'files/88_agreement_logo.png'),
(20, 90, 'Faith', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 91, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 92, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 93, 'Grace', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 94, 'Anees Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 98, 'Grace Client', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 99, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gaesusers`
--

CREATE TABLE `gaesusers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `rst_pass_code` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gaesusers`
--

INSERT INTO `gaesusers` (`id`, `name`, `user_name`, `email`, `password`, `rst_pass_code`) VALUES
(1, 'Muhammad Raza Khalid', 'raza', 'graceaes2@gmail.com', 'raza@123', NULL),
(2, 'Anees', 'anees', 'grace.emp02@gmail.com', 'anees', 210590);

-- --------------------------------------------------------

--
-- Table structure for table `inspections`
--

CREATE TABLE `inspections` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) DEFAULT NULL,
  `machineToken` varchar(50) DEFAULT NULL,
  `inspectionPicBefore` varchar(255) DEFAULT NULL,
  `inspectionPicAfter` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inspections`
--

INSERT INTO `inspections` (`id`, `machine_id`, `machineToken`, `inspectionPicBefore`, `inspectionPicAfter`) VALUES
(22, 179, 'kzHQbnvs2G', NULL, NULL),
(23, 180, 'GaY6L9e5Zp', 'img/lr5YYTTdqM_stepper_motor1.jpg', NULL),
(24, 181, 'lr5YYTTdqM', 'img/lr5YYTTdqM_stepper_motor1.jpg', 'img/lr5YYTTdqM_withWidth.png'),
(25, 182, '9KFqXc7wK4', NULL, NULL),
(26, 183, 'jYjeARZb5O', NULL, NULL),
(27, 184, '6gZNn4rTTi', NULL, NULL),
(28, 185, 'oOh3ku5i3O', NULL, NULL),
(34, 194, 'rgyBpJTg5u', NULL, NULL),
(35, 195, 'HKqhvSYNsS', NULL, NULL),
(36, 196, 'FT9D3WkUfA', NULL, NULL),
(37, 197, 'YgsYKySRDf', NULL, NULL),
(38, 198, 'dJAzu4EmQX', NULL, NULL),
(39, 199, '1SF6bjNbfH', NULL, NULL),
(41, 201, 'OFduyW2AvZ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inspectordata`
--

CREATE TABLE `inspectordata` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `finishDate` date DEFAULT NULL,
  `hardwareModelUploaded` tinyint(1) NOT NULL DEFAULT 0,
  `crewSelected` tinyint(1) NOT NULL DEFAULT 0,
  `balanceResultUploaded` tinyint(1) NOT NULL DEFAULT 0,
  `installAccordingDesign` tinyint(1) NOT NULL DEFAULT 0,
  `list_itemized` tinyint(1) NOT NULL DEFAULT 0,
  `listVerified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inspectordata`
--

INSERT INTO `inspectordata` (`id`, `customer_id`, `customer_name`, `finishDate`, `hardwareModelUploaded`, `crewSelected`, `balanceResultUploaded`, `installAccordingDesign`, `list_itemized`, `listVerified`) VALUES
(16, 88, 'Kennel Club LAX ', '2023-02-15', 1, 0, 1, 0, 1, 0),
(18, 90, 'Faith', '2023-02-15', 1, 1, 1, 1, 0, 0),
(19, 91, 'Anees Malik', NULL, 0, 0, 0, 0, 0, 0),
(20, 92, 'Anees Malik', NULL, 0, 0, 0, 0, 0, 0),
(21, 93, 'Grace', NULL, 0, 0, 0, 0, 0, 0),
(22, 94, 'Anees Malik', NULL, 0, 0, 0, 0, 0, 0),
(23, 98, 'Grace Client', NULL, 0, 0, 0, 0, 0, 0),
(24, 99, 'Test', NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inspectors`
--

CREATE TABLE `inspectors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rst_pass_code` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inspectors`
--

INSERT INTO `inspectors` (`id`, `name`, `user_name`, `password`, `email`, `rst_pass_code`) VALUES
(1, 'inspector1', 'ins1', 'ins@1', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `Id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `apiToken` varchar(40) DEFAULT NULL,
  `inspectionDate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`Id`, `customerId`, `name`, `location`, `apiToken`, `inspectionDate`) VALUES
(179, 88, 'Cottages', '5325 w 102nd st  Los Angeles, Ca. 90045', 'kzHQbnvs2G', '2022-11-24'),
(180, 88, 'Room 5', '5325 w 102nd st  Los Angeles, Ca. 90045', 'GaY6L9e5Zp', '2022-11-30'),
(181, 88, 'Room 3', '5325 w 102nd st  Los Angeles, Ca. 90045', 'lr5YYTTdqM', '2023-2-20'),
(182, 88, 'Room 1', '5325 w 102nd st  Los Angeles, Ca. 90045', '9KFqXc7wK4', '2022-11-30'),
(183, 88, 'Room 7', '5325 w 102nd st  Los Angeles, Ca. 90045', 'jYjeARZb5O', '2022-11-30'),
(184, 88, 'Grooming', '5325 w 102nd st  Los Angeles, Ca. 90045', '6gZNn4rTTi', '2022-11-30'),
(185, 88, 'Lobby', '5325 w 102nd st Los Angeles, Ca. 90045', 'oOh3ku5i3O', '2022-11-25'),
(194, 90, 'Machine1', 'USA', 'rgyBpJTg5u', '2023-2-25'),
(196, 90, 'Test Machine', 'Multan', 'FT9D3WkUfA', '2023-01-11'),
(197, 90, 'Grace 01', 'Multan', 'YgsYKySRDf', '2023-01-01'),
(198, 90, 'Jan 14', 'Multan', 'dJAzu4EmQX', '2023-01-01'),
(201, 93, 'grace', 'mtn', 'OFduyW2AvZ', '2023-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `rst_pass_code` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `username`, `password`, `email`, `rst_pass_code`) VALUES
(1, 'Operator1', 'operator1', '123', 'grace.emp02@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ranges`
--

CREATE TABLE `ranges` (
  `Id` int(11) NOT NULL,
  `machineId` int(11) DEFAULT NULL,
  `machineName` varchar(50) DEFAULT NULL,
  `machineToken` varchar(50) DEFAULT NULL,
  `humidity_green` int(11) DEFAULT 40,
  `humidity_yellow` int(11) DEFAULT 70,
  `humidity_orange` int(11) DEFAULT 80,
  `humidity_darkOrange` int(11) DEFAULT 85,
  `humidity_red` int(11) DEFAULT 90,
  `humidityHidden_green` int(11) DEFAULT NULL,
  `humidityHidden_yellow` int(11) DEFAULT 39,
  `humidityHidden_orange` int(11) DEFAULT 35,
  `humidityHidden_darkOrange` int(11) DEFAULT 20,
  `humidityHidden_red` int(11) DEFAULT 15,
  `AQI_A` int(11) DEFAULT 90,
  `AQI_B` int(11) DEFAULT 80,
  `AQI_C` int(11) DEFAULT 70,
  `AQI_D` int(11) DEFAULT 60,
  `AQI_F` int(11) DEFAULT NULL,
  `CO2_green` int(11) DEFAULT 0,
  `CO2_yellow` int(11) DEFAULT 1000,
  `CO2_orange` int(11) DEFAULT 2000,
  `CO2_darkOrange` int(11) DEFAULT 3000,
  `CO2_red` int(11) DEFAULT 3500,
  `VOC_green` int(11) DEFAULT 0,
  `VOC_yellow` int(11) DEFAULT 1000,
  `VOC_orange` int(11) DEFAULT 5000,
  `VOC_darkOrange` int(11) DEFAULT 8000,
  `VOC_red` int(11) DEFAULT 10000,
  `PM2_green` int(11) DEFAULT 0,
  `PM2_yellow` int(11) DEFAULT 12,
  `PM2_orange` int(11) DEFAULT 35,
  `PM2_darkOrange` int(11) DEFAULT 200,
  `PM2_red` int(11) DEFAULT 250,
  `PM10_green` int(11) DEFAULT 0,
  `PM10_yellow` int(11) DEFAULT 55,
  `PM10_orange` int(11) DEFAULT 155,
  `PM10_darkOrange` int(11) DEFAULT 255,
  `PM10_red` int(11) DEFAULT 424
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ranges`
--

INSERT INTO `ranges` (`Id`, `machineId`, `machineName`, `machineToken`, `humidity_green`, `humidity_yellow`, `humidity_orange`, `humidity_darkOrange`, `humidity_red`, `humidityHidden_green`, `humidityHidden_yellow`, `humidityHidden_orange`, `humidityHidden_darkOrange`, `humidityHidden_red`, `AQI_A`, `AQI_B`, `AQI_C`, `AQI_D`, `AQI_F`, `CO2_green`, `CO2_yellow`, `CO2_orange`, `CO2_darkOrange`, `CO2_red`, `VOC_green`, `VOC_yellow`, `VOC_orange`, `VOC_darkOrange`, `VOC_red`, `PM2_green`, `PM2_yellow`, `PM2_orange`, `PM2_darkOrange`, `PM2_red`, `PM10_green`, `PM10_yellow`, `PM10_orange`, `PM10_darkOrange`, `PM10_red`) VALUES
(244, 179, 'Cottages', 'kzHQbnvs2G', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(245, 180, 'Room 5', 'GaY6L9e5Zp', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(246, 181, 'Room 3', 'lr5YYTTdqM', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(247, 182, 'Room 1', '9KFqXc7wK4', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(248, 183, 'Room 7', 'jYjeARZb5O', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(249, 184, 'Grooming', '6gZNn4rTTi', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(250, 185, 'Lobby', 'oOh3ku5i3O', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(256, 194, 'Machine1', 'rgyBpJTg5u', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(257, 196, 'Test Machine', 'FT9D3WkUfA', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(258, 197, 'Grace 01', 'default', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(259, 198, 'Jan 14', 'dJAzu4EmQX', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424),
(260, 201, 'grace', 'OFduyW2AvZ', 40, 70, 80, 85, 90, NULL, 39, 35, 20, 15, 90, 80, 70, 60, NULL, 0, 1000, 2000, 3000, 3500, 0, 1000, 5000, 8000, 10000, 0, 12, 35, 200, 250, 0, 55, 155, 255, 424);

-- --------------------------------------------------------

--
-- Table structure for table `voc_record`
--

CREATE TABLE `voc_record` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `in_voc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `voc_record`
--

INSERT INTO `voc_record` (`id`, `client_id`, `in_voc`) VALUES
(32065, 64, 0),
(32068, 67, 0),
(32069, 68, 0),
(32073, 64, 0),
(32074, 65, 0),
(32075, 66, 0),
(32076, 67, 0),
(32077, 68, 0),
(32078, 69, 0),
(32079, 73, 326),
(32081, 64, 0),
(32082, 65, 0),
(32083, 66, 0),
(32084, 67, 0),
(32085, 68, 0),
(32086, 69, 0),
(32087, 73, 326),
(32089, 64, 0),
(32090, 65, 0),
(32091, 66, 0),
(32092, 67, 0),
(32093, 68, 0),
(32094, 69, 0),
(32095, 73, 326),
(32097, 64, 0),
(32098, 65, 0),
(32099, 66, 0),
(32100, 67, 0),
(32101, 68, 0),
(32102, 69, 0),
(32103, 73, 326),
(32105, 64, 0),
(32106, 65, 0),
(32107, 66, 0),
(32108, 67, 0),
(32109, 68, 0),
(32110, 69, 0),
(32111, 73, 326),
(32112, 74, 0),
(32113, 74, 0),
(32114, 74, 0),
(32115, 74, 0),
(32116, 74, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminprofile`
--
ALTER TABLE `adminprofile`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `advertisement_img`
--
ALTER TABLE `advertisement_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companydata`
--
ALTER TABLE `companydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyfiledetails`
--
ALTER TABLE `companyfiledetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `control_final`
--
ALTER TABLE `control_final`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Machine API Token` (`Machine API Token`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `display_final`
--
ALTER TABLE `display_final`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Machine API Token` (`Machine API Token`);

--
-- Indexes for table `display_log`
--
ALTER TABLE `display_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `error_history`
--
ALTER TABLE `error_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaesdata`
--
ALTER TABLE `gaesdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaesusers`
--
ALTER TABLE `gaesusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspections`
--
ALTER TABLE `inspections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspectordata`
--
ALTER TABLE `inspectordata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspectors`
--
ALTER TABLE `inspectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `apiToken` (`apiToken`),
  ADD KEY `machines_ibfk_1` (`customerId`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranges`
--
ALTER TABLE `ranges`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `voc_record`
--
ALTER TABLE `voc_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminprofile`
--
ALTER TABLE `adminprofile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advertisement_img`
--
ALTER TABLE `advertisement_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `companydata`
--
ALTER TABLE `companydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `companyfiledetails`
--
ALTER TABLE `companyfiledetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `control_final`
--
ALTER TABLE `control_final`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `display_final`
--
ALTER TABLE `display_final`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `display_log`
--
ALTER TABLE `display_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1574;

--
-- AUTO_INCREMENT for table `error_history`
--
ALTER TABLE `error_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gaesdata`
--
ALTER TABLE `gaesdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `gaesusers`
--
ALTER TABLE `gaesusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inspections`
--
ALTER TABLE `inspections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `inspectordata`
--
ALTER TABLE `inspectordata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `inspectors`
--
ALTER TABLE `inspectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ranges`
--
ALTER TABLE `ranges`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `voc_record`
--
ALTER TABLE `voc_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32117;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `machines`
--
ALTER TABLE `machines`
  ADD CONSTRAINT `machines_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`Id`) ON DELETE SET NULL;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `DeletingVocRecord` ON SCHEDULE EVERY 10 MINUTE STARTS '2022-11-02 16:04:22' ON COMPLETION NOT PRESERVE DISABLE DO DELETE FROM `voc_record` LIMIT 9$$

CREATE DEFINER=`root`@`localhost` EVENT `DataLogging` ON SCHEDULE EVERY 8 SECOND STARTS '2022-11-02 15:54:59' ON COMPLETION NOT PRESERVE DISABLE DO INSERT INTO `display_Log` (`Machine Name`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2.5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2.5`, `Out_PM_10`, `Out_Radon_Spare`, `timeStamp`) SELECT `Machine Name`, `Machine API Token`, `AQI`, `In_Temperature`, `In_Humidity`, `In_CO2`, `In_VOC`, `In_PM_2_5`, `In_PM_10`, `In_CO`, `Out_Temperature`, `Out_Humidity`, `Out_O3`, `Out_SO2`, `Out_CO`, `Out_CO2`, `Out_NO2`, `Out_PM_2_5`, `Out_PM_10`, `Out_Radon_Spare` FROM `Display_Final`, `current_timestamp()`$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
