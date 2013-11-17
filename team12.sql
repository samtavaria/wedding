-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2013 at 02:53 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

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
-- Table structure for table `bride`
--

CREATE TABLE IF NOT EXISTS `bride` (
  `c_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_first_name` varchar(50) NOT NULL,
  `b_middle_name` varchar(50) NOT NULL,
  `b_last_name` varchar(50) NOT NULL,
  `b_father_name` varchar(50) NOT NULL,
  `b_mother_name` varchar(50) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `c_id` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bride`
--

INSERT INTO `bride` (`c_id`, `b_id`, `b_first_name`, `b_middle_name`, `b_last_name`, `b_father_name`, `b_mother_name`) VALUES
(1, 1, 'Danareas', 'K.', 'Targeryan', 'Rob Targeryan', 'Khaleesi Targeryan');

-- --------------------------------------------------------

--
-- Table structure for table `couple`
--

CREATE TABLE IF NOT EXISTS `couple` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `couple`
--

INSERT INTO `couple` (`c_id`, `username`, `password`, `salt`) VALUES
(1, 'admin', 'admin', 'salt1'),
(2, 'temp1', 'ppp', 'sfdf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

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
(69, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', ''),
(70, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', ''),
(71, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', ''),
(72, 1, '', ''),
(73, 1, '', ''),
(74, 1, 'http://localhost/media/invitation_card_backgrounds/3.jpeg', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

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
(52, 1, '', 0, 0, '186.3333282470703,680,79.5,743,38.66667175292969,758,35.83332824707031,500.8333282470703'),
(53, 1, '', 0, 0, 'undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined'),
(54, 1, '', 0, 0, '58,744,85,574,113,763,179,572');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
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
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `venue_name`, `venue_address`, `date`, `event_name`, `venue_phone`, `attire`, `c_id`) VALUES
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
-- Table structure for table `groom`
--

CREATE TABLE IF NOT EXISTS `groom` (
  `c_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `g_first_name` varchar(50) NOT NULL,
  `g_middle_name` varchar(50) NOT NULL,
  `g_last_name` varchar(50) NOT NULL,
  `g_father_name` varchar(50) NOT NULL,
  `g_mother_name` varchar(50) NOT NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groom`
--

INSERT INTO `groom` (`c_id`, `g_id`, `g_first_name`, `g_middle_name`, `g_last_name`, `g_father_name`, `g_mother_name`) VALUES
(1, 1, 'Khal', 'T.', 'Drogo', 'Edward Drogo', 'Lysa Drogo');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5509 ;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(5140, 'C1G1', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5149, 'C1G10', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5239, 'C1G100', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5240, 'C1G101', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5241, 'C1G102', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5242, 'C1G103', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5243, 'C1G104', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5244, 'C1G105', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5245, 'C1G106', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5246, 'C1G107', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5247, 'C1G108', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5248, 'C1G109', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5150, 'C1G11', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5249, 'C1G110', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5250, 'C1G111', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5251, 'C1G112', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5252, 'C1G113', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5253, 'C1G114', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5254, 'C1G115', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5255, 'C1G116', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5256, 'C1G117', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5257, 'C1G118', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5258, 'C1G119', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5151, 'C1G12', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5259, 'C1G120', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5260, 'C1G121', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5261, 'C1G122', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5262, 'C1G123', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5263, 'C1G124', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5264, 'C1G125', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5265, 'C1G126', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5266, 'C1G127', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5267, 'C1G128', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5268, 'C1G129', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5152, 'C1G13', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5269, 'C1G130', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5270, 'C1G131', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5271, 'C1G132', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5272, 'C1G133', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5273, 'C1G134', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5274, 'C1G135', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5275, 'C1G136', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5276, 'C1G137', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5277, 'C1G138', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5278, 'C1G139', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5153, 'C1G14', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5279, 'C1G140', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5280, 'C1G141', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5281, 'C1G142', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5282, 'C1G143', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5283, 'C1G144', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5284, 'C1G145', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5285, 'C1G146', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5286, 'C1G147', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5287, 'C1G148', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5288, 'C1G149', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5154, 'C1G15', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5289, 'C1G150', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5290, 'C1G151', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5291, 'C1G152', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5292, 'C1G153', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5293, 'C1G154', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5294, 'C1G155', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5295, 'C1G156', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5296, 'C1G157', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5297, 'C1G158', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5298, 'C1G159', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5155, 'C1G16', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5299, 'C1G160', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5300, 'C1G161', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5301, 'C1G162', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5302, 'C1G163', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5303, 'C1G164', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5304, 'C1G165', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5305, 'C1G166', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5306, 'C1G167', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5307, 'C1G168', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5308, 'C1G169', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5156, 'C1G17', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5309, 'C1G170', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5310, 'C1G171', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5311, 'C1G172', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5312, 'C1G173', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5313, 'C1G174', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5314, 'C1G175', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5315, 'C1G176', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5316, 'C1G177', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5317, 'C1G178', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5318, 'C1G179', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5157, 'C1G18', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5319, 'C1G180', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5320, 'C1G181', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5321, 'C1G182', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5322, 'C1G183', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5323, 'C1G184', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5324, 'C1G185', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5325, 'C1G186', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5326, 'C1G187', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5327, 'C1G188', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5328, 'C1G189', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5158, 'C1G19', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5329, 'C1G190', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5330, 'C1G191', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5331, 'C1G192', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5332, 'C1G193', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5333, 'C1G194', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5334, 'C1G195', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5335, 'C1G196', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5336, 'C1G197', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5337, 'C1G198', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5338, 'C1G199', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5141, 'C1G2', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5159, 'C1G20', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5339, 'C1G200', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5340, 'C1G201', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5341, 'C1G202', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5342, 'C1G203', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5343, 'C1G204', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5344, 'C1G205', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5345, 'C1G206', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5346, 'C1G207', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5347, 'C1G208', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5348, 'C1G209', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5160, 'C1G21', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5349, 'C1G210', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5350, 'C1G211', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5351, 'C1G212', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5352, 'C1G213', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5353, 'C1G214', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5354, 'C1G215', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5355, 'C1G216', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5356, 'C1G217', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5357, 'C1G218', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5358, 'C1G219', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5161, 'C1G22', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5359, 'C1G220', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5360, 'C1G221', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5361, 'C1G222', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5362, 'C1G223', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5363, 'C1G224', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5364, 'C1G225', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5365, 'C1G226', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5366, 'C1G227', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5367, 'C1G228', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5368, 'C1G229', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5162, 'C1G23', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5369, 'C1G230', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5370, 'C1G231', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5371, 'C1G232', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5372, 'C1G233', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5373, 'C1G234', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5374, 'C1G235', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5375, 'C1G236', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5376, 'C1G237', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5377, 'C1G238', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5378, 'C1G239', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5163, 'C1G24', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5379, 'C1G240', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5380, 'C1G241', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '213', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5381, 'C1G242', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '214', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5382, 'C1G243', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '215', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5383, 'C1G244', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '216', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5384, 'C1G245', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '217', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5385, 'C1G246', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '218', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5386, 'C1G247', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '219', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5387, 'C1G248', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '220', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5388, 'C1G249', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '221', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5164, 'C1G25', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5389, 'C1G250', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '222', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5390, 'C1G251', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '223', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5391, 'C1G252', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '224', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5392, 'C1G253', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '225', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5393, 'C1G254', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '226', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5394, 'C1G255', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '227', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5395, 'C1G256', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '228', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5396, 'C1G257', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '229', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5397, 'C1G258', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '230', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5398, 'C1G259', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '231', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5165, 'C1G26', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5399, 'C1G260', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '232', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5400, 'C1G261', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '233', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5401, 'C1G262', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '234', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5402, 'C1G263', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '235', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5403, 'C1G264', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '236', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5404, 'C1G265', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '237', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5405, 'C1G266', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '238', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5406, 'C1G267', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '239', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5407, 'C1G268', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '240', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5408, 'C1G269', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '241', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5166, 'C1G27', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5409, 'C1G270', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '242', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5410, 'C1G271', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '243', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5411, 'C1G272', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '244', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5412, 'C1G273', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '245', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5413, 'C1G274', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '246', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5414, 'C1G275', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '247', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5415, 'C1G276', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '248', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5416, 'C1G277', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '249', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5417, 'C1G278', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '250', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5418, 'C1G279', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '251', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5167, 'C1G28', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5419, 'C1G280', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '252', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5420, 'C1G281', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '253', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5421, 'C1G282', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '254', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5422, 'C1G283', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '255', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5423, 'C1G284', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '256', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5424, 'C1G285', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '257', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5425, 'C1G286', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '258', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5426, 'C1G287', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '259', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5427, 'C1G288', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '260', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5428, 'C1G289', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '261', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5168, 'C1G29', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5429, 'C1G290', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '262', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5430, 'C1G291', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '263', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5431, 'C1G292', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '264', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5432, 'C1G293', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '265', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5433, 'C1G294', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '266', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5434, 'C1G295', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '267', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5435, 'C1G296', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '268', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5436, 'C1G297', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '269', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5437, 'C1G298', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '270', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5438, 'C1G299', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '271', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5142, 'C1G3', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5169, 'C1G30', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5439, 'C1G300', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '272', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5440, 'C1G301', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '273', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5441, 'C1G302', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '274', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5442, 'C1G303', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '275', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5443, 'C1G304', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '276', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5444, 'C1G305', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '277', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5445, 'C1G306', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '278', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5446, 'C1G307', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '279', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5447, 'C1G308', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '280', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5448, 'C1G309', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '281', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5170, 'C1G31', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5449, 'C1G310', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '282', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5450, 'C1G311', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '283', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5451, 'C1G312', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '284', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5452, 'C1G313', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '285', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5453, 'C1G314', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '286', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5454, 'C1G315', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '287', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5455, 'C1G316', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '288', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5456, 'C1G317', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '289', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5457, 'C1G318', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '290', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5458, 'C1G319', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '291', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5171, 'C1G32', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5459, 'C1G320', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '292', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5460, 'C1G321', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '293', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5461, 'C1G322', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '294', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5462, 'C1G323', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '295', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5463, 'C1G324', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '296', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5464, 'C1G325', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '297', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5465, 'C1G326', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '298', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5466, 'C1G327', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '299', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5467, 'C1G328', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '300', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5468, 'C1G329', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '301', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5172, 'C1G33', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5469, 'C1G330', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '302', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5470, 'C1G331', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '303', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5471, 'C1G332', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '304', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5472, 'C1G333', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '305', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5473, 'C1G334', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '306', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5474, 'C1G335', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '307', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5475, 'C1G336', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '308', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5476, 'C1G337', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '309', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5477, 'C1G338', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '310', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5478, 'C1G339', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '311', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5173, 'C1G34', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5479, 'C1G340', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '312', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5480, 'C1G341', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '313', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5481, 'C1G342', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '314', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5482, 'C1G343', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '315', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5483, 'C1G344', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '316', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5484, 'C1G345', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '317', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5485, 'C1G346', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '318', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5486, 'C1G347', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '319', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5487, 'C1G348', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '320', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5488, 'C1G349', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '321', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5174, 'C1G35', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5489, 'C1G350', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '322', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5490, 'C1G351', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '323', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5491, 'C1G352', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '324', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5492, 'C1G353', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '325', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5493, 'C1G354', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '326', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5494, 'C1G355', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '327', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5495, 'C1G356', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '328', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5496, 'C1G357', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '329', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5497, 'C1G358', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '330', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5498, 'C1G359', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5175, 'C1G36', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5499, 'C1G360', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5500, 'C1G361', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 1', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5501, 'C1G362', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 2', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5502, 'C1G363', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 3', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');
INSERT INTO `guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(5503, 'C1G364', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 4', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5504, 'C1G365', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'CS577 Friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5505, 'C1G366', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 TA''s', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5506, 'C1G367', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Professor', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5507, 'C1G368', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Team', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5508, 'C1G369', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'Colony friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5176, 'C1G37', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5177, 'C1G38', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5178, 'C1G39', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5143, 'C1G4', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5179, 'C1G40', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5180, 'C1G41', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5181, 'C1G42', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5182, 'C1G43', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5183, 'C1G44', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5184, 'C1G45', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5185, 'C1G46', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5186, 'C1G47', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5187, 'C1G48', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5188, 'C1G49', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5144, 'C1G5', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5189, 'C1G50', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5190, 'C1G51', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5191, 'C1G52', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5192, 'C1G53', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5193, 'C1G54', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5194, 'C1G55', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5195, 'C1G56', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5196, 'C1G57', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5197, 'C1G58', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5198, 'C1G59', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5145, 'C1G6', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5199, 'C1G60', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5200, 'C1G61', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5201, 'C1G62', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5202, 'C1G63', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5203, 'C1G64', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5204, 'C1G65', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5205, 'C1G66', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5206, 'C1G67', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5207, 'C1G68', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5208, 'C1G69', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5146, 'C1G7', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5209, 'C1G70', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5210, 'C1G71', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5211, 'C1G72', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5212, 'C1G73', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5213, 'C1G74', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5214, 'C1G75', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5215, 'C1G76', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5216, 'C1G77', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5217, 'C1G78', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5218, 'C1G79', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5147, 'C1G8', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5219, 'C1G80', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5220, 'C1G81', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5221, 'C1G82', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5222, 'C1G83', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5223, 'C1G84', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5224, 'C1G85', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5225, 'C1G86', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5226, 'C1G87', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5227, 'C1G88', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5228, 'C1G89', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5148, 'C1G9', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5229, 'C1G90', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5230, 'C1G91', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5231, 'C1G92', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5232, 'C1G93', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5233, 'C1G94', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5234, 'C1G95', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5235, 'C1G96', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5236, 'C1G97', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5237, 'C1G98', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5238, 'C1G99', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE IF NOT EXISTS `icons` (
  `icon_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `path` varchar(512) NOT NULL,
  PRIMARY KEY (`icon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `image_path` varchar(512) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invitation_background_images`
--

CREATE TABLE IF NOT EXISTS `invitation_background_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_path` varchar(512) NOT NULL,
  `ico_path` varchar(512) NOT NULL,
  `name` varchar(512) NOT NULL,
  `culture` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `invitation_background_images`
--

INSERT INTO `invitation_background_images` (`id`, `img_path`, `ico_path`, `name`, `culture`) VALUES
(1, '/media/invitation_card_backgrounds/1.jpeg', '/media/invitation_card_backgrounds_preview/1.jpeg', 'Background 1', 1),
(2, '/media/invitation_card_backgrounds/2.jpeg', '/media/invitation_card_backgrounds_preview/2.jpeg', 'Background 2', 1),
(3, '/media/invitation_card_backgrounds/3.jpeg', '/media/invitation_card_backgrounds_preview/3.jpeg', 'Background 3', 1);

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
-- Table structure for table `prayers`
--

CREATE TABLE IF NOT EXISTS `prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_text` varchar(200) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `supplied_invitation_images`
--

INSERT INTO `supplied_invitation_images` (`id`, `img_path`, `ico_path`, `name`, `culture`) VALUES
(1, '/media/invitation_card_icons/1.jpeg', '/media/invitation_card_icons/1.jpeg', 'Cultural Icon 1', 1);

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
-- Table structure for table `user_pictures`
--

CREATE TABLE IF NOT EXISTS `user_pictures` (
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
