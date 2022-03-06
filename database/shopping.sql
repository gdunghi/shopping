-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 06:01 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_qty` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `p_id`, `d_qty`, `d_subtotal`) VALUES
(1, 1, 2, 1, 1500),
(2, 2, 1, 1, 1500),
(3, 3, 1, 1, 1500),
(4, 4, 3, 1, 1500),
(5, 4, 1, 1, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_addr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `o_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `o_qty` int(11) NOT NULL,
  `o_total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `o_dttm`, `o_name`, `o_addr`, `o_email`, `o_phone`, `o_qty`, `o_total`) VALUES
(1, '2022-03-05 10:46:07', 'วิภาดา แต้มงาม', '140 muang', 'syu@gmail.com', '0953280258', 0, 0),
(2, '2022-03-05 10:47:14', 'false', '140 muang', 'syu@gmail.com', '0953280258', 0, 0),
(3, '2022-03-05 10:56:17', 'r2t4y', '140 muang', 'syu@gmail.com', '0953280258', 0, 0),
(4, '2022-03-05 11:33:16', 'ะนเย', '140 muang', 'syu@gmail.com', '0953280258', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_price` float DEFAULT NULL,
  `p_pic` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_detail`, `p_price`, `p_pic`, `c_id`) VALUES
(1, 'book1', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 349, 'book.jpg', '1'),
(2, 'book2', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 349, 'book.jpg', '1'),
(3, 'book3', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 195, 'book.jpg', '1'),
(4, 'book4', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 149, 'book.jpg', '1'),
(5, 'book5', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 249, 'book.jpg', '1'),
(6, 'book6', 'workshop นี้ได้แนะนำวิธีการสร้างเว็บไซต์จาก devbanban.com ', 289, 'book.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_type` varchar(100) NOT NULL,
  `b_number` varchar(20) NOT NULL,
  `b_owner` varchar(100) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `b_logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`b_id`, `b_name`, `b_type`, `b_number`, `b_owner`, `bn_name`, `b_logo`) VALUES
(2, 'กสิกรไทย', 'ออมทรัพย์', '03987157051', 'นางสาววิภาดา แต้มงาม', 'แหลมทอง ระยอง', '141354943220220304_173916.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_level` varchar(50) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `m_img` varchar(250) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `m_user`, `m_pass`, `m_level`, `m_name`, `m_email`, `m_tel`, `m_address`, `m_img`, `date_save`) VALUES
(1, 'admin', 'admin', 'admin', 'วิภาดา แต้มงาม', 'mook.m.moo22@gmail.com', '0619705335', 'ศรีสะเกษ', '101478003020220304_174523.png', '2021-06-01 19:04:28'),
(2, 'member', '55', 'member', 'member', 'waiyawoot@gmail.com', '0931294710', 'กรุงเทพมหานคร', '145010926420210602_090554.png', '2021-06-01 19:05:54'),
(3, 'member41', '11', 'member', 'wootsaro', 'devtai2@gmail.com', '0852134657', 'กรุงเทพมหานคร', '99698979420210626_224421.png', '2021-06-01 19:06:39'),
(4, 'admino', '15634568456', 'admin', 'admin somi', 'devtai410@gmail.com', '0897444124', 'กรุงเทพมหานคร', '171855469020210602_090904.png', '2021-06-01 19:09:04'),
(5, 'member', '7671', 'member', 'ปิ่นแก้ว เลขสุข', 'ff@hotmail.com', '1234566', '345', '2952550020220304_190439.png', '2022-03-04 12:04:39'),
(6, 'member', '7671', 'member', 'ปิ่นแก้ว เลขสุข', 'ff@hotmail.com', '1234566', '345', '124502418020220304_190615.png', '2022-03-04 12:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_qty` varchar(11) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_view` int(10) NOT NULL DEFAULT 0,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `type_id`, `p_detail`, `p_img`, `p_price`, `p_qty`, `p_unit`, `p_view`, `datesave`) VALUES
(1, 'ผ้าไหม1', 2, ' เป็นผ้าไหมที่ทอลายขัดโดยใช้เส้นยืน และเส้นพุ่มธรรมดาตลอดกันทั้งผืน ผ้าที่ออกมาจะเป็นผ้าสีพื้นเรียบไม่มีลายโดยใช้เส้นยืนและเส้นพุ่งเป็นสีเดียวกันหรือใช้สีต่างกันก็ได้ เป็นผ้าที่นิยมใช้กันทั่วไป ซึ่งผ้าไหมไทยที่ส่งออกต่างประเทศ', '35276635420220304_115911.jpg', 1500, '20', 'ผืน', 2, '2021-06-26 16:38:28'),
(2, 'ผ้าไหมมาใหม่1', 1, 'ผ้าไหมไทย เป็นผ้าไหมซึ่งมีเอกลักษณ์เฉพาะตัวแตกต่างจากผ้าไหมทั่วไป กล่าวคือ มีแสงแวววาวเป็นมันเลื่อม เนื้อผ้าฟูไม่เรียบ อ่อนนุ่ม มีน้ำหนัก บางชนิดเป็นปุ่มปมอันเนื่องมาจากระดับคุณภาพซึ่งเกิดในกระบวนการผลิตแต่ก็ทำให้ได้รับความนิยมของคนบางกลุ่มเพราะดูแล้วมีความแปลกตา', '115703480520220304_115317.jpg', 1500, '10', 'ผืน', 1, '2021-06-26 16:46:13'),
(3, 'ผ้าไหมตัวอย่าง', 3, 'การทอผ้าจะมีลักษณะพิเศษเป็นของตนเอง โดยเฉพาะผ้าไหมเป็นผ้าพื้นเมืองประเภทหนึ่งที่นิยมกันมาก เนื่องจากเป็นผ้าที่มีความคงทนอายุการใช้งานนาน รวมทั้งมีความสวยงาม ความแวววาวของเนื้อผ้าไหม ผ้าไหมนอกจากจะเป็นสินค้าสำคัญแล้ว ยังมีบทบาททางสังคมทางสังคมอีกด้วย', '66097444620220304_115548.jpg', 1500, '5', 'ผืน', 1, '2021-06-26 16:46:35'),
(5, 'ผ้าไหม2', 2, ' เนื้อผ้าเป็นมันวาว สวยงามมาก แต่ดูแลรักษายาก ผ้าทิ้งตัวดี ดูดซับความชื้นได้ดี น้ำหนักเบา ยืดหยุ่นได้ดี ระบายเหงื่อได้ดี', '185792879220220304_115848.jpg', 1500, '3', 'ผืน', 1, '2022-03-04 04:58:48'),
(6, 'ผ้าไหม3', 2, ' เนื้อผ้าเป็นมันวาว สวยงามมาก แต่ดูแลรักษายาก ผ้าทิ้งตัวดี ดูดซับความชื้นได้ดี น้ำหนักเบา ยืดหยุ่นได้ดี ระบายเหงื่อได้ดี', '174140118820220304_115956.jpg', 2000, '3', 'ผืน', 9, '2022-03-04 04:59:56'),
(7, 'ผ้าไหมมาใหม่2', 1, 'เนื้อผ้ามีหลายชนิด ทั้งหนา บาง นุ่ม หยาบ แล้วแต่ส่วนผสม\r\nของเส้นใยที่นำมาทอรวมกัน ส่วนมากมีผิวออกมันวาว\r\nใช้ทำม่านสวยดี แต่ถ้าโดนแดดจัดๆ สีจะซีดจาง\r\nเย็บเป็นม่านจีบ จีบสวยคงทน', '19682102920220304_120200.jpg', 2000, '1', 'ผืน', 13, '2022-03-04 05:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'ผ้าไหมมาใหม่'),
(2, 'ผ้าไหมทางร้าน'),
(3, 'ตัวอย่างสินค้า');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
