-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 فبراير 2020 الساعة 01:57
-- إصدار الخادم: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mufix`
--

-- --------------------------------------------------------

--
-- بنية الجدول `att_absense`
--

CREATE TABLE `att_absense` (
  `absense_id` int(11) NOT NULL,
  `absense_session_id` int(11) NOT NULL,
  `absense_student_id` int(11) NOT NULL,
  `absense_date` date NOT NULL,
  `absense_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `att_instructors`
--

CREATE TABLE `att_instructors` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(50) NOT NULL,
  `instructor_email` varchar(50) NOT NULL,
  `instructor_phone` varchar(14) NOT NULL,
  `instructor_avatar` varchar(255) DEFAULT NULL,
  `instructor_password` varchar(50) NOT NULL,
  `instructor_role` varchar(10) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `att_instructors`
--

INSERT INTO `att_instructors` (`instructor_id`, `instructor_name`, `instructor_email`, `instructor_phone`, `instructor_avatar`, `instructor_password`, `instructor_role`) VALUES
(18, 'admin', 'admin@admin.com', '01090703457', 'UPLOADED/Instructors/mufix_instructor__5e3d8fe82157a158109284083.png', '123', 'general'),
(40, 'ahmed', 'ahmed@mufix.com', '1233321', 'UPLOADED/Instructors/mufix_instructor__5e3d9cb820681158109612016.jpg', '123', 'general'),
(41, 'xyz', 'xyz@xyz.com', '69857', 'images/default_user.png', '123', 'general');

-- --------------------------------------------------------

--
-- بنية الجدول `att_places`
--

CREATE TABLE `att_places` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `att_places`
--

INSERT INTO `att_places` (`place_id`, `place_name`) VALUES
(1, 'Hall 1'),
(2, 'Hall 2'),
(3, 'Hall 3'),
(4, 'Hall 4'),
(5, 'Hall 5'),
(7, 'Lab 305');

-- --------------------------------------------------------

--
-- بنية الجدول `att_session`
--

CREATE TABLE `att_session` (
  `session_id` int(11) NOT NULL,
  `session_name` varchar(50) NOT NULL,
  `session_track_id` int(11) NOT NULL,
  `session_date` date NOT NULL,
  `session_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `att_students`
--

CREATE TABLE `att_students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_phone` varchar(14) NOT NULL,
  `student_lavel` int(11) NOT NULL,
  `student_register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `student_qr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `att_student_paids`
--

CREATE TABLE `att_student_paids` (
  `paid_id` int(11) NOT NULL,
  `paid_student_id` int(11) NOT NULL,
  `paid_track_id` int(11) NOT NULL,
  `paid_date` date NOT NULL,
  `paid_money` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `att_student_tracks`
--

CREATE TABLE `att_student_tracks` (
  `std_track_id` int(11) NOT NULL,
  `std_track_student_id` int(11) NOT NULL,
  `std_track_track_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `att_tracks`
--

CREATE TABLE `att_tracks` (
  `track_id` int(11) NOT NULL,
  `track_name` varchar(25) NOT NULL,
  `track_instructor_id` int(50) NOT NULL,
  `track_cost` decimal(5,2) NOT NULL,
  `track_place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `att_tracks`
--

INSERT INTO `att_tracks` (`track_id`, `track_name`, `track_instructor_id`, `track_cost`, `track_place_id`) VALUES
(35, 'FrontEnd', 18, '120.00', 2),
(36, 'fronyend', 18, '32.00', 2),
(37, 'backend', 18, '120.00', 4),
(38, 'c++', 40, '50.00', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `att_track_days`
--

CREATE TABLE `att_track_days` (
  `id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `att_track_days`
--

INSERT INTO `att_track_days` (`id`, `track_id`, `day_id`) VALUES
(33, 37, 1),
(34, 37, 4),
(35, 38, 1),
(36, 38, 4),
(37, 38, 7);

-- --------------------------------------------------------

--
-- بنية الجدول `att_week_days`
--

CREATE TABLE `att_week_days` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `att_week_days`
--

INSERT INTO `att_week_days` (`day_id`, `day_name`) VALUES
(1, 'Saterday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `att_absense`
--
ALTER TABLE `att_absense`
  ADD PRIMARY KEY (`absense_id`);

--
-- Indexes for table `att_instructors`
--
ALTER TABLE `att_instructors`
  ADD PRIMARY KEY (`instructor_id`),
  ADD UNIQUE KEY `instructor_phone` (`instructor_phone`),
  ADD UNIQUE KEY `instructor_email` (`instructor_email`);

--
-- Indexes for table `att_places`
--
ALTER TABLE `att_places`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`),
  ADD UNIQUE KEY `place_name_2` (`place_name`);

--
-- Indexes for table `att_session`
--
ALTER TABLE `att_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `att_students`
--
ALTER TABLE `att_students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_email` (`student_email`),
  ADD UNIQUE KEY `student_phone` (`student_phone`),
  ADD UNIQUE KEY `student_qr` (`student_qr`);

--
-- Indexes for table `att_student_paids`
--
ALTER TABLE `att_student_paids`
  ADD PRIMARY KEY (`paid_id`);

--
-- Indexes for table `att_student_tracks`
--
ALTER TABLE `att_student_tracks`
  ADD PRIMARY KEY (`std_track_id`);

--
-- Indexes for table `att_tracks`
--
ALTER TABLE `att_tracks`
  ADD PRIMARY KEY (`track_id`),
  ADD UNIQUE KEY `track_name` (`track_name`);

--
-- Indexes for table `att_track_days`
--
ALTER TABLE `att_track_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `att_week_days`
--
ALTER TABLE `att_week_days`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `att_absense`
--
ALTER TABLE `att_absense`
  MODIFY `absense_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_instructors`
--
ALTER TABLE `att_instructors`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `att_places`
--
ALTER TABLE `att_places`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `att_session`
--
ALTER TABLE `att_session`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_students`
--
ALTER TABLE `att_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_student_paids`
--
ALTER TABLE `att_student_paids`
  MODIFY `paid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_student_tracks`
--
ALTER TABLE `att_student_tracks`
  MODIFY `std_track_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `att_tracks`
--
ALTER TABLE `att_tracks`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `att_track_days`
--
ALTER TABLE `att_track_days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `att_week_days`
--
ALTER TABLE `att_week_days`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
