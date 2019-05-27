-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 05:23 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`) VALUES
(167006001, 'Rachma Verina Rochim', 'Banjar', '1998-06-30', 'P', '7A'),
(167006031, 'Sarimin', 'Kuningan', '1998-05-04', 'P', '7A'),
(167006032, 'Muhammad Farhan Mughits', 'Kuningan', '1998-10-26', 'L', '9C'),
(167006033, 'George Borlin', 'Austin', '1999-04-07', 'L', '8A'),
(167006035, 'Reynaldi Akbar Maulana', 'Kuningan', '1998-03-05', 'L', '9B'),
(167006075, 'asd', 'qwe', '2018-05-01', 'L', '7A'),
(167011002, 'Meiullawati Nurdiana', 'Cirebon', '1998-07-01', 'P', '8B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('Rak 1','Rak2','Rak 3') NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'Sistem Informasi', 'Farhan', 'Erlangga', '1998', '123456qwer', 7, '', '2018-05-01'),
(2, 'Basis data', 'Mughits', 'Erlangga', '2000', '45678qwe', 9, '', '2018-05-01'),
(5, 'Algoritma Struktur Data', 'Rinaldi', 'Elekmedia', '2004', '123456zxcv', 4, 'Rak2', '2018-05-01'),
(8, 'Metode Numerik', 'Rudi', 'Mizan', '2004', '12345asdf', 3, '', '2018-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(9) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_kembali` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL,
  `terlambat` varchar(100) NOT NULL,
  `denda` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `terlambat`, `denda`) VALUES
(2, 'Algoritma Struktur Data', 16706031, 'Sarimin', '2018-05-02', '2018-05-04', 'kembali', '', ''),
(5, 'Basis Data', 167011001, 'Haqul Rizki Mubarok', '2018-05-01', '2018-05-03', 'Kembali', '', ''),
(6, 'Basis Data', 167011001, 'Haqul Rizki Mubarok', '2018-05-01', '2018-05-03', 'Kembali', '', ''),
(7, 'Basis Data', 16706035, 'Reynaldi Akbar Maulana', '2018-04-25', '2018-04-28', 'kembali', '', ''),
(36, 'Basis data', 167006031, 'Sarimin', '2018-05-05', '2018-05-12', 'kembali', '', ''),
(37, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(38, 'Sistem Informasi', 167006035, 'Reynaldi Akbar Maulana', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(39, 'Sistem Informasi', 167006032, 'Muhammad Farhan Mughits', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(44, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(50, 'Sistem Informasi', 167011002, 'Meiullawati Nurdiana', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(51, 'Sistem Informasi', 167006033, 'George Borlin', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(52, 'Basis data', 167006032, 'Muhammad Farhan Mughits', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(53, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(54, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(55, 'Sistem Informasi', 167006033, 'George Borlin', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(56, 'Sistem Informasi', 167006031, 'Sarimin', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(57, 'Sistem Informasi', 167011002, 'Meiullawati Nurdiana', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(58, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(59, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(60, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-29', '2018-06-05', 'kembali', '', ''),
(61, 'Sistem Informasi', 167006033, 'George Borlin', '2018-05-29', '2018-05-29', 'kembali', '', ''),
(69, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(70, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(71, 'Sistem Informasi', 167006031, 'Sarimin', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(72, 'Sistem Informasi', 167006001, 'Rachma Verina Rochim', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(73, 'Sistem Informasi', 167011002, 'Meiullawati Nurdiana', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(74, 'Sistem Informasi', 167006075, 'asd', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(75, 'Sistem Informasi', 167006075, 'asd', '2018-05-30', '2018-06-06', 'kembali', '', ''),
(80, 'Sistem Informasi', 167006032, 'Muhammad Farhan Mughits', '2018-05-30', '2018-06-06', 'kembali', '0', 'Rp.0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'avatar5.png'),
(3, 'user', 'user', 'user', 'user', 'login.png'),
(5, '167006032', '12345', 'Muhammad Farhan Mughits', 'user', 'ugi.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
