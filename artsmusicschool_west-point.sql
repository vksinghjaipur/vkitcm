-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 30, 2024 at 08:39 PM
-- Server version: 5.7.44-log
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artsmusicschool_west-point`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminid` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `plain_password` varchar(100) NOT NULL,
  `admin_type` varchar(20) NOT NULL,
  `authority` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `name`, `mobile_no`, `email`, `password`, `plain_password`, `admin_type`, `authority`) VALUES
(1, 'admin123423', 'test admin', '1234567890', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'test', 'superadmin', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `category` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category`, `image`, `date`, `item_order`) VALUES
(3, 'Children Eyecare', '', '2023-11-03 17:41:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog_media`
--

CREATE TABLE `blog_media` (
  `id` int(11) NOT NULL,
  `postid` varchar(100) NOT NULL,
  `blog_image` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brandid` varchar(100) NOT NULL,
  `brand_name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) NOT NULL,
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cancle_order`
--

CREATE TABLE `cancle_order` (
  `coid` int(11) NOT NULL,
  `profileid` varchar(50) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `order_cancle_reson` varchar(500) NOT NULL,
  `order_time` datetime NOT NULL,
  `cancle_by` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_mapping`
--

CREATE TABLE `cart_mapping` (
  `cmid` int(11) NOT NULL,
  `orderid` varchar(50) DEFAULT NULL,
  `profileid` int(11) NOT NULL DEFAULT '0',
  `productid` varchar(50) DEFAULT NULL,
  `product_price` double NOT NULL DEFAULT '0',
  `product_sale_price` double NOT NULL DEFAULT '0',
  `product_coupon_code` varchar(500) NOT NULL,
  `product_coupon_amount` double NOT NULL,
  `product_stock` int(11) NOT NULL DEFAULT '0',
  `product_weight` double NOT NULL,
  `product_photos` text,
  `product_type` varchar(500) DEFAULT NULL,
  `shop_rewards` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `orgional_price` double NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `product_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  `subtotal` double NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_mapping`
--

INSERT INTO `cart_mapping` (`cmid`, `orderid`, `profileid`, `productid`, `product_price`, `product_sale_price`, `product_coupon_code`, `product_coupon_amount`, `product_stock`, `product_weight`, `product_photos`, `product_type`, `shop_rewards`, `size`, `color`, `orgional_price`, `category`, `qty`, `product_name`, `subtotal`) VALUES
(1, 'EI1691575252', 1682098120, '1691574464', 531, 121, '', 0, 100, 0, 'assets/product_image/964692461-img-1.jpg', 'undefined', 0, 'undefined', 'undefined', 121, 1, 2, 'Front Wheel ', 242),
(2, 'EI1691652844', 1682098120, '1691574271', 531, 340, '', 0, 100, 0, 'assets/product_image/1772338971-img-1.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 1, 'Spark Plug 224011HM1B', 340),
(3, 'WPO1698831092', 1682098120, '1697790087', 531, 150, '', 0, 100, 0, 'assets/product_image/616319858-p-4.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 2, 'Seater Leather Sofa', 300),
(4, 'WPO1698832334', 1682098120, '1697790117', 531, 340, '', 0, 100, 0, 'assets/product_image/1356612571-p-2.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 1, 'Front Wheel Bearing', 340),
(5, 'WPO1698832334', 1682098120, '1698831267', 531, 50, '', 0, 100, 0, 'assets/product_image/1791148794-p-1.jpg', 'undefined', 0, 'undefined', 'undefined', 50, 1, 1, 'Vision Max Pro', 50),
(6, 'WPO1698832334', 1682098120, '1698831578', 531, 340, '', 0, 1000, 0, 'assets/product_image/2028649303-p-2.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 3, 'Brown Transparent Rim Rectangle ', 1020),
(7, 'WPO1698832439', 1682098120, '1698831578', 531, 340, '', 0, 997, 0, 'assets/product_image/2028649303-p-2.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 1, 'Brown Transparent Rim Rectangle ', 340),
(8, 'WPO1698836048', 1682098120, '1698831616', 531, 150, '', 0, 100, 0, 'assets/product_image/854257528-p-1.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 10, 'Rose Gold Rim Transparent  fgrame', 1500),
(9, 'WPO1698838654', 1682098120, '1698831267', 531, 50, '', 0, 99, 0, 'assets/product_image/1791148794-p-1.jpg', 'undefined', 0, 'undefined', 'undefined', 50, 1, 3, 'Vision Max Pro', 150),
(10, 'WPO1698838654', 1682098120, '1698831529', 890, 150, '', 0, 100, 0, 'assets/product_image/1295061162-p-3.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 1, 'Black full Rim Rectangle Eyeglass', 150),
(11, 'WPO1698838654', 1682098120, '1698831578', 531, 340, '', 0, 996, 0, 'assets/product_image/2028649303-p-2.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 1, 'Brown Transparent Rim Rectangle ', 340),
(12, 'WPO1698843830', 1682098120, '1698831529', 890, 150, '', 0, 99, 0, 'assets/product_image/1295061162-p-3.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 3, 'Black full Rim Rectangle Eyeglass', 450),
(13, 'WPO1698843830', 1682098120, '1698831267', 531, 50, '', 0, 96, 0, 'assets/product_image/1791148794-p-1.jpg', 'undefined', 0, 'undefined', 'undefined', 50, 1, 1, 'Vision Max Pro', 50),
(14, 'WPO1698899899', 1698899887, '1698831529', 890, 150, '', 0, 96, 0, 'assets/product_image/1295061162-p-3.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 2, 'Black full Rim Rectangle Eyeglass', 300),
(15, 'WPO1698910291', 1682098120, '1698831578', 531, 340, '', 0, 995, 0, 'assets/product_image/2028649303-p-2.jpg', 'undefined', 0, 'undefined', 'undefined', 340, 1, 1, 'Brown Transparent Rim Rectangle ', 340),
(16, 'WPO1698924345', 1682098120, '1698831616', 531, 150, '', 0, 90, 0, 'assets/product_image/854257528-p-1.jpg', 'undefined', 0, 'undefined', 'undefined', 150, 1, 2, 'Rose Gold Rim Transparent  fgrame', 300),
(17, 'WPO1701332729', 1701332712, '1699004083', 390, 0, '', 0, 23, 0, 'assets/product_image/1357584373-gentle_monster__silver_love_pu_1671253415_897b7d5a_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 390, 11, 1, 'Gentle Monster - silver love punch sunglasses', 390),
(18, 'WPO1701332849', 1701332831, '1699003677', 8, 0, '', 0, 45, 0, 'assets/product_image/1380909817-sunglasses_spectacle_casing_1697353226_3e4ae6ac_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 8, 12, 1, 'Sunglasses Spectacle Hard Casing', 8),
(19, 'WPO1701407039', 1701407030, '1698999088', 7, 0, '', 0, 23, 0, 'assets/product_image/359985438-sg_ready_stockkingsafe_transpa_1625436132_c0d23bd4_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 7, 12, 1, 'Transparent Safety Glasses Goggle', 7),
(20, 'WPO1701407219', 1701407204, '1698998033', 18, 15, '', 0, 23, 0, 'assets/product_image/1278954986-pure_summary-(1).png', 'undefined', 0, 'undefined', 'undefined', 15, 10, 1, 'OPTI-FREE Puremoist MULTI-PURPOSE CONTACT LENS SOLUTION', 15),
(21, 'WPO1701749082', 1701749068, '1698999417', 130, 0, '', 0, 23, 0, 'assets/product_image/871133895-tom_ford_sunglasses_1698988653_63e4a9b5_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 130, 11, 1, 'Tom Ford sunglasses', 130),
(22, 'WPO1701755961', 1701755947, '1698998915', 10, 0, '', 0, 23, 0, 'assets/product_image/36461844-rectangle_drawstring_pouches_f_1595226025_3181815e_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 10, 12, 1, '3 Pcs Rectangle Drawstring Pouches (Grey &amp; Black)', 10),
(23, 'WPO1701852607', 1701852597, '1698998334', 35, 0, '', 0, 34, 0, 'assets/product_image/145232127-81xdsRaCGxL._AC_SL1500_-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 35, 10, 1, 'Sensitive Eyes Saline Solution, 12 Fluid Ounce Each (Twin Pack)', 35),
(24, 'WPO1702264067', 1702264056, '1698998033', 18, 15, '', 0, 22, 0, 'assets/product_image/1278954986-pure_summary-(1).png', 'undefined', 0, 'undefined', 'undefined', 15, 10, 1, 'OPTI-FREE Puremoist MULTI-PURPOSE CONTACT LENS SOLUTION', 15),
(25, 'WPO1706441424', 1706441324, '1698999417', 130, 0, '', 0, 22, 0, 'assets/product_image/871133895-tom_ford_sunglasses_1698988653_63e4a9b5_progressive-(1).jpg', 'undefined', 0, 'undefined', 'undefined', 130, 11, 1, 'Tom Ford sunglasses', 130);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `show` int(11) NOT NULL DEFAULT '0',
  `isFeatured` int(11) NOT NULL,
  `image` text,
  `banner_image` varchar(500) NOT NULL,
  `back_image` varchar(500) NOT NULL,
  `item_order` int(11) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `category`, `show`, `isFeatured`, `image`, `banner_image`, `back_image`, `item_order`, `parent`) VALUES
(11, 'Sunglasses', 1, 0, NULL, '', '', 0, 0),
(12, 'Accessories', 1, 0, NULL, '', '', 0, 0),
(10, 'Contact Lens Solution', 1, 0, NULL, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `profileid` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_type` int(11) NOT NULL,
  `coupon_amount` double NOT NULL,
  `coupon_quantity` int(11) NOT NULL,
  `cart_amount` int(11) NOT NULL,
  `coupon_current_date` datetime NOT NULL,
  `coupon_expiry_date` datetime NOT NULL,
  `send_newsletter` int(11) NOT NULL,
  `content` text NOT NULL,
  `productid` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `profileid`, `email`, `coupon_code`, `coupon_type`, `coupon_amount`, `coupon_quantity`, `cart_amount`, `coupon_current_date`, `coupon_expiry_date`, `send_newsletter`, `content`, `productid`) VALUES
(5, 'admin123423', '', 'NEW50', 1, 50, 99, 1, '2023-06-01 15:15:21', '2023-11-30 15:15:00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `name`, `image`, `isFeatured`, `publish_date`, `item_order`) VALUES
(12, '', 'assets/upload-image/1437529837-sme.webp', 0, '2023-10-20 15:26:49', 1),
(13, '', 'assets/upload-image/1902306160-rcma-c.webp', 0, '2023-10-20 15:26:59', 3),
(14, '', 'assets/upload-image/1853787108-c.webp', 0, '2023-10-20 15:27:10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dollarprice`
--

CREATE TABLE `dollarprice` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dollarprice`
--

INSERT INTO `dollarprice` (`id`, `rate`) VALUES
(1, 71.76);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `item_order` int(11) NOT NULL,
  `publish_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`, `type`, `item_order`, `publish_date`) VALUES
(1, 'Which Nationality of MDW do we have?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae ligula malesuada, congue augue sed, facilisis nulla. Phasellus commodo turpis pulvinar magna pellentesque fermentum.', 0, 3, '2023-10-21 18:11:05'),
(2, 'What Is Included In Our Packages?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae ligula malesuada, congue augue sed, facilisis nulla. Phasellus commodo turpis pulvinar magna pellentesque fermentum.', 0, 4, '2023-10-21 18:11:22'),
(3, 'How many times can I change my MDW?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae ligula malesuada, congue augue sed, facilisis nulla. Phasellus commodo turpis pulvinar magna pellentesque fermentum.', 0, 2, '2023-10-22 22:33:20'),
(4, 'I’m a first time employer, how can I choose my MDW?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vitae ligula malesuada, congue augue sed, facilisis nulla. Phasellus commodo turpis pulvinar magna pellentesque fermentum.', 0, 1, '2023-10-22 22:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `id` int(11) NOT NULL,
  `category` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `projectid` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `projectid`, `image`, `category`, `subcategory`, `isFeatured`, `date`, `item_order`) VALUES
(1, '1691575049', 'assets/upload-image/643021838-222.jpg', '1', 0, 1, '2023-08-09 17:57:29', 1),
(2, '1691575049', 'assets/upload-image/1888576437-333.jpg', '1', 0, 0, '2023-08-09 17:57:29', 2),
(3, '1691575122', 'assets/upload-image/1143086478-111.jpg', '1', 0, 0, '2023-08-09 17:58:42', 0),
(4, '1691575122', 'assets/upload-image/1912985677-222.jpg', '1', 0, 0, '2023-08-09 17:58:42', 0),
(5, '1691575150', 'assets/upload-image/323651421-111.jpg', '1', 0, 0, '2023-08-09 17:59:10', 0),
(6, '1691575150', 'assets/upload-image/1081455520-333.jpg', '1', 0, 0, '2023-08-09 17:59:10', 0),
(9, '1691577119', 'assets/upload-image/642932534-333.jpg', '1', 0, 0, '2023-08-09 18:31:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_category`
--

CREATE TABLE `gallery_category` (
  `id` int(11) NOT NULL,
  `category` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_category`
--

INSERT INTO `gallery_category` (`id`, `category`, `image`, `date`, `item_order`) VALUES
(1, 'HDB / RESALE', '', '2023-08-09 17:52:10', 1),
(2, 'LANDED / CONDO', '', '2023-08-09 17:52:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_project`
--

CREATE TABLE `gallery_project` (
  `id` int(11) NOT NULL,
  `projectid` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `completed_date` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `feat_image` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_project`
--

INSERT INTO `gallery_project` (`id`, `projectid`, `title`, `completed_date`, `description`, `feat_image`, `category`, `subcategory`, `isFeatured`, `date`, `item_order`) VALUES
(1, '1691575049', 'Project 1', '8 Aug 2023', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in interdum tellus, nec auctor sem. Vestibulum ut ornare nisl. Donec fringilla rutrum laoreet. Sed luctus venenatis pellentesque.</p>', 'assets/upload-image/765547075-111.jpg', '1', 0, 1, '2023-08-09 17:57:29', 1),
(2, '1691575122', 'Project 2', '7 Aug 2023', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in interdum tellus, nec auctor sem. Vestibulum ut ornare nisl. Donec fringilla rutrum laoreet. Sed luctus venenatis pellentesque.</p>', 'assets/upload-image/1697507162-333.jpg', '1', 0, 0, '2023-08-09 17:58:42', 2),
(3, '1691575150', 'Project 3', '18 Aug 2023', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in interdum tellus, nec auctor sem. Vestibulum ut ornare nisl. Donec fringilla rutrum laoreet. Sed luctus venenatis pellentesque.</p>', 'assets/upload-image/472667061-222.jpg', '2', 0, 0, '2023-08-09 17:59:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hitpay_webhook`
--

CREATE TABLE `hitpay_webhook` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hitpay_webhook`
--

INSERT INTO `hitpay_webhook` (`id`, `data`, `date`) VALUES
(1, 'payment_id=994db366-1210-4817-8bcf-a4a0bd66e1a0&payment_request_id=994db365-a25a-44f7-aac3-b967b270b62c&phone=&amount=1.00&currency=SGD&status=completed&reference_number=FH1685590012&hmac=e87973eda6d6a7cd854add70a6d0242728bdde298fa345e4ab5c7c0a4de9d6c0', '2023-06-01 11:27:17'),
(2, 'payment_id=9abc3e04-c5eb-43a8-addc-c94195f5d50a&payment_request_id=9abc3e03-f800-4577-83ab-5ee73ad97376&phone=&amount=8.00&currency=SGD&status=completed&reference_number=WPO1701332849&hmac=d49a6479ecd9216fbb9d9846e539431be24f47c9aee0172ac4acf0308f06c624', '2023-11-30 16:27:48'),
(3, 'payment_id=9abdf83a-0423-4f3c-9796-fde71b57894d&payment_request_id=9abdf839-7de1-4ab1-ade6-3bb58beca4e0&phone=&amount=7.00&currency=SGD&status=completed&reference_number=WPO1701407039&hmac=3109f37dd8c33b64307dc8933c168fa1f4ac848f39c092e97ebbe7d538f64a39', '2023-12-01 13:04:59'),
(4, 'payment_id=9abdf94c-c8f8-477d-8702-3b7aed816b04&payment_request_id=9abdf94c-4860-4a6e-90f1-1fd92db0aaea&phone=&amount=15.00&currency=SGD&status=completed&reference_number=WPO1701407219&hmac=cc3c1deab75f89e84e3478d4afd94df54a2615c7a32826241a8ee662850dde62', '2023-12-01 13:07:08'),
(5, 'payment_id=9ac617f6-7c64-4b21-949f-3e8b67cb2bf2&payment_request_id=9ac617f5-f7ea-4bed-9535-194079e20d44&phone=&amount=10.00&currency=SGD&status=completed&reference_number=WPO1701755961&hmac=ffde35833ade9cb6a823756403632169755bce757f941327683f590191ca7700', '2023-12-05 13:59:36'),
(6, 'payment_id=9ad1ec83-160a-4001-a996-0b1b87104b4b&payment_request_id=9ad1ec82-8239-4e8f-9168-060397d6bff3&phone=&amount=15.00&currency=SGD&status=completed&reference_number=WPO1702264067&hmac=4d8ef0027797ddb0f8c02a959cb57c790611aa3a82ae6af08ab53f3eabf31662', '2023-12-11 11:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `int_category`
--

CREATE TABLE `int_category` (
  `id` int(11) NOT NULL,
  `category` varchar(500) NOT NULL,
  `parent` int(11) NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `int_category`
--

INSERT INTO `int_category` (`id`, `category`, `parent`, `item_order`) VALUES
(1, 'LIVINGROOM', 0, 0),
(2, 'BEDROOM', 0, 0),
(3, 'KITCHEN', 0, 0),
(4, 'TOILET', 0, 0),
(5, 'INDUSTRIAL', 1, 0),
(6, 'MODERN CONTEMPORARY', 1, 0),
(7, 'SCANDINAVIAN', 1, 0),
(8, 'LUXURY', 1, 0),
(9, 'INDUSTRIAL', 2, 0),
(10, 'MODERN CONTEMPORARY', 2, 0),
(11, 'SCANDINAVIAN', 2, 0),
(12, 'LUXURY', 2, 0),
(13, 'INDUSTRIAL', 3, 0),
(14, 'MODERN CONTEMPORARY', 3, 0),
(15, 'SCANDINAVIAN', 3, 0),
(16, 'LUXURY', 3, 0),
(17, 'INDUSTRIAL', 4, 0),
(18, 'MODERN CONTEMPORARY', 4, 0),
(19, 'SCANDINAVIAN', 4, 0),
(20, 'LUXURY', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `int_gallery`
--

CREATE TABLE `int_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `int_gallery`
--

INSERT INTO `int_gallery` (`id`, `image`, `category`, `subcategory`, `isFeatured`, `date`, `item_order`) VALUES
(6, 'assets/upload-image/1081455520-333.jpg', '4', 18, 0, '2023-08-09 17:59:10', 3),
(9, 'assets/upload-image/642932534-333.jpg', '2', 9, 0, '2023-08-09 18:31:59', 2),
(10, 'assets/upload-image/1133789379-Rectangle-260@2x.png', '1', 8, 0, '2023-10-20 20:14:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(500) NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`, `item_order`) VALUES
(1, 'English', 1),
(4, 'Chinese', 0),
(5, 'Malay', 0),
(6, 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lresource`
--

CREATE TABLE `lresource` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lresource`
--

INSERT INTO `lresource` (`id`, `title`, `description`, `image`, `isFeatured`, `publish_date`, `item_order`) VALUES
(4, 'Chinese Character Writing Grids', 'Download for print usage', 'assets/upload-image/1052862786-large-writing-grid-compact-20200403134903.pdf', 0, '2023-06-14 11:49:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `maid`
--

CREATE TABLE `maid` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `age` varchar(100) NOT NULL,
  `nationality` int(11) NOT NULL,
  `religions` varchar(300) NOT NULL,
  `language` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `pdf` varchar(500) NOT NULL,
  `pdf_link` varchar(500) NOT NULL,
  `item_order` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maid`
--

INSERT INTO `maid` (`id`, `name`, `age`, `nationality`, `religions`, `language`, `image`, `pdf`, `pdf_link`, `item_order`, `isFeatured`) VALUES
(2, 'Sari Siswati', '30', 4, 'Muslim ', 1, 'assets/upload-image/342661891-Mask-Group-16.jpg', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_level`
--

CREATE TABLE `membership_level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `amount` double NOT NULL,
  `min_amount` double NOT NULL,
  `max_amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id` int(11) NOT NULL,
  `nationality` varchar(500) NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id`, `nationality`, `item_order`) VALUES
(4, 'Indonesian', 0),
(5, 'Malaysian', 0),
(6, 'Filipino', 0),
(7, 'Burmese', 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `omise_webhook`
--

CREATE TABLE `omise_webhook` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `invoice_no` varchar(500) NOT NULL,
  `profileid` varchar(50) DEFAULT NULL,
  `coupon_amount` double NOT NULL DEFAULT '0',
  `coupon_code` varchar(100) DEFAULT NULL,
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `shipping` double NOT NULL DEFAULT '0',
  `delivery_charge` double NOT NULL,
  `pweight` double NOT NULL,
  `subtotal` double NOT NULL DEFAULT '0',
  `first_order` double NOT NULL,
  `birthday_discount` double NOT NULL,
  `grandtotal` double NOT NULL,
  `earn_point` double NOT NULL,
  `use_coins` double NOT NULL,
  `use_coins_amount` double NOT NULL,
  `payment_currency` varchar(200) NOT NULL,
  `usd_rate` double NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `payment_status` varchar(255) DEFAULT NULL,
  `out_of_stock` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `order_by` varchar(10) NOT NULL DEFAULT 'app',
  `txn_id` varchar(200) NOT NULL,
  `charge_id` varchar(500) NOT NULL,
  `payment_id` varchar(500) NOT NULL,
  `admin_comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderid`, `invoice_no`, `profileid`, `coupon_amount`, `coupon_code`, `order_time`, `quantity`, `shipping`, `delivery_charge`, `pweight`, `subtotal`, `first_order`, `birthday_discount`, `grandtotal`, `earn_point`, `use_coins`, `use_coins_amount`, `payment_currency`, `usd_rate`, `payment_method`, `payment_status`, `out_of_stock`, `order_status`, `order_by`, `txn_id`, `charge_id`, `payment_id`, `admin_comment`) VALUES
(17, 'WPO1701755961', 'WPO23017', '1701755947', 0, '', '2023-12-05 05:59:35', 1, 0, 0, 0, 10, 0, 0, 30, 0, 0, 0, 'INR', 0, 2, 'Complete', '', 4, 'web', '9ac617f5-f7ea-4bed-9535-194079e20d44', '', '9ac617f6-7c64-4b21-949f-3e8b67cb2bf2', ''),
(16, 'WPO1701749082', 'WPO23016', '1701749068', 0, '', '2023-12-05 04:04:42', 1, 0, 0, 0, 130, 0, 0, 130, 0, 0, 0, 'INR', 0, 1, 'Complete', '', 4, 'web', '', '', '', ''),
(12, 'WPO1701332729', 'WPO23012', '1701332712', 0, '', '2023-11-30 08:25:29', 1, 0, 0, 0, 390, 0, 0, 390, 0, 0, 0, 'INR', 0, 1, 'Complete', '', 4, 'web', '', '', '', ''),
(13, 'WPO1701332849', 'WPO23013', '1701332831', 0, '', '2023-11-30 08:27:48', 1, 0, 0, 0, 8, 0, 0, 18, 0, 0, 0, 'INR', 0, 2, 'Complete', '', 4, 'web', '9abc3e03-f800-4577-83ab-5ee73ad97376', '', '9abc3e04-c5eb-43a8-addc-c94195f5d50a', ''),
(14, 'WPO1701407039', 'WPO23014', '1701407030', 0, '', '2023-12-01 05:04:58', 1, 0, 0, 0, 7, 0, 0, 17, 0, 0, 0, 'INR', 0, 2, 'Complete', '', 4, 'web', '9abdf839-7de1-4ab1-ade6-3bb58beca4e0', '', '9abdf83a-0423-4f3c-9796-fde71b57894d', ''),
(15, 'WPO1701407219', 'WPO23015', '1701407204', 0, '', '2023-12-01 05:07:08', 1, 0, 0, 0, 15, 0, 0, 15, 0, 0, 0, 'INR', 0, 2, 'Complete', '', 4, 'web', '9abdf94c-4860-4a6e-90f1-1fd92db0aaea', '', '9abdf94c-c8f8-477d-8702-3b7aed816b04', ''),
(18, 'WPO1701852607', 'WPO23018', '1701852597', 0, '', '2023-12-06 08:50:07', 1, 0, 0, 0, 35, 0, 0, 35, 0, 0, 0, 'INR', 0, 1, 'Complete', '', 4, 'web', '', '', '', ''),
(19, 'WPO1702264067', 'WPO23019', '1702264056', 0, '', '2023-12-11 03:08:01', 1, 0, 0, 0, 15, 0, 0, 25, 0, 0, 0, 'INR', 0, 2, 'Complete', '', 4, 'web', '9ad1ec82-8239-4e8f-9168-060397d6bff3', '', '9ad1ec83-160a-4001-a996-0b1b87104b4b', ''),
(20, 'WPO1706441424', 'WPO24020', '1706441324', 0, '', '2024-01-28 11:30:24', 1, 0, 0, 0, 130, 0, 0, 130, 0, 0, 0, 'INR', 0, 1, 'Pending', '', 1, 'web', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `os_id` int(11) NOT NULL,
  `order_status_name` varchar(50) NOT NULL,
  `ob` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_message`
--

CREATE TABLE `order_status_message` (
  `id` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `link` text NOT NULL,
  `message` text NOT NULL,
  `status_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(500) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `item_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `image`, `isFeatured`, `publish_date`, `item_order`) VALUES
(13, '', 'assets/upload-image/1451916401-thumbnail_RCMA-stamp.png', 0, '2023-10-20 16:08:56', 0),
(14, '', 'assets/upload-image/1313018827-sme500_2023.png', 0, '2023-10-20 16:09:02', 0),
(15, '', 'assets/upload-image/739186744-CaseTrust-Logo-Transparent-1.png', 0, '2023-10-20 16:09:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `txn_id` varchar(500) NOT NULL,
  `payment_gross` varchar(500) NOT NULL,
  `currency_code` varchar(500) NOT NULL,
  `payer_email` varchar(500) NOT NULL,
  `payment_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `pm_id` int(11) NOT NULL,
  `payment_method_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`pm_id`, `payment_method_name`) VALUES
(1, 'Cash on Delivery'),
(2, 'PayNow'),
(3, 'Omise');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` int(11) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `state_code` varchar(200) NOT NULL,
  `prepaid` varchar(100) NOT NULL,
  `reverse_pikup` varchar(100) NOT NULL,
  `repl` varchar(100) NOT NULL,
  `cod` varchar(100) NOT NULL,
  `dispatch_center` varchar(500) NOT NULL,
  `sort_code` varchar(100) NOT NULL,
  `value_capping` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `point_history`
--

CREATE TABLE `point_history` (
  `id` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `profileid` varchar(100) NOT NULL,
  `point` double NOT NULL,
  `type` int(11) NOT NULL COMMENT '0=add,1=withdraw',
  `reason` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `point_history`
--

INSERT INTO `point_history` (`id`, `orderid`, `profileid`, `point`, `type`, `reason`, `date`) VALUES
(1, 'EI1691575252', '1682098120', 1260, 0, 'Earn points on order - #EI1691575252', '2023-08-09 18:03:05'),
(2, 'WPO1701332729', '1701332712', 0, 0, 'Earn points on order - #WPO1701332729', '2023-11-30 16:28:57'),
(3, 'WPO1701749082', '1701749068', 0, 0, 'Earn points on order - #WPO1701749082', '2023-12-05 12:05:48'),
(4, 'WPO1701852607', '1701852597', 0, 0, 'Earn points on order - #WPO1701852607', '2023-12-06 16:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `post_description` text CHARACTER SET utf8 NOT NULL,
  `post_category` varchar(25) NOT NULL,
  `publish_date` datetime NOT NULL,
  `image` varchar(500) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `title1` varchar(500) NOT NULL,
  `description1` text NOT NULL,
  `title2` varchar(500) NOT NULL,
  `description2` text NOT NULL,
  `title3` varchar(500) NOT NULL,
  `description3` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_title`, `post_description`, `post_category`, `publish_date`, `image`, `icon`, `seo_title`, `seo_keyword`, `seo_description`, `isFeatured`, `title1`, `description1`, `title2`, `description2`, `title3`, `description3`) VALUES
(4, 'Children and Computer Vision syndrome', '<p><strong>The use of computers has become a regular part of children&#39;s lives. Approximately 90% of school-aged kids in the United States have computer access, and children are beginning to use them at younger ages. In a survey of college students, 20% reported starting to use computers before they turned 9 years old.</strong></p>\r\n\r\n<p>In fact, the prevalence of computer and digital device usage during childhood is so widespread that a 2015 report from The Vision Council found that nearly one in four children spend over three hours per day on digital devices.</p>\r\n\r\n<p>Is There a Connection Between Computer Use and Nearsightedness?</p>\r\n\r\n<p>So, how does early computer usage impact children&#39;s eyes? Many eye specialists focusing on children&#39;s vision believe that prolonged computer use increases the risk of childhood myopia (nearsightedness). They note that while myopia affects about 25% of the U.S. population, nearly 50% of adult computer users with a college education have myopia. Computer use, particularly among young children whose eyes are still developing, may be a contributing factor to this difference.</p>\r\n\r\n<p>Research appears to support this hypothesis. A study conducted at the University of California, Berkeley School of Optometry, involving 253 children between the ages of 6 and 10, discovered a strong link between the amount of time young children spend on computers and the development of nearsightedness.</p>\r\n\r\n<p><u><strong>Why Computers Can Strain Kids&#39; Eyes</strong></u></p>\r\n\r\n<p>Extended periods spent in front of a computer screen can strain a child&#39;s eyes, as the computer necessitates more focus and effort from the visual system than most other tasks. This can put children at a higher risk than adults for experiencing symptoms of computer vision syndrome. Computer use strains the eyes more than reading printed materials because it&#39;s more challenging to maintain focus on computer-generated images compared to printed ones. This is particularly true for young children, whose visual systems are not yet fully developed.</p>\r\n\r\n<p>Doctors also express concern about the long-term effects of exposure to the blue light emitted by digital devices. Blue light, also known as high-energy visible (HEV) light, penetrates deeper into the eye than ultraviolet light and may harm children&#39;s retinas.</p>\r\n\r\n<p>According to the American Optometric Association, children might be especially susceptible to vision problems related to computer use because:</p>\r\n\r\n<p>1. Children may not be aware of their own limitations and can spend hours on the computer without taking breaks, potentially causing focusing and eyestrain issues.</p>\r\n\r\n<p>2. Children often assume that what they see and how they see it is normal, even if their vision is deteriorating.</p>\r\n\r\n<p>3. Children are smaller than adults, and computer workstations are typically designed for adult use. This can lead to children sitting too close to the screen or adopting awkward postures, resulting in eyestrain, as well as neck, shoulder, and back discomfort.</p>\r\n\r\n<p><u><strong>Tips for Preventing Computer Vision Syndrome in Children</strong></u></p>\r\n\r\n<p>To prevent your child from experiencing eyestrain and other symptoms of computer vision syndrome, as well as to reduce the risk of myopia, follow these guidelines:</p>\r\n\r\n<p>1. Before your child starts school, ensure they undergo a comprehensive eye examination that includes an assessment of their close-up vision skills for computer and reading.</p>\r\n\r\n<p>2. Arrange your child&#39;s computer workstation to fit their body size. For children, the recommended distance between the monitor and the eyes is 18 to 28 inches to avoid eyestrain associated with closer viewing. The screen should be positioned slightly below their eye level. Adjust the chair so that their arms are parallel to the desk and their feet rest comfortably on the floor. These adjustments can help prevent posture issues and muscle strain.</p>\r\n\r\n<p>3. Be vigilant for signs and symptoms of vision problems, such as redness in the eyes, frequent eye rubbing, head tilting, unusual postures, or complaints of blurry vision or eye fatigue. If your child avoids the computer or schoolwork, this may also indicate a vision issue.</p>\r\n\r\n<p>4. If you suspect your child may be developing vision problems due to computer use, be sure to mention this when scheduling an eye examination. Your doctor may allocate extra time for tests specifically designed to detect computer-related vision problems.</p>\r\n', '3', '2023-11-03 00:00:00', 'assets/post-image/17021253-side-view-boy-being-happy-(1).jpg', '', '', '', '', 0, '', '', '', '', '', ''),
(5, 'Bifocal and Multifocal Contact Lenses', '<p><strong>Bifocal and multifocal contact lenses are specifically crafted to provide clear vision as you enter your 40s. At this stage, you might find it necessary to hold reading material, such as a menu or newspaper, at a greater distance from your eyes in order to see it clearly. This vision condition is known as &quot;presbyopia.&quot;</strong></p>\r\n\r\n<p>Both soft and rigid gas permeable (GP) materials are available for bifocal and multifocal contact lenses.</p>\r\n\r\n<p>Distinguishing Bifocals from Multifocals</p>\r\n\r\n<p>Bifocal contact lenses, similar to bifocal eyeglass lenses, possess two distinct powers - one for clear distance vision and another for sharp near vision. In contrast, multifocal contact lenses, akin to progressive eyeglass lenses, encompass a spectrum of powers to facilitate clear vision at varying distances, including far and near, as well as everything in between. (&quot;Multifocal&quot; is an overarching term encompassing all lenses with more than one power, including bifocals.)</p>\r\n\r\n<p><u><strong>Varieties of Multifocal Contact Lenses</strong></u></p>\r\n\r\n<p>In terms of design, multifocal contact lenses are essentially categorized into two types:</p>\r\n\r\n<p>1. Simultaneous vision lenses: These lenses have both distance and near vision zones positioned in front of your pupil simultaneously. While this might initially seem challenging, your visual system adapts over time to utilize the required power and disregard the other lens power(s) depending on what you are focusing on. Simultaneous vision lenses are predominantly soft lenses and come in two designs:</p>\r\n\r\n<p>&nbsp; &nbsp;a. Concentric ring designs: These are bifocal lenses with either the distance or near power at the center of the lens, surrounded by alternating rings of distance and near powers.<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp;b. Aspheric designs: These are progressive-style multifocal lenses with multiple powers blended across the lens surface. Some aspheric lenses have the distance power at the center of the lens, while others have the near power at the center.</p>\r\n\r\n<p>2. Alternating vision (or translating) lenses: These are GP multifocal lenses designed akin to bifocal eyeglass lenses. The top part of the lens contains the distance power, while the bottom part incorporates the near power. When you gaze straight ahead, your eye looks through the distance section of the lens. When you look downward, your lower lid holds the lens in place, allowing your pupil to transition (translate) into the near zone of the lens for reading.</p>\r\n\r\n<p><u><strong>Will Multifocal Contact Lenses Suit Me?</strong></u></p>\r\n\r\n<p>The majority of individuals who try multifocal contact lenses are satisfied with the results. However, some compromises may be necessary when wearing these lenses. For instance, you might find that your distance vision with multifocal contact lenses is not as sharp as you&#39;d prefer, or you may experience issues with nighttime glare or reading small print.</p>\r\n\r\n<p>In certain cases, individuals with presbyopia might opt for monovision or modified monovision. Both of these fitting approaches utilize single vision lenses - lenses with only one power - instead of multifocals.</p>\r\n\r\n<p>In monovision, you wear a single vision contact lens for distance vision in one eye and a single vision contact lens with a prescription for near vision in the other eye. Modified monovision involves wearing a single vision &quot;distance lens&quot; in one eye and a multifocal contact lens in the other eye to improve near vision.</p>\r\n\r\n<p>To determine the most suitable contact lenses for your vision needs as you enter the &quot;bifocal age,&quot; we recommend scheduling a consultation with our office.</p>\r\n', '3', '2023-11-03 00:00:00', 'assets/post-image/1958437380-high-angle-contact-lenses-with-case-tweezers-(1).jpg', '', '', '', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prodcut_rating`
--

CREATE TABLE `prodcut_rating` (
  `id` int(10) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `email` varchar(500) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `value_rating` int(10) NOT NULL,
  `price_rating` int(10) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `product_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `product_slug` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `product_sku` varchar(100) DEFAULT NULL,
  `product_price` varchar(100) NOT NULL DEFAULT '0',
  `product_sale_price` varchar(100) NOT NULL DEFAULT '0',
  `unit_label` varchar(500) NOT NULL,
  `product_stock` int(11) NOT NULL DEFAULT '0',
  `product_weight` double NOT NULL COMMENT 'in gram',
  `product_description` text CHARACTER SET utf8,
  `product_specification` text NOT NULL,
  `key_features` text NOT NULL,
  `product_dimensions` text NOT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `size` text,
  `color` text,
  `brandid` varchar(100) NOT NULL,
  `product_type` varchar(500) NOT NULL,
  `product_upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_tag` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0=product,1=rewards',
  `best_selling` int(11) NOT NULL,
  `shop_rewards` int(11) NOT NULL,
  `feat_prod` int(11) NOT NULL,
  `last_products` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `new_arrival` int(11) NOT NULL,
  `discount` double NOT NULL,
  `promotion` double NOT NULL,
  `rating` double NOT NULL,
  `reviews` int(11) NOT NULL,
  `point` double NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_decs` text NOT NULL,
  `search_text` text NOT NULL,
  `video` text NOT NULL,
  `buy_qty` int(11) NOT NULL,
  `get_qty` int(11) NOT NULL,
  `buy_sale_qty` int(11) NOT NULL,
  `buy_sale_price` double NOT NULL,
  `service` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `productid`, `product_name`, `product_slug`, `product_sku`, `product_price`, `product_sale_price`, `unit_label`, `product_stock`, `product_weight`, `product_description`, `product_specification`, `key_features`, `product_dimensions`, `product_category`, `size`, `color`, `brandid`, `product_type`, `product_upload_date`, `product_tag`, `type`, `best_selling`, `shop_rewards`, `feat_prod`, `last_products`, `new_arrival`, `discount`, `promotion`, `rating`, `reviews`, `point`, `meta_keyword`, `meta_decs`, `search_text`, `video`, `buy_qty`, `get_qty`, `buy_sale_qty`, `buy_sale_price`, `service`) VALUES
(19, '1698998724', 'Sports Spectacle Attachment', 'Sports-Spectacle-Attachment', '', '15', '', '', 23, 0, '<p>attachment on spectacles for use during sporting activities</p>\r\n<p>&nbsp;</p>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 16:05:24', '', 0, 0, 0, 1, '2024-01-30 18:18:23', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 2),
(20, '1698998915', '3 Pcs Rectangle Drawstring Pouches (Grey & Black)', '3-Pcs-Rectangle-Drawstring-Pouches-Grey-Black', '', '10', '', '', 22, 0, '<p>Pack of spectcle pouches.</p>\r\n<p>Comes in mixture of Grey and Black coloured pouches</p>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 16:08:35', '', 0, 0, 0, 1, '2024-01-30 20:36:33', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 2),
(17, '1698998230', ' Opti-Free Puremoist Multi-Purpose Disinfecting Solution', 'Opti-Free-Puremoist-Multi-Purpose-Disinfecting-Solution', '', '30', '', '', 23, 0, '<p><span class=\"a-list-item\">For cleaning and disinfecting all Silicone Hydrogel and other Soft Contact Lenses</span></p>', '', '', '', '10', NULL, NULL, '', '', '2023-11-03 15:57:10', '', 0, 0, 0, 0, '2024-01-30 18:18:30', 0, 0, 0, 0, 0, 0, '', '', ' and Contact Lens Solution', '', 0, 0, 0, 0, 4),
(18, '1698998334', 'Sensitive Eyes Saline Solution, 12 Fluid Ounce Each (Twin Pack)', 'Sensitive-Eyes-Saline-Solution-12-Fluid-Ounce-Each-Twin-Pack', '', '35', '', '', 33, 0, '<p>Pack of two, 12 fluid ounce (Total of 24 fluid ounce)</p>\r\n<p>Use for rinsing after daily cleaning and before insertion</p>', '', '', '', '10', NULL, NULL, '', '', '2023-11-03 15:58:54', '', 0, 0, 0, 0, '2024-01-30 18:18:29', 0, 0, 0, 0, 0, 0, '', '', ' and Contact Lens Solution', '', 0, 0, 0, 0, 4),
(15, '1698997702', 'Opti -Free Replenish Multi-Purpose Contact Lens Solution', 'Opti-Free-Replenish-Multi-Purpose-Contact-Lens-Solution', '', '15', '', '', 23, 0, '<p>Enhanced comfort with top-notch cleaning and<br />disinfecting power.</p>', '', '', '', '10', NULL, NULL, '', '', '2023-11-03 15:49:50', '', 0, 0, 0, 1, '2024-01-30 18:18:25', 0, 0, 0, 0, 0, 0, '', '', ' and Contact Lens Solution', '', 0, 0, 0, 0, 4),
(16, '1698998033', 'OPTI-FREE Puremoist MULTI-PURPOSE CONTACT LENS SOLUTION', 'OPTI-FREE-Puremoist-MULTI-PURPOSE-CONTACT-LENS-SOLUTION', '', '18', '15', '', 21, 0, '<p>No matter what your day brings, OPTI-FREE&reg; Puremoist&reg; gives you all-day comfort.</p>', '', '', '', '10', NULL, NULL, '', '', '2023-11-03 15:53:53', '', 0, 1, 0, 1, '2024-01-30 18:18:24', 0, 16.67, 0, 0, 0, 0, '', '', ' and Contact Lens Solution', '', 0, 0, 0, 0, 4),
(21, '1698999088', 'Transparent Safety Glasses Goggle', 'Transparent-Safety-Glasses-Goggle', '', '7', '', '', 22, 0, '<p>Safety Glasses with CE EN166 Approval, Clear Lens</p>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 16:11:28', '', 0, 0, 0, 0, '2024-01-30 18:18:52', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 0),
(22, '1698999210', 'Collapsible Tri-Fold Glasses Case', 'Collapsible-Tri-Fold-Glasses-Case', '', '12', '', '', 23, 0, '<ul>\r\n<li class=\"sc-f0a576c5-1 gvqLlx\">Easy open and fold design</li>\r\n<li>Magnetic closure</li>\r\n</ul>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 16:13:30', '', 0, 0, 0, 0, '2024-01-30 18:18:28', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 3),
(23, '1698999344', 'Calvin Klein sunglasses', 'Calvin-Klein-sunglasses', '', '55', '', '', 23, 0, '<p>Fashionable piece suitable for all outfits and occasions&nbsp;</p>', '', '', '', '11', NULL, NULL, '', '', '2023-11-03 16:15:44', '', 0, 0, 0, 0, '2024-01-30 18:18:50', 0, 0, 0, 0, 0, 0, '', '', ' and Sunglasses', '', 0, 0, 0, 0, 0),
(24, '1698999417', 'Tom Ford sunglasses', 'Tom-Ford-sunglasses', '', '130', '', '', 21, 0, '', '', '', '', '11', NULL, NULL, '', '', '2023-11-03 16:16:57', '', 0, 0, 0, 0, '2024-01-30 18:18:49', 0, 0, 0, 0, 0, 0, '', '', ' and Sunglasses', '', 0, 0, 0, 0, 0),
(25, '1698999609', 'Gentle Monster Sunglasses Lo Cell', 'Gentle-Monster-Sunglasses-Lo-Cell', '', '180', '', '', 23, 0, '<p>Unisex. Suitable for both Male and Female</p>', '', '', '', '11', NULL, NULL, '', '', '2023-11-03 16:20:09', '', 0, 0, 0, 0, '2024-01-30 18:18:47', 0, 0, 0, 0, 0, 0, '', '', ' and Sunglasses', '', 0, 0, 0, 0, 0),
(26, '1698999887', 'Black Ebony Wood Smoke Sunglasses', 'Black-Ebony-Wood-Smoke-Sunglasses', '', '55', '', '', 23, 0, '<ul class=\"sc-f0a576c5-2 eQRuCg\">\r\n<li class=\"sc-f0a576c5-1 gvqLlx\">Handsome black and ebony combination frames</li>\r\n<li class=\"sc-f0a576c5-1 gvqLlx\">Classic D-frame design</li>\r\n</ul>', '', '', '', '11', NULL, NULL, '', '', '2023-11-03 16:24:47', '', 0, 0, 0, 0, '2024-01-30 18:18:44', 0, 0, 0, 0, 0, 0, '', '', ' and Sunglasses', '', 0, 0, 0, 0, 0),
(27, '1699003496', 'Eyewear Spectacles Chain Holder(Gold Colour)', 'Eyewear-Spectacles-Chain-HolderGold-Colour', '', '8', '', '', 23, 0, '<p>A good accessory for your spectacles!</p>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 17:24:56', '', 0, 0, 0, 0, '2024-01-30 18:18:43', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 0),
(28, '1699003677', 'Sunglasses Spectacle Hard Casing', 'Sunglasses-Spectacle-Hard-Casing', '', '8', '', '', 44, 0, '<p>Durable and Light suitable for all sunglass frame sizes</p>', '', '', '', '12', NULL, NULL, '', '', '2023-11-03 17:27:57', '', 0, 0, 0, 0, '2024-01-30 18:18:42', 0, 0, 0, 0, 0, 0, '', '', ' and Accessories', '', 0, 0, 0, 0, 0),
(29, '1699004083', 'Gentle Monster - silver love punch sunglasses', 'Gentle-Monster-silver-love-punch-sunglasses', '', '390', '', '', 22, 0, '', '', '', '', '11', NULL, NULL, '', '', '2023-11-03 17:34:43', '', 0, 0, 0, 0, '2024-01-30 18:18:39', 0, 0, 0, 0, 0, 0, '', '', ' and Sunglasses', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_media`
--

CREATE TABLE `product_media` (
  `id` int(11) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `isThumb` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_media`
--

INSERT INTO `product_media` (`id`, `product_id`, `product_image`, `isThumb`) VALUES
(39, '1698997702', 'assets/product_image/168230293-rep_summary-(1).png', 1),
(40, '1698998033', 'assets/product_image/1278954986-pure_summary-(1).png', 1),
(41, '1698998230', 'assets/product_image/1250470764-61q8jSChOcL._AC_SL1000_-(1).jpg', 1),
(42, '1698998334', 'assets/product_image/145232127-81xdsRaCGxL._AC_SL1500_-(1).jpg', 1),
(43, '1698998724', 'assets/product_image/1715974302-spectacle_accessories_especially_for_sports_1577865925_aa8aa95c_progressive-(1).jpg', 1),
(44, '1698998915', 'assets/product_image/36461844-rectangle_drawstring_pouches_f_1595226025_3181815e_progressive-(1).jpg', 1),
(45, '1698999088', 'assets/product_image/359985438-sg_ready_stockkingsafe_transpa_1625436132_c0d23bd4_progressive-(1).jpg', 1),
(46, '1698999210', 'assets/product_image/1830094279-5-4_copy_16.jpg', 1),
(47, '1698999344', 'assets/product_image/526534076-calvin_klein_sunglasses_1697168596_7ec7576a_progressive-(1).jpg', 1),
(48, '1698999417', 'assets/product_image/871133895-tom_ford_sunglasses_1698988653_63e4a9b5_progressive-(1).jpg', 1),
(49, '1698999609', 'assets/product_image/179203245-gentle_monster_sunglasses_lo_c_1696667952_6053048e_progressive-(1).jpg', 1),
(50, '1698999887', 'assets/product_image/57181718-63-2_6.jpg', 1),
(51, '1699003496', 'assets/product_image/205441299-eyewear_spectacles_chain_holde_1621490006_9f7f1cc4_progressive-(1).jpg', 1),
(52, '1699003677', 'assets/product_image/1380909817-sunglasses_spectacle_casing_1697353226_3e4ae6ac_progressive-(1).jpg', 1),
(53, '1699004083', 'assets/product_image/1357584373-gentle_monster__silver_love_pu_1671253415_897b7d5a_progressive-(1).jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_notify`
--

CREATE TABLE `product_notify` (
  `id` int(11) NOT NULL,
  `productid` varchar(200) NOT NULL,
  `productname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_unit`
--

CREATE TABLE `product_unit` (
  `id` int(11) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `type` varchar(500) NOT NULL,
  `product_price` varchar(100) NOT NULL DEFAULT '0',
  `product_sale_price` varchar(100) NOT NULL DEFAULT '0',
  `product_stock` int(11) NOT NULL,
  `product_sku` varchar(255) NOT NULL,
  `unit_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point`
--

CREATE TABLE `reward_point` (
  `id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `expire_days` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sent_notification`
--

CREATE TABLE `sent_notification` (
  `id` int(11) NOT NULL,
  `profileid` varchar(100) NOT NULL,
  `object` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `url` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `url`, `type`) VALUES
(5, 'assets/slider/5af2e62cd69cedf7ba8797b3d41628cf.webp', 'https://www.websentialsdraft.com/west-point-optometrist/products', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `key_value` varchar(500) NOT NULL,
  `tag` varchar(500) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `position` varchar(500) CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `publish_date` datetime NOT NULL,
  `item_order` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `position`, `image`, `description`, `publish_date`, `item_order`, `isFeatured`) VALUES
(3, 'JOHN DOE', 'Senior Designer', 'assets/upload-image/556108242-Rectangle-427.png', '<p>Hi there! I\'m Kimberly Chia, and I\'ve had the incredible privilege of being a part of the Id Gallery team for the past 5 enriching years. As a Senior Designer, I\'ve immersed myself in the world of interior transformation, bringing ideas to life and crafting spaces that tell captivating stories. Over these years, I\'ve cultivated a deep appreciation for the interplay of design elements and the emotions they evoke. My journey here has been more than a job; it\'s been a canvas for creativity and a platform for collaboration. From conceptualization to execution, I\'ve had the honor of working on diverse projects that have challenged and inspired me. At Id Gallery, we\'re not just creating interiors &ndash; we\'re curating experiences, and I\'m thrilled to have been a part of this incredible journey. Looking forward to continuing to shape exceptional spaces that resonate and inspire.</p>', '2023-10-20 16:12:29', 1, 0),
(4, 'KIMBERLY CHIA', 'Interior Designer', 'assets/upload-image/846514625-Rectangle-260@2x.png', '<p>Hi there! I\'m Kimberly Chia, and I\'ve had the incredible privilege of being a part of the Id Gallery team for the past 5 enriching years. As a Senior Designer, I\'ve immersed myself in the world of interior transformation, bringing ideas to life and crafting spaces that tell captivating stories. Over these years, I\'ve cultivated a deep appreciation for the interplay of design elements and the emotions they evoke. My journey here has been more than a job; it\'s been a canvas for creativity and a platform for collaboration. From conceptualization to execution, I\'ve had the honor of working on diverse projects that have challenged and inspired me. At Id Gallery, we\'re not just creating interiors &ndash; we\'re curating experiences, and I\'m thrilled to have been a part of this incredible journey. Looking forward to continuing to shape exceptional spaces that resonate and inspire.</p>', '2023-10-20 17:26:35', 0, 0),
(6, 'Member Name 1', '', 'assets/upload-image/1895687649-img.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod est et justo maximus volutpat. Sed congue pretium ante id auctor. Integer vestibulum tortor a elit lobortis, sit amet iaculis ligula blandit. Suspendisse feugiat, orci eu porta placerat, lacus lorem lacinia nisl, eu sodales nulla elit vitae tellus. Donec et scelerisque magna, bibendum rutrum metus. Aliquam in luctus metus, ac mollis nisi. Sed dapibus placerat venenatis. Curabitur sed condimentum lorem, in pulvinar elit. Duis ut nunc in sapien suscipit gravida. Sed id est vel nisl iaculis volutpat quis a elit. Morbi semper, nibh sed pulvinar malesuada, nulla libero varius arcu, eu ultrices tortor urna ac.</p>', '2023-10-22 22:29:40', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `publish_date` datetime NOT NULL,
  `item_order` int(11) NOT NULL,
  `isFeatured` int(11) NOT NULL,
  `ratting_by` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `image`, `description`, `publish_date`, `item_order`, `isFeatured`, `ratting_by`, `rating`) VALUES
(1, 'BALAKRISHNAN MUTHUSAMY', '', '“Janah is a seasoned professional and cater the requirements based on the tele conversation. She is supportive and trusted for any conversations on domestic helpers. I found her very good in tailoring the requirements to brief prior engaging interviews to have successful outcomes.”', '2023-10-20 15:11:37', 2, 1, 1, 0),
(2, 'New LEONARD LEE SIEW CHUAN', '', 'Thank you John Doe for doing a great job for my house at Clementi Peaks. All my friends and relatives praised the job you did.You delivered the job on time as promised and did a very good job.', '2023-10-20 16:12:11', 3, 0, 1, 0),
(3, 'Test LEONARD LEE SIEW CHUAN', '', 'Thank you John Doe for doing a great job for my house at Clementi Peaks. All my friends and relatives praised the job you did.You delivered the job on time as promised and did a very good job.\r\nThank you John Doe for doing a great job for my house at Clementi Peaks. All my friends and relatives praised the job you did.You delivered the job on time as promised and did a very good job.', '2023-10-20 16:12:29', 1, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `profileid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `user_photo` varchar(500) NOT NULL,
  `profession` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `plain_password` varchar(500) NOT NULL,
  `own_referal` varchar(255) NOT NULL,
  `used_referal` varchar(255) NOT NULL,
  `country` varchar(500) NOT NULL,
  `pincode` int(11) NOT NULL,
  `address` text NOT NULL,
  `address2` varchar(500) NOT NULL,
  `reg_date` datetime NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `token_id` varchar(500) NOT NULL,
  `verify` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `total_point` double NOT NULL,
  `remain_point` double NOT NULL,
  `withdraw_point` double NOT NULL,
  `terms` int(11) NOT NULL,
  `newsletter` int(11) NOT NULL,
  `package` int(11) NOT NULL COMMENT '0=bronze,1=silver,2=gold',
  `order_amount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `profileid`, `name`, `last_name`, `user_photo`, `profession`, `dob`, `email`, `mobile_no`, `password`, `plain_password`, `own_referal`, `used_referal`, `country`, `pincode`, `address`, `address2`, `reg_date`, `user_type`, `token_id`, `verify`, `gender`, `total_point`, `remain_point`, `withdraw_point`, `terms`, `newsletter`, `package`, `order_amount`) VALUES
(2, '1682098120', 'Test User', '', 'assets/upload-image/1115219285-gyg.jpg', '', '0000-00-00', 'test@gmail.com', '88878822', '098f6bcd4621d373cade4e832627b4f6', 'test', '2AP91OJQV', '', '', 0, 'ewrwerwer', '', '2023-04-22 01:28:40', 'register_user', '', 1, 0, 1280, 1280, 0, 1, 0, 0, 0),
(9, '1697433626', '', '', '', '', '0000-00-00', 'kritijhgvjain911@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-10-16 13:20:26', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '1699004915', '', '', '', '', '0000-00-00', 'james@websentials.com.sg', '', '', '', '', '', '', 0, '', '', '2023-11-03 17:48:35', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '1701332712', '', '', '', '', '0000-00-00', 'medicvuxcc@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-11-30 16:25:12', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 390),
(13, '1701332804', '', '', '', '', '0000-00-00', 'lerdid_work@gmai.com', '', '', '', '', '', '', 0, '', '', '2023-11-30 16:26:44', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '1701332831', '', '', '', '', '0000-00-00', 'lerdid_work@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-11-30 16:27:11', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 8),
(15, '1701407030', '', '', '', '', '0000-00-00', 'nh1io23e@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-12-01 13:03:50', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 7),
(16, '1701407204', '', '', '', '', '0000-00-00', 'bentest2@websentials.com.sg', '', '', '', '', '', '', 0, '', '', '2023-12-01 13:06:44', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 15),
(17, '1701749068', '', '', '', '', '0000-00-00', 'lydiateo230@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-12-05 12:04:28', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 130),
(18, '1701755947', '', '', '', '', '0000-00-00', '312ejnk@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-12-05 13:59:07', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 10),
(19, '1701852597', '', '', '', '', '0000-00-00', 'fdwsau123@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-12-06 16:49:57', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 35),
(20, '1702264056', '', '', '', '', '0000-00-00', '123darren_hew@gmail.com', '', '', '', '', '', '', 0, '', '', '2023-12-11 11:07:36', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 15),
(21, '1706441324', '', '', '', '', '0000-00-00', 'abcdf@gamil.com', '', '', '', '', '', '', 0, '', '', '2024-01-28 19:28:44', 'guest_user', '', 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `profileid` varchar(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `blast_name` varchar(255) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile_no` varchar(100) NOT NULL,
  `baddress1` text NOT NULL,
  `baddress2` text NOT NULL,
  `bcountry` varchar(500) NOT NULL,
  `bcity` varchar(100) NOT NULL,
  `bstate` varchar(100) NOT NULL,
  `bpincode` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `smobile_no` varchar(100) NOT NULL,
  `saddress1` text NOT NULL,
  `saddress2` text NOT NULL,
  `scountry` varchar(500) NOT NULL,
  `scity` varchar(100) NOT NULL,
  `sstate` varchar(100) NOT NULL,
  `spincode` varchar(100) NOT NULL,
  `isDefault` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `profileid`, `bname`, `blast_name`, `bemail`, `bmobile_no`, `baddress1`, `baddress2`, `bcountry`, `bcity`, `bstate`, `bpincode`, `sname`, `semail`, `smobile_no`, `saddress1`, `saddress2`, `scountry`, `scity`, `sstate`, `spincode`, `isDefault`) VALUES
(1, '1682098120', 'Test User', '', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '4322332', 1),
(2, '1698899887', 'Test Useer', '', 'test321@gmail.com', '98888888', '761 Sterest Singapore', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test Useer', 'test321@gmail.com', '98888888', '761 Sterest Singapore', 'rrrrr', '', '0', '0', '4322332', 1),
(3, '1699004915', 'Test Userds', '', 'james@websentials.com.sg', '23213124', 'fwefewf', '2412451', 'Singapore', '0', '0', '345345', 'Test Userds', 'james@websentials.com.sg', '23213124', 'fwefewf', '2412451', '', '0', '0', '345345', 1),
(4, '1701332712', 'Darren', '', 'medicvuxcc@gmail.com', '92774365', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Darren', 'medicvuxcc@gmail.com', '92774365', 'nil', 'nil', '', '0', '0', '000000', 1),
(5, '1701332831', 'Lexi', '', 'lerdid_work@gmail.com', '82335283', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Lexi', 'lerdid_work@gmail.com', '82335283', 'nil', 'nil', '', '0', '0', '000000', 1),
(6, '1701407030', 'Nikhil', '', 'nh1io23e@gmail.com', '98182039', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Nikhil', 'nh1io23e@gmail.com', '98182039', 'nil', 'nil', '', '0', '0', '000000', 1),
(7, '1701407204', 'bentest', '', 'bentest2@websentials.com.sg', '81238940', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'bentest', 'bentest2@websentials.com.sg', '81238940', 'nil', 'nil', '', '0', '0', '000000', 1),
(8, '1701749068', 'Lydia', '', 'lydiateo230@gmail.com', '88232026', 'niln', 'nil', 'Singapore', '0', '0', '000000', 'Lydia', 'lydiateo230@gmail.com', '88232026', 'niln', 'nil', '', '0', '0', '000000', 1),
(9, '1701755947', 'Ken', '', '312ejnk@gmail.com', '92335235', 'nil', 'nil', 'Singapore', '0', '0', '0010101', 'Ken', '312ejnk@gmail.com', '92335235', 'nil', 'nil', '', '0', '0', '0010101', 1),
(10, '1701852597', 'Derrick', '', 'fdwsau123@gmail.com', '98123990', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Derrick', 'fdwsau123@gmail.com', '98123990', 'nil', 'nil', '', '0', '0', '000000', 1),
(11, '1702264056', 'Darren', '', '123darren_hew@gmail.com', '90258210', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Darren', '123darren_hew@gmail.com', '90258210', 'nil', 'nil', '', '0', '0', '000000', 1),
(12, '1706441324', 'han sun', '', 'abcdf@gamil.com', '98032245', 'Blk 680A  jurong west central1.', '09-46', 'Singapore', '0', '0', '643680', 'han sun', 'abcdf@gamil.com', '98032245', 'Blk 680A  jurong west central1.', '09-46', '', '0', '0', '643680', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_order_address`
--

CREATE TABLE `user_order_address` (
  `uoaid` int(11) NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `profileid` varchar(50) DEFAULT NULL,
  `bname` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile_no` varchar(100) NOT NULL,
  `baddress1` text NOT NULL,
  `baddress2` text NOT NULL,
  `bcountry` varchar(500) NOT NULL,
  `bcity` varchar(100) NOT NULL,
  `bstate` varchar(100) NOT NULL,
  `bpincode` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `smobile_no` varchar(50) NOT NULL,
  `saddress1` text NOT NULL,
  `saddress2` text NOT NULL,
  `scountry` varchar(500) NOT NULL,
  `scity` varchar(100) NOT NULL,
  `sstate` varchar(100) NOT NULL,
  `spincode` varchar(100) NOT NULL,
  `LastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_order_address`
--

INSERT INTO `user_order_address` (`uoaid`, `orderid`, `profileid`, `bname`, `bemail`, `bmobile_no`, `baddress1`, `baddress2`, `bcountry`, `bcity`, `bstate`, `bpincode`, `sname`, `semail`, `smobile_no`, `saddress1`, `saddress2`, `scountry`, `scity`, `sstate`, `spincode`, `LastUpdate`) VALUES
(1, 'EI1691575252', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '4322332', '2023-08-09 10:00:52'),
(2, 'EI1691652844', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '452001', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '452001', '2023-08-10 07:34:04'),
(3, 'WPO1698831092', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'new york', 'Singapore', '0', '0', '539182', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'new york', '', '0', '0', '539182', '2023-11-01 09:31:32'),
(4, 'WPO1698832334', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '4322332', '2023-11-01 09:52:14'),
(5, 'WPO1698832439', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '4322332', '2023-11-01 09:53:59'),
(6, 'WPO1698836048', '1682098120', 'Test User', 'test@gmail.com', '78699671', 'indore', 'indore india', 'Singapore', '0', '0', '452201', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'indore india', '', '0', '0', '452201', '2023-11-01 10:54:08'),
(7, 'WPO1698838654', '1682098120', 'Test User', 'test@gmail.com', '78699671', 'indore', 'indore india', 'Singapore', '0', '0', '452201', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'indore india', '', '0', '0', '452201', '2023-11-01 11:37:34'),
(8, 'WPO1698843830', '1682098120', 'Test User', 'test@gmail.com', '78699671', 'indore', 'indore india', 'Singapore', '0', '0', '452201', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'indore india', '', '0', '0', '452201', '2023-11-01 13:03:50'),
(9, 'WPO1698899899', '1698899887', 'Test Useer', 'test321@gmail.com', '98888888', '761 Sterest Singapore', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test Useer', 'test321@gmail.com', '98888888', '761 Sterest Singapore', 'rrrrr', '', '0', '0', '4322332', '2023-11-02 04:38:19'),
(10, 'WPO1698910291', '1682098120', 'Test User', 'test@gmail.com', '78699671', 'indore', 'indore india', 'Singapore', '0', '0', '452201', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'indore india', '', '0', '0', '452201', '2023-11-02 07:31:31'),
(11, 'WPO1698924345', '1682098120', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', 'Singapore', '0', '0', '4322332', 'Test User', 'test@gmail.com', '88878822', 'ewrwerwer', 'rrrrr', '', '0', '0', '4322332', '2023-11-02 11:25:45'),
(12, 'WPO1701332729', '1701332712', 'Darren', 'medicvuxcc@gmail.com', '92774365', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Darren', 'medicvuxcc@gmail.com', '92774365', 'nil', 'nil', '', '0', '0', '000000', '2023-11-30 08:25:29'),
(13, 'WPO1701332849', '1701332831', 'Lexi', 'lerdid_work@gmail.com', '82335283', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Lexi', 'lerdid_work@gmail.com', '82335283', 'nil', 'nil', '', '0', '0', '000000', '2023-11-30 08:27:48'),
(14, 'WPO1701407039', '1701407030', 'Nikhil', 'nh1io23e@gmail.com', '98182039', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Nikhil', 'nh1io23e@gmail.com', '98182039', 'nil', 'nil', '', '0', '0', '000000', '2023-12-01 05:04:58'),
(15, 'WPO1701407219', '1701407204', 'bentest', 'bentest2@websentials.com.sg', '81238940', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'bentest', 'bentest2@websentials.com.sg', '81238940', 'nil', 'nil', '', '0', '0', '000000', '2023-12-01 05:07:08'),
(16, 'WPO1701749082', '1701749068', 'Lydia', 'lydiateo230@gmail.com', '88232026', 'niln', 'nil', 'Singapore', '0', '0', '000000', 'Lydia', 'lydiateo230@gmail.com', '88232026', 'niln', 'nil', '', '0', '0', '000000', '2023-12-05 04:04:42'),
(17, 'WPO1701755961', '1701755947', 'Ken', '312ejnk@gmail.com', '92335235', 'nil', 'nil', 'Singapore', '0', '0', '0010101', 'Ken', '312ejnk@gmail.com', '92335235', 'nil', 'nil', '', '0', '0', '0010101', '2023-12-05 05:59:35'),
(18, 'WPO1701852607', '1701852597', 'Derrick', 'fdwsau123@gmail.com', '98123990', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Derrick', 'fdwsau123@gmail.com', '98123990', 'nil', 'nil', '', '0', '0', '000000', '2023-12-06 08:50:07'),
(19, 'WPO1702264067', '1702264056', 'Darren', '123darren_hew@gmail.com', '90258210', 'nil', 'nil', 'Singapore', '0', '0', '000000', 'Darren', '123darren_hew@gmail.com', '90258210', 'nil', 'nil', '', '0', '0', '000000', '2023-12-11 03:08:01'),
(20, 'WPO1706441424', '1706441324', 'han sun', 'abcdf@gamil.com', '98032245', 'Blk 680A  jurong west central1.', '09-46', 'Singapore', '0', '0', '643680', 'han sun', 'abcdf@gamil.com', '98032245', 'Blk 680A  jurong west central1.', '09-46', '', '0', '0', '643680', '2024-01-28 11:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `web_setting`
--

CREATE TABLE `web_setting` (
  `id` int(11) NOT NULL,
  `fb_reviews` int(11) NOT NULL,
  `g_reviews` int(11) NOT NULL,
  `home_popup` int(11) NOT NULL,
  `top_header_content` text NOT NULL,
  `below_slider_content` text NOT NULL,
  `popup_image` varchar(500) NOT NULL,
  `popup_content` text NOT NULL,
  `shipping_charge` double NOT NULL,
  `shipping_cart_amount` double NOT NULL,
  `newsletter_content` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_setting`
--

INSERT INTO `web_setting` (`id`, `fb_reviews`, `g_reviews`, `home_popup`, `top_header_content`, `below_slider_content`, `popup_image`, `popup_content`, `shipping_charge`, `shipping_cart_amount`, `newsletter_content`) VALUES
(1, 400, 400, 1, 'Welcome to </strong>', 'DELIVERY WITHIN 1 - 5 DAYS', 'assets/categories/42f8773873990fdc8b11b1b5bf81371a.jpg', '<h3 class=\"mb-3\" style=\"text-align: center;\">Be the first one to know!</h3>\r\n<p style=\"text-align: center;\">Newsletter Be among one of the first to receive the latest product news from Petmart.&nbsp;</p>', 15, 150, 'Sign up to receive the latest updates. Now till 31st Dec 2022, Get 10% off your first minimum purchase of $100 online! Subscribe to Newsletter to receive the discount code!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_media`
--
ALTER TABLE `blog_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancle_order`
--
ALTER TABLE `cancle_order`
  ADD PRIMARY KEY (`coid`),
  ADD UNIQUE KEY `orderid` (`orderid`,`order_cancle_reson`);

--
-- Indexes for table `cart_mapping`
--
ALTER TABLE `cart_mapping`
  ADD PRIMARY KEY (`cmid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dollarprice`
--
ALTER TABLE `dollarprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_category`
--
ALTER TABLE `gallery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_project`
--
ALTER TABLE `gallery_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hitpay_webhook`
--
ALTER TABLE `hitpay_webhook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `int_category`
--
ALTER TABLE `int_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `int_gallery`
--
ALTER TABLE `int_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lresource`
--
ALTER TABLE `lresource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maid`
--
ALTER TABLE `maid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_level`
--
ALTER TABLE `membership_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `omise_webhook`
--
ALTER TABLE `omise_webhook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`os_id`);

--
-- Indexes for table `order_status_message`
--
ALTER TABLE `order_status_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`pm_id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_history`
--
ALTER TABLE `point_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prodcut_rating`
--
ALTER TABLE `prodcut_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `product_category` (`product_category`),
  ADD KEY `feat_prod` (`feat_prod`),
  ADD KEY `best_selling` (`best_selling`);
ALTER TABLE `products` ADD FULLTEXT KEY `product_name` (`product_name`);

--
-- Indexes for table `product_media`
--
ALTER TABLE `product_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_notify`
--
ALTER TABLE `product_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_unit`
--
ALTER TABLE `product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point`
--
ALTER TABLE `reward_point`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_notification`
--
ALTER TABLE `sent_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order_address`
--
ALTER TABLE `user_order_address`
  ADD PRIMARY KEY (`uoaid`);

--
-- Indexes for table `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_media`
--
ALTER TABLE `blog_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancle_order`
--
ALTER TABLE `cancle_order`
  MODIFY `coid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_mapping`
--
ALTER TABLE `cart_mapping`
  MODIFY `cmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dollarprice`
--
ALTER TABLE `dollarprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_category`
--
ALTER TABLE `faq_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery_category`
--
ALTER TABLE `gallery_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_project`
--
ALTER TABLE `gallery_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hitpay_webhook`
--
ALTER TABLE `hitpay_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `int_category`
--
ALTER TABLE `int_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `int_gallery`
--
ALTER TABLE `int_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lresource`
--
ALTER TABLE `lresource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maid`
--
ALTER TABLE `maid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `membership_level`
--
ALTER TABLE `membership_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `omise_webhook`
--
ALTER TABLE `omise_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `os_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status_message`
--
ALTER TABLE `order_status_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `pm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_history`
--
ALTER TABLE `point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prodcut_rating`
--
ALTER TABLE `prodcut_rating`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_media`
--
ALTER TABLE `product_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_notify`
--
ALTER TABLE `product_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_unit`
--
ALTER TABLE `product_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_point`
--
ALTER TABLE `reward_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sent_notification`
--
ALTER TABLE `sent_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_order_address`
--
ALTER TABLE `user_order_address`
  MODIFY `uoaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
