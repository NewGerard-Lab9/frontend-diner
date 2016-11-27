-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 25, 2016 at 08:09 PM
-- Server version: 5.6.28
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `comp4711lab6`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
CREATE TABLE `Categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `description`, `image`) VALUES
  ('d', 'Drinks', 'Purees made from the finest of Venusian insects, government-inspected.', 'catd.png'),
  ('m', 'Mains', 'Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium "meat".', 'catm.png'),
  ('s', 'Sides', 'Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.', 'cats.png');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
  ('5be0845c6b9da5dad46fba16c0a6a19e31d1bc99', '127.0.0.1', 1479494594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439343439333b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226465746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
  ('4733961d319c6a0bbb71c2216ceb8f3fcd3cdd05', '127.0.0.1', 1479495585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353334303b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226465746574696d65223b4e3b733a353a226974656d73223b613a303a7b7d7d),
  ('3b748a1a956d9c8d7c18cc8e6f4f1c5306e5c4bd', '127.0.0.1', 1479496045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439353735313b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226465746574696d65223b4e3b733a353a226974656d73223b613a323a7b693a313b693a323b693a323b693a313b7d7d),
  ('6a2fe9189fb654f4571595664f2a4990c9c09d62', '127.0.0.1', 1479496473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363232313b),
  ('f03b7403455a9f68e74609a589c75756ae1b17d6', '127.0.0.1', 1479496715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363535303b),
  ('515c89c84145dad5ea3ee4c4c08050820a4e330d', '127.0.0.1', 1479497245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439363934363b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a313a7b693a31303b693a313b7d7d),
  ('e467542e68ccb220294b63a5ff7f762306e385e5', '127.0.0.1', 1479497547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373234373b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a363a7b693a31303b693a323b693a323b693a323b693a313b693a323b693a363b693a323b693a383b693a323b693a32313b693a323b7d7d),
  ('5026a0d65373cfc3750e33b92918a404aaef59be', '127.0.0.1', 1479497951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373635343b6f726465727c613a333a7b733a363a226e756d626572223b693a303b733a383a226461746574696d65223b4e3b733a353a226974656d73223b613a343a7b693a383b693a313b693a32353b693a333b693a31313b693a313b693a31303b693a313b7d7d),
  ('bb228b08d55d012790d4f5e424d56dde733599e2', '127.0.0.1', 1479498000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373935373b),
  ('d2015a7f479aa64a8754b79b587587b73a1990eb', '127.0.0.1', 1479499672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439393432343b),
  ('199ccd5067ef796c14b18fb7c8267442237f148f', '127.0.0.1', 1480098252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303039383235323b),
  ('a8831506300aaaee58e67c7b2fc95b9450d17b3a', '127.0.0.1', 1480098732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303039383733323b),
  ('b592193581eb3aa83b0311219478241e3cc76748', '127.0.0.1', 1480100456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303130303435343b),
  ('77ec66689fc025bee8003c8e6d29e5abdc42e790', '127.0.0.1', 1480100885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438303130303838353b);

-- --------------------------------------------------------

--
-- Table structure for table `Orderitems`
--

DROP TABLE IF EXISTS `Orderitems`;
CREATE TABLE `Orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `Orderitems`
--
ALTER TABLE `Orderitems`
  ADD PRIMARY KEY (`order`,`item`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`num`);
