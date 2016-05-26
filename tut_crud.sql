-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2016 at 01:43 PM
-- Server version: 10.1.10-MariaDB-log
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tut_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `email`, `company`) VALUES
(1, 'Patience Joyce', 'erat.semper.rutrum@eu.net', 'Quisque Ltd'),
(2, 'Stella Wheeler', 'molestie.sodales.Mauris@ligula.edu', 'Tempus Scelerisque Company'),
(3, 'Sasha Rhodes', 'Nullam.enim.Sed@mauris.net', 'Vitae Nibh Donec Institute'),
(4, 'Coby Winters', 'In.mi.pede@volutpatNulladignissim.ca', 'Interdum LLC'),
(5, 'Jordan Hubbard', 'Duis.risus@quam.ca', 'Aliquam Associates'),
(6, 'Catherine Buckley', 'elit@Fuscediam.edu', 'Ridiculus Mus LLC'),
(7, 'Sylvia Bullock', 'placerat.Cras@incursus.ca', 'Elit Sed Limited'),
(8, 'Lani Oliver', 'justo.Praesent.luctus@nislsemconsequat.net', 'Vulputate Mauris Consulting'),
(9, 'Hannah Fitzpatrick', 'Donec.tempor.est@antedictummi.ca', 'Vivamus Foundation'),
(10, 'Zachery Morrow', 'auctor.velit@enim.ca', 'Libero Corp.'),
(11, 'Arsenio Mullins', 'pede@vellectusCum.com', 'Et Nunc LLP'),
(12, 'Harlan Boyer', 'justo.Proin@massanonante.org', 'Imperdiet Ornare Company'),
(13, 'Grady Gray', 'aliquet@commodoat.co.uk', 'Etiam Imperdiet Industries'),
(14, 'Quyn Sexton', 'id.enim@Etiamgravidamolestie.edu', 'Hendrerit LLC'),
(15, 'Rosalyn Graves', 'cursus.Integer.mollis@sitametdapibus.com', 'Dui Nec PC'),
(16, 'Celeste Scott', 'Aliquam.ornare.libero@odiovel.co.uk', 'Fermentum Incorporated'),
(17, 'Elton Morales', 'mi@metusInnec.net', 'Eu Foundation'),
(18, 'Jamalia Dominguez', 'eget@sitametornare.co.uk', 'Lorem Tristique Aliquet Institute'),
(19, 'Jin Kidd', 'ultrices.posuere.cubilia@dolorelit.co.uk', 'Duis Volutpat Nunc Ltd'),
(20, 'Charity Charles', 'sapien.Aenean@antelectus.com', 'Duis Ac LLP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
