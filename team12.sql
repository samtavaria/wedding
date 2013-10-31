-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2013 at 12:09 AM
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
-- Table structure for table `background_images`
--

CREATE TABLE IF NOT EXISTS `background_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img_path` varchar(512) NOT NULL,
  `ico_path` varchar(512) NOT NULL,
  `culture` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bride`
--

CREATE TABLE IF NOT EXISTS `bride` (
  `b_id` int(11) NOT NULL,
  `b_first_name` varchar(50) NOT NULL,
  `b_middle_name` varchar(50) NOT NULL,
  `b_last_name` varchar(50) NOT NULL,
  `b_father_name` varchar(50) NOT NULL,
  `b_mother_name` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bride`
--

INSERT INTO `bride` (`b_id`, `b_first_name`, `b_middle_name`, `b_last_name`, `b_father_name`, `b_mother_name`, `bio`) VALUES
(1, 'Danaeres', 'K.', 'Targeryan', 'Rob Targeryan', 'Khaleesi Targeryan', 'Loves to dance in the rain');

-- --------------------------------------------------------

--
-- Table structure for table `couple`
--

CREATE TABLE IF NOT EXISTS `couple` (
  `c_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couple`
--

INSERT INTO `couple` (`c_id`, `g_id`, `b_id`, `username`, `password`, `salt`) VALUES
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

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
(30, 1, 'http://localhost/invitation_card_backgrounds/3.jpeg', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `draggable`
--

INSERT INTO `draggable` (`draggable_id`, `c_id`, `id`, `position_top`, `position_left`, `all_positions`) VALUES
(5, 1, '', 0, 0, '82,542,188,634,188,755,undefined,undefined');

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
  `website` varchar(512) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `venue_name`, `venue_address`, `date`, `event_name`, `venue_phone`, `attire`, `c_id`, `website`) VALUES
(1, 'USC', '36 WattWay', '2014-02-13', 'shaadi', '2147483647', 'formal', 1, 'http://www.usc.edu/'),
(2, 'USC', '35 watt way', '2014-03-27', 'sangeet', '8888888888', 'traditional', 1, 'http://www.usc.edu/');

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
  `g_id` int(11) NOT NULL,
  `g_first_name` varchar(50) NOT NULL,
  `g_middle_name` varchar(50) NOT NULL,
  `g_last_name` varchar(50) NOT NULL,
  `g_father_name` varchar(50) NOT NULL,
  `g_mother_name` varchar(50) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groom`
--

INSERT INTO `groom` (`g_id`, `g_first_name`, `g_middle_name`, `g_last_name`, `g_father_name`, `g_mother_name`, `bio`) VALUES
(1, 'Kahl', 'D.', 'Drogo', 'Edward Drogo', 'Lysa Drogo', 'Really awesome guy ');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `guest_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `c_id`, `email`, `first_name`, `last_name`) VALUES
(1, 1, 'kayo0248@gmail.com', 'Kayomars', 'Batiwalla'),
(2, 1, 'kristenmorsecode@gmai.com', 'Kristen', 'Morse');

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
