-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2025 pada 13.42
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
-- Database: `eldercare_system`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_user` int(11) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `spesialis` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_user`, `nama_dokter`, `spesialis`) VALUES
(1, 'dr. Sinta Lestari', 'Geriatri'),
(2, 'dr. Zainal Abidin', 'Geriatri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lansia`
--

CREATE TABLE `lansia` (
  `id_lansia` int(11) NOT NULL,
  `nama_lansia` varchar(30) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lansia`
--

INSERT INTO `lansia` (`id_lansia`, `nama_lansia`, `usia`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Siti Maryam', 66, 'Perempuan', 'Jl. Mawar No. 11'),
(2, 'Mulyadi', 71, 'Laki-laki', 'Jl. Dahlia No. 5'),
(3, 'Fatimah', 65, 'Perempuan', 'Jl. Anggrek No. 8'),
(4, 'Ruslan', 72, 'Laki-laki', 'Jl. Melati No. 3'),
(5, 'Sri Wahyuni', 69, 'Perempuan', 'Jl. Cempaka No. 11'),
(6, 'Jumadi', 74, 'Laki-laki', 'Jl. Mawar No. 7'),
(7, 'Nurlaila', 66, 'Perempuan', 'Jl. Flamboyan No. 10'),
(8, 'Samsul Bahri', 70, 'Laki-laki', 'Jl. Kenanga No. 2'),
(9, 'Rohani', 63, 'Perempuan', 'Jl. Teratai No. 14'),
(10, 'Sulaiman', 75, 'Laki-laki', 'Jl. Angsana No. 15'),
(11, 'Rahmawati', 67, 'Perempuan', 'Jl. Akasia No. 9'),
(12, 'Herman', 79, 'Laki-laki', 'Jl. Cendana No. 4'),
(13, 'Nuraini', 70, 'Perempuan', 'Jl. Kemuning No. 16'),
(14, 'Abdul Karim', 82, 'Laki-laki', 'Jl. Sakura No. 3'),
(15, 'Mardiyah', 73, 'Perempuan', 'Jl. Rambutan No. 18'),
(16, 'Jubaidah', 61, 'Perempuan', 'Jl. Pinang No. 13'),
(17, 'Sahlan', 77, 'Laki-laki', 'Jl. Pelangi No. 20'),
(18, 'Fatmawati', 64, 'Perempuan', 'Jl. Seroja No. 6'),
(19, 'Mansur', 71, 'Laki-laki', 'Jl. Duku No. 19'),
(20, 'Samsiah', 69, 'Perempuan', 'Jl. Mawar No. 22'),
(21, 'Umar', 80, 'Laki-laki', 'Jl. Anggrek No. 25'),
(22, 'Yuliana', 62, 'Perempuan', 'Jl. Dahlia No. 21'),
(23, 'Karimah', 76, 'Perempuan', 'Jl. Cempaka No. 23'),
(24, 'Darmadi', 83, 'Laki-laki', 'Jl. Melati No. 24'),
(25, 'Rasminah', 63, 'Perempuan', 'Jl. Mawar No. 26'),
(26, 'Basri', 66, 'Laki-laki', 'Jl. Angsana No. 27'),
(27, 'Siti Aminah', 72, 'Perempuan', 'Jl. Kenanga No. 28'),
(28, 'Hadi', 70, 'Laki-laki', 'Jl. Melur No. 29'),
(29, 'Aisyah', 74, 'Perempuan', 'Jl. Mawar No. 30'),
(30, 'Samsudin', 78, 'Laki-laki', 'Jl. Flamboyan No. 31'),
(31, 'Fatma', 65, 'Perempuan', 'Jl. Cempaka No. 32'),
(32, 'Mustofa', 69, 'Laki-laki', 'Jl. Akasia No. 33'),
(33, 'Nani', 71, 'Perempuan', 'Jl. Melati No. 34'),
(34, 'Surya', 67, 'Laki-laki', 'Jl. Seroja No. 35'),
(35, 'Lina', 64, 'Perempuan', 'Jl. Kenanga No. 36'),
(36, 'Hermanah', 70, 'Perempuan', 'Jl. Dahlia No. 37'),
(37, 'Amir', 73, 'Laki-laki', 'Jl. Angsana No. 38'),
(38, 'Yati', 69, 'Perempuan', 'Jl. Mawar No. 39'),
(39, 'Tarmizi', 75, 'Laki-laki', 'Jl. Cendana No. 40'),
(40, 'Sulastri', 68, 'Perempuan', 'Jl. Flamboyan No. 41'),
(41, 'Siti Aminah', 65, 'Perempuan', 'Jl. Mawar No. 10'),
(42, 'Bapak Hadi', 70, 'Laki-laki', 'Jl. Melati No. 5'),
(43, 'aripin', 89, 'laki-laki', 'jalan unmul'),
(44, 'divaa', 89, 'perempuan', 'jalan unmul'),
(45, 'dina', 119, 'perempuan', 'jl gong'),
(46, 'mulimah', 99, 'perempuan', 'jl kenanga 5'),
(47, 'mikhel', 100, 'perempuan', 'Jl. Alpukat RT.100'),
(48, 'mimin', 90, 'perempuan', 'jl Kenanga 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_kesehatan`
--

CREATE TABLE `laporan_kesehatan` (
  `id_laporan` int(11) NOT NULL,
  `tanggal_periksa` date NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `tindakan` varchar(100) DEFAULT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_lansia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_kesehatan`
--

INSERT INTO `laporan_kesehatan` (`id_laporan`, `tanggal_periksa`, `keluhan`, `tindakan`, `id_petugas`, `id_lansia`) VALUES
(1, '2025-09-02', 'Pusing', 'Pemberian analgesik dan istirahat', 5, 1),
(2, '2025-09-03', 'Luka di kaki', 'Pembersihan luka dan pemberian antiseptik', 6, 2),
(3, '2025-09-04', 'Sesak napas', 'Nebulisasi dan monitoring saturasi', 7, 3),
(4, '2025-09-05', 'Nyeri dada', 'EKG dan rujukan pemeriksaan jantung', 8, 4),
(5, '2025-09-06', 'Vertigo', 'Pemberian obat vertigo dan edukasi hidrasi', 5, 5),
(6, '2025-09-07', 'Nyeri sendi', 'Pemberian analgesik & kompres hangat', 6, 6),
(7, '2025-09-08', 'Cepat lelah', 'Pemeriksaan Hb dan istirahat', 7, 7),
(8, '2025-09-09', 'Sakit lutut', 'Fisioterapi ringan & analgesik', 8, 8),
(9, '2025-09-10', 'Hipoglikemia', 'Pemberian glukosa dan observasi', 5, 9),
(10, '2025-09-11', 'Sesak napas', 'Nebulisasi & pemberian bronkodilator', 6, 10),
(11, '2025-09-12', 'Pusing berat', 'Pemberian obat anti-pusing & monitoring', 7, 11),
(12, '2025-09-13', 'Nyeri dada', 'Monitoring jantung & edukasi', 8, 12),
(13, '2025-09-14', 'Nyeri otot', 'Pemberian analgesik ringan', 5, 13),
(14, '2025-09-15', 'Sakit punggung', 'Kompres hangat & stretching', 6, 14),
(15, '2025-09-16', 'Lelah', 'Suplementasi vitamin & istirahat', 7, 15),
(16, '2025-09-17', 'Pusing', 'Pemberian obat anti-pusing', 8, 16),
(17, '2025-09-18', 'Nyeri sendi', 'Kompres hangat & relaksan otot', 5, 17),
(18, '2025-09-19', 'Sesak napas', 'Bronkodilator & oksigenasi', 6, 18),
(19, '2025-09-20', 'Hipoglikemia', 'Asupan gula & observasi', 7, 19),
(20, '2025-09-21', 'Sakit lutut', 'Fisioterapi ringan', 8, 20),
(21, '2025-09-22', 'Pusing', 'Hidrasi & obat anti-pusing', 5, 21),
(22, '2025-09-23', 'Lelah berlebih', 'Vitamin & istirahat', 6, 22),
(23, '2025-09-24', 'Nyeri kaki', 'Pijat ringan & analgesik', 7, 23),
(24, '2025-09-25', 'Sesak napas', 'Nebulisasi & observasi', 8, 24),
(25, '2025-09-26', 'Pusing ringan', 'Minum cukup & analgesik', 5, 25),
(26, '2025-09-27', 'Nyeri sendi', 'Obat anti-inflamasi ringan', 6, 26),
(27, '2025-09-28', 'Kram kaki', 'Elektrolit & peregangan', 7, 27),
(28, '2025-09-29', 'Hipoglikemia', 'Larutan gula & observasi', 8, 28),
(29, '2025-09-30', 'Sakit kepala', 'Analgesik & istirahat', 5, 29),
(30, '2025-10-01', 'Lelah', 'Suplementasi vitamin', 6, 30),
(31, '2025-10-02', 'Nyeri bahu', 'Kompres & relaksan otot', 7, 31),
(32, '2025-10-03', 'Pusing', 'Rehidrasi & obat anti-pusing', 8, 32),
(33, '2025-10-04', 'Nyeri dada', 'Pemeriksaan vital & edukasi', 5, 33),
(34, '2025-10-05', 'Penurunan nafsu makan', 'Suplementasi & pola makan', 6, 34),
(35, '2025-10-06', 'Kram kaki', 'Suplementasi elektrolit', 7, 35),
(36, '2025-10-07', 'Sesak napas', 'Nebulisasi & observasi', 8, 36),
(37, '2025-10-08', 'Nyeri otot', 'Analgesik ringan', 5, 37),
(38, '2025-10-09', 'Pusing', 'Rehidrasi', 6, 38),
(39, '2025-10-10', 'Nyeri sendi', 'Obat anti-nyeri & kompres', 7, 39),
(40, '2025-10-11', 'Lelah', 'Vitamin & pola tidur', 8, 40),
(41, '2025-11-03', 'tidak nafsu makan', 'Suplementasi & anjuran makan kecil sering', 4, 43),
(42, '2025-11-03', 'sakit kepala', 'Analgesik', 4, 44),
(43, '2025-11-03', 'insomnia', 'Edukasi sleep-hygiene & sedatif ringan', 4, 45),
(46, '2025-11-04', 'pandangan mata buram', 'Rujukan cek mata & cek gula darah', 4, 48);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas_puskesmas`
--

CREATE TABLE `petugas_puskesmas` (
  `id_user` int(11) NOT NULL,
  `petugas_bagian` varchar(20) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas_puskesmas`
--

INSERT INTO `petugas_puskesmas` (`id_user`, `petugas_bagian`, `nama_petugas`) VALUES
(4, 'Administrasi', 'Natan'),
(5, 'Pelayanan Lansia', 'Ghani'),
(6, 'Pelayanan Lansia', 'Dinap'),
(12, 'pelayan', 'udin'),
(16, '', 'aripin'),
(18, 'Pelayanan Lansia', 'dinappp'),
(19, 'Pelayanan Lansia', 'mikaela');

-- --------------------------------------------------------

--
-- Struktur dari tabel `puskesmas_sungai_pinang`
--

CREATE TABLE `puskesmas_sungai_pinang` (
  `id_puskesmas` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kontak` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `puskesmas_sungai_pinang`
--

INSERT INTO `puskesmas_sungai_pinang` (`id_puskesmas`, `alamat`, `kontak`) VALUES
(2025102376, 'Jl. Mawar No. 10, Sungai Pinang, Samarinda', '81234567890');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id_rekam` int(11) NOT NULL,
  `tanggal_pemeriksaan` date NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `tindakan` text DEFAULT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_lansia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekam_medis`
--

INSERT INTO `rekam_medis` (`id_rekam`, `tanggal_pemeriksaan`, `diagnosis`, `tindakan`, `id_dokter`, `id_lansia`) VALUES
(1, '2025-09-01', 'Pusing ringan', 'Pemeriksaan tekanan darah dan istirahat', 1, 1),
(2, '2025-09-02', 'Kram kaki', 'Peregangan dan obat pereda nyeri', 2, 2),
(3, '2025-09-03', 'Sesak napas', 'Terapi pernapasan dan observasi', 3, 3),
(4, '2025-09-04', 'Nyeri dada', 'Pemeriksaan jantung dan obat', 3, 4),
(5, '2025-09-05', 'Vertigo', 'Terapi keseimbangan dan obat', 1, 5),
(6, '2025-09-06', 'Nyeri sendi', 'Fisioterapi dan analgesik', 1, 6),
(7, '2025-09-07', 'Kelelahan', 'Vitamin dan istirahat', 2, 7),
(8, '2025-09-08', 'Nyeri lutut', 'Kompres dan obat antiinflamasi', 2, 8),
(9, '2025-09-09', 'Hipoglikemia', 'Pemberian glukosa dan observasi', 3, 9),
(10, '2025-09-10', 'Sesak napas', 'Nebulizer dan evaluasi', 2, 10),
(11, '2025-09-11', 'Pusing', 'Cek tekanan darah, istirahat', 1, 11),
(12, '2025-09-12', 'Nyeri dada', 'EKG dan obat', 3, 12),
(13, '2025-09-13', 'Nyeri otot', 'Kompres panas, analgesik', 2, 13),
(14, '2025-09-14', 'Sakit punggung', 'Terapi pijat dan obat', 2, 14),
(15, '2025-09-15', 'Kelelahan', 'Pemberian vitamin dan cairan', 1, 15),
(16, '2025-09-16', 'Vertigo', 'Latihan vestibular & obat', 3, 16),
(17, '2025-09-17', 'Nyeri sendi', 'Kalsium dan analgesik', 1, 17),
(18, '2025-09-18', 'Sesak napas', 'Terapi oksigen', 2, 18),
(19, '2025-09-19', 'Hipoglikemia', 'Asupan manis + monitoring', 3, 19),
(20, '2025-09-20', 'Nyeri lutut', 'Obat inflamasi dan kompres', 2, 20),
(21, '2025-09-21', 'Pusing', 'Cek tensi dan istirahat', 2, 21),
(22, '2025-09-22', 'Kelelahan', 'Vitamin & cairan', 1, 22),
(23, '2025-09-23', 'Nyeri kaki', 'Terapi pijat & obat', 1, 23),
(24, '2025-09-24', 'Sesak napas', 'Nebulizer', 3, 24),
(25, '2025-09-25', 'Pusing ringan', 'Vitamin B & istirahat', 1, 25),
(26, '2025-09-26', 'Nyeri sendi', 'Kompres hangat & salep', 2, 26),
(27, '2025-09-27', 'Kram kaki', 'Peregangan dan suplemen', 1, 27),
(28, '2025-09-28', 'Hipoglikemia', 'Pemberian madu & observasi', 3, 28),
(29, '2025-09-29', 'Sakit kepala', 'Analgesik & hidrasi', 2, 29),
(30, '2025-09-30', 'Kelelahan', 'Vitamin & istirahat', 3, 30),
(31, '2025-10-01', 'Nyeri bahu', 'Terapi pijat dan kompres', 2, 31),
(32, '2025-10-02', 'Pusing', 'Pemeriksaan tekanan darah', 3, 32),
(33, '2025-10-03', 'Nyeri dada', 'Pemeriksaan jantung lengkap', 3, 33),
(34, '2025-10-04', 'Hipoglikemia', 'Makanan manis & monitoring', 1, 34),
(35, '2025-10-05', 'Kram kaki', 'Peregangan & pijat', 1, 35),
(36, '2025-10-06', 'Hipoglikemia', 'Konsultasi gizi & edukasi', 2, 36),
(37, '2025-10-07', 'Sesak napas', 'Terapi pernapasan intensif', 3, 37),
(38, '2025-10-08', 'Nyeri otot', 'Kompres hangat dan obat', 1, 38),
(39, '2025-10-09', 'Penurunan nafsu makan', 'Suplemen nutrisi', 3, 39),
(40, '2025-10-10', 'Artritis', 'Obat antiinflamasi', 2, 40),
(41, '2025-11-03', 'kembung', 'tindakan lanjut', 2, 41),
(42, '2025-11-03', 'insomnia', 'kasih obat tidur', 2, 44),
(43, '2025-11-04', 'Katarak ringan', 'pemberian obat mata harian', 2, 48);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `id_puskesmas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_puskesmas`) VALUES
(1, 'dokter_sintia', 'pass1234', 2025102376),
(2, 'dokter_zainal', 'pass5678', 2025102376),
(4, 'petugas1', 'pass1234', 2025102376),
(5, 'petugas2', 'pass5678', 2025102376),
(6, 'petugas3', 'pass1122', 2025102376),
(11, 'irpante', '123', 2025102376),
(12, 'petugas6', '1234', 2025102376),
(16, 'petugas16', 'pass123', 2025102376),
(18, 'petugass', 'paasss', 2025102376),
(19, 'petugas14', 'pass1212', 2025102376);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `lansia`
--
ALTER TABLE `lansia`
  ADD PRIMARY KEY (`id_lansia`);

--
-- Indeks untuk tabel `laporan_kesehatan`
--
ALTER TABLE `laporan_kesehatan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_lansia` (`id_lansia`);

--
-- Indeks untuk tabel `petugas_puskesmas`
--
ALTER TABLE `petugas_puskesmas`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `puskesmas_sungai_pinang`
--
ALTER TABLE `puskesmas_sungai_pinang`
  ADD PRIMARY KEY (`id_puskesmas`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id_rekam`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_lansia` (`id_lansia`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_puskesmas` (`id_puskesmas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lansia`
--
ALTER TABLE `lansia`
  MODIFY `id_lansia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `laporan_kesehatan`
--
ALTER TABLE `laporan_kesehatan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id_rekam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `laporan_kesehatan`
--
ALTER TABLE `laporan_kesehatan`
  ADD CONSTRAINT `laporan_kesehatan_ibfk_2` FOREIGN KEY (`id_lansia`) REFERENCES `lansia` (`id_lansia`);

--
-- Ketidakleluasaan untuk tabel `petugas_puskesmas`
--
ALTER TABLE `petugas_puskesmas`
  ADD CONSTRAINT `petugas_puskesmas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD CONSTRAINT `rekam_medis_ibfk_2` FOREIGN KEY (`id_lansia`) REFERENCES `lansia` (`id_lansia`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_puskesmas`) REFERENCES `puskesmas_sungai_pinang` (`id_puskesmas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
