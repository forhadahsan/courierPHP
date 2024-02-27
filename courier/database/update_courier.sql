-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 01:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(30) NOT NULL,
  `branch_code` varchar(50) NOT NULL,
  `street` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `country` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `street`, `city`, `state`, `zip_code`, `country`, `contact`, `date_created`) VALUES
(1, 'vzTL0PqMogyOWhF', 'House-17,Road-2, Avenue-B, Mirpur DOHS', 'Mirpur, Dhaka', 'Mirpur', '1001', 'Bangladesh', '01912 466 718', '2023-02-20 11:21:41'),
(3, 'KyIab3mYBgAX71t', 'House-39, Road-5, Sector-5, Uttara', 'Uttara, Dhaka', 'North Uttara', '6000', 'Bangladesh', '01890 702 212', '2023-02-20 16:45:05'),
(4, 'dIbUK5mEh96f0Zc', 'House-9,Road-2, Shamoli', 'Dhaka', 'Shamoli, Dhaka', '123456', 'Bangladesh', '01536 916 381', '2023-02-20 13:31:49'),
(5, '1WnzUxywC0MtPFE', '741/2 West Kazipara,Mirpur', 'Dhaka', 'Mirpur', '1216', 'Bangladesh', '01812517817', '2023-02-20 07:44:43'),
(6, 'hxes9XKiSjHOC6T', '61 Santinogor, Palton ', 'Dhaka', 'Palton', '1207', 'Bangladesh', '01400718252', '2023-02-21 05:40:18'),
(7, 'nHsc9iqS0eYI4UL', 'House-185,  Thana Road, Manikgonj Sadar', 'Manikgonj Sadar, Dhaka', 'Manikgonj Sadar', '1619', 'Bangladesh', '01980 292 461', '2023-02-22 07:49:02'),
(8, 'wTrH9ylC38E5hze', 'Hospital Road, House-814, Savar ', 'Savar, Dhaka', 'Savar', '4282', 'Bangladesh', '01361 62 68 61', '2023-02-22 07:54:53'),
(9, 'V7Uk8ifCzqEn2MN', 'Collage Road, Tongi', 'Tongi, Dhaka', 'Tongi', '1720', 'Bangladesh', '01812 147090', '2023-02-22 07:56:23'),
(10, 'Jo1Cm2SF084IwaA', '2nd floor, Royel Market , Joydavpur Road, Gazipur', 'Gazipur, Dhaka', 'Gazipur Sadar', '1451', 'Bangladesh', '01955771190', '2023-02-22 07:58:30'),
(11, 'y540sac3DLftkqP', 'Boro bazer mor, Solimuddin market , Tangail', 'Tangail, Dhaka', 'Tangail Sadar', '2541', 'Bangladesh', '01955 3912 33', '2023-02-22 08:00:34'),
(12, 'YmIsUOWVHTnG1de', 'New Market Mor, BRTA Dipo, Shop No-12,13,14,15, Chittogram', 'Chittgrom', 'New Market, Ctg', '5611', 'Bangladesh', '01555 77 44 12', '2023-02-22 08:02:47'),
(13, 'k14XqpSURBy2Twz', 'Thana Road ,Faridpur Sador', 'Faridpur, Dhaka ', 'Faridpur Sador', '1122', 'Bangladesh', '01999991101', '2023-03-09 11:30:26'),
(14, 'Nl3tvHDWj9kg2oO', 'Boro Bazer, Mukul Market, Gazipur', 'Gazipur, Dhaka', 'Gazipur', '1123', 'Bangladesh', '01912881191', '2023-03-09 11:31:40'),
(15, '6JiD8sCbGEzT7VR', 'Post Office mor, Gopalganj sador', 'Gopalganj, Dhaka', 'Gopalganj sador', '7782', 'Bangladesh', '01822654890', '2023-03-09 11:32:42'),
(16, 'ho6QJSOBaVI5dMf', 'Hospital Road, Jamalpur', 'Jamalpur, Dhaka', 'Jamalpur sador', '7201', 'Bangladesh', '0991', '2023-03-09 11:33:31'),
(17, 'P73EBWvUCesgTbq', 'Kishoreganj', 'Kishoreganj', 'Kishoreganj sador', '2468', 'Bangladesh', '01522432534', '2023-03-09 11:34:05'),
(18, 'liEUQ6PgZft9MVc', 'Madaripur, komla mor', 'Madaripur', 'Madaripur sador', '4252', 'Bangladesh', '0196642681', '2023-03-09 11:34:58'),
(19, 'iQaZoFYl4cXxAS8', 'Manikganj ', 'Manikganj', 'Manikganj sador', '5900', 'Bangladesh', '01733558831', '2023-03-09 11:35:26'),
(20, 'XMhnUq7oCV1Lvrx', 'Munshiganj ', 'Munshiganj', 'Munshiganj sador', '2342', 'Bangladesh', '0167789121', '2023-03-09 11:36:00'),
(21, 'KCM4j03tdDi2AbV', 'Mymensingh', 'Mymensingh', 'Mymensingh sador', '2094', 'Bangladesh', '01977252711', '2023-03-09 11:36:23'),
(22, 'OoZl4FpfK9UBIPN', 'Narayanganj', 'Narayanganj', 'Narayanganj', '2345', 'Bangladesh', '01523456789', '2023-03-09 11:36:51'),
(23, 'PEY2qtOronDl5jk', 'Narsingdi', 'Narsingdi', 'Narsingdi', '2345', 'Bangladesh', '01678987543', '2023-03-09 11:37:10'),
(24, 'VvBfs9OnZJcXrSm', 'Netrokona', 'Netrokona', 'Netrokona', '2345', 'Bangladesh', '0186543345', '2023-03-09 11:37:44'),
(25, 'YRhlGtJ0QvcVnTF', 'Rajbari', 'Rajbari', 'Rajbari', '6543', 'Bangladesh', '01996543213', '2023-03-09 11:38:11'),
(26, '1f086dJmMqEe5P9', 'Shariatpur', 'Shariatpur', 'Shariatpur', '4773', 'Bangladesh', '01823454532', '2023-03-09 11:38:34'),
(27, 'K3qowUagY1ENyvR', 'Sherpur', 'Sherpur', 'Sherpur', '4563', 'Bangladesh', '01976542224', '2023-03-09 11:39:07'),
(28, '1smroJjVhzD0USH', 'Tangail  ', 'Tangail  ', 'Tangail  ', '7654', 'Bangladesh', '01153423434', '2023-03-09 11:41:18'),
(29, '28I6YVqWQewfy4K', 'Bogra ', 'Bogra ', 'Bogra ', '123123', 'Bangladesh', '31231231234', '2023-03-09 11:41:38'),
(30, 'TiIs6bgqpBWNC2c', 'Joypurhat ', 'Joypurhat ', 'Joypurhat ', '342342', '', '09187543', '2023-03-09 11:44:05'),
(31, 'a9mTFtNeu6AOyVl', 'Naogaon  ', 'Naogaon  ', 'Naogaon  ', '5432', 'Bangladesh', '34354634211', '2023-03-09 11:44:30'),
(32, '9MJl3POsGwHox8p', 'Natore', 'Natore', 'Natore', '3552', 'Bangladesh', '0167234563', '2023-03-10 02:08:59'),
(33, 'sVUdl215X0hSboB', 'Nawabganj ', 'Nawabganj ', 'Nawabganj ', '2876', 'Bangladesh', '01955244145', '2023-03-10 02:09:40'),
(34, 'h8ZIxNLo51kDRm3', 'Pabna', 'Pabna', 'Pabna', '7720', 'Bangladesh', '01733516691', '2023-03-10 02:10:09'),
(35, 'aKDlGfTrJXWSRBV', 'Rajshahi ', 'Rajshahi', 'Rajshahi', '2281', 'Bangladesh', '01533779314', '2023-03-10 02:10:45'),
(36, 'vD7PIQdWq8RLrtX', 'Sirajgonj', 'Sirajgonj', 'Sirajgonj', '4287', 'Bangladesh', '01522663472', '2023-03-10 02:11:18'),
(37, 'NpHorj2dB54gDlf', 'Dinajpur', 'Dinajpur', 'Dinajpur', '2990', 'Bangladesh', '01955221572', '2023-03-10 02:11:40'),
(38, 'gilc1KEtqsCBW8o', 'Gaibandha', 'Gaibandha', 'Gaibandha', '1172', 'Bangladesh', '01933576180', '2023-03-10 02:12:38'),
(39, '5TSIbBaUH4yRuNt', 'Kurigram', 'Kurigram', 'Kurigram', '1274', 'Bangladesh', '01667326372', '2023-03-10 02:13:02'),
(40, '8E9yLKNdgptOwSC', 'Lalmonirhat  ', 'Lalmonirhat  ', 'Lalmonirhat  ', '6643', 'Bangladesh', '0189921902', '2023-03-10 02:13:25'),
(41, 't6EaWKbrix73okO', 'Nilphamari ', 'Nilphamari ', 'Nilphamari ', '2774', 'Bangladesh', '01588832922', '2023-03-10 02:13:42'),
(42, 'qzA1koIU6HZhfav', 'Panchagarh ', 'Panchagarh ', 'Panchagarh ', '4729', 'Bangladesh', '01788292732', '2023-03-10 02:14:26'),
(43, 'Ahfmo3rWzFMCdyU', 'Rangpur ', 'Rangpur ', 'Rangpur ', '1009', 'Bangladesh', '0189932732', '2023-03-10 02:14:47'),
(44, 'gZvSacD4FilEnd9', 'Thakurgaon', 'Thakurgaon', 'Thakurgaon', '3456', 'Bangladesh', '0157896543', '2023-03-10 02:15:10'),
(45, 'UbgcDZiCNkWhmYj', 'Barguna ', 'Barguna ', 'Barguna ', '1764', 'Bangladesh', '01612241578', '2023-03-10 02:15:32'),
(46, 'Y3NdBXQSJaf72vK', 'Barisal ', 'Barisal ', 'Barisal ', '9960', 'Bangladesh', '01621312321', '2023-03-10 02:15:50'),
(47, 'LmF8xg3oysZ70ES', 'Bhola ', 'Bhola ', 'Bhola ', '1255', 'Bangladesh', '0198763633', '2023-03-10 02:16:07'),
(48, '0av7VwsBpN9nOxL', 'Jhalokati', 'Jhalokati', 'Jhalokati', '1155', 'Bangladesh', '01872836278', '2023-03-10 02:16:25'),
(49, 'QLzB3vDIwHEej9N', 'Patuakhali ', 'Patuakhali ', 'Patuakhali ', '1266', 'Bangladesh', '01783293822', '2023-03-10 02:16:44'),
(50, 'ElsBKudhUq36AFm', 'Pirojpur ', 'Pirojpur ', 'Pirojpur ', '4733', 'Bangladesh', '01845645322', '2023-03-10 02:17:04'),
(51, 'Qtc4LkN7WUrIqvg', 'Bandarban', 'Bandarban', 'Bandarban', '3376', 'Bangladesh', '9099', '2023-03-10 02:17:21'),
(52, 'E193qick8rBhCHj', 'Mirpur , Kustia ', 'Khustia', 'Mirpur', '3300', 'Bangladesh', '01928937278', '2023-05-04 08:49:49'),
(53, 'PJy1i3FtWZAsHhX', 'Chuadanga Sador', 'Chuadanga', 'Sador', '1216', 'Bangladesh', '019000000000', '2023-05-04 09:16:14'),
(54, 'lcGhsCmjS19fW5k', 'Wub Branch', 'Dhaka', 'Uttra', '567', 'Bangladesh', '01729689705', '2023-09-08 10:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(22) NOT NULL,
  `massage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `phoneNumber`, `massage`) VALUES
(1, 'Forhad', 'mdforhadahsan1999@gmail.com', '01912466718', 'Call Or Mail  Contact Me plz '),
(8, 'Arafat', 'aub.forhad99@gmail.com', '01718293750', 'Urgent'),
(9, '', '', '', ''),
(10, 'AZiz', 'azmaiens@gmail.com', '01912465555', 'Call Me'),
(11, '', '', '', ''),
(12, 'Forhad Ahsan', 'nub.forhad99@gmail.com', '01912466718', 'Hi'),
(13, '', '', '', ''),
(14, '', '', '', ''),
(15, 'Harun or Rashid', 'harun23@gmail.com', '01757571773', 'hellow');

-- --------------------------------------------------------

--
-- Table structure for table `parcels`
--

CREATE TABLE `parcels` (
  `id` int(30) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `sender_name` text NOT NULL,
  `sender_address` text NOT NULL,
  `sender_contact` text NOT NULL,
  `recipient_name` text NOT NULL,
  `recipient_address` text NOT NULL,
  `recipient_contact` text NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = Deliver, 2=Pickup',
  `from_branch_id` varchar(30) NOT NULL,
  `to_branch_id` varchar(30) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `width` varchar(100) NOT NULL,
  `length` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcels`
--

INSERT INTO `parcels` (`id`, `reference_number`, `sender_name`, `sender_address`, `sender_contact`, `recipient_name`, `recipient_address`, `recipient_contact`, `type`, `from_branch_id`, `to_branch_id`, `weight`, `height`, `width`, `length`, `price`, `status`, `date_created`) VALUES
(1, '201406231415', 'Kobir', 'Mirpur 10', '01917 517 917', 'Moinul', 'Feni sadar', '01857 813 251', 1, '1', '0', '30kg', '12in', '12in', '15in', 2500, 7, '2023-02-23 16:15:46'),
(2, '117967400213', 'Rokon', 'Jhenaidah', '01771 516 381', 'Sobuj', 'Gazipur ', '0194572 75641', 2, '1', '3', '3kg', '12in', '12in', '15in', 2500, 1, '2023-02-22 16:46:03'),
(3, '983186540795', 'Dalim', 'Chuadanga', '01661 980 529', 'Faisal', 'Mirpur 1', '01911 596 989', 2, '1', '3', '3Kg', '10in', '<br /><b>Notice</b>:  A non well formed numeric value encountered in <b>C:xampphtdocsHaruncourier-ad', '10in', 1500, 2, '2023-02-22 16:46:03'),
(4, '514912669061', 'Rushi', 'Barisal', '01822819211', 'Robi', 'khulna', '01929292992', 2, '4', '1', '3kg', '12in', '12in', '15in', 1900, 0, '2020-11-27 13:52:14'),
(5, '897856905844', 'Claire Blake', 'Sample', '+123456', 'John Smith', 'Sample Address', '+12345', 2, '4', '1', '30kg', '10in', '10in', '10in', 1450, 0, '2020-11-27 13:52:14'),
(6, '505604168988', 'sample3', 'Sample', '1222121', 'Sample', 'Sample', '121213312', 1, '1', '', '23kg', '12in', '12in', '15in', 2500, 1, '2020-11-27 14:06:42'),
(7, '674888096554', 'Forhad', 'Mirpur', '01912466718', 'Aziz', 'Mazdi Noiakhali', '01817 517 817', 2, '5', '1', '1', '1', '1', '1', 2560, 2, '2023-02-22 08:06:01'),
(8, '272900084413', 'Forhad', 'Kobikhali', '01912466718', 'Adib', 'Dhaka', '01917 517 817', 2, '5', '12', '1', '1', '1', '1', 1200, 1, '2023-02-22 08:10:41'),
(9, '386777333228', 'Forhad', 'Kobikhali', '01912466718', 'Rayhan', 'Tangail', '01517 517 817', 2, '5', '11', '1', '1', '1', '1', 900, 1, '2023-02-22 08:12:15'),
(10, '704265159735', 'KAmal', 'Old Dhaka', '1222121', 'Jamal', 'Mohakhali', '01817 517 817', 2, '3', '6', '1', '130', '', '0', 2500, 7, '2023-03-06 13:11:40'),
(11, '378789606961', 'Forhad', 'Kobikhali', '01912466718', 'Aziz', 'Dhaka', '01817 517 817', 2, '3', '4', '1', '0', '1400', '100', 1300, 1, '2023-03-09 11:19:10'),
(12, '741352749159', 'Kamrul Islam', 'Mirpur', '01912466718', 'Tonnmoy Shah', 'Bagerhat', '01917 517019', 2, '1', '49', '1', '1', '900', '100', 1000, 9, '2023-03-27 10:20:14'),
(13, '630841707239', 'Shaporan', 'pabna', '01927283781', 'Humaiyan', 'Mazdi Noiakhali', '01889321783', 2, '12', '34', '1', '1', '1400', '150', 1550, 9, '2023-03-27 10:24:10'),
(14, '002240457800', 'topu', 'dhaka', '01312689705', 'harun', 'pangsha', '01757571773', 2, '3', '3', '45', '23', '300', '300', 100, 5, '2023-08-04 11:20:05'),
(15, '767506778960', 'Rakib', 'Pangsha', '01312689705', 'Nobab', 'Dhaka', '01757571773', 1, '4', '', '50', '30', '400', '400', 100, 0, '2023-09-18 16:02:41'),
(16, '489595566253', 'Rakib', 'Pangsha', '01312689705', 'Nobab', 'Dhaka', '01757571773', 1, '4', '', '20', '10', '200', '200', 50, 0, '2023-09-18 16:02:41'),
(17, '069795710922', 'topu', 'dhaka', '01312689705', 'Rakib', 'pangsha', '01757571773', 1, '1', '', '55', '20', '300', '300', 100, 3, '2023-09-18 16:05:16'),
(18, '064701685256', 'Imran', 'kulna', '01312679460', 'Nasir', 'Dhaka', '01721644570', 2, '53', '36', '45', '23', '400', '400', 300, 0, '2023-09-18 16:28:15'),
(19, '716381341913', 'Rakib', 'Pangsha', '01312679460', 'harun', 'Dhaka', '01757571773', 2, '3', '', '50', '30', '300', '400', 100, 0, '2023-09-18 16:28:56'),
(20, '021986136817', 'Imran', 'Jhenaidha', '01513678904', 'Jasim', 'mirpur', '01713575773', 2, '3', '4', '40', '20', '500', '500', 300, 0, '2023-09-18 16:30:45'),
(21, '086417584735', 'Imran', 'Pangsha', '01312689705', 'Nahar', 'Kulna', '01721644570', 2, '3', '3', '45', '30', '400', '400', 100, 1, '2023-09-18 16:32:36'),
(22, '131283293157', 'Tabasum', 'Rajbari', '01312571773', 'Ruku', 'Dhaka', '01713575773', 2, '3', '3', '55', '30', '700', '700', 500, 0, '2023-09-18 16:34:08'),
(23, '267015742516', 'Rakib', 'kulna', '01312679460', 'Nasir', 'mirpur', '01721644570', 2, '3', '4', '50kg', '20in', '300', '300', 100, 0, '2023-09-18 16:40:19'),
(24, '888342394410', 'Tabasum', 'Jhenaidha', '01312679460', 'Jasim', 'pangsha', '01721644570', 2, '3', '4', '55', '20', '500', '500', 300, 0, '2023-09-18 16:41:02'),
(25, '042500156252', 'Imran', 'Rajbari', '01312679460', 'Nobab', 'mirpur', '01721644570', 2, '4', '4', '40', '23', '400', '400', 100, 1, '2023-09-18 16:41:49'),
(26, '810817116596', 'Harun', 'Jhenaidha', '01312689705', 'Nasir', 'mirpur', '01713575773', 2, '52', '4', '50', '30', '300', '300', 200, 0, '2023-09-18 16:42:37'),
(27, '477030291822', 'Tabasum', 'kulna', '01513678904', 'Rakib', 'Dhaka', '01721644570', 2, '3', '53', '50', '23', '400', '400', 300, 1, '2023-09-18 16:43:15'),
(28, '794233902650', 'topu', 'Pangsha', '01312689705', 'Jasim', 'Kulna', '01757571773', 2, '3', '4', '50', '23', '300', '300', 200, 0, '2023-09-18 16:44:02'),
(29, '137122558871', 'akhi', 'Pangsha', '01312679460', 'shafia', 'mirpur', '01721644570', 2, '3', '3', '45', '20', '300', '300', 100, 1, '2023-09-18 16:45:45'),
(30, '844206214534', 'Kamal', 'kulna', '01312689705', 'sakib', 'mirpur', '01757571773', 2, '4', '', '10', '5', '100', '100', 25, 3, '2023-09-18 16:49:12'),
(31, '375990134715', 'Tabasum', 'dhaka', '01312679460', 'Nasir', 'mirpur', '01721644570', 2, '4', '', '45', '23', '300', '300', 100, 3, '2023-09-18 16:49:48'),
(32, '401709445921', 'Harun', 'Pangsha', '01312689705', 'Jasim', 'pangsha', '01757571773', 2, '3', '1', '50', '23', '100', '100', 25, 3, '2023-09-18 16:50:27'),
(33, '163653759948', 'topu', 'dhaka', '01312679460', 'Nobab', 'Kulna', '01721644570', 2, '3', '3', '55', '20', '100', '100', 25, 3, '2023-09-18 16:51:09'),
(34, '187854743048', 'akhi', 'Rajbari', '01513678904', 'Nahar', 'Dhaka', '01713575773', 2, '1', '4', '55', '30', '500', '500', 300, 3, '2023-09-18 16:51:51'),
(35, '521050541091', 'Tabasum', 'dhaka', '01312679460', 'Nobab', 'mirpur', '01757571773', 2, '4', '3', '50kg', '30', '400', '400', 300, 2, '2023-09-18 16:55:47'),
(36, '885933183996', 'Rakib', 'dhaka', '01312679460', 'harun', 'Kulna', '01713575773', 2, '3', '3', '55', '23', '300', '300', 100, 4, '2023-09-18 16:56:21'),
(37, '042529600963', 'akhi', 'Pangsha', '01312689705', 'Nahar', 'Dhaka', '01721644570', 2, '3', '4', '50', '30', '400', '400', 25, 2, '2023-09-18 16:57:03'),
(38, '569249937594', 'akhi', 'dhaka', '01312679460', 'Nasir', 'pangsha', '01757571773', 2, '4', '4', '55', '20in', '300', '300', 100, 7, '2023-09-18 16:58:34'),
(39, '331626551425', 'topu', 'Rajbari', '01513678904', 'Jasim', 'mirpur', '01721644570', 2, '3', '4', '45', '20', '400', '400', 300, 4, '2023-09-18 16:59:31'),
(40, '342215266499', 'Imran', 'Rajbari', '01312679460', 'Nobab', 'pangsha', '01757571773', 2, '3', '4', '50kg', '30', '500', '500', 300, 2, '2023-09-18 17:00:31'),
(41, '596610473807', 'Tabasum', 'dhaka', '01513678904', 'Nasir', 'pangsha', '01757571773', 2, '3', '3', '40', '20in', '300', '300', 200, 2, '2023-09-18 17:24:25'),
(42, '600368477631', 'Harun', 'Rajbari', '01513678904', 'Nahar', 'pangsha', '01721644570', 2, '4', '3', '50', '23', '400', '400', 25, 4, '2023-09-18 17:24:56'),
(43, '794709608887', 'Imran', 'Rajbari', '01312689705', 'Nahar', 'pangsha', '01757571773', 2, '4', '3', '40', '23', '300', '300', 200, 5, '2023-09-18 17:25:40'),
(44, '131001171741', 'Rakib', 'Jhenaidha', '01513678904', 'Jasim', 'mirpur', '01713575773', 2, '4', '3', '45', '23', '400', '400', 200, 4, '2023-09-18 17:26:26'),
(45, '604294542828', 'Rakib', 'dhaka', '01312571773', 'Nobab', 'pangsha', '01757571773', 2, '4', '4', '10', '5', '100', '100', 25, 2, '2023-09-18 17:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_tracks`
--

CREATE TABLE `parcel_tracks` (
  `id` int(30) NOT NULL,
  `parcel_id` int(30) NOT NULL,
  `persel_name` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parcel_tracks`
--

INSERT INTO `parcel_tracks` (`id`, `parcel_id`, `persel_name`, `status`, `date_created`) VALUES
(1, 2, 'Joni', 1, '2023-02-16 09:53:27'),
(2, 3, '', 1, '2020-11-27 09:55:17'),
(3, 1, '', 1, '2020-11-27 10:28:01'),
(4, 1, '', 2, '2020-11-27 10:28:10'),
(5, 1, '', 3, '2020-11-27 10:28:16'),
(6, 1, '', 4, '2020-11-27 11:05:03'),
(7, 1, '', 5, '2020-11-27 11:05:17'),
(8, 1, '', 7, '2020-11-27 11:05:26'),
(9, 3, '', 2, '2020-11-27 11:05:41'),
(10, 6, '', 1, '2020-11-27 14:06:57'),
(11, 7, '', 1, '2023-02-22 08:08:34'),
(12, 7, '', 2, '2023-02-22 08:08:45'),
(13, 7, '', 3, '2023-02-22 08:09:00'),
(14, 8, '', 1, '2023-02-22 08:10:59'),
(15, 9, '', 1, '2023-02-22 08:12:24'),
(16, 7, '', 2, '2023-02-26 08:51:08'),
(17, 13, '', 1, '2023-03-27 10:34:19'),
(18, 13, '', 3, '2023-03-27 10:34:34'),
(19, 13, '', 2, '2023-03-27 10:34:59'),
(20, 13, '', 7, '2023-03-27 10:36:05'),
(21, 12, '', 8, '2023-03-27 10:36:15'),
(22, 12, '', 1, '2023-03-27 10:36:36'),
(23, 12, '', 3, '2023-03-27 10:36:50'),
(24, 12, '', 2, '2023-03-27 10:36:58'),
(25, 12, '', 7, '2023-03-27 10:38:51'),
(26, 12, '', 9, '2023-03-27 10:39:11'),
(27, 11, '', 6, '2023-03-27 10:41:01'),
(28, 11, '', 3, '2023-03-27 10:46:28'),
(29, 11, '', 1, '2023-03-27 10:46:37'),
(30, 13, '', 9, '2023-05-04 09:07:51'),
(31, 14, '', 1, '2023-08-04 11:21:47'),
(32, 14, '', 7, '2023-08-04 11:22:40'),
(33, 14, '', 5, '2023-09-04 11:08:21'),
(34, 10, '', 7, '2023-09-08 10:07:45'),
(35, 15, '', 2, '2023-09-18 16:03:03'),
(36, 17, '', 2, '2023-09-18 16:06:01'),
(37, 17, '', 3, '2023-09-18 16:07:02'),
(38, 15, '', 0, '2023-09-18 16:36:02'),
(39, 29, '', 1, '2023-09-18 16:46:02'),
(40, 27, '', 1, '2023-09-18 16:46:17'),
(41, 21, '', 1, '2023-09-18 16:46:45'),
(42, 25, '', 1, '2023-09-18 16:47:21'),
(43, 34, '', 3, '2023-09-18 16:52:17'),
(44, 33, '', 3, '2023-09-18 16:52:27'),
(45, 32, '', 3, '2023-09-18 16:52:38'),
(46, 31, '', 3, '2023-09-18 16:52:50'),
(47, 30, '', 3, '2023-09-18 16:53:02'),
(48, 40, '', 2, '2023-09-18 17:01:04'),
(49, 39, '', 4, '2023-09-18 17:01:30'),
(50, 38, '', 5, '2023-09-18 17:02:10'),
(51, 37, '', 2, '2023-09-18 17:02:28'),
(52, 36, '', 4, '2023-09-18 17:02:50'),
(53, 35, '', 2, '2023-09-18 17:03:10'),
(54, 45, '', 2, '2023-09-18 17:27:56'),
(55, 41, '', 2, '2023-09-18 17:28:06'),
(56, 44, '', 4, '2023-09-18 17:29:03'),
(57, 43, '', 5, '2023-09-18 17:29:21'),
(58, 42, '', 4, '2023-09-18 17:29:48'),
(59, 38, '', 7, '2023-10-19 07:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `pick_request`
--

CREATE TABLE `pick_request` (
  `id` int(6) NOT NULL,
  `pickaddress` varchar(150) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `pickUpTime` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pick_request`
--

INSERT INTO `pick_request` (`id`, `pickaddress`, `phone`, `pickUpTime`, `status`) VALUES
(1, '741/2 West Kazipara, Mirpur', '01912466718', '7 PM to 8 PM', 1),
(2, '80 Green Road, Panthpath', '01992716721', '7 PM to 8 PM', 1),
(4, 'Biswas Bilders , 4th floor, New market', '01912466700', '7 PM to 8 PM', 1),
(5, 'Taltola, 620/2', '01712466111', '7 PM to 8 PM', 1),
(6, 'sec-10, road-10, house-2, uttara', '01912466700', '2 PM to 5 PM', 1),
(8, 'Us software, Panthpath', '01992711111', ' 2 PM to 5 PM', 1),
(9, 'Farmgate', '01912466000', '7 PM to 8 PM', 1),
(10, 'mirpur 12', '01912466000', '6 PM to 9 PM', 1),
(11, 'Mirpur ', '01912466000', '6 PM to 9 PM', 1),
(12, 'mirpur12', '01312689705', '6pm 9pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registion`
--

CREATE TABLE `registion` (
  `id` int(6) NOT NULL,
  `name` varchar(22) NOT NULL,
  `Business_Name` varchar(22) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_Number` varchar(22) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Message` varchar(150) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registion`
--

INSERT INTO `registion` (`id`, `name`, `Business_Name`, `Email`, `Password`, `Phone_Number`, `Address`, `Message`, `status`) VALUES
(1, 'Forhad', 'Ma traders', 'matraders577@gmail.com', '123456', '01912466718', '741/2 west Kazipara, Mirpur', 'Pick Up time 5pm to 7 pm', 1),
(2, 'Ummah Habiba', 'Azmaiens Life Style', 'azmaiens@gmail.com', '123456', '01817517817', '261 East Kazipara, Mirpur', 'PickUp Time- 6pm to 8 pm', 1),
(3, 'Azmaiens', 'Cloth', 'azmaiens@gmail.com', '123456', '01912466221', 'Mirpur', 'No Problem', 1),
(4, 'Forhad ahsan', 'Ruposhi Fashion', 'nub.forhad@gmail.com', '123456', '01772466718', 'Panthpath', 'Pick up time 1 hour ago call me', 1),
(5, 'Harun or Rashid', 'Ismail telecom', 'harun23@gmail.com', 'harun1234', '01312689705', 'DA1207', 'hellow', 1),
(6, 'Harun or Rashid', 'Ismail telecom', 'harun23@gmail.com', 'harun1234', '01312689705', 'DA1207', 'hellow', 1),
(7, 'Harun or Rashid', 'Ismail telecom', 'harun23@gmail.com', 'harun1234', '01312689705', 'DA1207', 'jtuij', 0),
(8, 'Rakib', 'Rakib telecom', 'rakib@gmail.com', 'rakib345', '01757571773', 'DA1205', 'hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Courier Management System', 'info@sample.comm', '019 12 466 718', '741/2 West Kazipara, Mirpur', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = admin, 2 = staff',
  `branch_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `type`, `branch_id`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, 0, '2023-02-19 10:57:04'),
(4, 'forhad', 'ss', 'mdforhadahsan1999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 5, '2023-02-21 05:28:05'),
(5, 'Aziz', 'Ali', 'nub.forhad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 13, '2023-03-16 13:19:29'),
(6, 'Forhad ', 'Ahsan', 'forhad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 49, '2023-03-29 11:07:44'),
(7, 'Sujon ', 'Reza', 'sujon@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 53, '2023-05-04 09:22:25'),
(8, 'Harun or', 'RASHID', 'harun23@gmail.com', '6b2a3a22d5a2f03825fbbfbf7c9c114b', 2, 3, '2023-08-03 16:57:19'),
(9, 'Salam', 'Islam', 'salam@gmail.com', '2c4552a13ada8efad38feacff323d41f', 2, 54, '2023-09-08 10:53:27'),
(10, 'Rakib', 'Hossain', 'rakib@gmail.com', 'c6a12dd17a3aa185b3d23b77b36e8a80', 2, 1, '2023-09-18 17:31:24'),
(11, 'Imdadul', 'haque', 'imdadul@gmail.com', '1304ec5b411778d216189dc778b4cff9', 2, 52, '2023-09-18 17:33:40'),
(12, 'Tabasum', 'Khatun', 'tabasum@gmail.com', '7e73500002cae51f831369a079c8129c', 2, 54, '2023-09-18 17:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcels`
--
ALTER TABLE `parcels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pick_request`
--
ALTER TABLE `pick_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registion`
--
ALTER TABLE `registion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `parcels`
--
ALTER TABLE `parcels`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `parcel_tracks`
--
ALTER TABLE `parcel_tracks`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pick_request`
--
ALTER TABLE `pick_request`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registion`
--
ALTER TABLE `registion`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
