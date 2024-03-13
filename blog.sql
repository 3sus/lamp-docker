-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 13, 2024 at 03:21 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp_docker`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `date`) VALUES
(1, 'lorem Ipsum Dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi erat nisi, ultricies ut tempor in, egestas sit amet elit. Aliquam dictum, purus id eleifend tempor, sapien justo facilisis nisi, placerat sodales elit leo posuere tortor. Pellentesque mi urna, efficitur et sollicitudin vel, facilisis nec lorem. Morbi efficitur, elit vitae bibendum sollicitudin, diam libero mattis metus, sed aliquam enim sapien et sem. Morbi sit amet accumsan sem, non posuere ex. Sed lacus arcu, egestas sit amet elit et, volutpat venenatis dolor. Pellentesque et sem mauris. Nulla purus urna, ultricies sit amet urna id, cursus finibus nunc. Duis aliquet tincidunt sodales. Suspendisse sed lacus non orci ultrices ornare. Duis non nibh velit. Curabitur nec odio in ex semper facilisis at quis enim. Cras a lectus ut dolor ornare varius vitae quis orci. Vivamus ornare massa in mi placerat, vitae pretium massa dignissim.\r\n\r\n', '2024-03-07'),
(2, 'Facilisis Eros Laoreet', 'Curabitur congue nulla sit amet dolor malesuada faucibus. Phasellus eu metus ante. Nam eu convallis dolor. Nam rutrum velit id blandit molestie. Vestibulum orci nunc, congue vel justo eget, tempor ultrices mauris. Donec a quam at nunc laoreet imperdiet quis non eros. Praesent cursus nibh viverra diam efficitur rhoncus. Nullam eu augue ut lorem aliquam volutpat a quis mi. Aliquam tempor elementum dignissim. Fusce vestibulum tortor blandit diam faucibus congue. Nam auctor feugiat hendrerit. Nullam tempor metus vel felis interdum lacinia. Nullam ultricies porta ex ut fermentum. Nullam nec consequat elit. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '2024-03-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
