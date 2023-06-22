-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2023 pada 09.42
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('4fm4r1oKxQVSlboOejqi', 'o7jHkEDhhie1z8WqHbOO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('GMbm0BHSUQrdK3EHQq3u', '4VYnoWLGb7uHUqipdJvu', 'AcqkGnkBiIzDb0QX3G7K', 'I6WDMeDwnisS3uYYqugM', 'Materinya sangat matang, mantap banget pak!', '2023-06-22'),
('LyNE3RX1LhfnnFlsot5t', 'HJvmfDIKlQ5w3asvhvz4', 'AcqkGnkBiIzDb0QX3G7K', 'Kcc8rwutV3LImN46b5MD', 'Materinya keren poll, saya jadi paham mengenai dasar-dasar html', '2023-06-22'),
('we1vGd1UYomXdBXBBA6Q', 'HJvmfDIKlQ5w3asvhvz4', '4fm4r1oKxQVSlboOejqi', 'Kcc8rwutV3LImN46b5MD', 'Wah kelasnya sangat bagus materinya, teruskan pak!', '2023-06-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('4VYnoWLGb7uHUqipdJvu', 'I6WDMeDwnisS3uYYqugM', 'fdr9Eu4R7quLtmpH5Zku', 'Apa itu php?', 'PHP (Hypertext Preprocessor) adalah bahasa pemrograman server-side yang dirancang khusus untuk pengembangan aplikasi web. PHP digunakan untuk membuat halaman web dinamis yang dapat berinteraksi dengan pengguna dan mengambil data dari basis data.', 'OuUpbanvEWXhG2mc7GbW.mp4', 'lx1ZWgv6PINNpnbiX2Ek.png', '2023-06-22', 'active'),
('HJvmfDIKlQ5w3asvhvz4', 'Kcc8rwutV3LImN46b5MD', 'o7jHkEDhhie1z8WqHbOO', 'Apa itu html?', 'HTML (HyperText Markup Language) adalah bahasa markup yang digunakan untuk membangun dan mendesain halaman web. Ini adalah fondasi dari hampir semua situs web di internet. HTML menggunakan tag-tag atau elemen-elemen untuk memberi struktur dan format pada konten web, seperti teks, gambar, video, dan hyperlink. ', '4yRka1rOvHqNuowppcM5.mp4', 'mxKRBA0lsIPlJKrYe6tq.png', '2023-06-22', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('AcqkGnkBiIzDb0QX3G7K', 'I6WDMeDwnisS3uYYqugM', '4VYnoWLGb7uHUqipdJvu'),
('AcqkGnkBiIzDb0QX3G7K', 'Kcc8rwutV3LImN46b5MD', 'HJvmfDIKlQ5w3asvhvz4'),
('4fm4r1oKxQVSlboOejqi', 'Kcc8rwutV3LImN46b5MD', 'HJvmfDIKlQ5w3asvhvz4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('fdr9Eu4R7quLtmpH5Zku', 'I6WDMeDwnisS3uYYqugM', 'PHP Dasar', 'Mengenal dasar-dasar php', '6Etuhaxp8SDlGPbLVNZN.png', '2023-06-22', 'active'),
('o7jHkEDhhie1z8WqHbOO', 'Kcc8rwutV3LImN46b5MD', 'HTML Dasar', 'Mengenal dasar-dasar html', 'FPNlvTrW4x0PFQlB4oVH.png', '2023-06-22', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('I6WDMeDwnisS3uYYqugM', 'Brams Aldy', 'developer', 'ba@learnwave.com', '5270616fc6b461ffae1286f972afb739066d7fae', 'ik6kTWwT0bbofNwxkHXz.jpg'),
('Kcc8rwutV3LImN46b5MD', 'Agus Prayogo', 'engineer', 'ap@learnwave.com', '660584e569bcad6a894aca68253486bd4b35f468', 'pWipeOL6jeqO6eSf4Pgj.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('4fm4r1oKxQVSlboOejqi', 'Rembo', 'rembo@learnwave.com', '442b084eecc56266cd67f73ec1949dfbd65d3ab4', 'PbwscqYQOiRewFkFNm9S.jpg'),
('AcqkGnkBiIzDb0QX3G7K', 'aldya', 'aldya@learnwave.com', '709cb731ecbc195b12068c53c3c3f059e3a26a63', 'c9B0UEpZwt9u323pWFFu.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
