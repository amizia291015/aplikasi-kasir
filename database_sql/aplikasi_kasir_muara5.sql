-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2024 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_kasir_muara5`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `harga_beli` double(8,2) NOT NULL,
  `harga_jual` double(8,2) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode`, `nama`, `kategori_id`, `harga_beli`, `harga_jual`, `satuan_id`, `stok`, `diskon`, `created_at`, `updated_at`) VALUES
(1, '202431001', 'Alat Linting Regular', '1', 3000.00, 5000.00, 1, 9, 0.00, '2024-03-08 03:58:57', '2024-07-03 04:10:00'),
(2, '202471002', 'Alat Linting Mild', '1', 3000.00, 5000.00, 1, 10, 0.00, '2024-07-02 05:47:34', '2024-07-02 05:47:34'),
(3, '202471003', 'alat linting slorok biru', '1', 12000.00, 16000.00, 1, 0, 0.00, '2024-07-02 05:48:48', '2024-07-02 05:48:48'),
(4, '202471004', 'Alat Linting Becak Abu', '1', 15000.00, 20000.00, 1, 0, 0.00, '2024-07-02 05:49:29', '2024-07-02 05:49:29'),
(5, '202471005', 'Kain Serep Alat Linting Regular 90', '1', 1500.00, 3000.00, 1, 10, 0.00, '2024-07-02 05:50:57', '2024-07-02 05:50:57'),
(6, '202471006', 'Kain Serep Alat Linting Esse 90', '1', 1500.00, 3000.00, 1, 10, 0.00, '2024-07-02 05:51:33', '2024-07-02 05:51:33'),
(7, '202471007', 'Kain Serep Alat Linting Mild 90', '1', 1500.00, 3000.00, 1, 10, 0.00, '2024-07-02 05:52:04', '2024-07-02 05:52:04'),
(8, '202471008', 'Plastik Serep Alat Linting Reguler 90', '1', 500.00, 1000.00, 1, 10, 0.00, '2024-07-02 05:54:17', '2024-07-02 05:54:17'),
(9, '202471009', 'Plastik Serep Alat Linting Mild 90', '1', 500.00, 1000.00, 1, 10, 0.00, '2024-07-02 05:54:43', '2024-07-02 05:54:43'),
(10, '202471010', 'Lem Kertas Biasa', '6', 1000.00, 2000.00, 1, 24, 0.00, '2024-07-02 06:01:03', '2024-07-03 04:10:00'),
(11, '202471011', 'Lem Kertas Montana', '6', 2000.00, 3000.00, 1, 20, 0.00, '2024-07-02 06:02:17', '2024-07-02 06:02:17'),
(12, '202471012', 'korek', '7', 1500.00, 2500.00, 1, 40, 0.00, '2024-07-02 06:03:42', '2024-07-02 06:03:42'),
(13, '202471013', 'Cengkeh Klinting', '5', 1500.00, 2000.00, 1, 10, 0.00, '2024-07-02 06:05:34', '2024-07-02 06:05:34'),
(14, '202471014', 'Cengkeh Menjangan Kuning', '5', 1500.00, 2000.00, 1, 20, 0.00, '2024-07-02 06:06:02', '2024-07-02 06:06:02'),
(15, '202471015', 'Kertas Bufallo Bill Strip Kuning', '4', 500.00, 1000.00, 1, 50, 0.00, '2024-07-02 06:07:39', '2024-07-02 06:07:39'),
(16, '202471016', 'Kertas Manis Mangga', '4', 500.00, 1000.00, 1, 25, 0.00, '2024-07-02 06:08:10', '2024-07-02 06:08:10'),
(17, '202471017', 'Kertas Pabrikan 1 bendel', '4', 15000.00, 20000.00, 6, 10, 0.00, '2024-07-02 06:10:51', '2024-07-02 06:10:51'),
(18, '202471018', 'Kertas Pabrikan Kecil', '4', 500.00, 1000.00, 9, 49, 0.00, '2024-07-02 07:29:08', '2024-07-03 04:10:00'),
(19, '202471019', 'Kertas Pabrikan Sedang', '4', 3000.00, 5000.00, 9, 50, 0.00, '2024-07-02 07:29:50', '2024-07-02 07:29:50'),
(20, '202471020', 'Busa Filter Regular 50gr', '3', 3000.00, 5000.00, 5, 20, 0.00, '2024-07-02 07:32:42', '2024-07-02 07:36:09'),
(21, '202471021', 'Busa Filter Mild 50gr', '3', 3500.00, 5000.00, 5, 20, 0.00, '2024-07-02 07:33:58', '2024-07-02 07:36:29'),
(22, '202471022', 'Busa Filter Esse 50gr', '3', 3000.00, 5000.00, 5, 20, 0.00, '2024-07-02 07:35:14', '2024-07-02 07:35:14'),
(23, '202471023', 'Busa Filter Reguler Mentol 50gr', '3', 3000.00, 5000.00, 5, 0, 0.00, '2024-07-02 07:35:54', '2024-07-02 07:37:42'),
(24, '202471024', 'Busa Filter Mild Mentol 50gr', '3', 3000.00, 5000.00, 5, 0, 0.00, '2024-07-02 07:37:27', '2024-07-02 07:40:08'),
(25, '202471025', 'Busa Filter Charcoal 50gr', '3', 3000.00, 5000.00, 5, 0, 0.00, '2024-07-02 07:44:40', '2024-07-02 07:44:40'),
(26, '202471026', 'Busa Filter Bolong Reguler 50gr', '3', 3000.00, 5000.00, 5, 10, 0.00, '2024-07-02 07:46:51', '2024-07-02 07:46:51'),
(27, '202471027', 'Bako Mild Queenbee 50gr', '2', 7000.00, 10000.00, 5, 19, 0.00, '2024-07-02 07:59:21', '2024-07-03 04:10:00'),
(28, '202471028', 'Bako Gudang Garam Filter Queenbee 50gr', '2', 7000.00, 10000.00, 5, 10, 0.00, '2024-07-02 08:03:46', '2024-07-02 08:03:46'),
(29, '202471029', 'Bako Samsu Queenbee 50gr', '2', 7000.00, 10000.00, 5, 10, 0.00, '2024-07-02 08:04:33', '2024-07-02 08:05:03'),
(30, '202471030', 'Bako Surya Queenbee 50gr', '2', 7000.00, 10000.00, 5, 10, 0.00, '2024-07-02 08:05:54', '2024-07-02 08:05:54'),
(31, '202471031', 'Bako Djarum Super Queenbee 50gr', '2', 7000.00, 10000.00, 5, 10, 0.00, '2024-07-02 08:10:36', '2024-07-02 08:10:36'),
(32, '202471032', 'Bako Mild Mentol Queenbee 50gr', '2', 7000.00, 10000.00, 5, 10, 0.00, '2024-07-03 01:31:30', '2024-07-03 01:31:30'),
(33, '202471033', 'Bako Marlboro Queenbee 50gr', '2', 7000.00, 10000.00, 5, 0, 0.00, '2024-07-03 01:32:30', '2024-07-03 01:33:41'),
(34, '202471034', 'Bako Dunhill Queenbee 50gr', '2', 7000.00, 10000.00, 5, 0, 0.00, '2024-07-03 01:33:18', '2024-07-03 01:33:18'),
(35, '202471035', 'Bako Black Cappucino Queenbee 50gr', '2', 7000.00, 10000.00, 5, 5, 0.00, '2024-07-03 01:34:35', '2024-07-03 01:34:35'),
(36, '202471036', 'Bako Marlboro Mentol Queenbee 50gr', '2', 7000.00, 10000.00, 5, 0, 0.00, '2024-07-03 01:39:34', '2024-07-03 01:39:34'),
(37, '202471037', 'Bako Jayana Greentea 50gr', '2', 7000.00, 10000.00, 5, 5, 0.00, '2024-07-03 01:47:25', '2024-07-03 01:47:25'),
(38, '202471038', 'Bako Jayana Greentea 100gr', '2', 14000.00, 20000.00, 2, 5, 0.00, '2024-07-03 01:47:55', '2024-07-03 01:50:37'),
(39, '202471039', 'Bako Indobacco Apple Ice 50gr', '2', 7000.00, 10000.00, 5, 5, 0.00, '2024-07-03 01:49:36', '2024-07-03 01:49:36'),
(40, '202471040', 'Bako Indobacco Apple Ice 100gr', '2', 14000.00, 20000.00, 2, 5, 0.00, '2024-07-03 01:50:16', '2024-07-03 01:50:16'),
(41, '202471041', 'Bako Sw Prime', '2', 13000.00, 16000.00, 1, 7, 0.00, '2024-07-03 01:52:37', '2024-07-03 01:52:37'),
(42, '202471042', 'Bako RB Frime', '2', 10500.00, 13000.00, 1, 10, 0.00, '2024-07-03 01:54:02', '2024-07-03 01:54:02'),
(43, '202471043', 'Bako Barrack', '2', 15000.00, 18000.00, 1, 30, 0.00, '2024-07-03 01:57:03', '2024-07-03 01:57:03'),
(44, '202471044', 'Bako Racik Pabrikan Samsu 50gr', '2', 5000.00, 7000.00, 5, 10, 0.00, '2024-07-03 02:02:20', '2024-07-03 02:02:20'),
(45, '202471045', 'Bako Racik Pabrikan Surya 50gr', '2', 5000.00, 7000.00, 5, 10, 0.00, '2024-07-03 03:29:22', '2024-07-03 03:29:22');

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
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Alat Linting', '2024-03-08 03:55:26', '2024-03-08 03:55:26'),
(2, 'Bako', '2024-07-02 05:56:15', '2024-07-02 05:56:15'),
(3, 'Busa', '2024-07-02 05:56:38', '2024-07-02 05:56:38'),
(4, 'Papir', '2024-07-02 05:56:45', '2024-07-02 05:56:45'),
(5, 'Cengkeh', '2024-07-02 05:56:59', '2024-07-02 05:56:59'),
(6, 'Lem', '2024-07-02 05:57:09', '2024-07-02 05:57:09'),
(7, 'Korek', '2024-07-02 05:57:16', '2024-07-02 05:57:16');

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
(5, '2024_01_08_132653_create_kategoris_table', 1),
(6, '2024_01_08_132723_create_satuans_table', 1),
(7, '2024_01_08_132733_create_barangs_table', 1),
(8, '2024_01_12_125330_create_transaksis_table', 1),
(9, '2024_01_12_125358_create_transaksi_sementaras_table', 1),
(10, '2024_01_15_004113_create_transaksi_details_table', 1);

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
-- Table structure for table `satuans`
--

CREATE TABLE `satuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `satuans`
--

INSERT INTO `satuans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pcs', '2024-03-08 03:58:05', '2024-03-08 03:58:05'),
(2, '100gr', '2024-07-02 05:37:31', '2024-07-02 05:37:31'),
(3, '500gr', '2024-07-02 05:38:24', '2024-07-02 05:38:33'),
(4, '1kg', '2024-07-02 05:38:48', '2024-07-02 05:38:48'),
(5, '50gr', '2024-07-02 05:38:59', '2024-07-02 05:38:59'),
(6, 'bendel', '2024-07-02 05:42:01', '2024-07-02 05:42:01'),
(7, '25gr', '2024-07-02 05:44:55', '2024-07-02 05:44:55'),
(8, 'kecil', '2024-07-02 06:11:09', '2024-07-02 06:11:09'),
(9, 'sedang', '2024-07-02 06:11:14', '2024-07-02 06:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `total` double(8,2) NOT NULL,
  `bayar` double(8,2) NOT NULL,
  `kembali` double(8,2) NOT NULL,
  `kode_kasir` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `kode_transaksi`, `total`, `bayar`, `kembali`, `kode_kasir`, `tanggal`, `created_at`, `updated_at`) VALUES
(4, '2024710000001', 18000.00, 20000.00, 2000.00, 'K-20243100002', '2024-07-03 11:10:00', '2024-07-03 04:10:00', '2024-07-03 04:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `harga` double(8,2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `kode_transaksi`, `barang`, `harga`, `jumlah`, `diskon`, `total`, `created_at`, `updated_at`) VALUES
(4, '2024710000001', 'Alat Linting Regular', 5000.00, 1, 0.00, 5000.00, '2024-07-03 04:10:00', '2024-07-03 04:10:00'),
(5, '2024710000001', 'Lem Kertas Biasa', 2000.00, 1, 0.00, 2000.00, '2024-07-03 04:10:00', '2024-07-03 04:10:00'),
(6, '2024710000001', 'Bako Mild Queenbee 50gr', 10000.00, 1, 0.00, 10000.00, '2024-07-03 04:10:00', '2024-07-03 04:10:00'),
(7, '2024710000001', 'Kertas Pabrikan Kecil', 1000.00, 1, 0.00, 1000.00, '2024-07-03 04:10:00', '2024-07-03 04:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_sementaras`
--

CREATE TABLE `transaksi_sementaras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` double(8,2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `kode`, `nama`, `foto`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'K-20243100001', 'tokomuaralima', NULL, 'tokomuara.lima@gmail.com', NULL, '$2y$12$TjnYB1HGhNZGQKR/d2avcOyDEeXkjEy5GaKf7HLPkCXjfx7ve1ZN.', 'admin', NULL, '2024-03-08 01:40:46', '2024-03-08 01:40:46'),
(2, 'K-20243100002', 'zakiah', NULL, 'zakiah.12348@gmail.com', NULL, '$2y$12$EJ2WfLjY.4o.fF2APpRTY.T/i2oYTmBsyGxGztXpgDbhOtJgEExhq', 'kasir', NULL, '2024-03-08 03:52:36', '2024-03-08 03:52:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
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
-- Indexes for table `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_sementaras`
--
ALTER TABLE `transaksi_sementaras`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satuans`
--
ALTER TABLE `satuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi_sementaras`
--
ALTER TABLE `transaksi_sementaras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
