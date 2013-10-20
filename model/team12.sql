-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2013 at 12:08 PM
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
-- Creation: Oct 04, 2013 at 08:00 AM
--

DROP TABLE IF EXISTS `Bride`;
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
(1, 'Danaeres', 'K.', 'Targeryan', 'Rob Targeryan', 'Khaleesi Targeryan');

-- --------------------------------------------------------

--
-- Table structure for table `Couple`
--
-- Creation: Oct 02, 2013 at 11:30 PM
--

DROP TABLE IF EXISTS `Couple`;
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
-- Creation: Oct 04, 2013 at 04:20 AM
--

DROP TABLE IF EXISTS `css`;
CREATE TABLE IF NOT EXISTS `css` (
  `css_id` int(12) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `invitation_background` text NOT NULL,
  `custom_css` text NOT NULL,
  PRIMARY KEY (`css_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
(29, 1, 'http://localhost:8083/wedding/invitation_card_backgrounds/2.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `draggable`
--
-- Creation: Oct 04, 2013 at 09:41 AM
--

DROP TABLE IF EXISTS `draggable`;
CREATE TABLE IF NOT EXISTS `draggable` (
  `draggable_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `id` varchar(50) NOT NULL,
  `position_top` double NOT NULL,
  `position_left` double NOT NULL,
  `all_positions` varchar(512) NOT NULL,
  PRIMARY KEY (`draggable_id`),
  UNIQUE KEY `draggable_id` (`draggable_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `Event`
--
-- Creation: Oct 02, 2013 at 11:19 PM
--

DROP TABLE IF EXISTS `Event`;
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
-- Creation: Oct 04, 2013 at 07:58 AM
--

DROP TABLE IF EXISTS `Groom`;
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
(1, 'Kahl', 'D.', 'Drogo', 'Edward Drogo', 'Lysa Drogo');

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--
-- Creation: Oct 02, 2013 at 10:53 PM
--

DROP TABLE IF EXISTS `Guest`;
CREATE TABLE IF NOT EXISTS `Guest` (
  `guest_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`guest_id`, `c_id`, `email`, `first_name`, `last_name`) VALUES
(1, 1, 'kayo0248@gmail.com', 'Kayomars', 'Batiwalla'),
(2, 1, 'kristenmorsecode@gmai.com', 'Kristen', 'Morse');

-- --------------------------------------------------------

--
-- Table structure for table `Icons`
--
-- Creation: Oct 02, 2013 at 10:59 PM
--

DROP TABLE IF EXISTS `Icons`;
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
-- Creation: Oct 02, 2013 at 10:58 PM
--

DROP TABLE IF EXISTS `Images`;
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
-- Creation: Oct 02, 2013 at 10:56 PM
--

DROP TABLE IF EXISTS `Prayers`;
CREATE TABLE IF NOT EXISTS `Prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_text` varchar(200) NOT NULL,
  PRIMARY KEY (`prayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User_Pictures`
--
-- Creation: Oct 02, 2013 at 11:03 PM
--

DROP TABLE IF EXISTS `User_Pictures`;
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
