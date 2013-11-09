-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2013 at 01:10 AM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `team12`
--
CREATE DATABASE IF NOT EXISTS `team12` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `team12`;

-- --------------------------------------------------------

--
-- Table structure for table `Bride`
--

CREATE TABLE IF NOT EXISTS `Bride` (
  `b_id` int(11) NOT NULL,
  `b_first_name` varchar(50) NOT NULL,
  `b_middle_name` varchar(50) NOT NULL,
  `b_last_name` varchar(50) NOT NULL,
  `b_father_name` varchar(50) NOT NULL,
  `b_mother_name` varchar(50) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Bride`
--

INSERT INTO `Bride` (`b_id`, `b_first_name`, `b_middle_name`, `b_last_name`, `b_father_name`, `b_mother_name`) VALUES
(1, 'Danareas', 'K.', 'Targeryan', 'Rob Targeryan', 'Khaleesi Targeryan');

-- --------------------------------------------------------

--
-- Table structure for table `Couple`
--

CREATE TABLE IF NOT EXISTS `Couple` (
  `c_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Couple`
--

INSERT INTO `Couple` (`c_id`, `g_id`, `b_id`, `username`, `password`, `salt`) VALUES
(1, 1, 1, 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `css`
--

CREATE TABLE IF NOT EXISTS `css` (
  `css_id` int(12) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `invitation_background` text NOT NULL,
  `custom_css` text NOT NULL,
  PRIMARY KEY (`css_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `css`
--

INSERT INTO `css` (`css_id`, `c_id`, `invitation_background`, `custom_css`) VALUES
(4, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(5, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(6, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(7, 1, 'http://localhost:8083/wedding/TemplateSelection.php', ''),
(8, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(9, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(10, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(11, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(12, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(13, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(14, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(15, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(16, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(17, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(18, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(19, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(20, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(21, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(22, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(23, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(24, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(25, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(26, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(27, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(28, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(29, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(30, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(31, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(32, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(33, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(34, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(35, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(36, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(37, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(38, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(39, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(40, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(41, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(42, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(43, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(44, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(45, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(46, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(47, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(48, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(49, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(50, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(51, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(52, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(53, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(54, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(55, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(56, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(57, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(58, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(59, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', ''),
(60, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(61, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(62, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/3.jpeg', ''),
(63, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/1.jpeg', ''),
(64, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', ''),
(65, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/2.jpeg', ''),
(66, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/3.jpeg', ''),
(67, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', ''),
(68, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/2.jpeg', ''),
(69, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `draggable`
--

CREATE TABLE IF NOT EXISTS `draggable` (
  `draggable_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `id` varchar(50) NOT NULL,
  `position_top` double NOT NULL,
  `position_left` double NOT NULL,
  `all_positions` varchar(512) NOT NULL,
  PRIMARY KEY (`draggable_id`),
  UNIQUE KEY `draggable_id` (`draggable_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `draggable`
--

INSERT INTO `draggable` (`draggable_id`, `c_id`, `id`, `position_top`, `position_left`, `all_positions`) VALUES
(1, 1, '', 0, 0, '73.33332824707031,624,129.5,686,172.6666717529297,676,10.833328247070312,1016.5'),
(2, 1, '', 0, 0, '39.33332824707031,815,105.5,840,165.6666717529297,833,156.8333282470703,1017.5'),
(3, 1, '', 0, 0, '38.33332824707031,815,undefined,undefined,undefined,undefined,undefined,undefined'),
(4, 1, '', 0, 0, '38.33332824707031,800,undefined,undefined,undefined,undefined,undefined,undefined'),
(5, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(6, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(7, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(8, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(9, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(10, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(11, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(12, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(13, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(14, 1, '', 0, 0, '43.33332824707031,662,78.5,703,119.66667175292969,696,37.83332824707031,1028.5'),
(15, 1, '', 0, 0, '27.333328247070312,775,66.5,820,103.66667175292969,786,20.833328247070312,602.5'),
(16, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(17, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,177.8333282470703,1.5'),
(18, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(19, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,138.8333282470703,-3.5'),
(20, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,160.8333282470703,-10.5'),
(21, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(22, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,149.8333282470703,3.5'),
(23, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(24, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(25, 1, '', 0, 0, '80.33332824707031,809,120.5,887,164.6666717529297,828,11.833328247070312,1031.5'),
(26, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(27, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(28, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(29, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,162.8333282470703,16.5'),
(30, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(31, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,164.8333282470703,-0.5'),
(32, 1, '', 0, 0, '112.33332824707031,636,168.5,705,205.6666717529297,644,55.83332824707031,443.5'),
(33, 1, '', 0, 0, '48.33332824707031,772,81.5,810,147.6666717529297,772,308.8333282470703,890.5'),
(34, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(35, 1, '', 0, 0, '58.33332824707031,644,94.5,694,139.6666717529297,667,96.83332824707031,959.5'),
(36, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(37, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,153.8333282470703,-0.5'),
(38, 1, '', 0, 0, '58,388,97,429,146,396,41.83332824707031,704.5'),
(39, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(40, 1, '', 0, 0, '52,301,107,424,158,334,360,650'),
(41, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(42, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(43, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,153.8333282470703,0.5'),
(44, 1, '', 0, 0, '104.33332824707031,676,146.5,742,193.6666717529297,685,6.8333282470703125,1025.5'),
(45, 1, '', 0, 0, '70.33332824707031,691,134.5,815,178.6666717529297,767,222.8333282470703,792.5'),
(46, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(47, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,146.8333282470703,14.5'),
(48, 1, '', 0, 0, '79.33332824707031,709,157.5,758,261.6666717529297,710,46.83332824707031,538.5'),
(49, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(50, 1, '', 0, 0, '47.33332824707031,575,84.5,665,164.6666717529297,661,188.8333282470703,842.5'),
(51, 1, '', 0, 0, 'undefined,undefined,84.5,667,81.66667175292969,805,undefined,undefined'),
(52, 1, '', 0, 0, '186.3333282470703,680,79.5,743,38.66667175292969,758,35.83332824707031,500.8333282470703');

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--

CREATE TABLE IF NOT EXISTS `Event` (
  `e_id` int(11) NOT NULL,
  `venue_name` varchar(50) NOT NULL,
  `venue_address` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `venue_phone` varchar(15) NOT NULL,
  `attire` varchar(100) NOT NULL,
  `c_id` int(11) NOT NULL COMMENT 'foreign key',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Event`
--

INSERT INTO `Event` (`e_id`, `venue_name`, `venue_address`, `date`, `event_name`, `venue_phone`, `attire`, `c_id`) VALUES
(1, 'USC', '36 WattWay', '2013-10-15', 'shaadi', '2147483647', 'formal', 1),
(2, 'USC', '35 watt way', '2013-10-15', 'sangeet', '8888888888', 'traditional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `font`
--

CREATE TABLE IF NOT EXISTS `font` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Groom`
--

CREATE TABLE IF NOT EXISTS `Groom` (
  `g_id` int(11) NOT NULL,
  `g_first_name` varchar(50) NOT NULL,
  `g_middle_name` varchar(50) NOT NULL,
  `g_last_name` varchar(50) NOT NULL,
  `g_father_name` varchar(50) NOT NULL,
  `g_mother_name` varchar(50) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Groom`
--

INSERT INTO `Groom` (`g_id`, `g_first_name`, `g_middle_name`, `g_last_name`, `g_father_name`, `g_mother_name`) VALUES
(1, 'Khal', 'T.', 'Drogo', 'Edward Drogo', 'Lysa Drogo');

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--

CREATE TABLE IF NOT EXISTS `Guest` (
  `guest_number` bigint(20) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(15) NOT NULL,
  `c_id` int(12) NOT NULL,
  `side` varchar(8) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mehndi` varchar(5) DEFAULT NULL,
  `sangeet` varchar(5) DEFAULT NULL,
  `haldi` varchar(5) DEFAULT NULL,
  `wedding_ceremony` varchar(5) DEFAULT NULL,
  `reception` varchar(5) DEFAULT NULL,
  `guest_group` varchar(15) DEFAULT NULL,
  `rsvp_wedding_ceremony` varchar(5) DEFAULT NULL,
  `rsvp_reception` varchar(5) DEFAULT NULL,
  `rsvp_mehndi` varchar(5) DEFAULT NULL,
  `rsvp_haldi` varchar(5) DEFAULT NULL,
  `rsvp_sangeet` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `guest_number` (`guest_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5140 ;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(4771, 'C1G1', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4780, 'C1G10', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4870, 'C1G100', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4871, 'C1G101', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4872, 'C1G102', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4873, 'C1G103', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4874, 'C1G104', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4875, 'C1G105', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4876, 'C1G106', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4877, 'C1G107', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4878, 'C1G108', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4879, 'C1G109', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4781, 'C1G11', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4880, 'C1G110', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4881, 'C1G111', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4882, 'C1G112', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4883, 'C1G113', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4884, 'C1G114', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4885, 'C1G115', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4886, 'C1G116', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4887, 'C1G117', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4888, 'C1G118', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4889, 'C1G119', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4782, 'C1G12', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4890, 'C1G120', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4891, 'C1G121', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4892, 'C1G122', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4893, 'C1G123', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4894, 'C1G124', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4895, 'C1G125', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4896, 'C1G126', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4897, 'C1G127', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4898, 'C1G128', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4899, 'C1G129', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4783, 'C1G13', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4900, 'C1G130', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4901, 'C1G131', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4902, 'C1G132', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4903, 'C1G133', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4904, 'C1G134', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4905, 'C1G135', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4906, 'C1G136', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4907, 'C1G137', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4908, 'C1G138', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4909, 'C1G139', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4784, 'C1G14', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4910, 'C1G140', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4911, 'C1G141', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4912, 'C1G142', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4913, 'C1G143', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4914, 'C1G144', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4915, 'C1G145', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4916, 'C1G146', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4917, 'C1G147', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4918, 'C1G148', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4919, 'C1G149', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4785, 'C1G15', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4920, 'C1G150', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4921, 'C1G151', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4922, 'C1G152', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4923, 'C1G153', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4924, 'C1G154', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4925, 'C1G155', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4926, 'C1G156', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4927, 'C1G157', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4928, 'C1G158', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4929, 'C1G159', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4786, 'C1G16', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4930, 'C1G160', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4931, 'C1G161', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4932, 'C1G162', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4933, 'C1G163', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4934, 'C1G164', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4935, 'C1G165', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4936, 'C1G166', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4937, 'C1G167', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4938, 'C1G168', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4939, 'C1G169', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4787, 'C1G17', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4940, 'C1G170', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4941, 'C1G171', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4942, 'C1G172', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4943, 'C1G173', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4944, 'C1G174', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4945, 'C1G175', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4946, 'C1G176', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4947, 'C1G177', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4948, 'C1G178', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4949, 'C1G179', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4788, 'C1G18', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4950, 'C1G180', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4951, 'C1G181', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4952, 'C1G182', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4953, 'C1G183', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4954, 'C1G184', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4955, 'C1G185', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4956, 'C1G186', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4957, 'C1G187', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4958, 'C1G188', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4959, 'C1G189', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4789, 'C1G19', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4960, 'C1G190', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4961, 'C1G191', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4962, 'C1G192', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4963, 'C1G193', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4964, 'C1G194', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4965, 'C1G195', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4966, 'C1G196', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4967, 'C1G197', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4968, 'C1G198', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4969, 'C1G199', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4772, 'C1G2', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4790, 'C1G20', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4970, 'C1G200', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4971, 'C1G201', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4972, 'C1G202', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4973, 'C1G203', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4974, 'C1G204', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4975, 'C1G205', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4976, 'C1G206', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4977, 'C1G207', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4978, 'C1G208', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4979, 'C1G209', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4791, 'C1G21', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4980, 'C1G210', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4981, 'C1G211', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4982, 'C1G212', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4983, 'C1G213', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4984, 'C1G214', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4985, 'C1G215', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4986, 'C1G216', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4987, 'C1G217', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4988, 'C1G218', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4989, 'C1G219', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4792, 'C1G22', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4990, 'C1G220', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4991, 'C1G221', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4992, 'C1G222', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4993, 'C1G223', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4994, 'C1G224', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4995, 'C1G225', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4996, 'C1G226', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4997, 'C1G227', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4998, 'C1G228', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4999, 'C1G229', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4793, 'C1G23', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5000, 'C1G230', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5001, 'C1G231', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5002, 'C1G232', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5003, 'C1G233', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5004, 'C1G234', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5005, 'C1G235', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5006, 'C1G236', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5007, 'C1G237', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5008, 'C1G238', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5009, 'C1G239', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4794, 'C1G24', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5010, 'C1G240', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5011, 'C1G241', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '213', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5012, 'C1G242', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '214', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5013, 'C1G243', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '215', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5014, 'C1G244', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '216', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5015, 'C1G245', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '217', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5016, 'C1G246', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '218', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5017, 'C1G247', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '219', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5018, 'C1G248', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '220', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5019, 'C1G249', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '221', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4795, 'C1G25', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5020, 'C1G250', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '222', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5021, 'C1G251', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '223', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5022, 'C1G252', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '224', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5023, 'C1G253', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '225', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5024, 'C1G254', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '226', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5025, 'C1G255', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '227', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5026, 'C1G256', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '228', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5027, 'C1G257', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '229', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5028, 'C1G258', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '230', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5029, 'C1G259', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '231', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4796, 'C1G26', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5030, 'C1G260', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '232', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5031, 'C1G261', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '233', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5032, 'C1G262', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '234', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5033, 'C1G263', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '235', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5034, 'C1G264', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '236', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5035, 'C1G265', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '237', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5036, 'C1G266', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '238', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5037, 'C1G267', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '239', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5038, 'C1G268', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '240', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5039, 'C1G269', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '241', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4797, 'C1G27', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5040, 'C1G270', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '242', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5041, 'C1G271', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '243', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5042, 'C1G272', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '244', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5043, 'C1G273', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '245', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5044, 'C1G274', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '246', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5045, 'C1G275', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '247', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5046, 'C1G276', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '248', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5047, 'C1G277', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '249', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5048, 'C1G278', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '250', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5049, 'C1G279', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '251', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4798, 'C1G28', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5050, 'C1G280', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '252', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5051, 'C1G281', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '253', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5052, 'C1G282', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '254', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5053, 'C1G283', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '255', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5054, 'C1G284', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '256', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5055, 'C1G285', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '257', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5056, 'C1G286', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '258', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5057, 'C1G287', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '259', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5058, 'C1G288', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '260', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5059, 'C1G289', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '261', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4799, 'C1G29', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5060, 'C1G290', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '262', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5061, 'C1G291', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '263', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5062, 'C1G292', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '264', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5063, 'C1G293', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '265', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5064, 'C1G294', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '266', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5065, 'C1G295', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '267', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5066, 'C1G296', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '268', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5067, 'C1G297', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '269', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5068, 'C1G298', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '270', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5069, 'C1G299', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '271', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4773, 'C1G3', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4800, 'C1G30', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5070, 'C1G300', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '272', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5071, 'C1G301', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '273', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5072, 'C1G302', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '274', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5073, 'C1G303', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '275', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5074, 'C1G304', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '276', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5075, 'C1G305', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '277', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5076, 'C1G306', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '278', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5077, 'C1G307', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '279', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5078, 'C1G308', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '280', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5079, 'C1G309', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '281', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4801, 'C1G31', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5080, 'C1G310', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '282', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5081, 'C1G311', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '283', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5082, 'C1G312', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '284', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5083, 'C1G313', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '285', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5084, 'C1G314', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '286', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5085, 'C1G315', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '287', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5086, 'C1G316', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '288', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5087, 'C1G317', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '289', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5088, 'C1G318', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '290', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5089, 'C1G319', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '291', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4802, 'C1G32', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5090, 'C1G320', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '292', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5091, 'C1G321', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '293', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5092, 'C1G322', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '294', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5093, 'C1G323', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '295', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5094, 'C1G324', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '296', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5095, 'C1G325', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '297', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5096, 'C1G326', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '298', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5097, 'C1G327', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '299', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5098, 'C1G328', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '300', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5099, 'C1G329', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '301', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4803, 'C1G33', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5100, 'C1G330', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '302', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5101, 'C1G331', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '303', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5102, 'C1G332', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '304', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5103, 'C1G333', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '305', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5104, 'C1G334', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '306', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5105, 'C1G335', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '307', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5106, 'C1G336', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '308', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5107, 'C1G337', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '309', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5108, 'C1G338', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '310', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5109, 'C1G339', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '311', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4804, 'C1G34', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5110, 'C1G340', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '312', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5111, 'C1G341', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '313', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5112, 'C1G342', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '314', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5113, 'C1G343', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '315', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5114, 'C1G344', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '316', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5115, 'C1G345', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '317', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5116, 'C1G346', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '318', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5117, 'C1G347', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '319', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5118, 'C1G348', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '320', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5119, 'C1G349', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '321', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4805, 'C1G35', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5120, 'C1G350', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '322', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5121, 'C1G351', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '323', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5122, 'C1G352', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '324', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5123, 'C1G353', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '325', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5124, 'C1G354', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '326', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5125, 'C1G355', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '327', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5126, 'C1G356', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '328', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5127, 'C1G357', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '329', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5128, 'C1G358', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '330', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5129, 'C1G359', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4806, 'C1G36', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5130, 'C1G360', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5131, 'C1G361', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 1', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5132, 'C1G362', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 2', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5133, 'C1G363', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 3', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');
INSERT INTO `Guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(5134, 'C1G364', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 4', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5135, 'C1G365', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'CS577 Friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5136, 'C1G366', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 TA''s', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5137, 'C1G367', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Professor', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5138, 'C1G368', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Team', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5139, 'C1G369', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'Colony friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4807, 'C1G37', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4808, 'C1G38', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4809, 'C1G39', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4774, 'C1G4', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4810, 'C1G40', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4811, 'C1G41', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4812, 'C1G42', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4813, 'C1G43', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4814, 'C1G44', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4815, 'C1G45', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4816, 'C1G46', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4817, 'C1G47', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4818, 'C1G48', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4819, 'C1G49', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4775, 'C1G5', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4820, 'C1G50', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4821, 'C1G51', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4822, 'C1G52', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4823, 'C1G53', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4824, 'C1G54', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4825, 'C1G55', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4826, 'C1G56', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4827, 'C1G57', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4828, 'C1G58', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4829, 'C1G59', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4776, 'C1G6', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4830, 'C1G60', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4831, 'C1G61', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4832, 'C1G62', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4833, 'C1G63', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4834, 'C1G64', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4835, 'C1G65', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4836, 'C1G66', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4837, 'C1G67', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4838, 'C1G68', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4839, 'C1G69', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4777, 'C1G7', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4840, 'C1G70', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4841, 'C1G71', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4842, 'C1G72', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4843, 'C1G73', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4844, 'C1G74', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4845, 'C1G75', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4846, 'C1G76', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4847, 'C1G77', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4848, 'C1G78', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4849, 'C1G79', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4778, 'C1G8', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4850, 'C1G80', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4851, 'C1G81', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4852, 'C1G82', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4853, 'C1G83', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4854, 'C1G84', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4855, 'C1G85', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4856, 'C1G86', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4857, 'C1G87', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4858, 'C1G88', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4859, 'C1G89', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4779, 'C1G9', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4860, 'C1G90', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4861, 'C1G91', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4862, 'C1G92', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4863, 'C1G93', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4864, 'C1G94', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4865, 'C1G95', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4866, 'C1G96', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4867, 'C1G97', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4868, 'C1G98', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(4869, 'C1G99', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `Icons`
--

CREATE TABLE IF NOT EXISTS `Icons` (
  `icon_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `path` varchar(512) NOT NULL,
  PRIMARY KEY (`icon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE IF NOT EXISTS `Images` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `image_path` varchar(512) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invitation_contents`
--

CREATE TABLE IF NOT EXISTS `invitation_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `position_top` double NOT NULL,
  `position_left` double NOT NULL,
  `all_positions` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Use category to get correct table.  Use item id to get the item in that table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invitation_text`
--

CREATE TABLE IF NOT EXISTS `invitation_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `font` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_type`
--

CREATE TABLE IF NOT EXISTS `media_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `media_type`
--

INSERT INTO `media_type` (`id`, `type`) VALUES
(2, 'background_images'),
(3, 'prayers'),
(4, 'user_invitation_images'),
(5, 'traditional_image'),
(6, 'invitation_text'),
(7, 'color');

-- --------------------------------------------------------

--
-- Table structure for table `Prayers`
--

CREATE TABLE IF NOT EXISTS `Prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_text` varchar(200) NOT NULL,
  PRIMARY KEY (`prayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE IF NOT EXISTS `prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_text` varchar(200) NOT NULL,
  `culture` int(11) NOT NULL,
  PRIMARY KEY (`prayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplied_invitation_images`
--

CREATE TABLE IF NOT EXISTS `supplied_invitation_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_path` varchar(512) NOT NULL,
  `ico_path` varchar(512) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `culture` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_invitation_images`
--

CREATE TABLE IF NOT EXISTS `user_invitation_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `path` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `User_Pictures`
--

CREATE TABLE IF NOT EXISTS `User_Pictures` (
  `user_image_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `path` varchar(512) NOT NULL,
  `c_id` int(11) NOT NULL COMMENT 'foregin key to couple id',
  PRIMARY KEY (`user_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `website_basic_info`
--

CREATE TABLE IF NOT EXISTS `website_basic_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `welcome_text` text NOT NULL,
  `how_met_text` text NOT NULL,
  `proposal_text` text NOT NULL,
  `wedding_party_text` text NOT NULL,
  `registry_text` text NOT NULL,
  `honeymoon_text` text NOT NULL,
  `img_path` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `website_basic_info`
--

INSERT INTO `website_basic_info` (`id`, `c_id`, `welcome_text`, `how_met_text`, `proposal_text`, `wedding_party_text`, `registry_text`, `honeymoon_text`, `img_path`) VALUES
(1, 1, 'This our site where you can see all the great things we are planning for our wedding!', 'We meet and the rest is history.', '', 'Bob, Sue, George', 'Macy''s, Crate&Barrel, Target', 'A tropical wonderland.', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
