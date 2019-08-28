-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 01:21 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `ques` varchar(500) NOT NULL,
  `ans1` varchar(50) NOT NULL,
  `ans2` varchar(50) NOT NULL,
  `ans3` varchar(50) NOT NULL,
  `correct_ans` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `ques`, `ans1`, `ans2`, `ans3`, `correct_ans`) VALUES
(1, 'When writing a prescription,which abbreviation stands for once every day?', 'Bid', 'Qid', 'Tid', 'Qd'),
(2, 'What is the onset for the medication Opthetic using 0.5% solution?', '15-60 minutes', '45-120 minutes', '30-60 minutes', '10--30 minutes'),
(3, 'Which instrument provides laser-based,non-contact,non-invasive imaging of the retina?', 'Fundus Photography', 'Pachymetry', 'Automated Keratometers', 'Optical Coherance Tomography Scanner'),
(4, 'Headaches or pain around the eye may be caused by poor drainage or infection of the ...............?', 'Posterior chamber', 'Nasolacrimal duct', 'Aqueous humor', 'Sinuses'),
(5, 'What does the root word phot mean?', 'Color', 'Disease', 'Image', 'Light');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `last_login`, `is_deleted`) VALUES
(1, 'Isuru B.', 'Ranapana', 'isuru', '827ccb0eea8a706c4c34a16891f84e7b', '0000-00-00 00:00:00', 0),
(2, 'Charuni', 'Ranapana', 'charuni', '5368654ad61e6d209d6fb7d2ff2b12e9', '0000-00-00 00:00:00', 0),
(3, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 0),
(4, 'ads', 'ads', 'ads', '2deb000b57bfac9d72c14d4ed967b572', '0000-00-00 00:00:00', 0),
(5, 'Charuni', 'Rathnayake', 'charunirathnayake1995@gmail.com', 'b2a0072e0cc3b2db0ffd3a5f1a3577a0', '0000-00-00 00:00:00', 0),
(6, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
