-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 05:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_names`
--
CREATE DATABASE IF NOT EXISTS `animal_names` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `animal_names`;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE IF NOT EXISTS `animals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `aname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `species` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `aname`, `species`, `created_at`, `updated_at`) VALUES
(1, 'Lajos', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Csuri', 'sparrow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Böske', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bark', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Csámpás', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Csett', 'shrike', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Kata', 'hen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tanti', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Csimbók', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Pagát', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Szú', 'hedgehog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Őz Egon', 'deer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Vu', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Őzy Egon', 'deer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Szimba Msenzi', 'lion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Cin', 'mouse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Ri', 'swallow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Hóka', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Szi', 'snake', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Kag', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Kurra', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Mú', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Panna', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Bikfic', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tücsök', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Uccu', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Killi', 'goshawk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Csetnik', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Elemér', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Duhaj', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Mici', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Balambér', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Csusz', 'lizard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Nyu', 'wolf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Náci', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kalán', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Ede', 'bear', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Kakat', 'pheasant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Ráró', 'eagle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'fox Gyuri', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Dörmögő Dömötör', 'bear', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Nyusziné Kalán Eleonóra', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Kocáriné Koca', 'wild boar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Ci-nyi', 'mouse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Fickó', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Matyi', 'jay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Lupi', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Professzor úr', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Bob', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Nerr', 'sparrowhawk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Csutak', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'fox Elek', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Mátyás', 'jay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Tódor', 'lamb', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Pipincs', 'monkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Nagykigláb', 'stork', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Kerecsen', 'falcon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Mackó', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Uhu', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Embrió', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Karr', 'falcon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Csibor', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Miska', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Pi', 'ground squirrel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vuk', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Csuvik', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Bogáncs', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Fáni', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Rigó', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Zsuzsi', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Tala', 'vulture', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Ruca', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Nyaú', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Kiri', 'kestrel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Ravasz', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Bubi', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Bee', 'lamb', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Kiz', 'rat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Oszkár', 'crow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Miska', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Vé', 'stork', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Rá', 'crow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Kanalas Ágoston', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Mérges', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Kiő', 'buzzard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Toró', 'crow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Szimba', 'lion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Gyuri', 'hen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Holhorse', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Bu', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Dorottya', 'bear', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Sári', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Marcsa', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Csuvik Aladár', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Vica', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Juci', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Föcske', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Csirik', 'weasel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Vak Toportyán', 'wolf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'János', 'crow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Káró', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Csele', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Kurri', 'hen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Szarka Ákos', 'magpie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Julcsa', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Sárkány', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Kró', 'raven', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'ja Uleja', 'lion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Paták', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Bagó', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Íny', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Pici', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Fergeteg', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Csikasz', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Cse', 'swallow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Vörös', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Pepi', 'marten', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Manci', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Dzsinn', 'leopard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Vit', 'swallow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Sármány', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Csákó', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Citér', 'tit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Füstös', 'thrush', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Kanalas Boriska', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Hú', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Csám', 'wild boar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Suó', 'falcon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Parpu', 'heron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Csufi', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Küllő', 'woodpecker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Tás', 'wild duck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Bruku', 'pigeon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Fecske', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Zu', 'fly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Borzas', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Szeles', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Mirci', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Csipet', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Sut', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Kele', 'stork', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Harat', 'eagle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Vahúr', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Kati', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Treff', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Talpas', 'wolf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Mari', 'thrush', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Sajó', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Csisz', 'bat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Unka', 'frog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Zsivány', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Dáma', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Muki', 'marten', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Peták', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Jakab', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Finánc', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Lutra', 'otter', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Csillag', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Miska', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Csilli', 'warbler', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Szidike', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Ordas Csikasz', 'wolf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Betyár', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Brozovics Borz', 'badger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Pille', 'butterfly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Labanc', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Gege', 'wild goose', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Morzsa', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Szarvas Menyhért', 'stag', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Kanalas Gusztáv', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Szultán', 'lion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Tanár úr', 'owl', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Kanalas Őrvezető', 'rabbit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Maros', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Kapitány', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Ravaszdi', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Tecs', 'magpie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Bába', 'stork', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Bimbó', 'cattle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Hosszúláb', 'stork', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Fokos', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Fészkes Annamária', 'hen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Uzsárdi Mihály', 'raven', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Elemér', 'parrot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Bogár', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Ravaszdy Ravasz Elek', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Csí', 'swallow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Berci', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Nóra', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Szikra', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Basa', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Szellő', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Csalavér', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Teofil', 'donkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Karak', 'fox', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Bodri', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Muki', 'dog', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Cilike', 'cat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Betyár', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Deres', 'horse', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE IF NOT EXISTS `connections` (
  `animalid` bigint(20) UNSIGNED NOT NULL,
  `novelid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `connections_animalid_foreign` (`animalid`),
  KEY `connections_novelid_foreign` (`novelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`animalid`, `novelid`, `created_at`, `updated_at`) VALUES
(85, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_13_120817_create_animals_table', 1),
(6, '2023_05_13_120846_create_novels_table', 1),
(7, '2023_05_13_122115_create_messages_table', 1),
(8, '2023_05_13_124136_create_connections_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `novels`
--

CREATE TABLE IF NOT EXISTS `novels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pyear` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `novels`
--

INSERT INTO `novels` (`id`, `pyear`, `title`, `publisher`, `created_at`, `updated_at`) VALUES
(1, 1937, 'A koppányi aga testamentuma', 'Dante Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1939, 'Zsellérek', 'Királyi Magyar Egyetemi Nyomda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1940, 'Csi. Történet állatokról és emberekről', 'Singer és Wolfner Irodalmi Intézet Rt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1941, 'Öreg utakon', 'Singer és Wolfner Irodalmi Intézet Rt.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1942, 'Hajnal Badányban', 'Singer és Wolfner Irodalmi Intézet Rt.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1944, 'Egy szem kukorica', 'Új Idők Irodalmi Intézet Rt. (Singer és Wolfner)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1944, 'Emberek között', 'Új Idők Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1946, 'Gyeplő nélkül', 'Új Idők Irodalmi Intézet Rt. (Singer és Wolfner)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1947, 'Tíz szál gyertya', 'Új Idők Irodalmi Intézet Rt. (Singer és Wolfner)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1955, 'Kele', 'Magvető Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1955, 'Lutra', 'Ifjúsági Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1955, 'Halászat', 'Mezőgazdasági Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1957, 'Tüskevár', 'Móra Ferenc Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1957, 'Bogáncs', 'Ifjúsági Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1959, 'Téli berek', 'Móra Ferenc Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1960, 'Pepi-kert. A szarvasi arborétum története és leírása', 'Mezőgazdasági Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1962, 'Őszi vásár', 'Magvető Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1962, 'Kittenberger Kálmán élete', 'Móra Ferenc Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1965, 'Vuk', 'Móra Ferenc Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1965, 'Csend – 21 nap', 'Móra Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1966, 'Hu', 'Móra Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1968, 'Barangolások', 'Móra Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1970, 'Ballagó idő', 'Móra Ferenc Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1973, 'Tarka rét', 'Móra Könyvkiadó.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1973, 'Rózsakunyhó', 'Móra Ferenc Ifjúsági Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1987, 'Erdei utakon', 'Mezőgazdasági Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1988, 'Vadászatok erdőn-mezőn', 'Mezőgazdasági Kiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1993, 'Ci-Nyi', 'Nesztor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1994, 'Végtelen út', 'Nesztor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 2005, 'Karácsony éjjel', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 2006, 'Kísértés', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 2006, 'Tűz mellett', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 2006, 'Erdély', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 2007, 'Fészekrablás', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 2007, 'Tojáshéjdarabkák', 'Lazi Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1997, 'A három uhu és más történetek', 'Nesztor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 2000, 'A magam erdeiben', 'Új Ember Könyvkiadó', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Zoltan Subecz', 'Zoltan.subecz@email.hu', NULL, '$2y$10$Xkla6qM3KeLxknnDv.kqJ.Q0NWjv5mfzhOPr75HQyxq6hIs9UBiNy', 1, NULL, '2023-05-21 13:40:04', '2023-05-21 13:40:04'),
(3, 'Admin', 'admin@animalnames.hu', NULL, '$2y$10$V/mA0ZHle3cbmeufnLVL8ebARfYvDXvXpqgEKCSlmg4kXaeWOQq0i', 2, NULL, '2023-05-21 13:40:56', '2023-05-21 13:40:56');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_animalid_foreign` FOREIGN KEY (`animalid`) REFERENCES `animals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `connections_novelid_foreign` FOREIGN KEY (`novelid`) REFERENCES `novels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
