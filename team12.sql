-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2013 at 12:24 AM
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
(1, 'Danareas', 'K.', 'Targeryann', 'Rob Targeryan', 'Khaleesi Targeryan');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

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
(65, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/2.jpeg', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

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
(51, 1, '', 0, 0, 'undefined,undefined,84.5,667,81.66667175292969,805,undefined,undefined');

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
(1, 'Khal', 'D.', 'Drogo', 'Edward Drogo', 'Lysa Drogo');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2559 ;

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
-- Table structure for table `Prayers`
--

CREATE TABLE IF NOT EXISTS `Prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_text` varchar(200) NOT NULL,
  PRIMARY KEY (`prayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
