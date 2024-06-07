-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2024 pada 02.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whateverscreen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` varchar(35) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL,
  `message` text NOT NULL,
  `craeted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `craeted_at`) VALUES
('6651f0faaf88e1.72144045', 'afkarezi', 'ebdtv4@gmail.com', 'backboy', '2024-05-25 07:08:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_movie`
--

CREATE TABLE `tb_movie` (
  `id` varchar(35) NOT NULL,
  `title` varchar(225) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `katagori_umur` int(20) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `casting` text NOT NULL,
  `draft` enum('true','false') NOT NULL DEFAULT 'true',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_movie`
--

INSERT INTO `tb_movie` (`id`, `title`, `gambar`, `slug`, `deskripsi`, `content`, `katagori_umur`, `genre`, `casting`, `draft`, `created_at`, `url`) VALUES
('665defc64a1cb2.18210744', 'Avenger End Game', 'd89e2fb0620532a2c156eb632510f2b2.jpg', 'avenger-end-game-665defc64a1cb2.18210744', 'Avenger End Game is Awesome Action film', 'Avengers: Endgame adalah film pahlawan super Amerika tahun 2019 yang berdasarkan kisah tim pahlawan super Avengers dari Marvel Comics. Film yang diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures ini adalah sekuel langsung Avengers: Infinity War (2018) dan merupakan film ke-22 Marvel Cinematic Universe (MCU). Film ini disutradarai oleh Anthony dan Joe Russo dan ditulis oleh Christopher Markus dan Stephen McFeely, dan menampilkan pemeran ensambel di antaranya Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, dan Josh Brolin. Pada film ini, anggota Avengers yang masih hidup dan para sekutunya berusaha untuk membalikkan kerusakan yang disebabkan oleh Thanos dalam Infinity War.\r\n\r\nFilm ini diumumkan pada Oktober 2014 sebagai Avengers: Infinity War – Part 2. Russo bersaudara ditunjuk sebagai sutradara pada April 2015, kemudian Markus dan McFeely dikontrak sebagai penulis naskah film sebulan kemudian. Film ini menjadi penutup jalan cerita MCU hingga saat itu, sekaligus mengakhiri alur cerita beberapa tokoh utama. Plot film ini meninjau kembali beberapa momen dari film-film sebelumnya, dengan menghadirkan kembali para aktor dan berbagai latar yang pernah ada di MCU. Syuting dimulai pada bulan Agustus 2017 di Pinewood Atlanta Studios di Fayette County, Georgia, dilakukan secara beriringan dengan syuting Infinity War, dan berakhir pada Januari 2018. Syuting tambahan dilakukan di wilayah metropolitan dan pusat kota Atlanta, negara bagian New York, Skotlandia, dan Inggris. Judul resmi terungkap pada Desember 2018. Dengan perkiraan anggaran 356 hingga 400 juta dolar, film ini menjadi salah satu film termahal yang pernah dibuat.', 20, 'Action', '\r\nScarlett Johansson\r\nNatasha Romanoff\r\n\r\nJeremy Renner\r\nClint Barton\r\n\r\nMark Ruffalo\r\nDr. Bruce Banner\r\n\r\nChris Evans\r\nCaptain America\r\n\r\nCobie Smulders\r\nMaria Hill\r\n\r\nChris Hemsworth\r\nThor\r\n\r\nElizabeth Olsen\r\n\r\nAshley Johnson\r\nWaitress #1\r\n\r\nRobert Downey Jr.\r\nIron Man\r\n\r\nTom Hiddleston\r\nLoki\r\n\r\nClark Gregg\r\nAgent Coulson\r\n\r\nLinda Cardellini\r\n\r\nSamuel L. Jackson\r\nNick Fury\r\n\r\nPaul Bettany\r\nJ.A.R.V.I.S.\r\n\r\nAaron Taylor-Johnson\r\n\r\nStellan Skarsgård\r\nDr. Erik Selvig', '', '2024-06-03 09:31:02', 'https://www.youtube.com/embed/TcMBFSGVi1c\" title=\"Marvel Studios&#39; Avengers: Endgame - Official Trailer\"');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` varchar(35) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(225) NOT NULL,
  `avatar` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL,
  `password_updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `avatar`, `created_at`, `last_login`, `password_updated_at`) VALUES
('6118b2a943acc2.78631959', 'Administrator', 'admin@mail.com', 'admin', '$2y$10$CyDqHYm9Sy3vjR/oSoyjV.9UqvQSnrDe.r/M.N5cvgbiOeUWO.Eom', '', '2024-05-28 12:05:31', '2024-06-04 02:07:31', '2024-06-03 17:51:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_movie`
--
ALTER TABLE `tb_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
