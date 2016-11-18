-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 18, 2016 at 08:47 PM
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
  ('bb228b08d55d012790d4f5e424d56dde733599e2', '127.0.0.1', 1479498000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437393439373935373b);

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`id`, `name`, `description`, `price`, `picture`, `category`) VALUES
  (1, 'Cheese', 'Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.', '2.95', '1.png', 's'),
  (2, 'Turkey', 'Roasted, succulent, stuffed, lovingly sliced turkey breast', '5.95', '2.png', 'm'),
  (6, 'Donut', 'Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust', '1.25', '6.png', 's'),
  (10, 'Bubbly', '1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.', '14.50', '10.png', 'd'),
  (11, 'Ice Cream', 'Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle', '3.75', '11.png', 's'),
  (8, 'Hot Dog', 'Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.', '6.90', '8.png', 'm'),
  (25, 'Burger', 'Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.', '9.99', 'burger.png', 'm'),
  (21, 'Coffee', 'A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don\'t want to know where they came from!', '2.95', 'coffee.png', 'd');

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
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`id`);

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