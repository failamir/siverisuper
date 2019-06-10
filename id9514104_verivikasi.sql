-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2019 at 06:29 AM
-- Server version: 10.3.14-MariaDB
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
-- Database: `id9514104_verivikasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `spm` varchar(128) NOT NULL,
  `catatan` varchar(512) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `spm`, `catatan`, `image`, `status`) VALUES
(13, '001/1.01.01.01/SPM-GU/V/2019', 'buku', 'default.png', 1),
(14, '001/1.01.01.01/SPM-GU/V/2019', 'kurang', 'default.png', 1),
(16, '02/2.10.1.1/SPM-GU/V!/2018', 'kurang buku pajak', 'default.png', 0),
(17, '005/4.06.2.1/SPM-LS/VI/2019', 'besaran UP tidak sama dengan SK UP', 'default.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `spm` varchar(128) NOT NULL,
  `kegiatan` varchar(128) NOT NULL,
  `nominal` varchar(128) NOT NULL,
  `opd` varchar(128) NOT NULL,
  `penerima_berkas` varchar(128) NOT NULL,
  `verivikator` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`spm`, `kegiatan`, `nominal`, `opd`, `penerima_berkas`, `verivikator`, `status`) VALUES
('001/1.01.01.01/SPM-GU/V/2019', 'kegiatan', '10.000.000', '2.10.1.1', 'arif', 'arif', 2),
('02/2.10.1.1/SPM-GU/V!/2018', 'Kegiatan', '10.000.000', '2.10.1.1', 'arif', 'arif', 4);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `description` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `description`) VALUES
(0, 'Menunggu berkas masuk'),
(1, 'Berkas masuk'),
(2, 'Dalam proses verifikasi'),
(3, 'Lolos'),
(4, 'Revisi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `image`, `password`, `user_role`) VALUES
('0', '', 'Null', 'Null', 0),
('1.05.1.1', 'Kantor Kesatuan Bangsa, Politik dan Perlindungan Masyarakat (KESBANGPOLINMAS)', 'default.png', '12345', 2),
('1.05.2.1', 'Satuan Polisi Pamong Praja (SATPOL PP)', 'default.png', '12345', 2),
('1.05.3.1', 'Badan Penanggulangan Bencana Daerah (BPBD)', 'default.png', '12345', 2),
('1.06.1.1', 'Dinas Sosial, Pemberdayaan Perempuan dan Perlindungan Anak ( Dinsos PPPA )', 'default.png', '12345', 2),
('2.09.1.1', 'Dinas Perhubungan (DINHUB)', 'default.png', '12345', 2),
('2.10.1.1', 'Dinas Komunikasi dan Informatika (DINKOMINFO)', 'default.png', '12345', 2),
('4.01.4.1', 'Sekretariat DPRD (SETWAN)', 'default.png', '12345', 2),
('4.02.1.1', 'Inspektorat', 'default.jpg', '12345', 2),
('4.03.1.1', 'BAPERLITBANG', 'default.png', '12345', 2),
('4.04.5.1', 'BPPKAD (SKPKD)', 'default.png', '12345', 2),
('4.04.5.2', 'BPPKAD (PPKD)', 'default.png', '12345', 2),
('4.05.6.1', 'Badan Kepegawaian Daerah (BKD)', 'default.png', '12345', 2),
('4.06.1.1', 'Kecamatan Banjarnegara', 'default.png', '12345', 2),
('4.06.19.1', 'Kecamatan Pagedongan', 'default.jpg', '12345', 2),
('4.06.2.1', 'Kecamatan Bawang', 'default.jpg', '12345', 2),
('4.06.4.1', 'Kecamatan Sigaluh', 'default.jpg', '12345', 2),
('admin', 'admin', 'default.jpg', 'admin', 3),
('adnan', 'Fitriadin Adnan, A.Md', 'default.png', '12345', 1),
('anti', 'Yudi Rakhmanti, SE', 'default.png', '12345', 1),
('arfiyati', 'Arfiyati', 'default.png', '12345', 1),
('arif', 'Parikesit Arif, SE', 'default.png', '12345', 1),
('busono', 'Hadi Busono, S.Kom', 'default.png', '12345', 1),
('gito', 'Sugito', 'default.png', '12345', 1),
('hartati', 'Hartati,SE', 'default.jpg', '12345', 3),
('hartati1', 'Hartati, SE', 'default.png', '12345', 1),
('Iqbal', 'Mohammad Iqbal Azhari', 'default.png', '12345', 1),
('rizka', 'Rizka Triferiandi, A.Md', 'default.png', '12345', 1),
('septa', 'Septa Imindia Lusiani, SE', 'default.png', '12345', 1),
('wahyu', 'Wahyudiono', 'default.png', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `status`) VALUES
(0, 'null'),
(1, 'ferivikator'),
(2, 'opd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`spm`),
  ADD KEY `fafa` (`status`),
  ADD KEY `opd_1` (`opd`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fafa` FOREIGN KEY (`status`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `opd_1` FOREIGN KEY (`opd`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
