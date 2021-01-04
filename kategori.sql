-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 02.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kategorimakanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(12) NOT NULL,
  `nama_kategori` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tipe_kategori` varchar(20) CHARACTER SET latin1 NOT NULL,
  `deskripsi` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `tipe_kategori`, `deskripsi`) VALUES
(1, 'Tempe Goreng', 'Makanan Kering', 'Tempe Goreng merupakan sejenis lauk makanan yang k'),
(2, 'Tahu Goreng', 'Makanan Kering', 'Tahu Goreng merupakan sejenis lauk makanan yang ke'),
(3, 'Ketoprak', 'Makanan Kering', 'Ketoprak merupakan sejenis makanan kering yang ber'),
(4, 'Batagor', 'Makanan Kering', 'Batagor merupakan sejenis jajanan kering yang berb'),
(6, 'Baso', 'Makanan Basah', 'Baso merupakan sejenis makanan yang berkuah'),
(53, 'Siomay', 'Makanan Basah', 'Siomay  merupakan sejenis jajanan basah yang berbu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
