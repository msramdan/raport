-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 03:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-raport`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `konid` varchar(10) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `konid`, `aktif`) VALUES
(1, 'admin', '010438e6515e45aeaea0ac5303dbf9c2806eb0d0', 'admin', '0', 'Y'),
(2, 'lulukc', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '12', 'Y'),
(3, '001', 'b7836729aa71435cfcbc4e91ce2d946e631e8bb3', 'siswa', '532', 'Y'),
(4, '002', '4fa085c0de33d8d28dc0367667859366fe10d712', 'siswa', '533', 'Y'),
(71, 'sitima', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '13', 'Y'),
(72, 'rikami', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '14', 'Y'),
(73, 'chasan', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '15', 'Y'),
(74, '003', '77cb3d3fc5fd0851e65970ff1d3e7e4db36c230d', 'siswa', '534', 'Y'),
(75, 'ahmadn', 'fefdd621d35d14c299aef2fcae34d3dfe9b2f12b', 'guru', '16', 'Y'),
(76, '003', '77cb3d3fc5fd0851e65970ff1d3e7e4db36c230d', 'siswa', '535', 'Y'),
(77, '004', '4408c2ac54ef0d12fe5d1e98ad0eb9f61540a4c9', 'siswa', '536', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `m_ekstra`
--

CREATE TABLE `m_ekstra` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `is_bk` enum('2','1') DEFAULT NULL,
  `stat_data` enum('A','P','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nama`, `nip`, `jk`, `is_bk`, `stat_data`) VALUES
(12, 'Luluk Chadiroh, S.Si', '001', NULL, '2', 'A'),
(13, 'Siti Maftuchah, S.Pd', '002', NULL, '2', 'A'),
(14, 'Rika Miftakhul ', '003', NULL, '2', 'A'),
(15, 'Chasan Asy’ari', '004', NULL, '2', 'A'),
(16, 'Ahmad Nurcholiq, S.H', '005', NULL, '2', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(3) NOT NULL,
  `tingkat` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `tingkat`, `nama`) VALUES
(9, 1, 'Kelas 1'),
(10, 2, 'Kelas 2'),
(11, 3, 'Kelas 3'),
(12, 4, 'Kelas 4'),
(13, 5, 'Kelas 5'),
(14, 6, 'Kelas 6');

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(3) NOT NULL,
  `kelompok` enum('A','B') NOT NULL,
  `tambahan_sub` enum('NO','PAI','MULOK') NOT NULL,
  `kd_singkat` varchar(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kkm` int(2) NOT NULL,
  `is_sikap` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `kelompok`, `tambahan_sub`, `kd_singkat`, `nama`, `kkm`, `is_sikap`) VALUES
(24, 'A', 'NO', 'MTK', 'Matematika', 75, '0'),
(25, 'A', 'NO', 'PJOK', 'Pelatihan Jasmani dan Rohani', 75, '0'),
(26, 'A', 'NO', 'B Ind', 'Bahasa Indonesia', 75, '0'),
(27, 'A', 'PAI', 'BTQ', 'Baca Tulis Quran', 75, '0'),
(28, 'B', 'NO', 'B Ing', 'Bahasa Inggris', 75, '0'),
(29, 'A', 'NO', 'IPA', 'Ilmu Pengetahuan Alam', 75, '0'),
(30, 'B', 'NO', 'IPS', 'Ilmu Pengetahuan Sosial', 75, '0'),
(31, 'B', 'NO', 'PAI', 'Pendidikan Agama Islam', 75, '0');

-- --------------------------------------------------------

--
-- Table structure for table `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id` int(6) NOT NULL,
  `nis` varchar(10) NOT NULL DEFAULT '0',
  `nisn` varchar(10) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(2) NOT NULL,
  `anakke` int(2) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `sek_asal` varchar(30) NOT NULL,
  `sek_asal_alamat` varchar(50) NOT NULL,
  `diterima_kelas` varchar(5) NOT NULL,
  `diterima_tgl` date NOT NULL,
  `diterima_smt` varchar(2) NOT NULL,
  `ijazah_no` varchar(50) NOT NULL,
  `ijazah_thn` varchar(4) NOT NULL,
  `skhun_no` varchar(50) NOT NULL,
  `skhun_thn` varchar(4) NOT NULL,
  `ortu_ayah` varchar(50) NOT NULL,
  `ortu_ibu` varchar(50) NOT NULL,
  `ortu_alamat` varchar(50) NOT NULL,
  `ortu_notelp` varchar(13) NOT NULL,
  `ortu_ayah_pkj` varchar(30) NOT NULL,
  `ortu_ibu_pkj` varchar(30) NOT NULL,
  `wali` varchar(20) NOT NULL,
  `wali_alamat` varchar(50) NOT NULL,
  `notelp_rumah` varchar(13) NOT NULL,
  `wali_pkj` varchar(13) NOT NULL,
  `inputID` int(2) NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat_data` enum('A','K','M','L') NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nis`, `nisn`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `agama`, `status`, `anakke`, `alamat`, `notelp`, `sek_asal`, `sek_asal_alamat`, `diterima_kelas`, `diterima_tgl`, `diterima_smt`, `ijazah_no`, `ijazah_thn`, `skhun_no`, `skhun_thn`, `ortu_ayah`, `ortu_ibu`, `ortu_alamat`, `ortu_notelp`, `ortu_ayah_pkj`, `ortu_ibu_pkj`, `wali`, `wali_alamat`, `notelp_rumah`, `wali_pkj`, `inputID`, `tgl_input`, `tgl_update`, `stat_data`, `foto`) VALUES
(532, '001', '1234', 'Ahmad Rasya Pamungkas', 'L', 'Semarang', '2013-05-09', 'Islam', 'AK', 2, 'Banjardowo RT 03 / RW 05', '088886666777', 'SDI Darur Rohman', 'Banjardowo', 'Kelas', '2023-06-09', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-06-09 15:12:11', '0000-00-00 00:00:00', 'A', ''),
(533, '002', '2345', 'Anas Izzul Hadi', 'L', 'Semarang', '2013-08-31', 'Islam', 'AK', 2, 'Wringinjajar RT 01 / RW 04', '087777666555', 'SDI Darur Rohman', 'Banjardowo', 'Kelas', '2023-06-09', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-06-09 15:16:47', '0000-00-00 00:00:00', 'A', ''),
(535, '003', '3456', 'Aqeila Dwi Nuraini', 'P', 'Demak', '2013-12-09', 'Islam', 'AK', 1, 'Ngablaksari RT 03 / RW 08', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:42:12', '0000-00-00 00:00:00', 'A', ''),
(536, '004', '4567', 'Fadhil Dwi Pratama', 'L', 'Grobogan', '2013-05-20', 'Islam', 'AK', 1, 'Dusun Karangsono RT 07 / RW 04', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:41:30', '0000-00-00 00:00:00', 'A', ''),
(537, '005', '5678', 'Hasna Athiyyah Alifiansyah', 'P', 'Semarang', '2013-12-03', 'Islam', 'AK', 1, 'Tanggulrejo I RT 01 / RW 07', '087777666555', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:44:46', '0000-00-00 00:00:00', 'A', ''),
(538, '006', '6789', 'Khafidlotul Ulya', 'P', 'Semarang', '2014-05-23', 'Islam', 'AK', 1, 'Sembungharjo RT 01 / RW 06', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:46:32', '0000-00-00 00:00:00', 'A', ''),
(539, '007', '7890', 'Marvel Aditya Priyanto', 'L', 'Semarang', '2013-05-10', 'Islam', 'AK', 1, 'Citarum Tengah V/25 RT 03/ RW 02', '', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:49:16', '0000-00-00 00:00:00', 'A', ''),
(540, '008', '8901', 'M. Arifian Chandra ', 'L', 'Semarang', '2013-01-01', 'Islam', 'AK', 1, 'Banjardowo RT 03 / RW 05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:52:04', '0000-00-00 00:00:00', 'A', ''),
(541, '015', '9866', 'Amirul Mukminin Ash-Shidiq', 'L', 'Semarang', '2014-07-05', 'Islam', 'AK', 1, 'Banjardowo RT 03 / RW 04', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 10:54:26', '0000-00-00 00:00:00', 'A', ''),
(542, '016', '9875', 'Ardi Dwi Fajar', 'L', 'Semarang  ', '2014-06-23', 'Islam', 'AK', 1, 'Banjardowo RT 03 / RW 05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:03:13', '0000-00-00 00:00:00', 'A', ''),
(543, '017', '8909', 'Assyarifa Yulia Ramadhani', 'P', 'Semarang', '2014-07-22', 'Islam', 'AK', 1, 'JL. Kauman Raya RT 02 / RW 09', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:04:43', '0000-00-00 00:00:00', 'A', ''),
(544, '018', '0963', 'Calvin Yaqdhan Rakha Assaid', 'L', 'Semarang', '2014-12-18', 'Islam', 'AK', 1, 'Banjardowo RT 03 / RW 05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:05:52', '0000-00-00 00:00:00', 'A', ''),
(545, '019', '4765', 'Earlyta Arsyfa Salsabila', 'P', 'Semarang', '2014-12-14', 'Islam', 'AK', 1, 'Banjardowo RT 04 / RW 05', '087777666555', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:07:01', '0000-00-00 00:00:00', 'A', ''),
(546, '020', '3476', 'Fabian Arka Intena', 'L', 'Demak', '2014-07-04', 'Islam', 'AK', 1, 'Dk. Gonten RT 05/ RW 01', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:11:25', '0000-00-00 00:00:00', 'A', ''),
(547, '032', '0756', 'Ahmad Alim', 'L', 'Semarang', '2015-10-29', 'Islam', 'AK', 1, 'Banjardowo RT 04/04', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:14:06', '0000-00-00 00:00:00', 'A', ''),
(548, '033', '0975', 'Aisyah Monika Sarena', 'P', 'Boyolali', '2015-04-24', 'Islam', 'AK', 1, 'Banjardowo RT 04/05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:15:16', '0000-00-00 00:00:00', 'A', ''),
(549, '034', '2369', 'Anindita Keisha Zahra', 'P', 'Semarang', '2015-04-17', 'Islam', 'AK', 1, 'Banjardowo RT 03/05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:16:56', '0000-00-00 00:00:00', 'A', ''),
(550, '035', '5365', 'Febryan Marsell Syahputra', 'L', 'Semarang', '2016-02-20', 'Islam', 'AK', 1, 'Banjardowo RT 03/05', '081234567890', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:17:53', '0000-00-00 00:00:00', 'A', ''),
(551, '036', '5874', 'Maghfiroh Maheswari S', 'P', 'Semarang', '2016-12-26', 'Islam', 'AK', 1, 'Pandansari II RT 01/01', '087777666555', '', '', 'Kelas', '2023-08-11', 'Ke', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2023-08-11 11:19:16', '0000-00-00 00:00:00', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id` int(3) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `nip_kepsek` varchar(30) NOT NULL,
  `tgl_raport` date NOT NULL,
  `tgl_raport_kelas3` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id`, `tahun`, `aktif`, `nama_kepsek`, `nip_kepsek`, `tgl_raport`, `tgl_raport_kelas3`) VALUES
(1, '20231', 'Y', 'Ahmad Nurcholiq, S.H', '-', '2023-08-08', '2023-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `t_backupdb`
--

CREATE TABLE `t_backupdb` (
  `id` int(11) NOT NULL,
  `tahun_akademik` varchar(6) NOT NULL,
  `nama_file` varchar(128) NOT NULL,
  `tgl_simpan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_guru_mapel`
--

CREATE TABLE `t_guru_mapel` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `id_mapel` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_guru_mapel`
--

INSERT INTO `t_guru_mapel` (`id`, `tasm`, `id_guru`, `id_kelas`, `id_mapel`) VALUES
(27, '20232', 12, 11, 24),
(29, '20231', 15, 9, 25),
(30, '20231', 15, 10, 25),
(31, '20231', 15, 11, 25),
(32, '20231', 13, 11, 24),
(33, '20231', 14, 9, 24),
(34, '20231', 14, 9, 26),
(35, '20231', 14, 9, 29),
(36, '20231', 14, 9, 30),
(37, '20231', 14, 9, 31),
(38, '20231', 13, 11, 26),
(39, '20231', 13, 11, 29),
(40, '20231', 13, 11, 30),
(41, '20231', 13, 11, 31),
(42, '20231', 12, 10, 24),
(43, '20231', 12, 10, 26),
(44, '20231', 12, 10, 29),
(45, '20231', 12, 10, 30),
(46, '20231', 12, 10, 31);

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas_siswa`
--

CREATE TABLE `t_kelas_siswa` (
  `id` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `ta` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kelas_siswa`
--

INSERT INTO `t_kelas_siswa` (`id`, `id_kelas`, `id_siswa`, `ta`) VALUES
(229, 9, 547, 2023),
(230, 9, 548, 2023),
(231, 9, 549, 2023),
(232, 9, 550, 2023),
(233, 9, 551, 2023),
(223, 10, 541, 2023),
(224, 10, 542, 2023),
(225, 10, 543, 2023),
(226, 10, 544, 2023),
(227, 10, 545, 2023),
(228, 10, 546, 2023),
(219, 11, 532, 2023),
(220, 11, 533, 2023),
(221, 11, 535, 2023),
(222, 11, 536, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `t_kkm`
--

CREATE TABLE `t_kkm` (
  `id` int(5) NOT NULL,
  `ta` int(4) NOT NULL,
  `jenis` enum('np','nk') NOT NULL,
  `kelas` int(2) NOT NULL,
  `kkm` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_mapel_kd`
--

CREATE TABLE `t_mapel_kd` (
  `id` int(6) UNSIGNED NOT NULL,
  `id_guru` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `id_mapel` int(6) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `semester` enum('0','1','2') NOT NULL,
  `no_kd` varchar(5) NOT NULL,
  `jenis` enum('P','K','SSp','SSo') NOT NULL,
  `bobot` int(2) NOT NULL,
  `nama_kd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_mapel_kd`
--

INSERT INTO `t_mapel_kd` (`id`, `id_guru`, `id_mapel`, `tingkat`, `semester`, `no_kd`, `jenis`, `bobot`, `nama_kd`) VALUES
(1, 0, 0, 0, '0', '', 'SSo', 0, 'jujur'),
(2, 0, 0, 0, '0', '', 'SSo', 0, 'disiplin'),
(3, 0, 0, 0, '0', '', 'SSo', 0, 'tanggung jawab'),
(4, 0, 0, 0, '0', '', 'SSo', 0, 'toleransi'),
(5, 0, 0, 0, '0', '', 'SSo', 0, 'gotong royong'),
(6, 0, 0, 0, '0', '', 'SSo', 0, 'santun'),
(7, 0, 0, 0, '0', '', 'SSo', 0, 'percaya diri'),
(8, 0, 0, 0, '0', '', 'SSp', 0, 'berdoa sebelum dan sesudah melakukan kegiatan		'),
(9, 0, 0, 0, '0', '', 'SSp', 0, 'menjalankan ibadah sesuai dengan agamanya'),
(10, 0, 0, 0, '0', '', 'SSp', 0, 'memberi salam pada saat awal dan akhir kegiatan		'),
(11, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur atas nikmat dan karunia Tuhan Yang Maha Esa		'),
(12, 0, 0, 0, '0', '', 'SSp', 0, 'mensyukuri kemampuan manusia dalam mengendalikan diri		'),
(13, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur ketika berhasil mengerjakan sesuatu		'),
(14, 0, 0, 0, '0', '', 'SSp', 0, 'berserah diri (tawakal) kepada Tuhan setelah berikhtiar atau melakukan usaha		'),
(15, 0, 0, 0, '0', '', 'SSp', 0, 'memelihara hubungan baik dengan sesama umat		'),
(16, 0, 0, 0, '0', '', 'SSp', 0, 'bersyukur sebagai bangsa Indonesia		'),
(17, 0, 0, 0, '0', '', 'SSp', 0, 'menghormati orang lain yang menjalankan ibadah sesuai dengan agamanya		\r\n'),
(18, 8, 1, 1, '2', '3.1', 'P', 0, 'mengetahui  tanda baca fathatain, kasratain, damatain, sukun dan tasydid'),
(19, 8, 1, 1, '2', '3.2a', 'P', 0, 'mengenal Alquran surat an-Nasr (110)'),
(20, 8, 1, 1, '2', '3.2b', 'P', 0, 'mengenal Alquran surat  Quraisy (106)'),
(21, 8, 1, 1, '2', '3.3', 'P', 0, 'memahami arti dan isi kandungan hadis'),
(22, 8, 1, 1, '2', '4.1', 'K', 0, 'membaca huruf hijaiyah  dan tanda bacanya'),
(23, 8, 1, 1, '2', '4.2a', 'K', 0, ' menghafalkan Alquran surat an-Nasr (110)'),
(24, 8, 1, 1, '2', '4.2b', 'K', 0, 'menghafalkan Alquran surat Quraisy (106)'),
(25, 8, 1, 1, '2', '4.3', 'K', 0, 'menghafalkan hadis'),
(26, 8, 2, 1, '2', '3.1', 'P', 0, 'mengetahui  kalimat  thayyibah (Basmalah)'),
(27, 8, 2, 1, '2', '3.2', 'P', 0, 'mengenal Asmaul husna (ar-Rahman, ar-Rahim dan as-Sami’).'),
(28, 8, 2, 1, '2', '3.3', 'P', 0, 'memahami adab belajar, bermain, makan dan minum.'),
(29, 8, 2, 1, '2', '3.4', 'P', 0, ' memahami sikap ramah dan sopan santun terhadap orang tua dan guru '),
(30, 8, 2, 1, '2', '3.5', 'P', 0, ' menjelaskan akhlak tercela: berbicara kotor dan bohong'),
(31, 8, 2, 1, '2', '4.1', 'K', 0, ' melafalkan kalimat thayyibah (Basmalah)'),
(32, 8, 2, 1, '2', '4.2', 'K', 0, ' melafalkan ar-Rahman, ar-Rahim dan as-Sami’.'),
(33, 8, 2, 1, '2', '4.3', 'K', 0, ' mendemonstrasikan adab belajar, bermain makan dan minum secara Islami.'),
(34, 8, 2, 1, '2', '4.4', 'K', 0, ' mensimulasikan sikap ramah dan sopan santun terhadap orang tua dan guru '),
(35, 8, 2, 1, '2', '4.5', 'K', 0, ' menyaji contoh cara menghindari berbicara kotor dan bohong/dusta'),
(36, 8, 3, 1, '2', '3.1', 'P', 0, ' memahami ketentuan wudu'),
(37, 8, 3, 1, '2', '3.2', 'P', 0, ' memahami tata cara wudu'),
(38, 8, 3, 1, '2', '3.3', 'P', 0, ' memahami hikmah wudu'),
(39, 8, 3, 1, '2', '4.1', 'K', 0, ' mempresentasikan pengertian Wudlu '),
(40, 8, 3, 1, '2', '4.2', 'K', 0, ' mensimulasikan tata cara wudu'),
(41, 8, 3, 1, '2', '4.3', 'K', 0, ' menceritakan hikmah wudu'),
(42, 8, 5, 1, '2', '3.1', 'P', 0, ' mengenal simbol-simbol sila Pancasila dalam lambang negara '),
(43, 8, 5, 1, '2', '3.2', 'P', 0, ' mengidentifikasi aturan  dalam kehidupan sehari-hari di rumah'),
(44, 8, 5, 1, '2', '3.3', 'P', 0, ' mengidentifikasi keberagaman karateristik individu di rumah'),
(45, 8, 5, 1, '2', '3.4', 'P', 0, ' mengidentifikasi bentuk kerjasama dalam keberagaman di rumah'),
(46, 8, 5, 1, '2', '4.1', 'K', 0, ' menceritakan simbol-simbol sila Pancasila pada Lambang Garuda sila Pancasila'),
(47, 8, 5, 1, '2', '4.2', 'K', 0, ' menceritakan kegiatan sesuai dengan aturan dalam kehidupan sehari-hari di rumah.'),
(48, 8, 5, 1, '2', '4.3', 'K', 0, 'menceritakan pengalaman kebersamaan dalam keberagaman di rumah'),
(49, 8, 5, 1, '2', '4.4', 'K', 0, ' menceritakan pengalaman kerjasama dalam keberagaman di rumah'),
(50, 8, 6, 1, '2', '3.6', 'P', 0, ' menguraikan kosakata tentang berbagai jenis benda di lingkungan sekitar melalui teks pendek  dan/at'),
(51, 8, 6, 1, '2', '3.7', 'P', 0, ' menentukan kosakata yang berkaitan dengan peristiwa  siang dan malam melalui teks pendek  dan/ atau'),
(52, 8, 6, 1, '2', '3.8', 'P', 0, ' merinci  penyampaian terima kasih , minta maaf, tolong, dan pemberian pujian, ajakan, pemberitahuan'),
(53, 8, 6, 1, '2', '3.11', 'P', 0, ' mencermati puisi anak/ syair lagu (berisi ungkapan kekaguman, kebanggaan, hormat kepada orang tua, '),
(54, 8, 6, 1, '2', '4.6', 'K', 0, ' menggunakan kosakata bahasa  Indonesia dengan ejaan yang tepat mengenai berbagai jenis benda di lin'),
(55, 8, 6, 1, '2', '4.7', 'K', 0, ' menyampaikan penjelasan dengan kosakata  dan dibantu dengan bahasa daerah mengenai peristiwa siang '),
(56, 8, 6, 1, '2', '4.8', 'K', 0, ' mempraktikkan ungkapan terima kasih, permintaan maaf, tolong, dan pemberian pujian, kepada orang la'),
(57, 8, 6, 1, '2', '4.11', 'K', 0, ' melisankan puisi anak atau syair lagu ( kekaguman, kebanggaan, hormat kepada orang tua, kasih sayan'),
(58, 8, 7, 1, '2', '3.1', 'P', 0, '  mengenal bunyi dan Makna mufradat terkait topik: 1-10  secara lisan dan tulisan'),
(59, 8, 7, 1, '2', '3.2', 'P', 0, '  mengenal bunyi dan Makna mufradat terkait topik:  secara lisan dan tulisan'),
(60, 8, 7, 1, '2', '3.3', 'P', 0, ' mengenal bunyi dan Makna mufradat terkait topik: secara lisan dan tulisan'),
(61, 8, 7, 1, '2', '3.4', 'P', 0, ' mengenal bunyi dan Makna mufradat terkait topik:  secara lisan dan tulisan'),
(62, 8, 7, 1, '2', '4.1', 'K', 0, ' menirukan bunyi dan menghafalkan makna  mufradat terkait topik:  1-10 secara lisan dan tulis'),
(63, 8, 7, 1, '2', '4.2', 'K', 0, ' menirukan bunyi dan menghafalkan makna  mufradat terkait topik:  secara lisan dan tul'),
(64, 8, 7, 1, '2', '4.3', 'K', 0, ' menirukan bunyi dan menghafalkan makna  mufradat terkait topik: secara lisan dan tulisan'),
(65, 8, 7, 1, '2', '4.4', 'K', 0, ' menirukan bunyi dan menghafalkan makna  mufradat terkait topik: secara lisan dan tulisan'),
(66, 9, 8, 1, '2', '3.1', 'P', 0, ' menjelaskan makna bilangan cacah sampai dengan 99 sebagai banyak  nggota suatu kumpulan objek '),
(67, 9, 8, 1, '2', '3.2', 'P', 0, ' menjelaskan bilangan sampai dua angka dan nilai tempat  bilangan menggunakan kumpulan benda konkret'),
(68, 9, 8, 1, '2', '3.3', 'P', 0, ' membandingkan dua bilangan sampai dua angka dengan menggunakan kumpulan benda-benda konkret.'),
(69, 9, 8, 1, '2', '4.1', 'K', 0, ' menyajikan bilangan cacah sampai dengan 99 yang bersesuaian dengan banyak anggota kumpulan objek '),
(70, 9, 8, 1, '2', '4.2', 'K', 0, ' menulis lambang bilangan sampai dua angka yang menyatakan anggota suatu kumpulan objek dengan ide n'),
(71, 9, 8, 1, '2', '4.3	', 'K', 0, ' mengurutkan bilangan sampai dua angka dari  terkecil sampai terbesar atau sebaliknya dengan menggun'),
(72, 9, 12, 1, '2', '3.1', 'P', 0, ' mengenal karya ekspresi dua dan tiga dimensi'),
(73, 9, 12, 1, '2', '3.2', 'P', 0, ' mengenal elemen musik melalui lagu.'),
(74, 9, 12, 1, '2', '3.3', 'P', 0, ' mengenal gerak anggota tubuh melalui tari'),
(75, 9, 12, 1, '2', '4.1', 'K', 0, ' membuat karya ekspresi dua dan tiga dimensi.	'),
(76, 9, 12, 1, '2', '4.2', 'K', 0, ' menirukan elemen musik melalui lagu.	'),
(77, 9, 12, 1, '2', '4.3', 'K', 0, ' memeragakan gerak anggota tubuh melalui tari.	'),
(78, 9, 13, 1, '2', '3.5', 'P', 0, ' memahami berbagai gerak dominan dalam aktivitas senam lantai'),
(79, 9, 13, 1, '2', '3.6', 'P', 0, ' memahami gerak dasar lokomotor dan non-lokomotor aktivitas gerak berirama'),
(80, 9, 13, 1, '2', '3.7', 'P', 0, ' memahami berbagai pengenalan aktivitas air dan menjaga keselamatan  dalam aktivitas air.'),
(81, 9, 13, 1, '2', '4.5', 'K', 0, ' mempraktikkan berbagai pola gerak dominan dalam aktivitas senam lantai'),
(82, 9, 13, 1, '2', '4.6', 'K', 0, ' mempraktikkan gerak dasar lokomotor dan non-lokomotor dalam aktivitas gerak berirama'),
(83, 9, 13, 1, '2', '4.7', 'K', 0, ' mempraktikkan berbagai pengenalan aktivitas air dan menjaga keselamatan  dalam aktivitas air'),
(84, 9, 15, 1, '2', '3.1', 'P', 0, ' memahami cara menghafal kalimat surat-surat pendek dengan bacaan yang benar'),
(85, 9, 15, 1, '2', '3.2', 'P', 0, ' memahami cara membaca kalimat sederhana'),
(86, 9, 15, 1, '2', '4.1', 'K', 0, ' menghafal kalimat surat-surat pendek dengan bacaan yang benar'),
(87, 9, 15, 1, '2', '4.2', 'K', 0, ' membaca kalimat sederhana'),
(88, 9, 19, 1, '2', '3.1', 'P', 0, ' memahami instruksi sangat sederhana dengan kosa kata baru dan ucapan lantang'),
(89, 9, 19, 1, '2', '3.2', 'P', 0, ' memahamai respon sesuai instruksi secara berterima'),
(90, 9, 19, 1, '2', '3.3', 'P', 0, ' memahami kalimat dan teks deskriptif bergambar sangat sederhana '),
(91, 9, 19, 1, '2', '4.1', 'K', 0, ' menanyakan suatu benda dan menanyakan seseorang'),
(92, 9, 19, 1, '2', '4.2', 'K', 0, ' menanyakan kegiatan yang sedang dilakukan  ukuran sebuah benda'),
(93, 9, 19, 1, '2', '4.3', 'K', 0, ' mengeja kosakata bahasa Inggris sangat sederhana '),
(94, 11, 1, 2, '1', '3.1', 'P', 0, ' mengetahui  tanda baca fathatain, kasratain, damatain, sukun dan tasydid '),
(95, 11, 1, 2, '1', '3.2a', 'P', 0, ' mengenal Alquran surat an-Nasr (110)'),
(96, 11, 1, 2, '1', '4.1', 'K', 0, ' membaca huruf hijaiyah  dan tanda bacanya'),
(97, 11, 1, 2, '1', '4.2a', 'K', 0, ' menghafalkan Alquran surat an-Nasr (110)'),
(99, 12, 20, 3, '2', 'T1', 'P', 0, 'Tugas 1'),
(100, 12, 21, 3, '2', 'UH', 'P', 0, 'Ulangan Harian'),
(101, 12, 20, 3, '1', 'UH', 'P', 0, 'Ulangan Harian'),
(102, 12, 24, 3, '2', 'UH', 'P', 0, 'Ulangan Harian'),
(103, 12, 24, 3, '2', 'T1', 'P', 0, 'Tugas 1'),
(104, 12, 24, 3, '1', '01', 'K', 0, 'Berhitung'),
(105, 12, 24, 3, '1', 'T1', 'P', 0, 'Tugas 1');

-- --------------------------------------------------------

--
-- Table structure for table `t_naikkelas`
--

CREATE TABLE `t_naikkelas` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `naik` enum('Y','N') NOT NULL,
  `catatan_wali` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai`
--

CREATE TABLE `t_nilai` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL DEFAULT '0',
  `jenis` enum('h','t','a') NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai`
--

INSERT INTO `t_nilai` (`id`, `tasm`, `jenis`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(3441, '20231', 'h', 25, 101, 532, 75),
(3442, '20231', 'h', 25, 101, 533, 85),
(3459, '20231', 'h', 28, 105, 532, 100),
(3460, '20231', 'h', 28, 105, 533, 0),
(3461, '20231', 'h', 28, 105, 534, 0),
(3443, '20231', 't', 25, 20, 532, 86),
(3444, '20231', 't', 25, 20, 533, 84),
(3453, '20231', 't', 28, 24, 532, 100),
(3454, '20231', 't', 28, 24, 533, 0),
(3455, '20231', 't', 28, 24, 534, 0),
(3445, '20231', 'a', 25, 20, 532, 87),
(3446, '20231', 'a', 25, 20, 533, 86),
(3456, '20231', 'a', 28, 24, 532, 100),
(3457, '20231', 'a', 28, 24, 533, 0),
(3458, '20231', 'a', 28, 24, 534, 0),
(3435, '20232', 'h', 21, 99, 532, 80),
(3436, '20232', 'h', 21, 99, 533, 80),
(3437, '20232', 'h', 22, 100, 532, 74),
(3438, '20232', 'h', 22, 100, 533, 77),
(3447, '20232', 'h', 27, 102, 532, 80),
(3448, '20232', 'h', 27, 102, 533, 85),
(3431, '20232', 't', 21, 20, 532, 80),
(3432, '20232', 't', 21, 20, 533, 85),
(3439, '20232', 't', 22, 21, 532, 78),
(3440, '20232', 't', 22, 21, 533, 73),
(3449, '20232', 't', 27, 24, 532, 88),
(3450, '20232', 't', 27, 24, 533, 85),
(3433, '20232', 'a', 21, 20, 532, 83),
(3434, '20232', 'a', 21, 20, 533, 86),
(3451, '20232', 'a', 27, 24, 532, 90),
(3452, '20232', 'a', 27, 24, 533, 75);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_absensi`
--

CREATE TABLE `t_nilai_absensi` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `s` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_ekstra`
--

CREATE TABLE `t_nilai_ekstra` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_ekstra` int(3) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `nilai` char(2) DEFAULT NULL,
  `desk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_ket`
--

CREATE TABLE `t_nilai_ket` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) NOT NULL,
  `id_guru_mapel` int(6) NOT NULL,
  `id_mapel_kd` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `nilai` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nilai_ket`
--

INSERT INTO `t_nilai_ket` (`id`, `tasm`, `id_guru_mapel`, `id_mapel_kd`, `id_siswa`, `nilai`) VALUES
(1938, '20231', 28, 104, 532, 100),
(1939, '20231', 28, 104, 533, 0),
(1940, '20231', 28, 104, 534, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_sikap_so`
--

CREATE TABLE `t_nilai_sikap_so` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_kelas` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_nilai_sikap_sp`
--

CREATE TABLE `t_nilai_sikap_sp` (
  `id` int(6) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_kelas` int(6) DEFAULT NULL,
  `id_siswa` int(6) DEFAULT NULL,
  `is_wali` enum('Y','N') DEFAULT NULL,
  `selalu` varchar(50) DEFAULT NULL,
  `mulai_meningkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_prestasi`
--

CREATE TABLE `t_prestasi` (
  `id` int(6) NOT NULL,
  `id_siswa` int(6) NOT NULL,
  `ta` char(5) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_walikelas`
--

CREATE TABLE `t_walikelas` (
  `id` int(3) NOT NULL,
  `tasm` varchar(5) DEFAULT NULL,
  `id_guru` int(2) DEFAULT NULL,
  `id_kelas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_walikelas`
--

INSERT INTO `t_walikelas` (`id`, `tasm`, `id_guru`, `id_kelas`) VALUES
(10, '2023', 13, 11),
(11, '2023', 14, 9),
(12, '2023', 12, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_ekstra`
--
ALTER TABLE `m_ekstra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_backupdb`
--
ALTER TABLE `t_backupdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD PRIMARY KEY (`id_kelas`,`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_kkm`
--
ALTER TABLE `t_kkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_nilai`
--
ALTER TABLE `t_nilai`
  ADD PRIMARY KEY (`tasm`,`jenis`,`id_guru_mapel`,`id_mapel_kd`,`id_siswa`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `t_nilai_absensi`
--
ALTER TABLE `t_nilai_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ekstra` (`id_ekstra`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  ADD PRIMARY KEY (`tasm`,`id_guru_mapel`,`id_mapel_kd`,`id_siswa`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru_mapel` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru_mapel` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `m_ekstra`
--
ALTER TABLE `m_ekstra`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_backupdb`
--
ALTER TABLE `t_backupdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `t_kkm`
--
ALTER TABLE `t_kkm`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_mapel_kd`
--
ALTER TABLE `t_mapel_kd`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `t_naikkelas`
--
ALTER TABLE `t_naikkelas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `t_nilai`
--
ALTER TABLE `t_nilai`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3462;

--
-- AUTO_INCREMENT for table `t_nilai_absensi`
--
ALTER TABLE `t_nilai_absensi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `t_nilai_ket`
--
ALTER TABLE `t_nilai_ket`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1941;

--
-- AUTO_INCREMENT for table `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `t_prestasi`
--
ALTER TABLE `t_prestasi`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_walikelas`
--
ALTER TABLE `t_walikelas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_guru_mapel`
--
ALTER TABLE `t_guru_mapel`
  ADD CONSTRAINT `FK_t_guru_mapel_m_guru` FOREIGN KEY (`id_guru`) REFERENCES `m_guru` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `FK_t_guru_mapel_m_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `m_mapel` (`id`);

--
-- Constraints for table `t_kelas_siswa`
--
ALTER TABLE `t_kelas_siswa`
  ADD CONSTRAINT `t_kelas_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`),
  ADD CONSTRAINT `t_kelas_siswa_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Constraints for table `t_nilai_ekstra`
--
ALTER TABLE `t_nilai_ekstra`
  ADD CONSTRAINT `FK_t_nilai_ekstra_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`),
  ADD CONSTRAINT `t_nilai_ekstra_ibfk_1` FOREIGN KEY (`id_ekstra`) REFERENCES `m_ekstra` (`id`);

--
-- Constraints for table `t_nilai_sikap_so`
--
ALTER TABLE `t_nilai_sikap_so`
  ADD CONSTRAINT `FK_t_nilai_sikap_so_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Constraints for table `t_nilai_sikap_sp`
--
ALTER TABLE `t_nilai_sikap_sp`
  ADD CONSTRAINT `FK_t_nilai_sikap_sp_m_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id`);

--
-- Constraints for table `t_walikelas`
--
ALTER TABLE `t_walikelas`
  ADD CONSTRAINT `FK_t_walikelas_m_guru` FOREIGN KEY (`id_guru`) REFERENCES `m_guru` (`id`),
  ADD CONSTRAINT `FK_t_walikelas_m_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
