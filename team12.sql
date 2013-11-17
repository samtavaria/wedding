-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 18, 2013 at 12:10 AM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) DEFAULT NULL,
  `interpret` varchar(200) DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=94 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma__designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"team12","table":"Guest"},{"db":"team12","table":"guest"},{"db":"team12","table":"invitation_background_images"},{"db":"team12","table":"user_invitation_images"},{"db":"team12","table":"website_basic_info"},{"db":"team12","table":"User_Pictures"},{"db":"team12","table":"supplied_invitation_images"},{"db":"team12","table":"Prayers"},{"db":"team12","table":"media_type"},{"db":"team12","table":"prayers"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'wedding', 'custom_css', '[]', '2013-09-30 00:33:17'),
('root', 'team12', 'Guest', '[]', '2013-10-27 00:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2013-10-26 21:04:27', '[]');
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
  `c_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_first_name` varchar(50) NOT NULL,
  `b_middle_name` varchar(50) NOT NULL,
  `b_last_name` varchar(50) NOT NULL,
  `b_father_name` varchar(50) NOT NULL,
  `b_mother_name` varchar(50) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `c_id` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `Bride`
--

INSERT INTO `Bride` (`c_id`, `b_id`, `b_first_name`, `b_middle_name`, `b_last_name`, `b_father_name`, `b_mother_name`) VALUES
(1, 1, 'Danareas', 'K.', 'Targeryan', 'Rob Targeryan', 'Khaleesi Targeryan'),
(12, 7, 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'jyfluyf', 'uyfuyf'),
(15, 8, 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'jyfluyf', 'uyfuyf'),
(17, 9, 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'jyfluyf', 'uyfuyf'),
(19, 10, 'jhfkuyfk,', 'lf.hfl,iufyjfckh', 'tdkuyf', 'kuyfluyf', 'yjflyf'),
(21, 11, 'rg', 'RG', 'EGeth', 'ergerg', 'ergerg'),
(0, 12, 'rg', 'RG', 'EGeth', 'ergerg', 'ergerg'),
(25, 13, 'khff', 'lugl', 'ljgljg', 'ljlj', 'lulyfl'),
(27, 14, 'l.kv.khv', 'l,jhvj,hvc', 'kjhjhc', 'jkhjh', 'ljkgljfvh'),
(29, 15, 'f', 'g', 'h', 'i', 'j'),
(33, 17, 'f', 'g', 'h', 'i', 'j'),
(35, 18, 'f', 'g', 'h', 'i', 'j'),
(37, 19, 'f', 'g', 'h', 'i', 'j'),
(41, 20, 'f', 'g', 'h', 'i', 'j'),
(43, 21, 'f', 'g', 'h', 'i', 'j'),
(45, 22, 'f', 'g', 'h', 'i', 'j'),
(47, 23, 'f', 'g', 'h', 'i', 'j');

-- --------------------------------------------------------

--
-- Table structure for table `Couple`
--

CREATE TABLE IF NOT EXISTS `Couple` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `Couple`
--

INSERT INTO `Couple` (`c_id`, `username`, `password`, `salt`) VALUES
(1, 'admin', 'admin', 'salt1'),
(2, 'temp1', 'ppp', 'sfdf'),
(47, 'rathinusc@gmail.com', 'g', '');

-- --------------------------------------------------------

--
-- Table structure for table `Groom`
--

CREATE TABLE IF NOT EXISTS `Groom` (
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
-- Dumping data for table `Groom`
--

INSERT INTO `Groom` (`c_id`, `g_id`, `g_first_name`, `g_middle_name`, `g_last_name`, `g_father_name`, `g_mother_name`) VALUES
(29, 0, 'a', 'b', 'c', 'd', 'e'),
(1, 1, 'Khal', 'T.', 'Drogo', 'Edward Drogo', 'Lysa Drogo');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5878 ;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(5509, 'C1G1', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5518, 'C1G10', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5608, 'C1G100', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5609, 'C1G101', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5610, 'C1G102', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5611, 'C1G103', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5612, 'C1G104', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5613, 'C1G105', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5614, 'C1G106', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5615, 'C1G107', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5616, 'C1G108', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5617, 'C1G109', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5519, 'C1G11', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5618, 'C1G110', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5619, 'C1G111', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5620, 'C1G112', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5621, 'C1G113', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5622, 'C1G114', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5623, 'C1G115', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5624, 'C1G116', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5625, 'C1G117', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5626, 'C1G118', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5627, 'C1G119', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5520, 'C1G12', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5628, 'C1G120', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5629, 'C1G121', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5630, 'C1G122', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5631, 'C1G123', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5632, 'C1G124', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5633, 'C1G125', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5634, 'C1G126', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5635, 'C1G127', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5636, 'C1G128', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5637, 'C1G129', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5521, 'C1G13', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5638, 'C1G130', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5639, 'C1G131', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5640, 'C1G132', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5641, 'C1G133', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5642, 'C1G134', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5643, 'C1G135', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5644, 'C1G136', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5645, 'C1G137', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5646, 'C1G138', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5647, 'C1G139', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5522, 'C1G14', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5648, 'C1G140', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5649, 'C1G141', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5650, 'C1G142', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5651, 'C1G143', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5652, 'C1G144', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5653, 'C1G145', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5654, 'C1G146', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5655, 'C1G147', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5656, 'C1G148', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5657, 'C1G149', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5523, 'C1G15', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5658, 'C1G150', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5659, 'C1G151', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5660, 'C1G152', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5661, 'C1G153', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5662, 'C1G154', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5663, 'C1G155', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5664, 'C1G156', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5665, 'C1G157', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5666, 'C1G158', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5667, 'C1G159', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5524, 'C1G16', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5668, 'C1G160', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5669, 'C1G161', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5670, 'C1G162', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5671, 'C1G163', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5672, 'C1G164', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5673, 'C1G165', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5674, 'C1G166', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5675, 'C1G167', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5676, 'C1G168', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5677, 'C1G169', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5525, 'C1G17', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5678, 'C1G170', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5679, 'C1G171', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5680, 'C1G172', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5681, 'C1G173', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5682, 'C1G174', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5683, 'C1G175', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5684, 'C1G176', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5685, 'C1G177', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5686, 'C1G178', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5687, 'C1G179', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5526, 'C1G18', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5688, 'C1G180', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5689, 'C1G181', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5690, 'C1G182', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5691, 'C1G183', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5692, 'C1G184', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5693, 'C1G185', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5694, 'C1G186', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5695, 'C1G187', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5696, 'C1G188', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5697, 'C1G189', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5527, 'C1G19', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5698, 'C1G190', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5699, 'C1G191', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5700, 'C1G192', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5701, 'C1G193', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5702, 'C1G194', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5703, 'C1G195', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5704, 'C1G196', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5705, 'C1G197', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5706, 'C1G198', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5707, 'C1G199', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5510, 'C1G2', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5528, 'C1G20', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5708, 'C1G200', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5709, 'C1G201', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5710, 'C1G202', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5711, 'C1G203', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5712, 'C1G204', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5713, 'C1G205', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5714, 'C1G206', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5715, 'C1G207', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5716, 'C1G208', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5717, 'C1G209', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5529, 'C1G21', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5718, 'C1G210', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5719, 'C1G211', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5720, 'C1G212', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5721, 'C1G213', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5722, 'C1G214', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5723, 'C1G215', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5724, 'C1G216', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5725, 'C1G217', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5726, 'C1G218', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5727, 'C1G219', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5530, 'C1G22', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5728, 'C1G220', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '192', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5729, 'C1G221', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '193', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5730, 'C1G222', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '194', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5731, 'C1G223', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '195', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5732, 'C1G224', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '196', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5733, 'C1G225', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '197', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5734, 'C1G226', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '198', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5735, 'C1G227', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '199', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5736, 'C1G228', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '200', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5737, 'C1G229', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '201', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5531, 'C1G23', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5738, 'C1G230', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '202', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5739, 'C1G231', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '203', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5740, 'C1G232', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '204', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5741, 'C1G233', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '205', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5742, 'C1G234', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '206', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5743, 'C1G235', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '207', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5744, 'C1G236', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '208', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5745, 'C1G237', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '209', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5746, 'C1G238', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '210', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5747, 'C1G239', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '211', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5532, 'C1G24', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5748, 'C1G240', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '212', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5749, 'C1G241', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '213', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5750, 'C1G242', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '214', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5751, 'C1G243', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '215', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5752, 'C1G244', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '216', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5753, 'C1G245', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '217', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5754, 'C1G246', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '218', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5755, 'C1G247', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '219', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5756, 'C1G248', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '220', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5757, 'C1G249', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '221', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5533, 'C1G25', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5758, 'C1G250', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '222', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5759, 'C1G251', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '223', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5760, 'C1G252', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '224', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5761, 'C1G253', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '225', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5762, 'C1G254', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '226', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5763, 'C1G255', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '227', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5764, 'C1G256', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '228', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5765, 'C1G257', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '229', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5766, 'C1G258', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '230', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5767, 'C1G259', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '231', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5534, 'C1G26', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5768, 'C1G260', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '232', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5769, 'C1G261', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '233', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5770, 'C1G262', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '234', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5771, 'C1G263', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '235', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5772, 'C1G264', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '236', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5773, 'C1G265', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '237', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5774, 'C1G266', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '238', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5775, 'C1G267', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '239', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5776, 'C1G268', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '240', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5777, 'C1G269', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '241', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5535, 'C1G27', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5778, 'C1G270', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '242', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5779, 'C1G271', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '243', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5780, 'C1G272', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '244', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5781, 'C1G273', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '245', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5782, 'C1G274', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '246', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5783, 'C1G275', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '247', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5784, 'C1G276', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '248', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5785, 'C1G277', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '249', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5786, 'C1G278', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '250', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5787, 'C1G279', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '251', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5536, 'C1G28', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5788, 'C1G280', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '252', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5789, 'C1G281', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '253', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5790, 'C1G282', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '254', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5791, 'C1G283', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '255', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5792, 'C1G284', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '256', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5793, 'C1G285', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '257', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5794, 'C1G286', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '258', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5795, 'C1G287', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '259', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5796, 'C1G288', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '260', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5797, 'C1G289', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '261', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5537, 'C1G29', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5798, 'C1G290', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '262', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5799, 'C1G291', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '263', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5800, 'C1G292', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '264', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5801, 'C1G293', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '265', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5802, 'C1G294', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '266', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5803, 'C1G295', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '267', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5804, 'C1G296', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '268', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5805, 'C1G297', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '269', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5806, 'C1G298', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '270', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5807, 'C1G299', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '271', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5511, 'C1G3', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5538, 'C1G30', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5808, 'C1G300', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '272', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5809, 'C1G301', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '273', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5810, 'C1G302', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '274', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5811, 'C1G303', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '275', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5812, 'C1G304', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '276', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5813, 'C1G305', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '277', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5814, 'C1G306', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '278', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5815, 'C1G307', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '279', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5816, 'C1G308', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '280', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5817, 'C1G309', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '281', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5539, 'C1G31', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '123', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5818, 'C1G310', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '282', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5819, 'C1G311', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '283', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5820, 'C1G312', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '284', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5821, 'C1G313', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '285', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5822, 'C1G314', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '286', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5823, 'C1G315', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '287', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5824, 'C1G316', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '288', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5825, 'C1G317', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '289', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5826, 'C1G318', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '290', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5827, 'C1G319', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '291', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5540, 'C1G32', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '124', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5828, 'C1G320', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '292', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5829, 'C1G321', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '293', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5830, 'C1G322', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '294', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5831, 'C1G323', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '295', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5832, 'C1G324', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '296', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5833, 'C1G325', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '297', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5834, 'C1G326', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '298', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5835, 'C1G327', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '299', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5836, 'C1G328', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '300', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5837, 'C1G329', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '301', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5541, 'C1G33', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '125', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5838, 'C1G330', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '302', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5839, 'C1G331', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '303', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5840, 'C1G332', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '304', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5841, 'C1G333', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '305', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5842, 'C1G334', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '306', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5843, 'C1G335', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '307', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5844, 'C1G336', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '308', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5845, 'C1G337', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '309', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5846, 'C1G338', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '310', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5847, 'C1G339', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '311', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5542, 'C1G34', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '126', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5848, 'C1G340', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '312', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5849, 'C1G341', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '313', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5850, 'C1G342', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '314', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5851, 'C1G343', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '315', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5852, 'C1G344', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '316', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5853, 'C1G345', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '317', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5854, 'C1G346', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '318', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5855, 'C1G347', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '319', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5856, 'C1G348', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '320', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5857, 'C1G349', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '321', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5543, 'C1G35', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '127', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5858, 'C1G350', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '322', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5859, 'C1G351', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '323', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5860, 'C1G352', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '324', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5861, 'C1G353', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '325', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5862, 'C1G354', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '326', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5863, 'C1G355', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '327', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5864, 'C1G356', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '328', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5865, 'C1G357', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '329', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5866, 'C1G358', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '330', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5867, 'C1G359', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5544, 'C1G36', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '128', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5868, 'C1G360', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5869, 'C1G361', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 1', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5870, 'C1G362', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 2', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5871, 'C1G363', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'New group 3', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');
INSERT INTO `Guest` (`guest_number`, `g_id`, `c_id`, `side`, `first_name`, `middle_name`, `last_name`, `email`, `phone`, `mehndi`, `sangeet`, `haldi`, `wedding_ceremony`, `reception`, `guest_group`, `rsvp_wedding_ceremony`, `rsvp_reception`, `rsvp_mehndi`, `rsvp_haldi`, `rsvp_sangeet`) VALUES
(5872, 'C1G364', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'New Group 4', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5873, 'C1G365', 1, 'Groom', 'Amar', 'B', 'Singh', 'A.singh@abc.com', '331', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'CS577 Friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5874, 'C1G366', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 TA''s', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5875, 'C1G367', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Professor', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5876, 'C1G368', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'CS577 Team', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5877, 'C1G369', 1, 'Bride', 'Rajjo', 'A', 'Singh', 'Ram@a.com', '332', 'n/a', 'YES', 'NO', 'n/a', 'n/a', 'Colony friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5545, 'C1G37', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '129', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5546, 'C1G38', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '130', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5547, 'C1G39', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '131', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5512, 'C1G4', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5548, 'C1G40', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '132', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5549, 'C1G41', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '133', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5550, 'C1G42', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '134', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5551, 'C1G43', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '135', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5552, 'C1G44', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '136', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5553, 'C1G45', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '137', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5554, 'C1G46', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '138', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5555, 'C1G47', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '139', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5556, 'C1G48', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '140', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5557, 'C1G49', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '141', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5513, 'C1G5', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '15555555555', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5558, 'C1G50', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '142', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5559, 'C1G51', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '143', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5560, 'C1G52', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '144', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5561, 'C1G53', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '145', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5562, 'C1G54', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '146', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5563, 'C1G55', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '147', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5564, 'C1G56', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '148', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5565, 'C1G57', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '149', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5566, 'C1G58', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '150', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5567, 'C1G59', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '151', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5514, 'C1G6', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '1234567890', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5568, 'C1G60', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '152', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5569, 'C1G61', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '153', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5570, 'C1G62', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '154', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5571, 'C1G63', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '155', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5572, 'C1G64', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '156', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5573, 'C1G65', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '157', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5574, 'C1G66', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '158', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5575, 'C1G67', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '159', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5576, 'C1G68', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '160', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5577, 'C1G69', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '161', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5515, 'C1G7', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '1222222222', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5578, 'C1G70', 1, 'Bride', 'Ram', 'Q', 'Singh', 'Ram@a.com', '162', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5579, 'C1G71', 1, 'Bride', 'Raju', 'W', 'Sharma', 'Raju.sharma@examle.com', '163', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5580, 'C1G72', 1, 'Groom', 'Rani', 'E', 'Verma', 'Rani.v@abc.com', '164', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5581, 'C1G73', 1, 'Bride', 'Bikram', 'R', 'Singh', 'B.simgh@yy.com', '165', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5582, 'C1G74', 1, 'Groom', 'Amar', 'T', 'Singh', 'A.singh@abc.com', '166', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5583, 'C1G75', 1, 'Bride', 'Ram', 'Y', 'Singh', 'Ram@a.com', '167', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5584, 'C1G76', 1, 'Bride', 'Raju', 'U', 'Sharma', 'Raju.sharma@examle.com', '168', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5585, 'C1G77', 1, 'Groom', 'Rani', 'I', 'Verma', 'Rani.v@abc.com', '169', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5586, 'C1G78', 1, 'Bride', 'Bikram', 'O', 'Singh', 'B.simgh@yy.com', '170', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5587, 'C1G79', 1, 'Groom', 'Amar', 'P', 'Singh', 'A.singh@abc.com', '171', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5516, 'C1G8', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '1333333333', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5588, 'C1G80', 1, 'Bride', 'Ram', 'A', 'Singh', 'Ram@a.com', '172', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5589, 'C1G81', 1, 'Bride', 'Raju', 'S', 'Sharma', 'Raju.sharma@examle.com', '173', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5590, 'C1G82', 1, 'Groom', 'Rani', 'D', 'Verma', 'Rani.v@abc.com', '174', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5591, 'C1G83', 1, 'Bride', 'Bikram', 'F', 'Singh', 'B.simgh@yy.com', '175', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5592, 'C1G84', 1, 'Groom', 'Amar', 'G', 'Singh', 'A.singh@abc.com', '176', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5593, 'C1G85', 1, 'Bride', 'Ram', 'H', 'Singh', 'Ram@a.com', '177', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5594, 'C1G86', 1, 'Bride', 'Raju', 'I', 'Sharma', 'Raju.sharma@examle.com', '178', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5595, 'C1G87', 1, 'Groom', 'Rani', 'J', 'Verma', 'Rani.v@abc.com', '179', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5596, 'C1G88', 1, 'Bride', 'Bikram', 'L', 'Singh', 'B.simgh@yy.com', '180', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5597, 'C1G89', 1, 'Groom', 'Amar', 'Z', 'Singh', 'A.singh@abc.com', '181', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5517, 'C1G9', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '1444444444', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5598, 'C1G90', 1, 'Bride', 'Ram', 'C', 'Singh', 'Ram@a.com', '182', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5599, 'C1G91', 1, 'Bride', 'Raju', 'N', 'Sharma', 'Raju.sharma@examle.com', '183', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5600, 'C1G92', 1, 'Groom', 'Rani', 'R', 'Verma', 'Rani.v@abc.com', '184', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5601, 'C1G93', 1, 'Bride', 'Bikram', 'P', 'Singh', 'B.simgh@yy.com', '185', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5602, 'C1G94', 1, 'Groom', 'Amar', 'J', 'Singh', 'A.singh@abc.com', '186', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5603, 'C1G95', 1, 'Bride', 'Ram', 'K', 'Singh', 'Ram@a.com', '187', 'n/a', 'YES', 'n/a', 'n/a', 'n/a', 'Dance friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5604, 'C1G96', 1, 'Bride', 'Raju', 'A', 'Sharma', 'Raju.sharma@examle.com', '188', 'Yes', 'No', 'No', 'Yes', 'n/a', 'Jain Mandir', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5605, 'C1G97', 1, 'Groom', 'Rani', 'A', 'Verma', 'Rani.v@abc.com', '189', 'n/a', 'Yes', 'n/a', 'Yes', 'n/a', 'USC friends', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5606, 'C1G98', 1, 'Bride', 'Bikram', 'B', 'Singh', 'B.simgh@yy.com', '190', 'n/a', 'n/a', 'n/a', 'n/a', 'Yes', 'Undergrad frien', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL'),
(5607, 'C1G99', 1, 'Groom', 'Amar', 'C', 'Singh', 'A.singh@abc.com', '191', 'n/a', 'n/a', 'NO', 'YES', 'n/a', 'Indian Society', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

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
(72, 1, 'http://localhost:8083/wedding/media/invitation_card_backgrounds/1.jpeg', '');

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
(1, 'media/invitation_card_backgrounds/1.jpeg', 'media/invitation_card_backgrounds_preview/1.jpeg', 'Background 1', 1),
(2, 'media/invitation_card_backgrounds/2.jpeg', 'media/invitation_card_backgrounds_preview/2.jpeg', 'Background 2', 1),
(3, 'media/invitation_card_backgrounds/3.jpeg', 'media/invitation_card_backgrounds_preview/3.jpeg', 'Background 3', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `temp_members_db`
--

CREATE TABLE IF NOT EXISTS `temp_members_db` (
  `confirm_code` varchar(255) NOT NULL,
  `g_first_name` varchar(255) NOT NULL,
  `g_middle_name` varchar(255) NOT NULL,
  `g_last_name` varchar(255) NOT NULL,
  `b_first_name` varchar(255) NOT NULL,
  `b_middle_name` varchar(255) NOT NULL,
  `b_last_name` varchar(255) NOT NULL,
  `g_father_name` varchar(255) NOT NULL,
  `g_mother_name` varchar(255) NOT NULL,
  `b_father_name` varchar(255) NOT NULL,
  `b_mother_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_members_db`
--

INSERT INTO `temp_members_db` (`confirm_code`, `g_first_name`, `g_middle_name`, `g_last_name`, `b_first_name`, `b_middle_name`, `b_last_name`, `g_father_name`, `g_mother_name`, `b_father_name`, `b_mother_name`, `username`, `password`, `country`) VALUES
('994821a866343b0d33c355a919794909', '', '', '', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'R', '1234', 'In'),
('dfeb31961656f7a87505b396ba56f77f', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'R', '1234', 'In'),
('f79616029c55e2859b28c31a19c3d298', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'R', '1234', 'In'),
('d1ecb59a93931fb54d2864884111b197', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'R', '1234', 'In'),
('e0b842ae80c5fe228e5227b622fe2b18', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'rathinusc@gmail.com', '1234', 'In'),
('240b29127ad12fde8255dbf576f11fc3', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'rathinusc@gmail.com', '1234', 'In'),
('92be761bcec4cf4d01dab789bae1a51b', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'rathinusc@gmail.com', '3456', 'In'),
('3a1763a3a48c841e33e1f7ab952032ea', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'rathinusc@gmail.com', '4567', 'In'),
('1afee438a0872ea994e58767ae3a0807', 'Rathin', 'Kumar Vijaya', 'Kumar', 'R', 'R', 'R', 'R', 'R', 'R', 'R', 'rathinusc@gmail.com', '', 'In'),
('a7909a6e8f9692fee911c59f6cde5a31', '', '', '', 'dfbadfbafbadfb', 'khk', ';lih;ih', 'sd', 'sdbb', ';ih;oiho', 'jgljgfl', 'rathinusc@gmail.com', '1234', 'India'),
('024ee86759e7c87a21454b95ed11ff22', 'bjk', 'bkj', 'jb', ',jnb', ',nb', 'lknl', 'ljn', 'lkn', 'knk,', 'b,j', 'rathinusc@gmail.com', 'e', 'rer'),
('cb2061ad8626233d6ab9f0715574235a', 'nk', 'n', 'kn', '.kn', '.kj', 'kj', '.kn', '.kn', 'k', 'n', 'rathinusc@gmail.com', 'j', 'kk'),
('857372a84918355b014a7d0efc7c5cb7', 'nk', 'n', 'kn', '.kn', '.kj', 'kj', '.kn', '.kn', 'k', 'n', 'ghcgjv jh', 'da', 'kk'),
('377bafdcf35b9bef56edac98a924a1d7', 'nk', 'n', 'kn', '.kn', '.kj', 'kj', '.kn', '.kn', 'k', 'n', 'jsfsdagku', 'vsdv', 'kk'),
('8ab19b8bbaaea34cc0d536c9b36c4581', 'nk', 'n', 'kn', '.kn', '.kj', 'kj', '.kn', '.kn', 'k', 'n', 'bfukdsaglfkus', 'khkh', 'kk'),
('7cd1064bfc18adbdb2c1d7b1275e93e3', 'hj', 'kg', 'kb', 'kjh', 'jh', 'ljh', 'kjb', 'kjh', 'ljhlj', 'lk', 'kj', 'guk', 'bljn'),
('f4e703eacd553f4d070a02cff5c4c9fd', 'hm', 'bmj', 'b', 'b,j', 'b,', 'b,', 'b,j', 'b,j', 'b,', 'b,j', 'lidhclikdc;', 'b,j', ',m'),
('288c4376dbd208b4903055b8f9d6122d', 'bjk', 'blj', 'bn,kb', 'lkn', '.kjn', 'k.h', 'kn', 'kn', 'lihg', 'ukg', 'ig', 'iygiu', 'khk'),
('b14b4020dcdfc2f850064dfaee2235c8', '', '', '', 'khkj', 'luglg', 'tutg', 'Y', 'kjfkf', 'liugiug', 'kuyyf', 'rathinkumarusa@gmail.com', '1234', 'India'),
('1b5954e5873dc84968f04a921aced79d', '', '', '', 'khkj', 'luglg', 'tutg', 'Y', 'kjfkf', 'liugiug', 'kuyyf', 'rvijayak@usc.edu', '1234', 'India'),
('0db5af6191d675a13230e65feb027113', '', '', '', 'khkj', 'luglg', 'tutg', 'Y', 'kjfkf', 'liugiug', 'kuyyf', 'rathinusc@gmail.com', '1234', 'India'),
('bf9be24de3d1933e05fb5e4b0c679e3c', '', '', '', 'sgb', 'df', 'dfnh', 'Ram', 'tjl', 'fshkhjkg', 'jgkkjh', 'rathinusc@gmail.com', '1234', 'jhgljglk'),
('00a61bd59b6c777a3db3305635162b15', '', '', '', 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'lgljflyfv', 'ljf.yhv.hy', 'jyfluyf', 'uyfuyf', 'rathinusa@yahoo.co.in', '1234', 'India'),
('0b71fd9c81bd1bbf72209236551f06f2', '', '', '', 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'lgljflyfv', 'ljf.yhv.hy', 'jyfluyf', 'uyfuyf', 'rathinusa@yahoo.co.in', 'khff,yjf', 'India'),
('83b5cf96744bdc4531a9e9aab11771c6', '', '', '', 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'lgljflyfv', 'ljf.yhv.hy', 'jyfluyf', 'uyfuyf', 'rathinusa@yahoo.co.in', '1234', 'India'),
('62e565485b3f0f2862fe5c9ed8ec5244', '', '', '', 'yjfluyf', 'lyf.hc.', 'yfuyf,uy', 'lgljflyfv', 'ljf.yhv.hy', 'jyfluyf', 'uyfuyf', 'rathinusa@yahoo.co.in', '1234', 'India'),
('5ce3fa90939c5adbae1d3630d33e35f8', '', '', '', 'jhfkuyfk,', 'lf.hfl,iufyjfckh', 'tdkuyf', 'jflf', 'uyf.hjv', 'kuyfluyf', 'yjflyf', 'rathinusc@gmail.com', 'kflfy', 'india'),
('3fb6a3f2da7414923b6b8ad1b6f8adfb', 'jhv', 'ljhvljvh', 'ljvjhv', 'khff', 'lugl', 'ljgljg', 'kfl', 'ljfljf', 'ljlj', 'lulyfl', 'rathinusa@yahoo.co.in', '8787t', 'india'),
('ca001c589bf79ed071c4bf49eec465fb', '', '', '', 'rg', 'RG', 'EGeth', '.kn', 'ar', 'ergerg', 'ergerg', 'rathinusc@gmail.com', '1234', 'india'),
('aea1f7d93ac8aa3799198c8a7c90bb8f', 'kyfljfy', 'lfuf', 'ljyflfy', 'l.kv.khv', 'l,jhvj,hvc', 'kjhjhc', 'ljhffvh', 'lkjg.khv', 'jkhjh', 'ljkgljfvh', 'rathinkumarusa@gmail.com', '6789', 'liugliug'),
('544f56de275b124414d8265f8b9b34fd', '', '', '', '', '', '', '', '', '', '', '', 'a', ''),
('44785d84227f9aeddf11bfa4277fb54a', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('cd27575c4190e53ae9a28b6aa225541b', '', '', '', '', '', '', '', '', '', '', '', 'a', ''),
('1c86cc0b38e9393cbb8dfa9d7882f33c', '', '', '', '', '', '', '', '', '', '', '', 'a', ''),
('93d7004375fcb8a6b993512f9928259f', '', '', '', '', '', '', '', '', '', '', 'rvijayak@usc.edu', '1234', ''),
('4d41bdcbbe62e82105563f166e6cc5da', '', '', '', '', '', '', '', '', '', '', 'rvijayak@usc.edu', '1234', ''),
('1bf0195bb8ecf5bb3bd5ba1b97e5f6a7', '', '', '', '', '', '', '', '', '', '', 'rathinusc@gmail.com', 'abcd', ''),
('831c4019abbe0fc6fb82af20471fdb5b', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'abc', 't'),
('f735eff304bc98e7028c53ba9d027244', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'def', 't'),
('7f40f3a0794a67b8c6b460bdd0f286a9', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'acv', 't'),
('5eebd3edced4c96a9c94c6bb645d4690', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'acv', 't'),
('67823b1b0f00a229e6d22c2fe4ef3d1a', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'acv', 't'),
('9be40526af5f0b1be79a378144bcabf0', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'a', 't'),
('ac7cfebf83639a8379da19930bbdcdb4', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'a', 't'),
('1affaaf4e6c188b9ede0aed5c152bcf9', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'l', 't'),
('d4e45423ac011d12299b4c9f9bd0eef4', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'l', 't'),
('81e5c83b550b349b40a960e64b9691ce', 'a', 'b', 'c', 'f', 'g', 'h', 'd', 'e', 'i', 'j', 'rathinusc@gmail.com', 'a', 't'),
('53e0b64380a1bea1a3897e06e94e0cc7', '', '', '', '', '', '', '', '', '', '', 'rathinusc@gmail.com', 'aa', '');

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
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
