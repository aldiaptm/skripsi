-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Apr 2024 pada 14.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kependudukan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(45, 'admin', 'admin@gmail.com', '$2y$10$rF2LWsYrXSm9upi9AE4A..DREwK2UXqmbePCAiRZf3p2DryoQcyMm', 2, 1, 1713369467);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ajukan_mutasi`
--

CREATE TABLE `ajukan_mutasi` (
  `id_ajukan` int(11) NOT NULL,
  `id_penduduk` int(11) NOT NULL,
  `jenis_mutasi` varchar(25) NOT NULL,
  `tanggal_ajukan` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0k7bhk1osqir301vp9q3d6adm52aq7e4', '::1', 1713768305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383330353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('0q2ukdo55cljs4p0qrc7g911c5sm7g4m', '::1', 1713946298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934363239383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('0usprk51bgjpi338op8r7kgtqcs9r1ul', '::1', 1713766928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363932383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('1fhrcqa6qj3c8mk7i2hlgk6out4bsru2', '::1', 1713853213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333231333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('1l32j7ev5mrin97fc8reffq1gvbc7nn8', '::1', 1713853602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333630323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('1ljrlgqtlfvv5hpqtj5t9t8c9boj53gn', '::1', 1713862186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323138363b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('24en6v6ftdqmkmq6o629bo97e1ojp29a', '::1', 1713766314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363331343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('24h8632tcsn2nnpae9vlcbq67vde7lnl', '::1', 1713768157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383135373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('3qaq57htg80f1pdg0ub8pt6ahmomt1pd', '::1', 1713862470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323437303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a32323a224461746120626572686173696c20646968617075732e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('3r63og602euthh8fbl3esgjlamqpkjbg', '::1', 1713767557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373535373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('48pgf1iicl1794s1kkch42pob0ut20r0', '::1', 1713769763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736393736333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('4c9mquh02n9ld6pd0k85dih92411brhc', '::1', 1713862069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323036393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a33313a22446174612070656e647564756b20626572686173696c20646968617075732e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('4n30hvad2rfpu473147e825p58phfbmf', '::1', 1713766555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363535353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('4v8o8mqnn905enjccpiio8n30ccaj6oa', '::1', 1713768477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383437373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('685j8luva38q0s1c9e13v9o790q9rqom', '::1', 1713770231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303233313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('6hqs5nlf2idbftai8m59u1rmuhpptqkb', '::1', 1713770155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303135353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('6i18ddb49ql8eir5hq0dm9p849ne37ab', '::1', 1713949564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934393536343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('6o8c0a0roi7233vpus45kkdv5dtv1td5', '::1', 1713853613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333630323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('741860glf8oes1k1u0mpg108eou13mbc', '::1', 1713771208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737313136393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('7cs0dofnsmgjhqhiim6hasdc7ebos6kb', '::1', 1713766408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363430383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('8hkpptd1g3bs61h12732litqkg5ahfj1', '::1', 1713769585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736393538353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('8monmnsmag4gjdqda5rhop46qkai3mll', '::1', 1713853021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333032313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('97vmfo088cnkdjhtbhvjdjpsndfqghvl', '::1', 1713949329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934393332393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('9ibtt8q808r4a1bmmc2gjdlr9buie7tq', '::1', 1713950490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935303439303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('9n6hsqtk0s61qlrkfopbvn3uv77j95au', '::1', 1713853540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333534303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('9ofdd6fe0b1nogmok0pm2voo5rnd8s5b', '::1', 1713767245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373234353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('a5nokcpsj7lcdu7dnero33bfd449oqre', '::1', 1713767717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373731373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('aq7fma6n0i1ibdi9klq9kd9iqne7ipl8', '::1', 1713767795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373739353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('bec1sjr69a4bvfj3b562hc0p85d7qkhl', '::1', 1713766701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363730313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('cajipqh1a1ogj5n2t8l867m34d6uhviv', '::1', 1713861925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836313932353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a33323a22446174612070656e647564756b20626572686173696c2064697570646174652e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('cfmj07cpm3hscmmoka312iiehjbovi4p', '::1', 1713766486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363438363b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('dpb84gb643ddtr83p3fr2u4h7c613bn3', '::1', 1713768842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383834323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('eqd1edj1m0bvr9v80dl5n327iq130a0o', '::1', 1713767490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373439303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('ev617ns3orhsn69p131eakihntfr7o2o', '::1', 1713770389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303338393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('evpfglsll1ro1s95nk0e85ehoj5sgnbe', '::1', 1713949484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934393438343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('gpe1e9s73h3gg3qib6uec179dae9o46t', '::1', 1713950221, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935303232313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('gpr9ol52k68b16emseklsmsor89fbngb', '::1', 1713766072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363037323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('gqsudd7iifth0eltdocrercfttqic7fk', '::1', 1713853424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835333432343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('hdvb0d9787koictbbvukkcnbk3rtca1b', '::1', 1713768377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383337373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('i26hmfsrd55gnort8m16v4n49mds63n2', '::1', 1713770807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303830373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('idccj7fihfvsj26bt69kee5088306b31', '::1', 1713862642, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323634323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a37373a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e4461746120426572686173696c20446974616d6261686b616e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('iedler6dp9tsuid39prj8hjv67vdip9n', '::1', 1713946235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934363233353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('in5c44qn94fe5ivfk61dcverollteu1o', '::1', 1713766828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363832383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('j035kksfispvbk15pkmo84ccl2e9u2me', '::1', 1713768933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383933333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('jfgbb7r7knrdhnoucrn057sip40j8io0', '::1', 1713862322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323332323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a37373a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e4461746120426572686173696c20446974616d6261686b616e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('ke8e0idkdif8g1ghmes22io7tsb6mvdq', '::1', 1713945907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934353930373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('kqcjkq92ps6pjh8o0a43girmo6poit0t', '::1', 1713767656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373635363b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('ktfqoj4cc6pkmtkd97e2h4o9e2rf6hpf', '::1', 1713768777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383737373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('lf57no3463esmq6ottmgnnf4qm23bi3b', '::1', 1713949760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934393736303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('lkngg533tn7325hkid3o56gt0k1lbqnu', '::1', 1713769000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736393030303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('llonpqe2hs11156qihk5jqa1mpua747c', '::1', 1713862933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323933333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a33313a22446174612070656e647564756b20626572686173696c20646968617075732e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('luuub78afvu10hvs3ch49uree59vamk6', '::1', 1713861754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836313735343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('mg42al8o3151im210beq9mob798vnh87', '::1', 1713862935, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323933333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('mggm5jgitgolv2ooov84gidgdgi3jo7g', '::1', 1713771070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737313037303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('ncmheru66df53h03ar0ls7kcpg680iii', '::1', 1713767011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373031313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('o0mfceu9vu41i3uvcnnm6999bk3lml19', '::1', 1713771169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737313136393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('o59202nkd0dsbivlvhej2cb0janbo0bk', '::1', 1713862859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323835393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a37373a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e4461746120426572686173696c20446974616d6261686b616e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('o690cprp7h6tjtpm77ra9hmdnjegef93', '::1', 1713768219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383231393b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('opsq38946f5lhf6s2cr23s47r9hk73ga', '::1', 1713767993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373939333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('qj2adhk6qjvgqbu67vbudpakk37fkpp0', '::1', 1713862581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836323538313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('qpp0pt7r75l9mho1og22kvqc6pq1lomo', '::1', 1713771007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737313030373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('r1jnl95248fqbk4cnb3smgdoa45sfge3', '::1', 1713950410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935303431303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('rarla1n2357is1q3mpa0lvnofcaalhoq', '::1', 1713769910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736393931303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('rmta9smg7ljctere9h7kotub9ueog5ga', '::1', 1713950145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935303134353b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('rtmmsmnqaangdgb06176m1bgl2bb3cj0', '::1', 1713852913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333835323931333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('s26urso7p7g8jckrphtq9llfq1muj7s2', '::1', 1713768058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383035383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('s2b24c9aalrv09tccupcni9kl4rb4k5f', '::1', 1713766011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363031313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('sl059ihpim92a24kds74a3a8t5nv5edo', '::1', 1713770037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303033373b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('slhja3m36m08jge8n7j237fqd5uoq6bm', '::1', 1713767914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373931343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('sroqq9dcskppps7oot3rmoi1ufub2hdl', '::1', 1713770900, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303930303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('su21dhjk4f5eo1i798rud8ia92oi7rtt', '::1', 1713949238, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333934393233383b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('tfsaapck1es40hcls7au3okt0dkfq73r', '::1', 1713861822, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333836313832323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d6d6573736167657c733a37373a223c64697620636c6173733d22616c65727420616c6572742d737563636573732220726f6c653d22616c657274223e4461746120426572686173696c20446974616d6261686b616e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('u31p6c75ocvlmqffdvdm0e84vjm49is9', '::1', 1713950521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333935303439303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('u5njd53hn07pvfdm6u82iohg1s6a88ig', '::1', 1713768540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736383534303b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('uc9bscug6976bafp9h8s58lcdf932odu', '::1', 1713769663, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736393636333b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('umkr8hu3qb9a60m8j42larhnpq26rep6', '::1', 1713765852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736353835323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('up8ftbvg0ad09ase2sjivduvnbqcmbi0', '::1', 1713767364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736373336343b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('utrqp252i4c00tpjkqjv3f2f7r3c7v85', '::1', 1713770452, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303435323b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('vdq7nl89vbm74mm9fn392gp2nd54vbtv', '::1', 1713770551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333737303535313b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d),
('vlkajn4mv9se9jvr1eplvr1ft8hcqrv0', '::1', 1713766766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313731333736363736363b61646d696e5f646174617c613a323a7b733a353a22656d61696c223b733a31353a2261646d696e40676d61696c2e636f6d223b733a373a22726f6c655f6964223b733a313a2232223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarmutasi`
--

CREATE TABLE `daftarmutasi` (
  `id_mutasi` int(11) NOT NULL,
  `id_penduduk` int(11) NOT NULL,
  `jenis_mutasi` enum('pindah','meninggal','lahir') NOT NULL,
  `tanggal_ajukan` int(11) NOT NULL,
  `status` int(100) NOT NULL,
  `keterangan` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_meninggal`
--

CREATE TABLE `detail_meninggal` (
  `id_detail_meninggal` int(11) NOT NULL,
  `id_penduduk` int(11) NOT NULL,
  `tanggal_kematian` date NOT NULL,
  `tempat_kematian` varchar(50) NOT NULL,
  `tempat_kelahiran` varchar(50) NOT NULL,
  `tanggal_kelahiran` date NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pindah`
--

CREATE TABLE `detail_pindah` (
  `id_detail_pindah` int(11) NOT NULL,
  `id_penduduk` int(11) NOT NULL,
  `tanggal_pindah` date NOT NULL,
  `alamat_asal` varchar(100) NOT NULL,
  `alamat_tujuan` varchar(100) NOT NULL,
  `alasan_pindah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pindah`
--

INSERT INTO `detail_pindah` (`id_detail_pindah`, `id_penduduk`, `tanggal_pindah`, `alamat_asal`, `alamat_tujuan`, `alasan_pindah`) VALUES
(18, 138, '2002-10-05', 'Kalimantan', 'Kalimantan', 'sakit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id_penduduk` int(11) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `foto_ktp` varchar(500) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki laki','perempuan') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `status` enum('Menikah','Belum menikah') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `id_rw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penduduk`
--

INSERT INTO `penduduk` (`id_penduduk`, `nik`, `foto_ktp`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `alamat`, `status`, `pekerjaan`, `id_rw`) VALUES
(138, '010101', '', 'Fawwaz Aziz', 'Bekasi', '2002-10-05', 'laki laki', 'Islam', 'Pondok Ungu Permai Blok E4 No 1, RT 001 RW 0014', 'Belum menikah', 'Penulis/Editor', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rw`
--

CREATE TABLE `rw` (
  `id_rw` int(11) NOT NULL,
  `nama_rw` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rw`
--

INSERT INTO `rw` (`id_rw`, `nama_rw`, `alamat`) VALUES
(1, 'RW001', 'Jl. RW001'),
(2, 'RW002', 'Jl. RW002'),
(3, 'RW003', 'Jl. RW003'),
(4, 'RW004', 'JL.RW004'),
(5, 'RW005', 'JL.RW005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(2, 'administrator'),
(1, 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `ajukan_mutasi`
--
ALTER TABLE `ajukan_mutasi`
  ADD PRIMARY KEY (`id_ajukan`),
  ADD UNIQUE KEY `id_penduduk` (`id_penduduk`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `daftarmutasi`
--
ALTER TABLE `daftarmutasi`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD UNIQUE KEY `id_penduduk` (`id_penduduk`);

--
-- Indeks untuk tabel `detail_meninggal`
--
ALTER TABLE `detail_meninggal`
  ADD PRIMARY KEY (`id_detail_meninggal`),
  ADD UNIQUE KEY `id_penduduk` (`id_penduduk`);

--
-- Indeks untuk tabel `detail_pindah`
--
ALTER TABLE `detail_pindah`
  ADD PRIMARY KEY (`id_detail_pindah`),
  ADD UNIQUE KEY `id_penduduk` (`id_penduduk`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD KEY `penduduk_ibfk_1` (`id_rw`);

--
-- Indeks untuk tabel `rw`
--
ALTER TABLE `rw`
  ADD PRIMARY KEY (`id_rw`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `ajukan_mutasi`
--
ALTER TABLE `ajukan_mutasi`
  MODIFY `id_ajukan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `daftarmutasi`
--
ALTER TABLE `daftarmutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_meninggal`
--
ALTER TABLE `detail_meninggal`
  MODIFY `id_detail_meninggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `detail_pindah`
--
ALTER TABLE `detail_pindah`
  MODIFY `id_detail_pindah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id_penduduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `rw`
--
ALTER TABLE `rw`
  MODIFY `id_rw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`);

--
-- Ketidakleluasaan untuk tabel `ajukan_mutasi`
--
ALTER TABLE `ajukan_mutasi`
  ADD CONSTRAINT `ajukan_mutasi_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `daftarmutasi`
--
ALTER TABLE `daftarmutasi`
  ADD CONSTRAINT `daftarmutasi_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `detail_meninggal`
--
ALTER TABLE `detail_meninggal`
  ADD CONSTRAINT `detail_meninggal_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `detail_pindah`
--
ALTER TABLE `detail_pindah`
  ADD CONSTRAINT `detail_pindah_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `penduduk` (`id_penduduk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD CONSTRAINT `penduduk_ibfk_1` FOREIGN KEY (`id_rw`) REFERENCES `rw` (`id_rw`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
