-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2026 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `slug`, `konten`, `gambar`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 'Program Studi Informatika UNIBI Raih Akreditasi Presitisius dari LAM INFOKOM dengan Predikat \"Baik Sekali\"', 'prodi-informatika-unibi-raih-akreditasi-presitisius-dari-lam-infokom', 'Bandung, 20 Desember 2024 - Universitas Informatika dan Bisnis Indonesia (UNIBI) kembali menorehkan prestasi gemilang. Program Studi Informatika pada Fakultas Teknologi dan Informatika berhasil mendapatkan Akreditasi \"Baik Sekali\" dari Lembaga Akreditasi Mandiri Informatika dan Komputer (LAM INFOKOM). Penghargaan ini diberikan berdasarkan Keputusan LAM INFOKOM No. 235/SK/LAM-INFOKOM/Ak/IX/2024 dan berlaku mulai 17 Desember 2024 hingga 17 Desember 2029. Prestasi ini membuktikan komitmen prodi dalam menjaga kualitas pendidikan.', 'highlight_akreditasi_1.jpg', '2024-12-20', '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(2, 'S1 Sistem Informasi UNIBI Gelar Workshop UI/UX & Web Development Bersama Praktisi Industri', 's1-sistem-informasi-unibi-gelar-workshop-ui-ux-web-development', 'Bandung, 10 Januari 2025 - Program Studi S1 Sistem Informasi UNIBI menyelenggarakan workshop intensif bertajuk \"Modern UI/UX Design and Web Development inside Laravel ecosystem\". Workshop ini dipandu oleh praktisi industri dari startup terkemuka, yang bertujuan untuk meningkatkan keahlian praktis mahasiswa dalam perancangan antarmuka pengguna serta pengembangan aplikasi web modern.', 'highlight_workshop.jpg', '2025-01-10', '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(3, 'Mahasiswa Sistem Informasi UNIBI Sabet Juara 1 Hackathon Nasional 2025', 'mahasiswa-sistem-informasi-unibi-sabet-juara-1-hackathon-nasional-2025', 'Jakarta, 15 Maret 2025 - Tim Antigravity dari Program Studi Sistem Informasi UNIBI berhasil meraih juara pertama dalam ajang bergengsi Hackathon Nasional 2025. Tim yang terdiri dari tiga mahasiswa tingkat akhir ini merancang aplikasi berbasis kecerdasan buatan untuk mengoptimalkan distribusi logistik di daerah terpencil. Juri memuji solusi inovatif dan prototipe web Laravel yang stabil.', 'highlight_hackathon.jpg', '2025-03-15', '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(4, 'Pentingnya Cyber Security di Era Transformasi Digital: Kuliah Umum S1 Sistem Informasi', 'pentingnya-cyber-security-di-era-transformasi-digital', 'Bandung, 05 April 2025 - Menanggapi maraknya isu kebocoran data nasional, Program Studi S1 Sistem Informasi UNIBI mengadakan kuliah umum bertajuk \"Cyber Security Essentials\". Acara ini menghadirkan pembicara ahli dari BSSN (Badan Siber dan Sandi Negara) untuk memberikan pemahaman komprehensif bagi mahasiswa tentang ancaman siber dan pertahanan server.', 'highlight_cybersecurity.jpg', '2025-04-05', '2026-06-24 03:41:33', '2026-06-24 03:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `bidang_keahlian` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama_lengkap`, `slug`, `bidang_keahlian`, `foto`, `created_at`, `updated_at`) VALUES
(1, '0123456789', 'Lee Soo Man', 'lee-soo-man', 'Pengembangan Perangkat Lunak', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(2, '0199702141', 'Jung Jaehyun', 'jung-jaehyun', 'Cyber Security', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(3, '0199103291', 'Bae Joohyun', 'bae-joohyun', 'Tata Kelola Manajemen', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(4, '0200004233', 'Lee Jeno', 'lee-jeno', 'Business Intelligence', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(5, '0199402102', 'Kang Seulgi', 'kang-seulgi', 'UI/UX Designer', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(6, '0211223344', 'Na Jaemin', 'na-jaemin', 'Data Science', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(7, '0222334455', 'Mark Lee', 'mark-lee', 'Cloud Computing', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(8, '0233445566', 'Huang Renjun', 'huang-renjun', 'Artificial Intelligence', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(9, '0244556677', 'Zhong Chenle', 'zhong-chenle', 'Database Administrator', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33'),
(10, '0255667788', 'Park Jisung', 'park-jisung', 'Mobile Development', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_06_04_123517_create_berita_table', 1),
(6, '2026_06_04_123517_create_dosen_table', 1),
(7, '2026_06_04_123518_create_pmb_table', 1),
(8, '2026_06_18_073745_add_gambar_to_berita_table', 1),
(9, '2026_06_20_000000_create_settings_table', 1),
(10, '2026_06_20_000001_create_galleries_table', 1),
(11, '2026_06_20_000002_add_foto_to_dosen_table', 1),
(12, '2026_06_24_103939_add_slug_to_dosen_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmb`
--

CREATE TABLE `pmb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sistem Informasi', 'admin@unibi.ac.id', '2026-06-24 03:41:33', '$2y$10$rcgHsUB/fWM8qsFDoviTW.N26efsBftw5YvQQc1QpZ4qmcBdxBXRO', NULL, '2026-06-24 03:41:33', '2026-06-24 03:41:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `berita_slug_unique` (`slug`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosen_nidn_unique` (`nidn`),
  ADD UNIQUE KEY `dosen_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pmb`
--
ALTER TABLE `pmb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmb`
--
ALTER TABLE `pmb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
