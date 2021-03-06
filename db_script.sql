CREATE DATABASE IF NOT EXISTS `myshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `myshop`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-31 02:34:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-31 02:34:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-31 02:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, '2014-06-01 01:12:26', '2014-05-31 03:12:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '2014-06-01 01:13:45', '2014-05-31 03:13:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '2014-06-01 01:14:13', '2014-05-31 03:14:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, '2014-06-01 01:18:36', '2014-05-31 03:18:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '2014-06-06 17:10:01', '2014-06-05 19:09:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '2014-06-06 17:11:04', '2014-06-05 19:10:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '2014-06-06 17:12:21', '2014-06-05 19:12:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '2014-06-06 17:12:59', '2014-06-05 19:12:49');