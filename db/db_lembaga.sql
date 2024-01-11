-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2023 pada 10.16
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lembaga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `agenda_id` int(11) NOT NULL,
  `tema` varchar(200) DEFAULT NULL,
  `slug_tema` varchar(200) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `isi_agenda` text DEFAULT NULL,
  `tempat` varchar(120) DEFAULT NULL,
  `pengirim` varchar(100) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `tgl_posting` date DEFAULT NULL,
  `jam` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `sts` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`agenda_id`, `tema`, `slug_tema`, `gambar`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `hits`, `id`, `sts`) VALUES
(1, 'Eltari Memorial Cup 2021 Provinsi Nusa Tenggara Timur', 'eltari-memorial-cup-2021-provinsi-nusa-tenggara-timur', '1624775057_9183c83418035e4d4fdb.png', '   <p>Kegiatan yang akan berlangsung di Kabupaten Lembata dengan peserta dari beberapa Kabupaten, yang pasti akan sangat seru.</p>', 'Gelora 99 Kabupaten Lembata di Desa Pada', 'ASPRO NTT', '2021-08-08', '2021-09-10', '2021-06-01', '08.00 - selesai', 40, 1, NULL),
(2, 'Bimtek Pengelolaan Website Dinas Versi terbaru', 'bimtek-pengelolaan-website-dinas-versi-terbaru', '1627956974_0377753d26438dc3142d.png', '  <p>Bimtek ini bertujuan untuk memberikan pelatihan agar Administrator OPD dapat memanfaatkan semua fitur secara optimal.</p>', 'Kantor Dinas Pemuda dan Olahraga', 'Datagoe Software', '2021-09-09', '2021-09-10', '2021-08-03', '09.00 - selesai', 44, 1, NULL),
(3, 'Pembahasan Verifikasi Usulan Rencana Kerja dan Anggaran TA 2021', 'pembahasan-verifikasi-usulan-rencana-kerja-dan-anggaran-ta-2021', 'default.png', '<p>Rapat penting yang berfungsi untuk membahas berbagai isu strategis dengan ribu ratu Lembata, terkhusus di bidang pemuda olahraga dan kebudayaan.</p>', 'Kantor Dinas BKD Keuangan Kab. Lembata', 'Dinas BKD Keuangan', '2021-09-12', '2021-09-13', '2021-06-02', '09.00 - selesai', 50, 1, NULL),
(4, 'Gelar Rapat Persiapan Pengadaan Barang dan Jasa TA 2021', 'gelar-rapat-persiapan-pengadaan-barang-dan-jasa-ta-2021', 'default.png', '<p>Mempersiapkan data-data penunjang kinerja setiap instansi yang merupakan hal penting dalam pengolaan pengadaan barang dan jasa yang profesional dan akuntabel.</p>', 'Kantor Dinas Pemuda dan Olahraga', 'Dinas Kominfo Kab. Lembata', '2021-09-11', '2021-09-11', '2021-06-02', '09.00 - selesai', 59, 1, NULL),
(5, 'Rapat Tindak Lanjuti PP Nomor 49 Tahun 2020', 'rapat-tindak-lanjuti-pp-nomor-49-tahun-2020', 'default.png', ' <p>Mengingat Peraturan Perundangan yang belum maksimal dilaksanakan, maka akan dilaksanan rapat konsolidasi setiap OPD yang ada di Pemerintahan daerah Kabupaten Lembata.</p>', 'Kantor Dinas Pemuda dan Olahraga', 'Dinas Kominfo Kabupaten Lembata', '2021-10-01', '2021-10-01', '2021-06-03', '08.00 - selesai', 63, 1, NULL),
(6, 'Launching CMS Datagoe', 'launching-cms-datagoe', '1673060669_8f6d215ea6d6a4bd6213.png', ' <p>Seiring berkembangnya CMS&nbsp; dan banyak ide yang memperkaya CMS ini maka, akan segera diluncurkan secara resmi ke publik Content Managemen System.&nbsp;&nbsp;</p>', 'Lembata - NTT', 'Aplikasi Pendidikan', '2022-01-17', '2022-01-31', '2023-01-07', '08 sampai selesai', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Admnistrator'),
(2, 'user', 'Reguler User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage Profile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bankdata`
--

CREATE TABLE `bankdata` (
  `bankdata_id` int(11) NOT NULL,
  `nama_bankdata` varchar(200) DEFAULT NULL,
  `fileupload` varchar(200) DEFAULT NULL,
  `slug_bank` varchar(255) DEFAULT NULL,
  `tgl_upload` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `sts` varchar(1) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bankdata`
--

INSERT INTO `bankdata` (`bankdata_id`, `nama_bankdata`, `fileupload`, `slug_bank`, `tgl_upload`, `hits`, `id`, `sts`, `ket`) VALUES
(1, 'Rencana dan program kerja pembinaan organisasi kepemudaan', '1624787922_9110c06de6b051bd2a4a.txt', 'rencana-dan-program-kerja-pembinaan-organisasi-kepemudaan', '2021-06-04', 5, 1, NULL, NULL),
(2, 'Rumusan kebijakan teknis bidang keolahragaan', '1629372547_de2ea6f345b7e33bb086.png', 'rumusan-kebijakan-teknis-bidang-keolahragaan', '2021-06-04', 8, 1, NULL, NULL),
(3, 'Laporan hasil pelaksanaan rencana strategis dan rencana kerja Dinas', '1624787979_c5b0b1f94365244368e8.txt', 'laporan-hasil-pelaksanaan-rencana-strategis-dan-rencana-kerja-dinas', '2021-06-04', 9, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(11) NOT NULL,
  `judul_berita` varchar(200) DEFAULT NULL,
  `slug_berita` varchar(250) DEFAULT NULL,
  `ringkasan` varchar(500) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `tgl_berita` date DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `jenis_berita` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `likepost` int(11) DEFAULT 0,
  `headline` varchar(1) DEFAULT NULL,
  `ket_foto` varchar(255) DEFAULT NULL,
  `filepdf` varchar(100) DEFAULT NULL,
  `sts_komen` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `judul_berita`, `slug_berita`, `ringkasan`, `isi`, `gambar`, `tgl_berita`, `status`, `kategori_id`, `id`, `jenis_berita`, `hits`, `likepost`, `headline`, `ket_foto`, `filepdf`, `sts_komen`) VALUES
(1, 'Literasi Digital Bergulir ke Seluruh Negeri', 'literasi-digital-bergulir-ke-seluruh-negeri', '    Tantangan di ruang digital di tanah air saat ini semakin besar. Konten-konten negatif terus bermunculan, kejahatan di ruang digital terus meningkat. Hoaks, penipuan daring, perjudian, eksploitasi seksual pada anak, perundungan siber, ujaran kebencian, dan radikalisme berbasis digital perlu terus diwaspadai karena mengancam persatuan dan kesatuan bangsa.', '     <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Tantangan di ruang digital di tanah air saat ini semakin besar. Konten-konten negatif terus bermunculan, kejahatan di ruang digital terus meningkat. Hoaks, penipuan daring, perjudian, eksploitasi seksual pada anak, perundungan siber, ujaran kebencian, dan radikalisme berbasis digital perlu terus diwaspadai karena mengancam persatuan dan kesatuan bangsa.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Hal tersebut diungkapkan Presiden Joko Widodo saat membuka program nasional <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">”Indonesia Makin Cakap Digital”</em> secara virtual, Kamis (20/05/2021). Peluncuran program yang bertepatan dengan Peringatan 113 Tahun Hari Kebangkitan Nasional tersebut merupakan bagian dari Gerakan Nasional Literasi Digital Siberkreasi dan dilaksanakan serentak di 34 provinsi dan 514 kabupaten/kota.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Kewajiban kita bersama untuk terus meminimalkan konten negatif, membanjiri ruang digital dengan konten-konten positif. Banjiri terus, isi terus dengan konten-konten positif. Kita harus tingkatkan kecakapan digital masyarakat agar mampu menciptakan lebih banyak konten-konten kreatif yang mendidik, yang menyejukkan, yang menyerukan perdamaian,\" ujar Kepala Negara.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Tidak hanya itu, menurut Presiden Jokowi, aplikasi internet juga harus mampu meningkatkan produktivitas masyarakat supaya UMKM bisa naik kelas. Sudah saatnya, memperbanyak UMKM <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">onboarding</em> ke platform <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">e-commerce</em>, sehingga internet bisa memberi nilai tambah ekonomi bagi seluruh lapisan masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Saya harap gerakan ini menggelinding dan terus membesar, bisa mendorong berbagai inisiatif di tempat lain, melakukan kerja-kerja konkret di tengah masyarakat agar makin cakap memanfaatkan internet untuk kegiatan edukatif dan produktif,\" kata Presiden.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menteri Komunikasi dan Informatika (Kominfo) Johnny G Plate menambahkan, setelah peluncuran tersebut, selama enam bulan ke depan, Kemenkominfo akan menyelenggarakan kelas-kelas webinar yang mengupas berbagai hal seputar literasi digital dan terbuka untuk seluruh warga masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Untuk diketahui, Program Literasi Digital Nasional ditujukan untuk menciptakan ruang digital yang seru, namun tetap aman, beretika, dan produktif.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Terkait Gerakan Nasional Literasi Digital Siberkreasi, sebelumnya pada 16 April, Kemenkominfo telah lebih dulu meluncurkan empat modul literasi digital di Surabaya, Jawa Timur. Keempat modul literasi tersebut meliputi Budaya Bermedia Digital, Aman Bermedia Digital, Etis Bermedia Digital, dan Cakap Bermedia Digital.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Modul-modul tersebut disusun berdasarkan empat pilar literasi digital yang utama, yakni <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital culture</em>, <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital safety</em>, <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital ethics</em>, dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital skills</em>. Modul ini merupakan manifestasi kolaborasi dari Gerakan Nasional Literasi Digital (GNLD) Siberkreasi, Jaringan Penggiat Literasi Digital (Japelidi), dan Kementerian Kominfo.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pada 2021, Kementerian Kominfo mencanangkan gerakan literasi bagi 12,4 juta rakyat Indonesia di 34 provinsi dan 514 kabupaten/kota. Dan keempat modul tersebut akan diterapkan dalam program literasi tingkat <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">basic digital skills</em> dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">intermediate digital skills</em>.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">\"Jadi, ini gerakan besar dan masif yang dilakukan secara nasional. Perlu kerja kolaboratif seluruh kementerian,\" ucap Johnny.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Kementerian Kominfo berharap, dari gerakan ini dalam tiga tahun mendatang bakal ada 30 juta dari 64 juta UMKM yang ada dapat memanfaatkan ruang-ruang digital sebagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">marketplace</em>. Setidaknya bisa memberdayakan 100 juta orang.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menyangkut infrastruktur digital, Kementerian Kominfo bersama dengan ekosistem terkait sedang mempercepat pembangunan infrastruktur telekomunikasi untuk menjangkau daerah-daerah yang belum memiliki akses internet memadai.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pembangunan infrastruktur telekomunikasi juga dibarengi dengan kesiapan sumber daya manusia (SDM) yang akan memanfaatkan layanan internet tersebut. Tanpa kesiapan SDM, ruang digital justru berpotensi digunakan untuk tujuan penyebaran konten negatif seperti penipuan daring, perjudian, prostitusi <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">online</em>, disinformasi atau hoaks, pencurian data pribadi, perundungan siber (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">cyberbullying</em>), ujaran kebencian (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">hate speech</em>), penyebaran paham radikalisme/terorisme di ruang digital, dan sebagainya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Berdasarkan temuan survei Katadata Insight Center (KIC) yang bekerja sama dengan Kementerian Komunikasi dan Informatika serta Siberkreasi tahun 2020, setidaknya 30% sampai hampir 60% orang Indonesia terpapar hoaks saat mengakses dan berkomunikasi melalui dunia maya. Sementara itu, hanya 21% sampai 36% yang mampu mengenali hoaks. Kebanyakan hoaks yang ditemukan terkait isu politik, kesehatan, dan agama.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut survei tersebut, selain kemampuan mengenali hoaks masih rendah, tingkat literasi digital orang Indonesia juga masih belum cukup tinggi. Dalam survei yang mengukur status literasi digital di 34 provinsi Indonesia ditemukan, indeks literasi digital secara nasional belum sampai level baik. Dari skor tertinggi adalah 5 dan terendah adalah 1, maka indeks literasi digital nasional baru 3,47.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dari hasil survei itu, ada indikasi bahwa akses internet yang semakin tersebar dan terjangkau belum diiringi dengan meningkatnya kemampuan masyarakat dalam mengolah informasi dan berpikir kritis.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Adapun Indonesia diprediksi memiliki potensi ekonomi digital yang amat besar di dunia tahun 2025 yakni sebesar USD133 miliar. Sedangkan potensi ekonomi digital di negara-negara ASEAN mencapai USD300 miliar. Potensi ekonomi itu menunjukkan hampir setengah potensi ekonomi digital ASEAN ada di Indonesia.</span></p>', '1624851576_89439c6184243cf3d0ab.jpg', '2021-05-24', '1', 2, 1, 'Berita', 170, 0, '0', '   Literasi digital Sumber foto :unslpash.com', NULL, '1'),
(2, 'Politik Digital Anak Muda', 'politik-digital-anak-muda', 'Kehidupan berdemokrasi di suatu negara salah satunya ditentukan oleh seberapa besar partisipasi politik dari masyarakatnya. Partisipasi itu akan tampak ketika masyarakat ikut terlibat secara aktif dalam kehidupan berpolitik. Contohnya, ketika pemilihan presiden, kepala daerah, atau saat memilih wakil-wakil mereka yang akan duduk di kursi parlemen, baik di pusat maupun di daerah.', '   <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Kehidupan berdemokrasi di suatu negara salah satunya ditentukan oleh seberapa besar partisipasi politik dari masyarakatnya. Partisipasi itu akan tampak ketika masyarakat ikut terlibat secara aktif dalam kehidupan berpolitik. Contohnya, ketika pemilihan presiden, kepala daerah, atau saat memilih wakil-wakil mereka yang akan duduk di kursi parlemen, baik di pusat maupun di daerah.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut pakar ilmu politik, mendiang Miriam Budiardjo dalam bukunya <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Partisipasi dan Partai Politik</em>, tinggi atau rendahnya partisipasi politik di masyarakat menjadi indikator penting bagaimana perkembangan berdemokrasi di negara tersebut. Semakin tinggi tingkat partisipasi politik masyarakatnya, maka itu menunjukkan bahwa mereka peduli terhadap perkembangan politik di negara mereka. Sebaliknya, semakin rendah angka partisipasi politik masyarakat di suatu negara menjadi pertanda kurang baik.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam proses berdemokrasi tadi, terdapat kelompok-kelompok di masyarakat yang akan ikut mempengaruhi tinggi-rendahnya tingkat partisipasi politik. Salah satunya adalah anak-anak muda. Mereka adalah kelompok masyarakat yang menurut Pasal 1 Undang-Undang nomor 40 tahun 2009 tentang Kepemudaan didefinisikan sebagai warga negara Indonesia dalam rentang usia 16 hingga 30 tahun.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam perkembangannya, mereka kemudian disebut sebagai Generasi Z dan Generasi Milenial. Badan Pusat Statistik mendefinisikan Generasi Z sebagai penduduk Indonesia yang lahir dalam rentang tahun 1997-2012 dan Generasi Milenial adalah mereka yang lahir antara 1981 hingga 1996.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Berdasarkan hasil Sensus Penduduk 2020, dari 270,2 juta jiwa populasi Indonesia saat ini, sebanyak 53,81 persen di antaranya merupakan gabungan dari kedua generasi di atas tadi. Rinciannya sebanyak 27,94 persen diisi oleh Generasi Z dan 25,87 persen lainnya masuk dalam kategori Generasi Milenial. “Kedua generasi ini termasuk dalam usia produktif yang dapat menjadi peluang untuk mempercepat pertumbuhan ekonomi,” kata Kepala BPS Kecuk Suhariyanto, ketika memberikan keterangan pers mengenai hasil Sensus Penduduk 2020 di Jakarta, (21/1/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Menurut Hasanuddin Ali dari Alvara Research, tipikal Generasi Z menuntut kehadiran internet nyaris di sepanjang kesehariannya. Ketergantungan mereka terhadap internet bahkan menyentuh angka 93,9 persen atau biasa disebut sebagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">mobile generation</em>. Generasi ini kehidupannya lebih banyak diwarnai dengan keceriaan (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">cheerful</em>).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Sedangkan Generasi Milenial memiliki ketergantungan dengan internet sekitar 88,4 persen dan dalam kehidupannya masih berjuang untuk meniti karier. Demikian diungkapnya saat menjadi pembicara dalam diskusi daring bertema “Politik Digital, Pendidikan Politik, dan Partisipasi Politik Bagi Generasi Muda\" yang digelar Kementerian Komunikasi dan Informasi di Jakarta, Sabtu (17/4/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Dalam dunia politik, kata Hasanuddin, anak-anak muda tadi merupakan aset berharga dan menjadi incaran partai-partai politik. Ini lantaran Generasi Z dan Generasi Milenial merupakan kekuatan tersendiri yang harus direbut suaranya di dalam kontestasi pemilihan, baik pemilihan pemimpin negara, kepala daerah, atau saat memilih wakil rakyat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: large; line-height: inherit; font-family: arial, helvetica, sans-serif; vertical-align: baseline; text-size-adjust: none;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 18px; line-height: 20.7px; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pengaruh Media Sosial</span></span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Penetrasi internet di Indonesia saat ini telah menjangkau 196,7 juta penduduk berdasarkan survei Asosiasi Penyelenggara Jasa Internet Indonesia (APJII). Kondisi ini membuat partai-partai politik berlomba-lomba menceburkan diri membangun kekuatan baru di ranah digital. Mereka kemudian masuk ke berbagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform</em> media sosial yang ada demi mendapatkan simpati anak-anak muda melek teknologi.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pemanfaatan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform</em> media sosial untuk kepentingan politik telah dirasakan manfaatnya oleh Hillary Brigitta Lasut. Anggota DPR RI termuda ini memakai berbagai <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">platform </em>media sosial sebagai wadah berkampanye dalam Pemilihan Legislatif 2019. Selain lebih murah, kehadiran media sosial, menurut wakil rakyat daerah pemilihan Sulawesi Utara itu, mampu menjangkau jauh lebih banyak pemilih muda.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Ia sendiri saat itu mampu meraup 70.345 suara untuk mengantarkannya ke Senayan. \"Saya merasakan benar pengaruh media sosial ketika berkampanye. Melalui media sosial pula saya bisa berinteraksi secara cepat dengan masyarakat, termasuk para konstituen saya. Kita bisa langsung mengetahui persoalan yang terjadi pada daerah pemilihan di Sulawesi Utara,\" kata wakil rakyat yang lahir 22 Mei 1996 tersebut.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Brigitta juga mengakui pada saat pandemi seperti sekarang keberadaan media sosial pun sangat diperlukan untuk berinteraksi dengan banyak orang, bahkan dalam sekali waktu. Teknologi digital juga telah memudahkan partai politik dalam menjangkau para kader-kadernya di seluruh negeri. \"Di partai kami, nyaris semua urusan kepartaian bisa dilakukan dengan teknologi digital, termasuk mengurus dan mencetak kartu anggota partai secara <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">online</em>. Sehingga orang-orang tidak perlu mendatangi kantor partai setiap saat hanya untuk mengurusnya,\" katanya dalam forum yang sama.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Di mata Komisioner KPI Pusat Yuliandre Darwis, kehadiran media sosial untuk meraih suara anak-anak muda untuk ikut berpartisipasi di dunia politik merupakan hal yang wajar di era teknologi digital. Doktor bidang komunikasi massa ini menyebutkan, ada yang harus diperhatikan oleh anak-anak muda saat ingin menyampaikan aspirasi politiknya di media sosial.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Belajar dari kasus bertebarannya informasi berupa berita bohong (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">hoaks</em>) dalam Pemilihan Umum 2019, Yuliandre menyebut, sangat diperlukan kehati-hatian dan langkah bijak dari Generasi Z dan Milenial. \"Banyak bertebaran informasi tak benar ketika Pemilu 2019, mulai dari berita bohong, hasutan, ujaran kebencian, dan lainnya. Diperlukan kesantunan di dalam berpolitik di media sosial terutama bagi anak-anak muda. Saring dulu sebelum <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">sharing</em> dan lakukan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">tabbayun</em>, mengecek terlebih dulu kebenaran suatu informasi,\" katanya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Oleh karena itu, kendalikan jempolmu sebelum menyebarkan suatu informasi ke media sosial.</span></p>', '1624851447_6aeed5977e885ed5d262.jpg', '2021-05-24', '1', 2, 1, 'Berita', 68, 2, '0', NULL, NULL, '0');
INSERT INTO `berita` (`berita_id`, `judul_berita`, `slug_berita`, `ringkasan`, `isi`, `gambar`, `tgl_berita`, `status`, `kategori_id`, `id`, `jenis_berita`, `hits`, `likepost`, `headline`, `ket_foto`, `filepdf`, `sts_komen`) VALUES
(3, 'Cerdas Terima Informasi, Masyarakat Perlu Diedukasi', 'cerdas-terima-informasi-masyarakat-perlu-diedukasi', '   Kemajuan teknologi informasi, khususnya melalui platform digital, terjadi sangat pesat belakangan ini. Banyak hal positif yang dapat diambil, namun tidak sedikit juga sisi negatif yang dapat terjadi akibat disrupsi informasi yang ditimbulkan, seperti menyebarnya kabar bohong/hoax, fitnah, atau adu domba. ', '    <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo</span> – Kemajuan teknologi informasi, khususnya melalui platform digital, terjadi sangat pesat belakangan ini. Banyak hal positif yang dapat diambil, namun tidak sedikit juga sisi negatif yang dapat terjadi akibat disrupsi informasi yang ditimbulkan, seperti menyebarnya kabar bohong/hoax, fitnah, atau adu domba. Oleh karena itu, untuk memperkecil sisi negatif yang terjadi dari kemajuan teknologi informasi, diperlukan edukasi kepada masyarakat agar dapat mengolah informasi yang diterima dengan baik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Ya, makanya itu kita harus mengedukasi masyarakat supaya masyarakat itu cerdas, tidak menerima semua informasi yang diperoleh. Seperti tadi kita katakan, bahwa informasi ini ada yang positif, ada yang negatif, ada fitnah, ada kabar bohong, ada hoax ada berbagai macam hal. Ada yang destruktif, ada yang konstruktif. Nah, ini memang kita harus mengedukasi masyarakat untuk tidak menerima apa yang diterimanya,” tegas Wakil Presiden (Wapres) K. H. Ma’ruf Amin ketika diwawancara secara virtual dari Kediaman Resmi Wapres, Jl. Diponegoro No. 2 Jakarta, yang di muat oleh Harian Kompas, Sabtu (26/06/2021).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Dalam wawancara yang dipandu oleh Pemimpin Redaksi Harian Kompas, Sutta Dharmasaputra ini, lebih lanjut Wapres menyampaikan bahwa bagi umat Islam, perintah untuk melakukan pengecekan ulang informasi sudah tertera di dalam Al-Quran.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Kalau di dalam Islam itu kan memang sudah ada, sudah ada ayatnya ya. Kalau ada berita, itu harus di-tabayyun dulu, dicek dulu. Jangan langsung diterima ya. Sebab mungkin sekali berita itu tidak benar, sehingga kamu membuat pandangan, pendapat, keputusan yang kamu sebenarnya tidak tahu persis, sehingga merugikan orang lain dan nanti kamu akhirnya akan menyesal,” ungkapnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Wapres pun kemudian menjelaskan, bahwa disrupsi informasi tidak hanya terjadi di Indonesia saja, tetapi juga secara global. Untuk itu, diperlukan upaya-upaya edukasi yang bersifat global untuk meredam terjadinya penyebaran informasi yang tidak bertanggung jawab.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Oleh karena itu, memang ada upaya-upaya yang sifatnya nasional, regional, bahkan juga global,” urai Wapres.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Ini memang harus ada strategi yang betul-betul yang tepat untuk menghadapi itu dan diperlukan adanya kewaspadaan dan kesiapan kita,” tambahnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Di sisi lain, Wapres juga menekankan tentang pentingnya penguatan empat bingkai kerukunan agar masyarakat tidak mudah terpecah belah akibat informasi yang menyesatkan, khususnya di Indonesia yang merupakan negara majemuk dengan beragam suku bangsa, agama, dan budaya. Keempat bingkai kerukunan tersebut adalah bingkai politis, bingkai teologis, bingkai sosiologis, dan bingkai yuridis.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Wapres, bingkai politis berarti kerukunan yang dibangun sesuai dengan kesepakatan nasional (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">al mitsaq al wathani</em>), yang diperkuat dengan konsep Pancasila, Undang-Undang Dasar 1945, Negara Kesatuan Republik Indonesia, dan Bhinneka Tunggal Ika.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Sementara, bingkai teologis, Wapres mengatakan, kerukunan yang dibangun sesuai dengan ajaran agama, sehingga jika ada perbedaan, yang dibangun adalah kerukunan bukan narasi konflik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Narasi-narasi yang dalam menyampaikan dakwah, penyiaran agamanya itu harus menghindarkan narasi konflik ini. Ini yang harus kita jaga betul pemahaman ini. Nah ini harus kita upayakan,” tegas Wapres.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Terkait bingkai sosiologis, lanjutnya, kerukunan yang diciptakan sesuai dengan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">local wisdom</em>, yaitu kearifan lokal, seperti di Batak ada <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">dalihan natolu,</em> di Ambon ada <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">pela gandong</em>, dan di Kalimantan ada rumah betang.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Jadi, ini semua sebenarnya di daerah itu ada kearifan lokal yang menjaga kerukunan, dia harus kita hidupkan dan kita bangun, sehingga mereka, masing-masing daerah itu kembali kepada kearifan lokalnya,” imbaunya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Yang terakhir, bingkai yuridis, Wapres menuturkan, kerukunan dibentuk sesuai dengan aturan-aturan sehingga tidak terjadi konflik nasional. Baik kerukunan antar pemeluk agama, antar sesama bangsa, etnis dan lain sebagainya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menutup wawancara, Wapres pun mengimbau kepada para pihak terkait yang memiliki otoritas dalam mengawasi peredaran informasi agar terus bekerja keras untuk dapat mengantisipasi dampak buruk dari disrupsi informasi dan mengedukasi masyarakat untuk dapat menerima serta mencerna informasi dengan baik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Maka itu kita ingin supaya Kominfo (Kementerian Komunikasi dan Informatika), kemudian juga dari kalangan baik intelijen maupun cyber kita itu siap menghadapi setiap [disrupsi informasi yang terjadi], sehingga tidak terjadi penyebaran yang masif. Begitu muncul itu harus sudah bisa diantisipasi, dideteksi. Barangkali memang ini butuh kerja keras, kerja tidak mudah, ya dan kesadaran tinggi,” pungkasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Selain Pemimpin Redaksi Harian Kompas, hadir secara virtual dalam wawancara ini beberapa wartawan Kompas yang bertugas di lingkungan Istana Wakil Presiden diantaranya Suhartono, Antony Lee, Cyprianus Anto Saptowalyono, Mawar Kusuma, dan Nina Susilo.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Sementara Wapres didampingi oleh Kepala Sekretariat Wapres Mohamad Oemar serta para Staf Khusus Wapres Bambang Widianto dan Masduki Baidlowi.</p>', '1624851018_593f029062ab8b9ade2d.jpeg', '2021-05-24', '1', 1, 1, 'Berita', 47, 0, '0', ' Ilustrasi', NULL, '0'),
(4, 'Pemerintah Dorong Pemanfaatan 5G untuk Industri Dalam Negeri', 'pemerintah-dorong-pemanfaatan-5g-untuk-industri-dalam-negeri', '  Pemerintah mendorong pemanfaatan teknologi telekomunikasi 5G untuk industri dalam negeri. Direktur Jenderal Industri Logam, Mesin, Alat Transportasi dan Elektronika Kementerian Perindustrian, Taufiek Bawazier menyatakan Kementerian Perindustrian mendorong industri dalam negeri memproduksi perangkat pendukung base station 5G.', '   <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo -</span> Pemerintah mendorong pemanfaatan teknologi telekomunikasi 5G untuk industri dalam negeri. Direktur Jenderal Industri Logam, Mesin, Alat Transportasi dan Elektronika Kementerian Perindustrian, Taufiek Bawazier menyatakan Kementerian Perindustrian mendorong industri dalam negeri memproduksi perangkat pendukung <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">base station</em> 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"H<span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">al ini sejalan dengan pesan Presiden Joko Widodo, khususnya untuk menunjang produksi industri manufaktur yang menggunakan teknologi IoT. </span><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Pengembangan R&D teknologi 5G, akan diarahkan ke Technopark binaan Kemenperin, hasil kerja sama dengan vendor-vendor dalam negeri,\" ujarnya dalam Webinar “5G dan Peran Insinyur Elektro dalam Pengembangan Transformasi Digital Indonesia” dari Jakarta, Sabtu (26/06/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Pemerintah telah meluncurkan “Peta Jalan Making Indonesia 4.0” pada 4 April 2018 lalu sebagai inisiatif untuk percepatan pembangunan industri memasuki era industri 4.0 dengan sasaran utama menjadikan Indonesia sebagai 10 negara ekonomi terbesar dunia berdasarkan PDB pada tahun 2030. </p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Dirjen Taufiek, Kemenperin tengah menyiapkan industri dalam negeri dalam penyediaan perangkat pendukung base station 5G maupun aplikasinya. Sedangkan untuk tahap awal nilai persentase ambang batas minimum TKDN perangkat pengguna (User Equipment) 5G, dapat mengikuti nilai yang berlaku saat ini pada perangkat dengan teknologi 4G/LTE.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Pemerintah telah menetapkan 10 (sepuluh) program prioritas nasional, diantaranya dengan membangun Infrastruktur Digital, dan infrastruktur 5G termasuk di dalamnya untuk dapat mempercepat transformasi digital. Untuk itu dibutuhkan revitalisasi industri manufaktur guna mendukung program tersebut,” jelasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Dirjen Ilmate menyatakan <span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">teknologi 5G memiliki kombinasi antara konektivitas berkecepatan tinggi, latensi yang rendah, dan cakupan yang luas untuk dioptimalkan bagi penerapan industri 4.0. </span><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Sehingga sensor dan penganalisaan data akan menjadi </span><em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">real time</em><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\"> dan tanpa jeda,” tuturnya.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain itu, 5G juga membuat pengguna bisa mengontrol lebih banyak perangkat secara remote. Bahkan, 5G dapat membuka lebih banyak ragam <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">use case</em>, peluang bisnis, dan kebermanfaatan bagi masyarakat.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Di mana kinerja jaringan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">real-time</em> sangat kritis, seperti pada<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\"> remote control</em> alat berat di lingkungan berbahaya, sehingga dapat meningkatkan faktor keselamatan pekerja, dan banyak lainnya,” ungkap Dirjen Taufiek.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Direktur Jenderal Ilmate berharap dengan adanya webinar yang dilaksanakan BKE PII dan IEEE Indonesia Section dapat memberikan wawasan kepada Insinyur Elektro Indonesia untuk bisa memanfaatkan peluang teknologi 5G dalam menunjang Industri 4.0, membangun SDM dan ekosistem untuk mengakomodasi transformasi digital Indonesia.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Webinar yang diselenggarakan Persatuan Insinyur Indonesia) dan IEEE (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Institute of Electrical and Electronics Engineers</em>) Indonesia <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Section</em> khususnya bidang <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Government Relation Chapter</em>, diharapkan dapat menjadi wadah bagi para akademisi untuk bersinergi dalam membangun solusi teknologi berbasis 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain Dirjen Ilmate Kementerian Perindustrian, webinar juga diisi dengan pembicara Kepala Badan Riset dan Inovasi Nasional, LT. Handoko dan Dirjen SDPPI Kementerian Kominfo, Ismail. Hadir pula perwakilan ekosistem 5G antara lain dari Telkomsel, PT. Tata Sarana Mandiri (TSM); ShintaVR; Asosiasi Internet of Things Indonesia (ASIOTI); serta <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Schneider Electric</em>. (hm.ys)</span></p>', '1624850927_dca7bd321c573bebd562.jpeg', '2021-05-24', '1', 1, 1, 'Berita', 42, 0, '0', '', NULL, '0'),
(5, 'Menpora: Persiapan PON XX Berjalan sesuai Rencana', 'menpora-persiapan-pon-xx-berjalan-sesuai-rencana', '   Menteri Pemuda dan Olahraga, Zainudin Amali mengatakan bahwa persiapan fisik dalam penyelenggaraan PON XX, khususnya yang menjadi tanggung jawab Kemenpora telah berjalan sesuai dengan yang direncanakan.', '      <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: 0px; font-weight: 700; text-size-adjust: none; color: rgb(0, 0, 0);\">Jakarta, Kominfo</span> - Menteri Pemuda dan Olahraga, Zainudin Amali mengatakan bahwa persiapan fisik dalam penyelenggaraan PON XX, khususnya yang menjadi tanggung jawab Kemenpora telah berjalan sesuai dengan yang direncanakan.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Persiapan venue, persiapan tempat penginapan, kemudian transportasi dan berbagai hal itu saya kira sudah berjalan. Mana yang menjadi tanggung jawab pemerintah pusat melalui pendanaan APBN, baik di Kemenpora maupun Kementerian PUPR, Kemkominfo, kemudian Kementerian Perhubungan dan lain-lain, saya kira itu sudah teralokasi,\" kata Zainudin Amali dalam diskusi Forum Merdeka Barat 9 (FMB9) yang mengangkat tema \"Mengintip Kesiapan PON XX Papua\" dari Jakarta, Kamis (24/06/2021).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Menpora, hal yang menjadi tanggung jawab pemerintah daerah, baik provinsi maupun kabupaten dan kota juga sudah siap. Secara keseluruhan, dalam rapat terbatas pada 15 Maret 2021 yang juga dihariri Gubernur Papua, Kemenpora telah memaparkan persiapan PON XX.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Setelah kami memaparkan persiapan, kemudian Bapak Presiden bertanya kepada Gubernur Papua. Pak Gubernur bagaimana, sangat singkat jawaban Pak Gubernur waktu itu bahwa Papua siap menyelenggarakan PON 2021,\" ujar Menpora.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurutnya, kalau ditanya apakah persiapan di lapangannya seperti apa tentu kami berkoordinasi terus. \"Kami bahkan dari Kemenpora menempatkan orang di sana secara bergiliran, kita tugaskan untuk memantau di empat klaster tersebut,\" katanya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menpora memaparkan, pada umumnya untuk pembangunan fisik dalam rangka persiapan PON XX sudah tidak menjadi masalah, termasuk apa yang menjadi tanggung jawab Kemenpora yakni pengadaan beberapa peralatan cabang olahraga (cabor).</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Untuk pengadaan peralatan cabor tentunya tidak semuanya ada di Kemenpora, ada juga di provinsi. Kemudian, juga terkait penyelenggaraan, saya yakin akan berjalan sesuai jadwal,\" tegasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menteri Zainudin Amali juga mengingatkan penting persiapan PON XX yang bersifat non fisik. Menurutnya, persiapan-persiapan non fisik seperti juga penting disamping mempersiapkan hal-hal yang bersifat fisik.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Menurut Menpora, pemain utama dari penyelenggaraan PON ini ini adalah Panitia Besar Pekan Olahraga Nasional (PB PON) yang Ketuanya adalah Gubernur Papua. Kemudian ada sub-sub dari PB PON, ada empat klaster, yakni di Kota Jayapura, Kabupaten Jayapura, Kabupaten Timika, dan Kabupaten Merauke.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">\"Tentu ini harus bisa terkoordinasi dengan baik supaya hajatan besar, hajatan olahraga nasional yang menjadi agenda empat tahunan ini bisa berlangsung dengan baik. sebab kalau tidak terjadi sinkronisasi gerak atau komunikasi ada yang terputus-putus baik antara pemerintah pusat dengan pemerintah propinsi, atau pemerintah provinsi dengan pemerintah kabupaten/kota. Apabila tidak sinkron pasti akan menggangu persiapan. Itu yang paling penting bagi kami. Jadi persiapan-persiapan non fisik seperti ini juga penting disamping kita mempersiapkan hal-hal yang bersifat fisik,\" ujar Menpora.</p>', '1624851154_e8d8a0e654d30c175da9.jpeg', '2021-05-25', '1', 1, 1, 'Berita', 25, 0, '0', ' ', NULL, '0'),
(6, 'Visi dan Misi', 'visi-dan-misi', NULL, '              <p class=\"MsoNormal\" style=\"line-height:150%\"><b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\">VISI PEMERINTAH DAERAH KABUPATEN LEMBATA</span></b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\"> :<span style=\"color:#777777\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meneguhkan\r\nKabupaten Lembata Sebagai Kota Nyaman Huni&nbsp;dan Pusat Pelayanan Jasa yang\r\nBerdaya Saing Kuat&nbsp;untuk Keberdayaan Masyarakat dengan Berpijak pada Nilai\r\nKeistimewaan</span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\"><span style=\"color:#777777\"><o:p><br></o:p></span></span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><b><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\">MISI PEMERINTAH&nbsp;DAERAH KABUPATEN LEMBATA</span></b><span arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\" style=\"font-size: 12pt; line-height: 150%;\">&nbsp;:</span><br></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan\r\nkesejahteraan dan keberdayaan masyarakat<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat ekonomi\r\nkerakyatan dan daya saing Kabupaten Lembata<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat moral,\r\netika dan budaya masyarakat Kabupaten Lembata<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan kualitas\r\npendidikan, kesehatan, sosial dan budaya<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Memperkuat tata kota\r\ndan kelestarian lingkungan<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Membangun sarana\r\nprasarana publik dan permukiman<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><!--[if !supportLists]--><span style=\"font-size: 12pt; line-height: 150%; font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;line-height:150%;\r\nfont-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Meningkatkan\r\ntatakelola pemerintah yang baik dan bersih</span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 50px;\"><br></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -18pt; line-height: 150%; margin-left: 25px;\"><b style=\"text-indent: -18pt;\"><span style=\"font-size:12.0pt;line-height:150%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\">TUJUAN MISI KE EMPAT PADA URUSAN PENDIDIKAN</span></b><span arial\",\"sans-serif\";=\"\" mso-fareast-language:in\"=\"\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 150%;\"> :</span></p><p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:\" arial\",\"sans-serif\";mso-fareast-language:in\"=\"\">Kualitas\r\nPendidikan Meningkat<span style=\"color:#777777\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" style=\"line-height:150%\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height:150%\"><o:p>&nbsp;</o:p></p>', '1673082411_bf0b49761eff2d3b2dd0.jpg', '2021-05-25', '1', 2, 1, 'Halaman', 313, 0, NULL, NULL, NULL, '0'),
(7, 'Struktur Organisasi', 'struktur-organisasi', NULL, '  <p>Berikut Struktur Organisasi Dinas</p>', '1622209236_ff51b654afc4a541af76.png', '2021-05-28', '1', 0, 1, 'Halaman', 107, 0, NULL, NULL, NULL, '0'),
(8, 'Tugas Pokok dan Fungsi', 'tugas-pokok-dan-fungsi', NULL, ' <p>Tugas pokok dan fungsi kami.</p>', '1673082430_f4076884cebee2158420.jpg', '2021-05-28', '1', 0, 1, 'Halaman', 145, 0, NULL, NULL, NULL, '0'),
(9, 'Menpora Puji Ketum FPTI Yenny Wahid atas Prestasi Dua Atlet Panjat Tebing Indonesia', 'menpora-puji-ketum-fpti-yenny-wahid-atas-prestasi-dua-atlet-panjat-tebing-indonesia', ' Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali memuji Ketua Umum Federasi Panjat Tebing Indonesia (FPTI) Zannuba Ariffah Chafsoh atau lebih dikenal dengan Yenny Wahid atas kesukesan atlet Indonesia meraih medali emas dan memecahkan rekor pada dalam ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA pada 20 – 30 Mei 2021', '  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali memuji Ketua Umum Federasi Panjat Tebing Indonesia (FPTI) Zannuba Ariffah Chafsoh atau lebih dikenal dengan Yenny Wahid atas kesukesan atlet Indonesia meraih medali emas dan memecahkan rekor pada dalam ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA pada 20 – 30 Mei 2021.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya mengapresiasi usaha keras mbak Yenny Wahid dalam memimpin cabang olahraga panjat tebing. Sehingga para atletnya dapat mengharumkan nama bangsa di kancah internasional,” kata Menpora Amali di Jakarta, Minggu (30/5).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menpora Amali mengungkapkan cabang olahraga panjat tebing merupakan salah satu cabang olahraga unggulan dalam Grand Design Olahraga Nasional yang ditargetkan untuk meraih prestasi di setiap olimpiade.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Tangan dingin mbak Yenny sebagai Ketum PB FPTI sudah membuktikan pembinaan atlet yang terencana dan berkesinambungan. Sebagai Menpora Saya sangat terbantu dan berterimakasih kepada beliau,” ujar Menpora Amali.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, dua atlet panjat tebing tanah air yakni Veddriq Leonardo dan Kiromal Katibin memecahkan record dunia untuk kategori nomor speed 15 meter pada ajang Piala Dunia Panjat Tebing 2021 atau IFSC Worldcup yang digelar di Salt Lake City, USA, Sabtu (29/5). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq sendiri meraih medali emas usai berhasil mengalahkan Kiromal Katibin pada laga final. Pada final Veddriq Leonardo mencatatkan waktu 5,20 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Tidak hanya itu, record sebelumnya tercipta sejak pada babak penyisihan, Veddriq Leonardo mematahkan rekor sebelumnya yang dibuat atlet Iran, Reza Alipour, pada Piala Dunia 2017 di Nanjing, China. Kala itu catatan terbaik adalah 5,48 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq Leonardo lalu memecahkannya dengan catatan 5,37 detik. Namun kemudian Kiromal Katibin langsung melangkahi rekannya tersebut dengan membuat torehan 5,25 detik. Namun pada final, Veddriq Leonardo membuat catatan apik dengan waktu 5,20 detik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Veddriq yang keluar sebagai pemenang dan berhasil membawa pulang medali emas dari Kejuaraan Dunia Panjang Tebing tersebut. Catatan waktunya yang menyentuh 5,20 detik itu lantas membuatnya menjadi pemegang rekor dunia sebagai yang tercepat menyelesaikan wall 15 meter di nomor speed putra tersebut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Mereka (Veddriq dan Kiromal) melakukannya lagi. Veddric Leonardo mengalahkan rekan senegaranya Kiromal Katibin dan mencatatan lagi rekor dunia di nomor speed putra di Salt Lake City, 5,208 detik,” bunyi keterangan yang dikutip dari akun instagram @ifscclimbing, Sabtu (29/5).(dok)</p>', '1622427201_00af2a4664a93ea2e7df.jpg', '2021-05-31', '1', 4, 1, 'Berita', 28, 0, NULL, '', NULL, '0');
INSERT INTO `berita` (`berita_id`, `judul_berita`, `slug_berita`, `ringkasan`, `isi`, `gambar`, `tgl_berita`, `status`, `kategori_id`, `id`, `jenis_berita`, `hits`, `likepost`, `headline`, `ket_foto`, `filepdf`, `sts_komen`) VALUES
(10, 'Terinspirasi dari Sang Ibu, Lody Lontoh Jadi Master Aerobik Indonesia', 'terinspirasi-dari-sang-ibu-lody-lontoh-jadi-master-aerobik-indonesia', 'Perjalannannya dimulai saat ia masih berusia anak-anak, tepatnya diusia 7 tahun. Diusia itu ia akrab dengan senam aerobik ini. Lody menyampaikan, ketertarikannya untuk lebih mendalami aerobik berasal dari ibu kandungnya, yang merupakan seorang instruktur senam.\"Saya belajar langsung dari mama, saat masih remaja dan hingga sekarang tetap jadi atlet senam aerobik,\" tutur pemuda kelahiran Jakarta ini.', '  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Nama Lody Lontoh mungkin sudah tak asing lagi di telinga para penggemar dan pecinta senam aerobik di Indonesia. Ia adalah master aerobiknya Indonesia saat ini. Tapi mungkin tidak semua pecinta olahraga senam ini mengetahui sang master.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Perjalannannya dimulai saat ia masih berusia anak-anak, tepatnya diusia 7 tahun. Diusia itu ia akrab dengan senam aerobik ini. Lody menyampaikan, ketertarikannya untuk lebih mendalami aerobik berasal dari ibu kandungnya, yang merupakan seorang instruktur senam.\"Saya belajar langsung dari mama, saat masih remaja dan hingga sekarang tetap jadi atlet senam aerobik,\" tutur pemuda kelahiran Jakarta ini.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Motivasinya menjadi atlet terbaik mewakili Indonesia di kancah dunia, bahkan sebelum olahraga ini memiliki tempat di hati pecinta aerobik di tanah air. \"Awalnya saya engga mau, tapi mama bilang nanti bisa ikut PON dan SEA Games. Akhirnya, ucapannya seorang ibu adalah doa, dan itu terbukti untuk saya,\" kenangnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Pria yang lahir pada 19 Agustus 1980 ini berhasil mewujudkan mimpinya dan berhasil membawa nama harum Indonesia di berbagai pentas kejuaraan aerobik internasional, segudang prestasipun telah berhasil ia raih.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ia sangat bangga dan bahagia saat Sang Saka Merah-Putih berkibar dan lagu kebangsaan Indonesia Raya berkumandang di negeri orang berkat dirinya dan senam aerobik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Semangat itulah yang menjadikannya belasan tahun terus menggeluti olahraga rekreasi yang menyehatkan ini. \"Saya hampir tak pernah merasa ada duka selama menekuni senam aerobik ini,\" ujar atlet DKI yang turun pertama kali pada PON tahun 2000 lalu.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hingga saat ini kiprah sang master terus berlanjut. Hasilnya pemerintah telah mengapresiasinya dengan menjadinya ASN pelatih di Kementerian Pemuda dan Olahraga (Kemenpora RI). \"Bagi saya menjalani profesi sebagai pesenam aerobik adalah masa paling menyenangkan,\" kata dia.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ia tak pernah berhenti dan terus berupaya berbagi pengalaman untuk lebih mengenalkan senam aerobik ke semua kalangan masyarakat Indonesia dengan menjadi pelatih nasional senam aerobik.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Senam aerobik sendiri bisa diartikan, serangkaian gerakan yang dilakukan beriringan dengan irama musik dalam durasi waktu tertentu. Secara umum, senam aerobik adalah olahraga yang bisa meningkatkan fungsi jantung dan pernapasan. Jadi, senam aerobik sangat bermanfaat untuk kesehatan jantung, otak, paru-paru, tubuh, dan pikiran kita. Senam aerobik juga bisa dilakukan untuk menurunkan berat badan. Hal-hal di atas yang membuat senam aerobik banyak digemari dari berbagai kalangan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Lody berharap, kegiatan senam ini bisa bermanfaat bagi masyarakat secara luas. “Saya salut dan bangga. Senam benar-benar sangat bermanfaat, apalagi ditengah situasi pandemi. Mari kita tetap berolahraga dan patuhi protokol kesehatan. Sehat selalu semuanya,” jelasnya.(ben)</p>', '1622428421_f81cdf8e795972bd0f21.jpg', '2021-05-31', '1', 5, 1, 'Berita', 48, 0, '1', '', NULL, '0'),
(11, 'Jalani Vaksinasi, Pebulutangkis Melati Oktavianti: Rasanya Seperti Digigit Semut', 'jalani-vaksinasi-pebulutangkis-melati-oktavianti-rasanya-seperti-digigit-semut', 'Melati Daeva Oktavianti menjadi salah satu atlet yang menjalani vaksinasi di Istora Senayan, Jakarta, Jumat (26/2). Pebulutangkis andalan Indonesia ini pun meyakinkan kepada masyarakat secara luas untuk tidak takut divaksin.', '  <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Melati Daeva Oktavianti menjadi salah satu atlet yang menjalani vaksinasi di Istora Senayan, Jakarta, Jumat (26/2). Pebulutangkis andalan Indonesia ini pun meyakinkan kepada masyarakat secara luas untuk tidak takut divaksin. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Proses vaksinasi yang dia lakukan ini berjalan dengan lancar. Tidak ada rasa takut. Melati pun menceritakan pengalamannya usai disuntik vaksin. \"Prosesnya menjalani protokol kesehatan. Terus dicek suhu dan lain-lain. Setelahnya disuntik vaksin. Rasanya ketika divaksin seperti digigit semut,\" kata Melati. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Setelah itu, dia merasakan sedikit pegal usai disuntik. Meski begitu, Melati tidak merasakan sakit sama sekali. Dia pun merasa tambah percaya diri usai divaksin. \"Vaksin ini yang pasti bagus ya. Ini penting untuk mencegah. Jangan takut untuk divaksin. Harapan setelah divaksin tentu tambah percaya diri. Merasa lebih sehat, dan siap untuk bertanding,\" jelas Melati. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, Wakil Presiden RI Ma\'ruf Amin yang meninjau langsung pelaksanaan vaksinasi Covid-19 kepada atlet, pelatih, hingga tenaga pendukung menyebut, pelaksanaan vaksinasi untuk para atlet ini diprioritaskan bagi mereka yang akan bertanding dalam kompetisi pada level nasional maupun internasional.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Vaksinasi atlet ini penting, termasuk juga prioritas, terutama mereka yang akan mengikuti beberapa event. Maka, mereka harus kita siapkan supaya fisik mereka baik,\" kata Wapres usai peninjauannya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sementara itu, Menpora Zainudin Amali menjelaskan vaksinasi bagi atlet, pelatih dan tenaga pendukung ini adalah tahap pertama. Ini merupakan hasil kerja sama Kemenpora, Kemenkes, KONI, pimpinan cabang olahraga, hingga stakeholder terkait lainnya </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Kita berharap kegiatan ini dapat berjalan dengan baik dan lancar. Untuk selanjutnya yang didaerah, tentu akan berkoordinasi dengan dinas kesehatan setempat,\" ujarnya.(jef)</p>', '1622428973_e280dd0d921af2e70366.jpg', '2021-05-31', '1', 5, 1, 'Berita', 60, 0, '1', NULL, NULL, '0'),
(12, 'Raih WTP Untuk Kelima Kalinya, Presiden: Kita Ingin Gunakan Uang Rakyat dengan Baik', 'raih-wtp-untuk-kelima-kalinya-presiden-kita-ingin-gunakan-uang-rakyat-dengan-baik', 'Presiden Joko Widodo menerima Laporan Hasil Pemeriksaan (LHP) atas Laporan Keuangan Pemerintah Pusat (LKPP) tahun 2020 dari Badan Pemeriksa Keuangan (BPK). BPK memberikan opini Wajar Tanpa Pengecualian (WTP). Raihan WTP ini merupakan yang kelima didapat secara berturut-turut.', ' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Presiden Joko Widodo menerima Laporan Hasil Pemeriksaan (LHP) atas Laporan Keuangan Pemerintah Pusat (LKPP) tahun 2020 dari Badan Pemeriksa Keuangan (BPK). BPK memberikan opini Wajar Tanpa Pengecualian (WTP). Raihan WTP ini merupakan yang kelima didapat secara berturut-turut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Alhamdulillah opininya wajar tanpa pengecualian. WTP merupakan pencapaian yang baik di tahun yang berat, dan ini WTP yang kelima yang diraih pemerintah berturut-turut sejak tahun 2016,” kata Presiden dalam acara LHP atas LKPP tahun 2020 dan Ikhtisar Hasil Pemeriksaan (IHPS) II tahun 2020, serta penyerahan LHP semester II tahun 2020 di Istana Negara, Jakarta, Jumat (25/6). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan ini, Presiden juga mengapresiasi kinerja BPK dengan berbagai keterbatasan aktivitas dan mobilitas ditengah situasi yang sulit akibat pandemi Covid-19. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Predikat WTP bukanlah tujuan akhir karena kita ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transparan dan akuntabel, kualitas belanja semakin baik, makin tepat sasaran, memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat, oleh rakyat,\" jelas Presiden.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Oleh karenanya, Presiden menegaskan bahwa pemerintah akan sangat memperhatikan rekomendasi-rekomendasi BPK dalam mengelola pembiayaan Anggaran Pendapatan dan Belanja Negara (APBN). </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Saya minta kepada para menteri, para kepala lembaga, dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindaklanjuti dan diselesaikan,\" imbuhnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan yang sama, Presiden juga mengingatkan semua pihak bahwa pandemi Covid-19 belum berakhir seutuhnya. Seluruh lapisan masyarakat diminta harus tetap waspada.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Situasi luar biasa yang dihadapi bangsa harus direspons dengan kebijakan yang cepat dan tepat, yang membutuhkan kesamaan frekuensi oleh semua pihak, baik di semua tataran lembaga negara dan di seluruh jajaran pemerintah pusat sampai pemerintah daerah.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Sejak pandemi muncul di tahun 2020, kita sudah melakukan langkah-langkah extraordinary, termasuk dengan perubahan APBN kita. Refocusing dan realokasi anggaran di seluruh jenjang pemerintahan dan memberi ruang relaksasi defisit APBN dapat diperlebar diatas 3 persen selama tiga tahun,” pungkas Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Ikut hadir mendampingi Presiden Joko Widodo yaitu, Wakil Presiden K.H. Ma’ruf Amin dan Ketua BPK Agung Firman Sampurna. Sementara hadir secara virtual Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali serta jajaran para menteri di Kabinet Indonesia Maju. (jef)</p>', '1624624629_3fee0aea302d9c473dec.jpeg', '2021-06-25', '1', 1, 1, 'Berita', 2, 0, '0', NULL, NULL, '0'),
(13, 'LKPP 2020 Raih WTP, Ini Harapan Presiden Jokowi kepada Pimpinan Kementerian/Lembaga', 'lkpp-2020-raih-wtp-ini-harapan-presiden-jokowi-kepada-pimpinan-kementerianlembaga', 'Presiden Republik Indonesia Joko Widodo (Jokowi) menyampaikan apresiasi dan penghargaan kepada Badan Pemeriksa Keuangan BPK-RI yang telah memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020', ' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Presiden Republik Indonesia Joko Widodo (Jokowi) menyampaikan apresiasi dan penghargaan kepada Badan Pemeriksa Keuangan BPK-RI yang telah memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020. BPK menilai LKPP pemerintah telah disajikan secara wajar dalam semua hal yang material sesuai Standar Akuntansi Pemerintahan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya memberikan apresiasi dan penghargaan kepada BPK yang di tengah berbagai keterbatasan aktivitas dan mobilitas di masa pandemi telah melaksanakan pemeriksaan atas LKPP tahun 2020 dengan tepat waktu,” kata Presiden Jokowi dalam sambutannya saat penyerahan LHP LKPP Tahun 2020 dan Ikhtisar Hasil Pemeriksaan Semester (IHPS) II Tahun 2020 dari BPK kepada Presiden Jokowi di Istana Negara, Jumat (25/6) pagi. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">LHP LKPP dan IHPS II Tahun 2020 dihadiri oleh Wakil Presiden Ma’ruf Amin, para menteri koordinator dan pimpinan kementerian termasuk Menteri Pemuda dan Olahraga Zainudin Amali yang hadir secara virtual.“Alhamdulillah opininya adalah Wajar Tanpa Pengecualian (WTP). Ini merupakan pencapaian yang baik di tahun yang berat ini,” tegas Jokowi. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menurut Presiden Jokowi, WTP yang diraih saat ini merupakan yang ke-5 diraih pemerintah secara berturut-turut sejak tahun 2016. Namun presdien menegaskan bahwa predikat WTP bukanlah tujuan akhir.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Karena kita ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transparan dan akuntabel. Kualitas belanja semakin baik, makin tepat sasaran, memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat, oleh rakyat,” harapnya.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Presiden Jokowi memastikan bahwa pemerintah akan sangat memperhatikan rekomendasi-rekomendasi BPK dalam mengelola pembiayaan APBN. Sehingga dengann defisit anggaran saat ini, Presiden berharap menteri dan kepala lembaga memanfaatkan sumber-sumber pembiayaan yang aman dan dilaksanakan secara responsif mendukung kebijakan Counter-cyclical dan akselerasi pemulihan sosial ekonomi secara hati-hati dan terukur.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kepada para menteri, para kepala lembaga dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindaklanjuti dan diselesaikan,” pinta Presiden Jokowi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Selain itu, Presiden juga mengingatkan bahwa pandemi belum berakhir dan semua harus tetap waspada. “Situasi yang kita hadapi masih dalam situasi extra ordinary yang harus direspon dengan kebijakan yang cepat dan tepat. Membutuhkan kesamaan frekuensi oleh kita semuanya baik di semua tataran lembaga negara dan di seluruh jajaran pemerintah pusat sampai pemerintah daerah,” ujar Jokowi mengingatkan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sebelumnya, Ketua BPK Agung Firman Sampurna menyampaikan bahwa pihaknya memberikan opini Wajar Tanpa Pengecualian (WTP) atas Laporan Keuangan Pemerintah Pusat (LKPP) Tahun 2020.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menurut Agung Firman, pemberian opini WTP didukung oleh pemeriksaan BPK atas 86 Laporan Keuangan Kementerian/Lembaga (LKKL) dan satu Laporan Keuangan Bendahara Umum Negara (LKBUN), termasuk pemeriksaan pada tingkat Kuasa Pengguna Anggaran BUN dan badan usaha operator belanja subsidi. “84 LKKL dan LKBUN mendapat opini WTP, dan 2 KL mendapat opini Wajar Dengan Pengecualian (WDP),\" kata Agung Firman Sampurna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Sementara itu, pada pemeriksaan LKPP Tahun 2020, BPK melakukan serangkaian prosedur pemeriksaan terkait pertanggungjawaban pemerintah atas pelaksanaan kebijakan keuangan negara dan langkah-langkah yang diambil pemerintah dalam menangani Covid-19. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hasil pemeriksaan atas LKPP Tahun 2020 mengungkap antara lain mekanisme pelaporan kebijakan keuangan negara dalam penanganan dampak pandemi Covid-19 pada LKPP belum disusun; realisasi insentif dan fasilitas perpajakan dalam penanganan Covid19 dan Pemulihan Ekonomi Nasional (PC-PEN) Tahun 2020 minimal Rp1,69 triliun tidak sesuai ketentuan; pengendalian pelaksanaan belanja program PC-PEN Rp9 triliun pada 10 K/L belum memadai; serta realisasi pengeluaran pembiayaan tahun 2020 Rp28,75 triliun dalam rangka PC-PEN tidak dilakukan bertahap.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam IHPS II Tahun 2020 yang juga diserahkan oleh BPK pada hari ini, memuat ringkasan dari 559 laporan hasil pemeriksaan (LHP) termasuk hasil pemeriksaan atas PC-PEN.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">\"Pemeriksaan atas PC-PEN merupakan respon BPK yang menunjukkan kepedulian BPK, atau BPK hadir dan berperan aktif dalam mengawal pengelolaan dan tanggung jawab keuangan negara yang transparan, akuntabel, dan efektif,\" jelas Ketua BPK.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">IHPS II Tahun 2020 memuat ringkasan dari 28 LHP Keuangan, 254 LHP Kinerja, dan 277 LHP Dengan Tujuan Tertentu (DTT). Dari LHP Kinerja dan DTT tersebut, sebanyak 241 (43%) LHP merupakan hasil pemeriksaan tematik terkait PC-PEN. Alokasi anggaran PC-PEN pada pemerintah pusat, pemda, BI, OJK, LPS, BUMN, BUMD, dan dana hibah Tahun 2020 yang teridentifikasi oleh BPK sebesar Rp933,33 triliun, dengan realisasi Rp597,06 triliun (64%).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">BPK mengapresiasi upaya pemerintah dalam PC-PEN seperti pembentukan Gugus Tugas Penanganan Covid-19, penyusunan regulasi, pelaksanaan refocusing kegiatan dan realokasi anggaran, serta kegiatan pengawasan atas pelaksanaan PC-PEN.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Tanpa mengurangi apresiasi atas upaya keras pemerintah itu, BPK menyimpulkan bahwa efektivitas, transparansi, akuntabilitas dan kepatuhan pengelolaan dan tanggung jawab keuangan negara dalam kondisi darurat pandemi covid-19 belum sepenuhnya dapat tercapai. Karena alokasi anggaran dalam APBN belum teridentifikasi dan kodifikasi secara menyeluruh serta realisasi anggaran PC PEN belum sepenuhnya disalurkan sesuai dengan yang direncanakan,” pungkasnya.(ded)</p>', '1624624962_6c7da5da0c14b41717e7.jpeg', '2021-06-25', '1', 1, 1, 'Berita', 40, 0, '0', NULL, NULL, '0'),
(14, 'Menpora Amali Hadiri Penyampaian LHP LKPP 2020 Secara Virtual', 'menpora-amali-hadiri-penyampaian-lhp-lkpp-2020-secara-virtual', ' Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali menghadiri Laporan Hasil Pemeriksaan atas Laporan Keuangan Pemerintah Pusat (LHP LKPP) dan Ikhtisar Hasil Pemeriksaan Pusat (IHPS) II serta penyerahan LHP Semester II Tahun 2020 secara virtual dari Kantor Kemenpora', ' <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali menghadiri Laporan Hasil Pemeriksaan atas Laporan Keuangan Pemerintah Pusat (LHP LKPP) dan Ikhtisar Hasil Pemeriksaan Pusat (IHPS) II serta penyerahan LHP Semester II Tahun 2020 secara virtual dari Kantor Kemenpora, Jumat (25/6). Laporan ini dibacakan oleh Ketua Badan Pemeriksa Keuangan (BPK) Agung Firman Sampurna. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Agung menyampaikan,  LHP LKPP dan IHPS II 2020 dilaksanakan dengan semangat akuntabilitas untuk semua. Semangat ini dilandaskan pada komitmen untuk melaksanakan segala sesuatunya dengan cara-cara yang dapat dipertanggung jawabkan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kami apresiasi dan terima kasih yang sebesar-besarnya kepada presiden, wakil presiden, para pimpinan kementerian/lembaga serta seluruh jajaran atas kerja samanya sehingga pemeriksaan atas pertanggung jawaban pelaksanaan APBN dapat terlaksana dengan baik. Kami juga mohon maaf apabila dalam pemeriksaan ada hal-hal yang kurang berkenan,” katanya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Setelah itu, Presiden Joko Widodo memberikan pengarahan langsung dari Istana Negara, Kompleks Istana Kepresidenan, Jakarta. Dalam sambutannya, Presiden mengatakan, pemerintah tetap berkomitmen untuk mempertahankan dan meningkatkan kualitas LKPP. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Alhamdulillah opininya wajar tanpa pengecualian (WTP). WTP merupakan pencapaian yang baik di tahun yang berat dan ini WTP yang ke lima yang diraih pemerintah berturut turut. Saya memberikan apresiasi dan penghargaan kepada BPK yang ditengah keterbatasan aktivitas dan mobilitas ditengah pandemi telah melaksanaan pemeriksaan atas LKPP tahun 2020 dengan tepat waktu,” ujar Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Kepala Negara menerangkan, raihan WTP bukanlah tujuan akhir, karena pemerintah ingin mempergunakan uang rakyat dengan sebaik-baiknya, dikelola dengan transaparan, makin tepat sasaran, serta memastikan setiap rupiah yang dibelanjakan betul-betul dirasakan manfaatnya oleh masyarakat. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Karena itu pemerintah sangat memperhatikan rekomendasi-rekomendasi BPK dalam pengelolaan pembiayaan APBN. Saya minta kepada para menteri, para kepala lembaga, dan kepala daerah agar semua rekomendasi pemeriksaan BPK segera ditindak lanjuti dan diselesaikan,” pesan Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Dalam kesempatan ini, Presiden Joko Widodo mengingatkan semua pihak bahwa pandemi Covid-19 belum berakhir seutuhnya. Seluruh lapisan masyarakat diminta harus tetap waspada. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Saya ingin mengingatkan kita semuanya bahwa pandemi belum berakhir, kita harus tetap waspada dan situasi yang kita hadapi masih dalam situasi extraordinary,” terang Presiden. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Untuk itu, Presiden menekankan agar situasi ini harus direspons dengan kebijakan yang cepat dan tepat. Diperlukan adanya kesamaan frekuensi, baik disemua lembaga negara, jajaran pemerintah pusat sampai pemerintah daerah. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Sejak pandemi muncul, kita sudah melakukan langkah-langkah extraordinary termasuk dengan perubahan APBN kita. Refocusing dan realokasi anggaran diseluruh jenjang pemerintahan dan memberi ruang relaksasi APBN dapat diperlebar diatas 3 persen selama tiga tahun,” tegas Presiden. (jef)</p>', '1624625077_8b7c1a47cc512a0bece6.jpeg', '2021-06-25', '1', 1, 1, 'Berita', 46, 0, '1', NULL, NULL, '0'),
(15, 'Buka Peluang Ekonomi Kreatif dengan Infrastuktur dan Talenta Digital', 'buka-peluang-ekonomi-kreatif-dengan-infrastuktur-dan-talenta-digital', ' Kepala Badan Riset dan Inovasi Nasional LT. Handoko menilai kehadiran infrastruktur 5G dapat membuka peluang ekonomi kreatif berbasis inovasi digital. Menurutnya hal itu bisa diwujudkan dengan memperkuat infrastruktur dan talenta digital.', '  <p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Jakarta, Kominfo - Kepala Badan Riset dan Inovasi Nasional LT. Handoko menilai kehadiran infrastruktur 5G dapat membuka peluang ekonomi kreatif berbasis inovasi digital. Menurutnya hal itu bisa diwujudkan dengan memperkuat infrastruktur dan talenta digital.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Ekonomi kreatif merupakan proses nilai tambah bersumber dari kreativitas individu yang memiliki pengetahuan, teknologi dan seni-budaya sebagai penghasil barang, jasa, atau karya seni. Jadi, dalam mengantisipasi tantangan dari persaingan ekonomi kreatif yang mengglobal perlu kiranya disiapkan sejumlah strategi. Selain penguatan infrastruktur digital, yang tidak kalah penting adalah penguatan di sisi SDM talenta digital,” ungkapnya dalam Webinar “5G dan Peran Insinyur Elektro dalam Pengembangan Transformasi Digital Indonesia”, dari Jakarta, Sabtu (26/06/2021).</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Kepala BRIN menyatakan dalam era ekonomi digital terdapat banyak peluang bisa dihasilkan dan ada sejumlah tantangan yang harus dituntaskan bersama oleh seluruh pemangku kepentingan.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">“Beberapa hal yang harus diperhatikan, yaitu; penggunaan sumber daya yang lebih efisien, mendorong transparansi finansial, meningkatkan kesejahteraan masyarakat, dan mendorong adanya jejak digital (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">digital footprint</em>),” paparnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Meski demikian, menurut Handoko ekonomi digital dan teknologi digital bukan merupakan tujuan melainkan perubahan perilaku dan efisiensi proses bisnis yang diharapkan memberikan manfaat besar bagi masyarakat serta pelaku usaha.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\">Oleh karena itu, Kepala BRIN mengingatkan di dalam era ekonomi digital semua orang akan memiliki kesempatan yang lebih merata dalam perannya terlibat dalam perekonomian. “idak seperti di era ekonomi konvensional. Ekonomi digital dan inovasi digital membuka peluang bagi penciptaan dan juga peningkatan ekonomi kreatif Indonesia secara besar-besaran,” jelasnya.</p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Salah satu yang disiapkan pemerintah, menurut Handoko dengan memperkuat industri TIK dalam negeri serta adopsi teknologi mutakhir seperti <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Artificial Intelligence</em> (AI), <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Big Data Analytics</em>, dan <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Internet of Things</em> (IoT). Hal tersebut dilakukan melalui penyelenggaraan tata kelola SDM unggul sehingga inovasi digital dan ekonomi kreatif dapat terus bertumbuh.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">“Inovasi digital harus terus berjalan paralel seiring perkembangan hadirnya layanan 5G di Indonesia agar use case 5G dapat bernilai manfaat maksimal khususnya bagi masyarakat dan bangsa Indonesia,” tutur Kepala BRIN.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Webinar yang diselenggarakan Persatuan Insinyur Indonesia) dan IEEE (<em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Institute of Electrical and Electronics Engineers)</em> Indonesia <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Section</em> khususnya bidang <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Government Relation Chapter</em>, diharapkan dapat menjadi wadah bagi para akademisi untuk bersinergi dalam membangun solusi teknologi berbasis 5G.</span></p><p style=\"margin-right: 0px; margin-bottom: -15px; margin-left: 0px; padding: 1em 0px; border: 0px; outline: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.6; font-family: \"Open Sans\", sans-serif; vertical-align: baseline; text-size-adjust: none; position: relative; color: rgb(51, 51, 51) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-size-adjust: none;\">Selain Kepala Badan Riset dan Inovasi Nasional, LT. Handoko, hadir sebagai pembicara antara lain Dirjen SDPPI Kominfo, Ismail; Dirjen Ilmate (Industri Logam, Mesin, Alat Transportasi dan Elektronika) Kementerian Perindustrian, Taufiek Bawazier. Hadir pula perwakilan ekosistem 5G antara lain dari Telkomsel, PT. Tata Sarana Mandiri (TSM); ShintaVR; Asosiasi Internet of Things Indonesia (ASIOTI); serta <em style=\"margin: 0px; padding: 0px; border: none; outline: 0px; text-size-adjust: none;\">Schneider Electric</em>.(hm.ys)</span></p>', '1624851841_63248533d94f9473a485.jpeg', '2021-06-28', '1', 1, 1, 'Berita', 130, 0, '1', ' ', NULL, '1');
INSERT INTO `berita` (`berita_id`, `judul_berita`, `slug_berita`, `ringkasan`, `isi`, `gambar`, `tgl_berita`, `status`, `kategori_id`, `id`, `jenis_berita`, `hits`, `likepost`, `headline`, `ket_foto`, `filepdf`, `sts_komen`) VALUES
(16, 'Lantik Karo Perencanaan dan Organisasi, Ini Pesan Menpora Amali', 'lantik-karo-perencanaan-dan-organisasi-ini-pesan-menpora-amali', ' Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali melantik Kepala Biro (Karo) Perencanaan dan Organisasi Kemenpora, Sri Wahyuni secara virtual dari Kemenpora, Jumat (16/7). Sejumlah pesan dan harapan disampaikan Menpora Amali agar kinerja Kemenpora terus baik dalam pelantikan yang berjalan khidmat ini.', '        <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Jakarta: Menteri Pemuda dan Olahraga Republik Indonesia (Menpora RI) Zainudin Amali melantik Kepala Biro (Karo) Perencanaan dan Organisasi Kemenpora, Sri Wahyuni secara virtual dari Kemenpora, Jumat (16/7). Sejumlah pesan dan harapan disampaikan Menpora Amali agar kinerja Kemenpora terus baik dalam pelantikan yang berjalan khidmat ini. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Hari ini saya secara resmi melantik saudari dalam jabatan baru. Saya percaya saudari mampu melaksanakan tugas dengan baik dan sesuai tanggung jawab yang diberikan. Suasana ini mengharuskan kita melakukan kegiatan dengan baru. Ada yang hadir langsung di Wisma Kemenpora dan saya hadir virtual dari Lantai 10 Kemenpora,” kata Menpora Amali. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Menpora Amali mengatakan, pelantikan merupakan hal yang biasa dan lumrah pada lingkungan birokrasi. Kemudian, Menpora Amali meminta agar Sri Wahyuni dapat segera beradaptasi dan konsentrasi dalam menjalankan tugasnya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Ada program prioritas, saya minta betul perencanaan dan pelaksanaannya dilakukan dengan baik. Segera koordinasi dengan pimpinan satuan kerja yang ada. Tidak boleh perencanaan merencanakan sendiri tanpa diskusi dengan pimpinan satuan kerja, begitu juga sebaliknya,” ujarnya. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Lebih lanjut, Menpora Amali yakin Sri Wahyuni mampu mengemban tugas baru ini. Melihat kemampuannya, Menpora Amali yakin dan berharap hal yang baik telah dicapai bisa ditingkatkan. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">“Kalau lihat pengalamannya, cukup lumayan daya tahan fisiknya. Jaga terus kesehatannya. Sekali lagi selamat kepada Bu Sri Wahyuni atas amanah ini. Mudah-mudahan kerja di Kemenpora dapat terus baik dan optimal,” jelas Menpora Amali. </p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Hadir sebagai saksi dalam pelantikan yaitu Sesmenpora Gatot S. Dewa Broto dan Deputi Pengembangan Pemuda Kemenpora Asrorun Ni’am Sholeh. Seperti diketahui, Sri Wahyuni sebelumnya menjabat sebagai Asisten Deputi Industri dan Promosi Olahraga pada Deputi Bidang Peningkatan Prestasi Olahraga.(jef)</p>', '1626499016_fd3f435402c099f6c050.jpg', '2021-07-17', '1', 1, 1, 'Berita', 109, 0, '1', 'Pelantikan Karo Perencanaan', NULL, '0'),
(17, 'Pengaruh Kemajuan Teknologi Komunikasi dan Informasi Terhadap Karakter Anak', 'pengaruh-kemajuan-teknologi-komunikasi-dan-informasi-terhadap-karakter-anak', '     Kehidupan manusia yang bermula dari kesederhanaan kini menjadi kehidupan yang bisa dikategorikan sangat modern. Di jaman yang semakin canggihnya teknologi informasi dan komunikasi yang berkembang  saat sekarang, segala sesuatu dapat diselesaikan dengan cara-cara yang praktis.', '      <p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Kehidupan manusia yang bermula dari kesederhanaan kini menjadi kehidupan yang bisa dikategorikan sangat modern. Di jaman yang semakin canggihnya teknologi informasi dan komunikasi yang berkembang  saat sekarang, segala sesuatu dapat diselesaikan dengan cara-cara yang praktis. Teknologi informasi dan komunikasi adalah sesuatu yang bermanfaat untuk mempermudah semua aspek kehidupan manusia. Dunia informasi saat ini seakan tidak bisa terlepas dari teknologi. Penggunaan teknologi informasi dan komunikasi oleh masyarakat menjadikan dunia teknologi semakin lama semakin canggih.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Dunia informasi saat ini seakan tidak bisa terlepas dari teknologi. Penggunaan teknologi oleh masyarakat menjadikan dunia teknologi semakin lama semakin canggih. Komunikasi yang dulunya memerlukan waktu yang lama dalam penyampaiannya, kini dengan teknologi segalanya menjadi sangat cepat dan seakan tanpa jarak.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Dengan kemajuan teknologi yang begitu pesat ini, pepatah yang menyatakan bahwa“Dunia tak selebar daun kelor” sepantasnya berubah menjadi “Dunia seakan selebar daun kelor”. Hal ini disebabkan karena semakin cepatnya akses informasi dalam kehidupan sehari-hari. Kita bisa mengetahui peristiwa yang sedang terjadi di daerah lain atau bahkan di negara lain, misalnya Amerika Serikat walaupun kita berada di Indonesia.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Salah satunya dalam bidang teknologi komunikasi seperti adanya smartphone dan internet, membuat manusia semakin meningkatkan cara komunikasinya. Berbagai macam media untuk berkomunikasi pun hadir untuk memudahkan manusia berinteraksi. Seiring dengan perkembangan zaman, teknologi internet sudah menjadi kebutuhan bagi masyarakat, hal inilah yang melahirkan media sosial. Media sosial merupakan media online, yaitu media yang hanya ada dengan menggunakan internet dimana para penggunanya bisa menuangkan ide, mengekspresikan diri, dan menggunakan sesuai dengan kebutuhannya. Kehadiran media sosial memberikan kemudahan bagi manusia untuk berkomunikasi dan bersosialisasi.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Menurut penelitian Center of Innovation Policy and Governance (CIPG) yang dirilis pekan lalu, saat ini laju penetrasi internet Indonesia merupakan yang tertinggi di Asia yang kini sudah mencapai 51%. Angka yang lebih fenomenal terlihat dari jumlah pengguna seluler. Di tahun 2016, diprediksi ada sekitar 371,4 juta nomor seluler yang aktif di Indonesia. Jumlah tersebut bahkan lebih besar dari pada proyeksi jumlah penduduk Indonesia yakni 261,89 juta penduduk.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\"></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Salah satu aplikasi di media sosial yang saat ini sedang booming dikalangan anak-anak, remaja bahkan orang dewasa yaitu <a href=\"https://www.kompasiana.com/tag/tiktok\" style=\"box-sizing: inherit; color: rgb(153, 153, 153);\">TikTok</a>. TikTok adalah aplikasi buatan dari negeri Tirai Bambu lebih tepatnya Tiongkok, aplikasi yang platformnya khusus video, musik dan Foto, spesifik pada perusahaan ByteDance. Ketenaran dari Tik Tok sendiri telah terbukti dengan bergabung Rich Chigga dalam acara Official Warm Up Party yang diadakan dalam rangka Djakarta Warehouse Project (DWP) ditahun sebelumnya, dengan jumlah penonton yang luar biasa.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Aplikasi ini hampir dengan aplikasi lain, layaknya Musical.ly, Selain itu, bukti boomingnya aplikasi tiktok dilihat dari nilai reviewnya yang sangat tinggi di Play Store maupun App Store yaitu 4,6. Rating yang hampir sempurna, memadukan Artificial Intelligence dan Image Capture. di Google Play atau Play Store rata-rata yang mengomentari aplikasi tiktok ini adalah kaum hawa dan remaja-remaja di bawah umur.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Dari penjelasan di atas,saya tidak akan membahas mengenai fitur yang terdapat dalam aplikasi tiktok sendiri, tapi saya akan membahas dampak- dampak yang di hasilkan dari aplikasi tiktok kepada remaja, khusunya dampak teknologi informasi dan komunikasi dari segi positif maupun segi negatif . Dari segi positif sendiri aplikasi tiktok memiliki beberapa manfaat untuk remaja salah satunya yaitu:</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.75em; margin-left: 24px; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(153, 153, 153); font-size: 15px;\"><li style=\"box-sizing: inherit;\">Sebagai salah satu aplikasi yang dapat mendorong kreativitas seseroang dalam membuat suatu karya.</li><li style=\"box-sizing: inherit;\">Aplikasi untuk mengekspresikan kreativitas khusunya dalam pembuatan video, Aplikasi Tik Tok sendiri merupakan platform untuk membuat video dengan efek spesial dan unik dengan mudah. Tik Tok juga menyuguhkan berbagai macam musik untuk latar video, sehingga penggunanya dapat menciptakan video yang lebih menarik.</li><li style=\"box-sizing: inherit;\">Aplikasi tiktok ini juga berbasis video dan musik, dan dapat melati diri remaja atau anak anak untuk mengasah skill editing video, untuk konten-konten yang lebih bermanfaat.</li></ol><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\">Tetapi dari beberapa point positif dari tik tok sendiri, terdapat banyak dampak negatif untuk remaja, sudah banyak artikel yang membahas tentang dampak negatif dari tiktok sendiri sampai kominfo harus memblokir aplikasi tiktok di indonesia, salah satunya segi negatif dari tiktok sendiri adalah</p><ol style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.75em; margin-left: 24px; padding: 0px; list-style-position: initial; list-style-image: initial; color: rgb(153, 153, 153); font-size: 15px;\"><li style=\"box-sizing: inherit;\">Secara tidak langsung, tiktok menjadi penyebab generasi remaja untuk suka bergoyang ria, Apabila anda termasuk seseorang yang sering aktif di Instagram, pastinya anda akan menjumpai beberapa netizen dengan berbagai video yang dibuat dengan menggunakan aplikasi tiktok ini. Ada yang biasa saja, dan ada yang Luar Biasa, luar biasa keterlaluan. Bahkan ada beberapa remaja dan anak-anak bergoyang ria yang tidak wajar. </li><li style=\"box-sizing: inherit;\">Membuat video yang tidak sewajarnya, bahkan tidak hanya remaja saja mereka melibatkan anak-anak kecil dalam pembuatan video tiktok demi respon yang banyak dari netizen , berani bernyanyi lagu dan berakting orang dewasa. </li><li style=\"box-sizing: inherit;\">Apabila ini dianggap sebagai media hiburan, maka Youtube lebih baik. Memang benar, tujuan aplikasi ini plure untuk hiburan, tapi hiburan yang berlebihan juga tidaklah benar. Kita mungkin sudah akrab dengan berbagai berita viral, yang mengheboh alias miris melibatkan aplikasi ini. Sebenarnya kita dapat mengasah kemampuan menjadi video creator langsung dengan aplikasi-aplikasi yang lebih memadai</li><li style=\"box-sizing: inherit;\">Terdapat banyak video yang tidak pantas menjadi contoh yang tidak baik bagi perilaku remaja dan anak jaman sekarang. Mungkin kita juga sudah sama-sama tahu banyaknya video dengan aksi-aksi yang tidak pantas dilakukan penggunanya yang meleceng kepada penistaan agama seperti membuat video berjoged bersama saat melaksanakan sholat. Ironisnya banyak akun yang mengunggah video sejenis tanpa mereka bisa menyadari bahwa video yang mereka tiru itu bukanlah hal yang pantas untuk di tiru yang dapat membuat kenakalan anak jaman sekarang semakin beragam. Dalam hal ini diperlukan peran keluarga dan peran orang tua dalam mendidik anak-anaknya dengan memberikan pengarahan pada anak yang kecanduan tik tok. Belum lagi adanya kasus-kasus lain yang memberikan dampak negatif pada penggunanya karena melakukan aksi yang kurang baik yang pada akhirnya merugikan diri sendiri.</li><li style=\"box-sizing: inherit;\">Seseorang menjadi terlalu kreatif demi video yang lucu dan menarik sehingga tidak mampu menilai mana yang pantas dan mana yang tidak. Banyak remaja yang memang kreatif dalam membuat video agar bisa mendapat banyak respon dari orang lain. Tapi mereka menjadi seperti tidak berpikir dahulu sebelum merekam apa yang mereka lakukan. Mungkin mereka hanya berpikir bagaimana cara membuat video yang ok, bagus, menarik dan banyak respon dari penonton tanpa peduli dengan apa yang mereka tampilkan itu baik atau buruk untuk orang lain maupun dirinya sendiri.</li></ol><p></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(153, 153, 153); font-size: 15px;\"></p><p></p><p style=\"box-sizing: inherit; margin: 0px 0px 20px; color: rgb(153, 153, 153); font-family: Roboto, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dari penjelasan di atas kita sudah membahas tentang dampak positif maupun negatif dari aplikasi yang sedang fenomena di indonesia ini yaitu tiktok, meskipun masyarakat berpikir lebih banyak sisi negatifnya dibandingnya positif, tapi kita tidak bisa menyalahkan perkembangan dari teknologi ini. Kembali lagi kepada diri kita sendiri untuk menggunakan teknologi lebih baik dan bijak serta arahan dari orang tua sangatlah amat penting bagi remaja jaman sekarang ini serta penanaman pendidikan agama dan karakter yang baik agar generasi muda Indonesia menjadi generasi yang cerdas dan sehat serta memiliki karakter yang baik.</p>', '1626706668_25494b967caeadd64038.jpg', '2021-07-19', '1', 2, 1, 'Berita', 243, 0, '0', 'Teknologi digital', NULL, '1'),
(18, 'Syarat dan Kondisi', 'syarat-dan-kondisi', NULL, '  <h3 style=\"margin-top: 0px; margin-bottom: 15px; font-weight: inherit; line-height: inherit; font-size: 16px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\">Portal Dinas Kepemudaan, Olahraga dan Kebudayaan&nbsp;</h3><h3 style=\"margin-top: 0px; margin-bottom: 15px; font-weight: inherit; line-height: inherit; font-size: 16px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: OpenSansReg, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(45, 45, 45);\"><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\">Dengan menggunakan portal ini, maka anda telah mengerti dan menyetujui seluruh syarat dan kondisi yang berlaku dalam penggunaan Portal&nbsp;<span style=\"font-size: 16px; font-weight: inherit;\">Dinas Kepemudaan, Olahraga dan Kebudayaan, sebagaimana tercantum di bawah ini:</span></p><ul style=\"margin: 10px 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; vertical-align: baseline; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Informasi yang diperoleh atau di-download oleh pengguna akan dipergunakan oleh sang pengguna secara bertanggung-jawab. Pengutipan atas sebagian atau seluruh isi portal ini diijinkan dengan menyebutkan sumber-sumber secara lengkap.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Situs web ini dimaksudkan semata-mata untuk keperluan komunikasi publik, serta mendukung penyampaian informasi Dinas Pemuda dan Olahraga. Tidak ada satu bagian pun dalam portal ini yang bertujuan promosi atau merekomendasikan suatu kegiatan dari lembaga atau perorangan lain, kecuali jika kegiatan tersebut berhubungan dengan pelaksanaan tugas Menteri Pemuda dan Olahraga Republik Indonesia.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Setiap isi portal ini dikelola dan diperbaharui oleh Dinas Kepemudaan, Olahraga dan Kebudayaan, atas nama Dinas Pemuda dan Olahraga Kabupaten Lembata. Untuk itu, Dinas Pemuda dan Olahraga Republik Indonesia adalah satu-satunya lembaga yang memiliki hak penuh untuk menambah, mengubah dan mengurangi materi web site sewaktu-waktu sesuai dengan kebutuhan.</li><li style=\"margin: 0px 0px 7px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Dinas Pemuda dan Olahraga tidak bertanggung-jawab atas materi situs web lembaga-lembaga lain yang di-<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">link</span>&nbsp;oleh Portal kami.&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Link</span>&nbsp;tersebut hanya disediakan untuk mempermudah pengguna memperoleh tambahan informasi dari lembaga-lembaga lain yang punya kaitan dengan dinas kami.</li></ul><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\">Jika anda ingin menyampaikan pertanyaan, kritik, saran dan masukan lainnya agar menghubungi</p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; line-height: 1.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 15px; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">kami di&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: bolder;\">form&nbsp;</span></span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: bolder;\">Kritik Saran</span></span><span style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">&nbsp;yang telah disediakan di Portal kami.&nbsp;</span></p></h3>', 'default.png', '2021-07-28', '1', 0, 1, 'Halaman', 19, 0, NULL, NULL, NULL, '0'),
(19, 'Redaksi', 'redaksi', NULL, '   <main class=\"maincontent\" style=\"margin-right: 20px; width: 860px; min-width: 0px;\"><div class=\"widsection\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\"><div class=\"gen-section\" style=\"font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\"><div class=\"gen-content\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5; font-family: inherit; vertical-align: baseline;\"><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Portal Dinas Pemuda dan Olahraga ini dikelola oleh <strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Dinas Pemuda dan Olahraga Kabupaten Lembata.</strong></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"> </p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Penanggung Jawab</strong></p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><i>Kepala Dinas</i><span style=\"font-style: inherit;\"> : Domi Juang, S.H.</span></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"> </p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Penasehat Redaksi</strong></p><p style=\"margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><span style=\"font-style: inherit;\">- </span><i>Sekertaris</i><span style=\"font-style: inherit;\"> : Desi Gili</span></p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Staf Khusus Bidang Pengembangan dan Prestasi Olahraga</span> : Vian Taum</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Kepala Biro Humas dan Hukum</span> : Deril Taum</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"> </p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\"><strong style=\"margin: 0px 0px 15px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">Dewan Redaksi</strong><br>- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Pemimpin Redaksi</span> : Erel</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Wakil Pimpinan Redaksi</span> : Devi</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Redaktur Pelaksana</span> : Vania</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Reporter</span> : Ega, Hosea, Renata</p><p style=\"font-style: inherit; margin-right: 0px; margin-bottom: 6px; margin-left: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.5em; font-family: inherit; vertical-align: baseline;\">- <span style=\"margin: 0px; padding: 0px; border: 0px; font-style: oblique; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Fotografer</span> : Blakataduk, Kim Kom</p></div></div></div></main>', 'default.png', '2021-07-31', '1', 0, 1, 'Halaman', 16, 0, NULL, NULL, '', '0'),
(21, 'Rencana Strategis', 'rencana-strategis', NULL, '              <p style=\"text-align: center;\"><b>RENCANA STRATEGIS DINAS TAHUN 2019 - 2022</b></p><p style=\"text-align: left;\"><span arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\" style=\"font-size: 12pt;\">Contoh halaman yang disematkan dengan file pdf.</span><br></p><p class=\"MsoListParagraph\" style=\"margin-bottom: 0.0001pt; text-indent: -18pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><!--[if !supportLists]--><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" arial;color:#333333;mso-fareast-language:in\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp; </span></span><!--[endif]--><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Langkah 1 : Tambahkan halaman seperti biasa. </span></b><span style=\"font-size: 12pt;\">Silahkan masukan&nbsp; judul dan isi seperti biasa, dan simpan halaman.</span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom: 0.0001pt; text-indent: -18pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><!--[if !supportLists]--><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" arial;color:#333333;mso-fareast-language:in\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp; </span></span><!--[endif]--><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Langkah </span></b><b><span lang=\"EN-US\" style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-ansi-language:en-us;mso-fareast-language:=\"\" in\"=\"\">2</span></b><b><span style=\"font-size:13.5pt;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:=\"\" in\"=\"\"> : Sematkan file pdf pada judul halaman dengan icon putih.</span></b></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\">Pada halaman yang hendak disematkan klik disamping judul untuk menambahkan file PDF.</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom: 0.0001pt; line-height: 18.9pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;\"><span style=\"font-size:12.0pt;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";color:#333333;mso-fareast-language:in\"=\"\"><br></span></p><p style=\"margin-left: 25px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span style=\"font-size:12.0pt;line-height:115%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#333333;mso-ansi-language:in;=\"\" mso-fareast-language:in;mso-bidi-language:ar-sa\"=\"\">Halaman yang berhasil disematkan file PDF, iconnya akan berubah menjadi file pdf.&nbsp;</span></p>', 'default.png', '2021-08-18', '1', 0, 1, 'Halaman', 128, 0, NULL, NULL, '1630684760_0cedb3658bbf674bc524.pdf', '0');
INSERT INTO `berita` (`berita_id`, `judul_berita`, `slug_berita`, `ringkasan`, `isi`, `gambar`, `tgl_berita`, `status`, `kategori_id`, `id`, `jenis_berita`, `hits`, `likepost`, `headline`, `ket_foto`, `filepdf`, `sts_komen`) VALUES
(28, 'Soroti Tubuh Politik Bupati Sunur, Ini Yang DiKatakan Aktivis ARBL', 'soroti-tubuh-politik-bupati-sunur-ini-yang-dikatakan-aktivis-arbl', 'Praesent dui ex, dapibus eget mauris ut, finibus vestibulum enim. Quisque arcu leo, facilisis in fringilla id, luctus in tortor. Nunc vestibulum est quis orci varius viverra. Curabitur dictum volutpat massa vulputate molestie. In at felis ac velit maximus convallis.', '          <h4 class=\"mt-0 font-16\">This Week\'s Top Stories</h4><p>Dear Lorem Ipsum,</p><p>Praesent dui ex, dapibus eget mauris ut, finibus vestibulum enim. Quisque arcu leo, facilisis in fringilla id, luctus in tortor. Nunc vestibulum est quis orci varius viverra. Curabitur dictum volutpat massa vulputate molestie. In at felis ac velit maximus convallis.</p><p>Sed elementum turpis eu lorem interdum, sed porttitor eros commodo. Nam eu venenatis tortor, id lacinia diam. Sed aliquam in dui et porta. Sed bibendum orci non tincidunt ultrices. Vivamus fringilla, mi lacinia dapibus condimentum, ipsum urna lacinia lacus, vel tincidunt mi nibh sit amet lorem.</p><p>Sincerly, berikut kodenya</p><p></p><pre class=\"prettyprint\"><p></p><p>&lt;style&gt;\r\n          .pointer {\r\n              cursor: pointer;\r\n          }\r\n      &lt;/style&gt;</p><p>&lt;div class=\"modal-body\"&gt;\r\n                &lt;div class=\"form-group row\"&gt;\r\n                    &lt;img id=\'img_load\' width=\'100%\' src=\'&lt;?= base_url(\'public/img/galeri/foto/\' . $gambar) ?&gt;\'&gt;\r\n                &lt;/div&gt;\r\n                &lt;table class=\"table table-bordered table-hover table-striped\"&gt;\r\n                    &lt;tbody&gt;\r\n                        &lt;tr&gt;\r\n                            &lt;td colspan=\"2\"&gt;&lt;strong&gt;&lt;?= $kategorifoto ?&gt; | &lt;?= $judul ?&gt;&lt;/strong&gt;&lt;/td&gt;\r\n                        &lt;/tr&gt;\r\n                    &lt;/tbody&gt;\r\n                &lt;/table&gt;\r\n            &lt;/div&gt;<br></p><p></p></pre><p></p><div class=\"line number1 index0 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&lt;</code><code class=\"html keyword\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-weight: 700 !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 102,=\"\" 153)=\"\" !important;\"=\"\">pre</code> <code class=\"html color1\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" grey=\"\" !important;\"=\"\">class</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">=</code><code class=\"html string\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 255)=\"\" !important;\"=\"\">\"prettyprint\"</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&gt;</code></div><div class=\"line number1 index0 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\"><br></code></div><div class=\"line number2 index1 alt1\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><style></div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">          .pointer {</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">              cursor: pointer;</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">          }</div><div class=\"line number2 index1 alt1\" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\">      </style></div></div><div class=\"line number3 index2 alt2\" style=\"font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" color:=\"\" rgb(137,=\"\" 137,=\"\" 140);=\"\" box-sizing:=\"\" content-box=\"\" !important;=\"\" border-radius:=\"\" 0px=\"\" background:=\"\" none=\"\" rgb(245,=\"\" 247,=\"\" 248)=\"\" border:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" line-height:=\"\" normal=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" padding:=\"\" 1em=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" font-variant-numeric:=\"\" font-variant-east-asian:=\"\" font-stretch:=\"\" white-space:=\"\" pre=\"\" !important;\"=\"\"><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\"><!--</code--><code class=\"html keyword\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-weight: 700 !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 102,=\"\" 153)=\"\" !important;\"=\"\">pre</code><code class=\"html plain\" style=\"box-sizing: content-box !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important; font-stretch: normal !important; font-size: 14px !important; line-height: normal !important; font-family: \" source=\"\" code=\"\" pro\",=\"\" monaco,=\"\" monospace=\"\" !important;=\"\" border:=\"\" 0px=\"\" padding:=\"\" 5px=\"\" background:=\"\" none=\"\" border-radius:=\"\" inset:=\"\" auto=\"\" float:=\"\" height:=\"\" margin:=\"\" outline:=\"\" overflow:=\"\" visible=\"\" position:=\"\" static=\"\" vertical-align:=\"\" baseline=\"\" width:=\"\" min-height:=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 0)=\"\" !important;\"=\"\">&gt;</code></code></div>', '1638592702_484b32bb44085ca35e7c.jpeg', '2021-12-04', '1', 4, 1, 'Berita', 251, 0, '0', ' ini berita utama, yang masuk dalam demo web', NULL, '1'),
(35, 'Memahami Konsep Ruang di Masa Daring', 'memahami-konsep-ruang-di-masa-daring', 'Pengalaman daring selama ini, memudahkan setiap peserta didik untuk mendapatkan sumber belajar, yang dekat, intens, dan faktual, bahkan dapat disebut sebagai fenomena kontekstual. Sumber belajar yang dimaksudkan itu adalah lingkungan rumah.', '<p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Pengalaman daring selama ini, memudahkan setiap peserta didik untuk mendapatkan sumber belajar, yang dekat, intens, dan faktual, bahkan dapat disebut sebagai fenomena kontekstual. Sumber belajar yang dimaksudkan itu adalah lingkungan rumah.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Adalah menarik, saat menyimak anak-anak kita yang duduk di pendidikan dasar, mereka belajar mengenai lingkunganku, baik itu di rumah, di sekolah, atau di keluarga. Tema-tema itu, sudah dikenalkan sejak pendidikan dini.&nbsp;</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Sebagai tenaga pendidik geografi, sudah tentu penulis merasa senang karena tema serupa itu, seiring selaras dengan target pembelajaran geografi. Namun demikian, terselip sebuah pertanyaan, bagaimana kita memanfaatkan model pembelajaran dan tema serupa itu, ke dalam konteks pembelajaran geografi pada jenjang pendidikan menengah, khususnya di jenjang SMA/MA ? Pertanyaan inilah, yang kemudian mengantarkan penulis ini, mencoba menggunakan model pembelajaran local material, dalam konteks memahami konsep ruang dalam pembelajaran Geografi.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Pada mulanya, dirasa ada sedikit kesulitan. Penulis sebut sedikit kesulitan, khurus pada saat kita hendak memulai. Memulai pembelajaran dan memulai sesuatu yang baru dalam situasi hidup yang ada di zona nyaman. Di era pandemi ini, nyaman dengan hal yang biasa saja, dan tidak mesti ribet dan diribetkan dengan hal-hal yang luar kuasa kita, akibat banyaknya pembatasan sosial dan mobilitas. Namun, karena terangsang oleh hal-hal yang ‘menyelimuti’ kepenasaran inilah, yang kemudian, penulis mencoba untuk melakukannya.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Memahami ruang dengan memanfaatkan lingkungan rumah sebagai bahan-ajar lokal dalam pembelajaran geografi.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Selama&nbsp; masa pandemi, kita berada dalam situasi yang ‘terbatas’ dan dibatasi untuk menekan sebaran pandemi. Pembatasan inilah, yang kemudian membelah ruang kehidupan kita menjadi dua wilayah.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Pertama, ruang-terbuka atau public space. Ruang ini, diapresiasi sebagai ruang interaksi manusia yang terbuka. Pola dan hukum keruangannya, memiliki karakter sendiri dan bisa dibedakan dari jenis ruang lainnya.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Kedua, ruang-keluarga atau domestic space.&nbsp; Ruang aktivitas di rumah, adalah jenis dari ruang keluarga, yang aturan dan pola kehidupannya dimiliki&nbsp; oleh keluarga kita sendiri.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Ketiga, ruang-pribadi atau private space.&nbsp; Kamar tidur merupakan contoh nyata dari ruang pribadi yang dimiliki oleh hampir sejumlah pihak.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Di luar hal itu, ada juga yang membedakan antara ruang-ruang semua itu, dengan dua karakter antara ruang nyata dengan ruang maya, namun kedua hal itu, merupakan pemekaran dari jenis-jenis ruang tersebut.</p><p style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">Hal menariknya, perbedaan ruang-ruang kehidupan ini, amat sangat terasa, disaat kita menjalani proses pembelajaran di masa pandemi.</p>', '1639193468_f70d35abd321b8bac072.jpeg', '2021-12-11', '1', 2, 1, 'Berita', 96, 2, '0', '', NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_komen`
--

CREATE TABLE `berita_komen` (
  `beritakomen_id` int(11) NOT NULL,
  `berita_id` int(11) DEFAULT NULL,
  `nama_komen` varchar(100) DEFAULT NULL,
  `hp_komen` varchar(20) DEFAULT NULL,
  `isi_komen` text DEFAULT NULL,
  `tanggal_komen` datetime DEFAULT NULL,
  `balas_komen` text DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `sts_komen` varchar(1) DEFAULT NULL,
  `email_komen` varchar(100) DEFAULT NULL,
  `tgl_balas` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita_komen`
--

INSERT INTO `berita_komen` (`beritakomen_id`, `berita_id`, `nama_komen`, `hp_komen`, `isi_komen`, `tanggal_komen`, `balas_komen`, `id`, `sts_komen`, `email_komen`, `tgl_balas`) VALUES
(5, 28, 'Devi Taum', '819121', 'Ini Komentar di soroti tubuh', '2021-12-10 00:00:00', '@Devi Taum, Terima kasih atas atensinya.', 1, '1', 'devi@yahoo.com', '2021-12-15 09:21:07'),
(6, 17, 'Andreas Juang', '081981203121', 'Semoga teknologi memudahkan manusia, dan bukannya menyusahkan.', '2021-12-10 21:53:09', 'Teknologi hakekatnya memudahkan dan semestinya dimanfaatkan untuk kepentingan yang lebih.', 1, '1', 'andreas@juang.com', '2021-12-10 21:54:36'),
(7, 17, 'Desi Gili', '085353967028', 'Semoga teknologi dapat berkembang di Lembata', '2021-12-10 22:06:40', '@Desi Gili, semoga saja.', 1, '1', 'desi@gmail.com', '2021-12-10 22:07:27'),
(10, 17, 'Tukang Iris', '081353967028', 'Semoga teknologi tidak membuat anak melupakan budaya lokal.', '2021-12-11 08:05:04', NULL, NULL, '0', 'tukang@iris.com', NULL),
(11, 28, 'sd', 'sd', 'Komentarnya kami edit', '2021-12-11 08:35:35', '@sd, terima kasih lain kali buat komen yang baik.', 1, '1', 'sd@yahoo.com', '2021-12-15 09:20:20'),
(12, 15, 'Nogo', '081353967028', 'Peluang itu hendaknya dimaksimalkan dengan baik.', '2021-12-11 09:51:26', '@Nogo, semoga', 1, '1', 'devi@yahoo.com', '2021-12-27 17:12:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita_tag`
--

CREATE TABLE `berita_tag` (
  `beritatag_id` int(30) NOT NULL,
  `berita_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita_tag`
--

INSERT INTO `berita_tag` (`beritatag_id`, `berita_id`, `tag_id`) VALUES
(19, 5, 1),
(21, 1, 1),
(22, 1, 3),
(24, 17, 6),
(26, 15, 1),
(27, 35, 6),
(36, 36, 6),
(40, 3, 6),
(43, 28, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bt_bidang`
--

CREATE TABLE `bt_bidang` (
  `bidang_id` int(11) NOT NULL,
  `nama_bidang` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bt_bidang`
--

INSERT INTO `bt_bidang` (`bidang_id`, `nama_bidang`) VALUES
(4, 'Infrastruktur dan Telematika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bt_bukutamu`
--

CREATE TABLE `bt_bukutamu` (
  `bukutamu_id` int(11) NOT NULL,
  `bidang_id` int(11) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `instansi` varchar(150) DEFAULT NULL,
  `keperluan` text DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bt_bukutamu`
--

INSERT INTO `bt_bukutamu` (`bukutamu_id`, `bidang_id`, `nama`, `telp`, `instansi`, `keperluan`, `status`, `tanggal`) VALUES
(1, 4, 'Deril', '+6281353967028', 'Dinas Kominfo', 'Tes Buku', '0', '2021-11-15'),
(3, 4, 'Oktovianus Taumas', '+6285353967028', 'Tes lg', 'sdasda sd', '0', '2021-12-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `counter`
--

CREATE TABLE `counter` (
  `id_counter` int(2) NOT NULL,
  `nm1` varchar(255) DEFAULT NULL,
  `jm1` int(11) DEFAULT NULL,
  `nm2` varchar(255) DEFAULT NULL,
  `jm2` int(11) DEFAULT NULL,
  `nm3` varchar(255) DEFAULT NULL,
  `jm3` int(11) DEFAULT NULL,
  `nm4` varchar(255) DEFAULT NULL,
  `jm4` int(11) DEFAULT NULL,
  `ic1` varchar(100) DEFAULT NULL,
  `ic2` varchar(100) DEFAULT NULL,
  `ic3` varchar(100) DEFAULT NULL,
  `ic4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `counter`
--

INSERT INTO `counter` (`id_counter`, `nm1`, `jm1`, `nm2`, `jm2`, `nm3`, `jm3`, `nm4`, `jm4`, `ic1`, `ic2`, `ic3`, `ic4`) VALUES
(1, 'SEKOLAH DASAR', 49090, 'SEKOLAH MENENGAH', 321, 'PAUD', 8912, 'PKBM', 3380, 'fas fa-store-alt', 'fas fa-cubes', 'fas fa-child', 'fab fa-slideshare');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ebook`
--

CREATE TABLE `ebook` (
  `ebook_id` int(11) NOT NULL,
  `kategoriebook_id` int(11) DEFAULT NULL,
  `judul` varchar(250) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `fileebook` varchar(200) DEFAULT NULL,
  `penulis` varchar(200) DEFAULT NULL,
  `j_hal` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ebook`
--

INSERT INTO `ebook` (`ebook_id`, `kategoriebook_id`, `judul`, `gambar`, `fileebook`, `penulis`, `j_hal`, `tanggal`, `hits`, `status`, `id`) VALUES
(2, 1, 'Digital Marketing melalui Aplikasi', '1639361861_351b4e0a65f86a8c0ba3.jpg', '1634212422_40a889d196d4391a76d4.pdf', 'Usman Camdani', '190', '2021-10-14', 19, '1', 1),
(5, 1, 'Mengelola Kualitas Layanan di bidang Telekomunikasi', '1639578966_3427d41502e76bb7fb11.jpg', '1634288761_8dbbb2854600cb088a00.pdf', 'Ikatan Bankir Indonesia  ', '124', '2021-10-15', 11, '1', 1),
(6, 3, 'Legenda Putri Duyung', '1639579019_ea6360db0359f7106061.jpg', '1634358817_58dd7a7fdb1651781f28.pdf', 'Dian K', '102', '2021-10-16', 12, '1', 1),
(7, 1, 'Internet Marketing', '1639361251_8c7e8af5a81339c63bf9.png', '1639361251_5298acf8cc7605860af8.pdf', 'James Murdor', '122', '2021-12-13', 5, '1', 1),
(8, 1, 'Ebook Author', '1639400811_8036ce709ce1978cbe3d.png', '1639400811_c09db5abd955a1bf3bc5.pdf', 'Vian Taum ', '233', '2021-12-13', 0, '0', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq_jawab`
--

CREATE TABLE `faq_jawab` (
  `faq_jawabid` int(11) NOT NULL,
  `faq_tanyaid` int(11) DEFAULT NULL,
  `faq_jawaban` text DEFAULT NULL,
  `sts_jwb` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faq_jawab`
--

INSERT INTO `faq_jawab` (`faq_jawabid`, `faq_tanyaid`, `faq_jawaban`, `sts_jwb`) VALUES
(2, 1, '<ol><li>Jumlah kata dalam artikel <b>minimal</b> <b>300 </b>kata dan maksimal <b>1000 </b>kata.</li><li>Setelah klik simpan data akan diverifikasi terlebih dahulu untuk diterbitkan.</li></ol>', NULL),
(3, 2, '<ol><li>Judul menarik dan menggambarkan isi artikel</li><li>Menuliskan pengalaman pembelajaran sesuai dengan RPP yang diunggah</li><li>Hasil refleksi pembelajaran berupa keunggulan atau kelemahan pembelajaran</li><li>Dilengkapi dengan hasil pencapaian tujuan pembelajaran</li><li>Dapat dilengkapi dengan respon/tanggapan siswa atau pihak yang terlibat dalam pembelajaran tersebut</li><li>Jumlah kata minimal 300 dan maksimum 2500 kata</li><li>Tidak memuat unsur SARA, pornografi, ujaran kebencian, dan ideologi yang bertentangan dengan Pancasila</li><li>Bukan merupakan hasil plagiasi karya orang lain</li><li>Penulisan mengikuti Pedoman Umum Ejaan Bahasa Indonesia (PUEBI)</li><li>Dapat menggunakan ilustrasi, cerita, contoh, studi kasus, gambar, diagram, tabel, analogi dan atau perbandingan, untuk memperjelas bacaan</li><li>Jika memasukan foto/ gambar/ ilustrasi ke dalam artikel, pastikan sudah mendapatkan persetujuan dari yang bersangkutan dan mencantumkan sumber</li><li>Jika memasukan video pembelajaran dalam artikel wajib menuliskan sumber aslinya</li><li>Konten artikel yang dikirimkan sepenuhnya tanggung jawab kontributor</li><li>Bila dalam waktu 3 bulan belum ada informasi artikel telah dikurasi, maka kontributor dapat memperbaiki dan mengunggah kembali</li><li>Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi berhak membatalkan penayangan artikel yang tidak sesuai ketentuan</li></ol>', NULL),
(5, 3, '<ol><li>Judul menarik dan menggambarkan isi bacaan</li><li>Menuliskan gagasan, pengalaman, resensi atau kajian ilmiah dalam mengembangkan pembelajaran</li><li>Mengikuti prinsip penulisan; apa; mengapa; di mana; kapan; siapa dan bagaimana (5W+ 1H)</li><li>Artikel Bacaan berkaitan dengan pendidikan</li><li>Jumlah kata minimal 300 dan maksimum 2500 kata</li><li>Tidak memuat unsur SARA, pornografi, ujaran kebencian, perundungan dan ideologi yang bertentangan dengan Pancasila;</li><li>Bukan merupakan hasil plagiasi karya orang lain</li><li>Penulisan mengikuti Pedoman Umum Ejaan Bahasa Indonesia (PUEBI)</li><li>Dapat menggunakan ilustrasi, cerita, contoh, studi kasus, gambar, diagram, tabel, analogi dan atau perbandingan, untuk memperjelas bacaan</li><li>Jika memasukan foto/ gambar/ ilustrasi ke dalam artikel, dipastikan sudah mendapatkan persetujuan dari yang bersangkutan dan mencantumkan sumber</li><li>Jika memasukan video pembelajaran dalam artikel, wajib menuliskan sumber aslinya</li><li>Konten artikel yang dikirim sepenuhnya tanggung jawab kontributor</li><li>Bila dalam waktu 1 bulan belum ada informasi artikel telah dikurasi, maka kontributor dapat memperbaiki dan mengunggah Kembali</li><li>Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi Republik Indonesia berhak membatalkan penayangan artikel yang tidak sesuai ketentuan</li></ol>', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq_tanya`
--

CREATE TABLE `faq_tanya` (
  `faq_tanyaid` int(11) NOT NULL,
  `faqtanya` varchar(255) DEFAULT NULL,
  `sts_faqtanya` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faq_tanya`
--

INSERT INTO `faq_tanya` (`faq_tanyaid`, `faqtanya`, `sts_faqtanya`) VALUES
(1, 'Ketentuan Teknis Penulisan', '1'),
(2, 'Artikel Refleksi', '1'),
(3, 'Artikel Bacaan', '1'),
(4, 'Artikel Tips', '1'),
(5, 'Artikel Lain-lain', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `foto_id` int(11) NOT NULL,
  `kategorifoto_id` int(11) DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `hits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`foto_id`, `kategorifoto_id`, `judul`, `tanggal`, `gambar`, `id`, `hits`) VALUES
(44, 1, 'Wisma Atlet Kemayoran dan Rusunawa Raih Penghargaan Inovasi Pelayanan Publik Penanganan Covid-19', '2021-06-14', '1623601134_a4755ab7a88523662a5d.jpg', 1, 1),
(45, 1, 'Menteri Basuki Kukuhkan Dewan Arsitek Indonesia', '2021-06-14', '1623601191_2e2433f983bcda8e0952.jpg', 1, 1),
(46, 1, 'Siap Diresmikan, Floodway Cisangkuy Akan Tambah Kapasitas Penanganan Banjir di Bandung', '2021-06-14', '1623816361_35910235c35789e18949.jpg', 1, 1),
(47, 2, 'Demo Foto', '2021-06-16', '1623816316_7b50aa495c1c4e0d2fe7.jpg', 1, 1),
(48, 1, 'Demo Foto 2', '2021-06-16', '1623816342_f9baee905415daec3ede.jpg', 1, 1),
(49, 1, 'Demo Foto 12', '2021-06-16', '1623816388_3d1f3135bff19e2cc8da.jpg', 1, 1),
(50, 1, 'Demo Foto 4', '2021-06-16', '1623816448_8ea2643ae80d2d3b9d44.jpg', 1, 1),
(51, 1, 'Demo Foto 2', '2021-06-16', '1623816473_900cdcf1dbd5984a90b1.jpg', 1, 1),
(52, 2, 'Demo Foto 2', '2021-06-16', '1623816515_25de364958d48be7a6ad.jpg', 1, 1),
(53, 1, 'Demo Foto 2', '2021-06-16', '1623816543_2a2a3f10d9e4cc0e664d.jpg', 1, 1),
(54, 1, 'Kegiatan', '2021-06-16', '1623816602_55ee2fdfa393b58e7b26.jpg', 1, 1),
(55, 1, 'Demo Foto', '2021-06-16', '1623816616_617b8a6312b617eb473a.jpg', 1, 1),
(56, 1, 'Demo Foto 2', '2021-06-16', '1623816645_2f46dd8c92fa8762b82b.jpg', 1, 1),
(57, 6, 'Expect Nothing', '2021-06-16', '1623816679_7fb1cfd80ab799fdafe9.png', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `informasi_id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `slug_informasi` varchar(200) DEFAULT NULL,
  `isi_informasi` text DEFAULT NULL,
  `gambar` varchar(120) DEFAULT NULL,
  `tgl_informasi` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '0=Layanan\r\n1=Pengumuman',
  `id` int(11) UNSIGNED DEFAULT NULL,
  `fileunduh` varchar(200) DEFAULT NULL,
  `sts_aktif` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`informasi_id`, `nama`, `slug_informasi`, `isi_informasi`, `gambar`, `tgl_informasi`, `hits`, `type`, `id`, `fileunduh`, `sts_aktif`) VALUES
(2, 'Renstra Dinas Pemuda Olahraga dan Kebudayaan Tahun 2020 - 2021', 'renstra-dinas-pemuda-olahraga-dan-kebudayaan-tahun-2020-2021', 'Rencana strategis Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata Tahun 2020 - 2021', '1622784809_6fd7ee491a1ba50ed3aa.jpg', '2021-06-02', 43, 0, 1, NULL, NULL),
(3, 'Perjanjian Kinerja 2021', 'perjanjian-kinerja-2021', '<p>Perjanjian kinerja oleh lingkup Disporabud kabupaten Lembata Tahun 2021&nbsp;</p>', 'default.png', '2021-06-02', 39, 0, 1, NULL, NULL),
(4, 'Survey Kepuasan Masyarakat Semester II Tahun 2020', 'survey-kepuasan-masyarakat-semester-ii-tahun-2020', ' <div style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\"; font-size: 10pt;\"><p style=\"text-align: justify;\"><span style=\"font-size: 12pt; line-height: 18.4px; font-family: Arial, sans-serif;\">Survey Kepuasan Masyarakat ( SKM ) Semester II ini adalah untuk mengukur kepuasan masyarakat sebagai pengguna layanan khususnya pemakaian fasilitas sarana dan prasarana olahraga dan meningkatkan kualitas penyelenggaraan pelayanan publik yang dilaksanakan oleh Dinas Pemuda dan Olahraga Kabupaten Lembata, serta untuk mendapatkan data yang obyektif tentang kondisi riil pelaksanaan pelayanan fasilitas sarana dan prasarana olahraga oleh Dinas Pemuda dan Olahraga Kabupaten Lembata dalam kurun waktu Semester II ( Juli s/d Desember 2020 ).</span></p></div>', '1625124031_e18b33fa8a967ef05481.png', '2021-06-02', 50, 0, 1, '1629365555_c6e3d11c4d6d4d95837a.png', NULL),
(5, 'LKJIP DISPORABUD Tahun 2021', 'lkjip-disporabud-tahun-2021', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Laporan Kinerja Instansi Pemerintah (</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">LKjIP</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">) merupakan suatu bentuk pertanggungjawaban tentang penyelenggaraan negara yang berdayaguna dan berhasilguna sesuai dengan Instruksi Presiden (Inpres) Nomor 7 tahun 1999 tentang Akuntabilitas Kinerja Instansi Pemerintah dan Surat Edaran Menteri Pendayagunaan Aparatur Negara.</span><br></p>', 'default.png', '2021-06-02', 48, 0, 1, NULL, NULL),
(6, 'IKU DISPORABUD Tahun 2021', 'iku-disporabud-tahun-2021', '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Indikator kinerja utama atau&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">IKU</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;adalah ukuran atau indikator kinerja suatu instansi, utamanya dalam mencapai tujuan dan sasaran tertentu. Setiap lembaga atau instansi pemerintah wajib merumuskan indikator kinerja utama, dan menjadikan hal itu sebagai prioritas utama.</span><br></p>', 'default.png', '2021-06-02', 65, 0, 1, '1622707876_b0c0282580f4b6491c83.pdf', NULL),
(8, 'Surat Edaran Penyelenggaran Latihan di Masa Pandemi Covid 19', 'surat-edaran-penyelenggaran-latihan-di-masa-pandemi-covid-19', ' <p>Di informasikan untuk setiap pengurus cabang olahraga, untuk tetap mematuhi protokol kesehatan di masa covid 19. Surat lengkap dapat di unduh dibawah.<br></p>', '1622786884_d2ebd81e3bebbd7a4e22.jpg', '2021-06-04', 52, 1, 1, NULL, NULL),
(9, 'Sebaran Data Quisioner Online', 'sebaran-data-quisioner-online', '<p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Titillium Web&quot;, Arial, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(102, 102, 102);\">Sesuai surat dari DISPORABUD Kabupaten Lembata Nomor : 556/1737 tanggal 04 Juni 2021 perihal permintaan sebaran data Quisioner&nbsp; Online, dimohon kepada pengunjung Website DINPORAPAR Kabupaten Purbalingga untuk membantu&nbsp; proses penyebaran dan pengisian Quisioner online melalui Media sosial. Adapun tautan dari quisioner yang akan disebarkan :&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">bit/ly/siapberbagiwisatalagi.</span></p><p style=\"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Titillium Web&quot;, Arial, sans-serif; vertical-align: baseline; text-align: justify; color: rgb(102, 102, 102);\">atas kerjasama dari pengunjung website kami sampaikan terima kasih</p>', '1626963451_2df18f2eea5378dc7b20.png', '2021-06-04', 67, 1, 1, '1622789361_38adb5a21a9f05960095.png', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL,
  `slug_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama_kategori`, `slug_kategori`) VALUES
(0, 'Hal', 'Hal'),
(1, 'Berita Dinas', 'Berita-Dinas'),
(2, 'Artikel', 'Artikel'),
(4, 'Olahraga', 'Olahraga'),
(5, 'Inspirasi', 'Inspirasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_ebook`
--

CREATE TABLE `kategori_ebook` (
  `kategoriebook_id` int(11) NOT NULL,
  `kategoriebook_nama` varchar(200) DEFAULT NULL,
  `kategoriebook_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_ebook`
--

INSERT INTO `kategori_ebook` (`kategoriebook_id`, `kategoriebook_nama`, `kategoriebook_slug`) VALUES
(1, 'Informasi Publik', 'Informasi-Publik'),
(3, 'Cerita Rakyat', 'Cerita-Rakyat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_foto`
--

CREATE TABLE `kategori_foto` (
  `kategorifoto_id` int(11) NOT NULL,
  `nama_kategori_foto` varchar(200) DEFAULT NULL,
  `slug_kategori_foto` varchar(200) DEFAULT NULL,
  `cover_foto` varchar(100) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl_album` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_foto`
--

INSERT INTO `kategori_foto` (`kategorifoto_id`, `nama_kategori_foto`, `slug_kategori_foto`, `cover_foto`, `ket`, `tgl_album`) VALUES
(1, 'Kegiatan', 'kegiatan', 'default.png', 'Kegiatan rutin sehari-hari', '2021-05-13'),
(2, 'Bidang Pembangunan', 'bidang-pembangunan', 'default.png', 'Kegiatan pembangunan', '2021-11-20'),
(6, 'Sistem Informasi Administrasi Desa (SIAD)', 'sistem-informasi-administrasi-desa-siad', '1639713786_09acbc84296386269b5e.png', 'Sistem informasi yang digunakan untuk membantu mengelola data penduduk, umum, pemerintahan, surat menyurat secara profesional.', '2021-11-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_video`
--

CREATE TABLE `kategori_video` (
  `kategorivideo_id` int(11) NOT NULL,
  `nama_kategori_video` varchar(200) DEFAULT NULL,
  `slug_kategori_video` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_video`
--

INSERT INTO `kategori_video` (`kategorivideo_id`, `nama_kategori_video`, `slug_kategori_video`) VALUES
(1, 'Tutorial SIAD', 'Tutorial-SIAD'),
(9, 'Hiburan', 'Hiburan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritiksaran`
--

CREATE TABLE `kritiksaran` (
  `kritiksaran_id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi_kritik` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `no_hpusr` varchar(15) DEFAULT NULL,
  `balas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kritiksaran`
--

INSERT INTO `kritiksaran` (`kritiksaran_id`, `nama`, `email`, `judul`, `isi_kritik`, `tanggal`, `status`, `no_hpusr`, `balas`) VALUES
(1, 'Deril Taum', 'deril@yahoo.com', 'Pengaduan', 'Selamat siang. olahraga lembata kurang diperhatikan.', '2021-06-10', 1, NULL, NULL),
(2, 'Deril Taum', 'viantaum20@gmail.com', 'Permintaan Informasi', 'Apakah setiap tahun pengcab Olahraga memiliki dana pembinaan?  ', '2021-06-10', 1, '081353967028', NULL),
(3, 'Vian Taum', 'demo@datagoe.com', 'Aspirasi', 'Website sangat keren', '2021-06-16', 2, NULL, 'Terima kasi'),
(5, 'Erel Taum', 'ereltaum@gmail.com', 'Permintaan Informasi', 'Kapan akan dilakukan jadwal latihan Taekwondo? Apakah sudah bisa dilakukan dimasa pandemi ini?', '2021-07-01', 1, NULL, NULL),
(7, 'VINSENSIUS LAGI', 'viantaum17@gmail.com', 'Pengaduan', 'Tingkatkan prestasi olahraga', '2021-08-23', 2, '+6281353967028', NULL),
(8, 'Petu Blakataduk', 'blakataduk@yahoo.co.id', 'Permintaan Informasi', 'Kapan dilaksanakan Eltari admin? Mohon Tanggapan', '2021-08-23', 1, '+6281353967028', 'Tahun depan, lihat saja'),
(9, 'Devi Taum', 'blakataduk@yahoo.co.id', 'Pengaduan', 'Listrik sering mati, tolong perhatikan', '2021-12-04', 0, '+6281353967028', NULL),
(10, 'Ama Deril', 'viantaum17@gmail.com', 'Aspirasi', 'Semoga web ini dapat meningkatkan kinerja', '2021-12-05', 0, '+6281353967028', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `link_terkait`
--

CREATE TABLE `link_terkait` (
  `id_link` int(11) NOT NULL,
  `nama_link` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `link_terkait`
--

INSERT INTO `link_terkait` (`id_link`, `nama_link`, `url`, `gambar`, `status`) VALUES
(1, 'Simpatika', 'https://www.aplikasipendidikan.net/', '1673058366_69967a80322daa2a3f9e.png', 1),
(2, 'Bos Kemenag', 'https://www.aplikasipendidikan.net/', '1673058401_25ee618cb8a11507ed8b.png', 1),
(3, 'Portal Emis', 'https://www.aplikasipendidikan.net/', '1673058458_9f795890c5f4dc4dde1c.png', 1),
(5, 'Portal RKAM', 'https://www.aplikasipendidikan.net/', '1673058469_ef92dcff525e5f298a17.png', 1),
(6, 'Rapot Digital', 'https://www.aplikasipendidikan.net/', '1673058504_92b315df56495d60f310.png', 1),
(7, 'Unduh App', 'https://www.aplikasipendidikan.net/', '1673058540_901e4d97c0d082af63b7.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `menu_link` varchar(100) DEFAULT NULL,
  `parent` varchar(1) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `posisi` varchar(1) DEFAULT '0',
  `linkexternal` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`menu_id`, `nama_menu`, `menu_link`, `parent`, `icon`, `urutan`, `target`, `posisi`, `linkexternal`) VALUES
(1, 'Home', 'home', 'N', 'fas fa-home', 0, '_parent', '0', 'N'),
(2, 'Profil', '#', 'Y', '', 1, NULL, '0', NULL),
(3, 'Berita', 'berita', 'N', '', 2, '_parent', '0', 'N'),
(5, 'Galeri', '#', 'Y', '', 4, NULL, '0', NULL),
(6, 'Informasi', '#', 'Y', '', 3, NULL, '0', NULL),
(13, 'Redaksi', 'page/redaksi', NULL, '', 7, '_parent', '2', 'N'),
(14, 'Syarat & Kondisi', 'page/syarat-dan-kondisi', NULL, '', 8, '_parent', '2', 'N'),
(15, 'Peta Situs', 'petasitus', NULL, '', 9, '_parent', '2', 'N'),
(19, 'E-Book', 'ebook', 'N', 'mdi mdi-book-open-page-variant', 11, '_parent', '0', 'N'),
(21, 'Interaksi', '#', 'Y', 'fas fa-hands-helping', 10, '_parent', '0', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1613099987, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modalpopup`
--

CREATE TABLE `modalpopup` (
  `modalpopup_id` int(1) NOT NULL,
  `judultawaran` varchar(100) DEFAULT NULL,
  `isitawaran` text DEFAULT NULL,
  `gbrtawaran` varchar(100) DEFAULT NULL,
  `linktawaran` varchar(100) DEFAULT NULL,
  `namatombol` varchar(50) DEFAULT NULL,
  `sts_tombol` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `modalpopup`
--

INSERT INTO `modalpopup` (`modalpopup_id`, `judultawaran`, `isitawaran`, `gbrtawaran`, `linktawaran`, `namatombol`, `sts_tombol`) VALUES
(1, 'PPDB 2023/2024', '             <div><b style=\"\"><font color=\"#ce0000\" style=\"background-color: rgb(247, 247, 247);\">Syarat Pendaftaran :</font></b></div><ul><li>SKL (Surat Keterangan Lulus) dari SMP/ MTs / Sederajat.</li><li>Kartu Keluarga</li><li>Akte Kelahiran</li><li>Surat Pernyataan Keaslian Berkas (Download disini)</li><li>Raport semeter 1 - 5 SMP/MTs/Sederajat</li><li>Suat Domisili ( Jalur Pindahan Orang Tua/ Luar Daerah)</li><li>Sertifikat Prestasi Akademi/Non Akademik ( Jalur Prestasi )</li><li>Kartu Indonesia Pintar (KIP)/ Kartu Program Keluaga Harapan (PKH) (Jalur Afirmasi)</li><li>SK Pembagian Tugas dan Katu NUPTK (Jalur Anak GTK)</li></ul>', '1.png', 'https://www.aplikasipendidikan.net', 'Daftar', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `filetupoksi` varchar(100) DEFAULT NULL,
  `publikasi` text DEFAULT NULL,
  `penelitian` text DEFAULT NULL,
  `pengabdian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `nip`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `agama`, `pangkat`, `jabatan`, `gambar`, `filetupoksi`, `publikasi`, `penelitian`, `pengabdian`) VALUES
(1, '13052021030706', 'Andreas Fournet J Taum', 'Waikomo', '2021-05-13', 'L', 'Katolik', 'Pembina Tk.I - IV/b', 'Kepala Dinas Pendidikan Pemuda & Olahraga', '1623055927_fd5cb1c49ac6dfcc1f75.png', NULL, NULL, NULL, NULL),
(2, '16052012010792', 'Maria Goreti Ose Taum', 'Waikomo', '2012-05-16', 'P', 'Katolik', 'Penata Tk.I - III/d', 'Sekretaris', '1631577303_6fe35840dc3aaff00ca1.png', NULL, NULL, NULL, NULL),
(3, '10092013020706', 'Pulcheria Nogo Devi Taum', 'Waikomo', '2013-09-10', 'P', 'Katolik', 'Pembina - IV/a', 'Ka. Bid. Pembinaan GTK', '1634393089_edde17429b940adac6af.png', '1634393612_a5d5a248d91c43b63b16.pdf', NULL, NULL, NULL),
(4, '902382000', 'Oktovianus Taum,S.Kom', 'Waikomo', '1985-03-22', 'L', 'Katolik', 'Penata Tk.I - III/d', 'Ka. Bid. Pemuda & Olahraga', 'default.png', NULL, NULL, NULL, NULL),
(6, '09293', 'Desi Grid Yani Gili', 'Kupang', '1990-12-31', 'P', 'Katolik', 'Penata Tk.I - III/d', 'Programmer', '1642509153_1275a821c62c9762152f.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `poling_id` int(11) NOT NULL,
  `pilihan` varchar(150) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `rating` int(5) DEFAULT 0,
  `status` varchar(1) DEFAULT 'Y',
  `id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`poling_id`, `pilihan`, `type`, `rating`, `status`, `id`) VALUES
(1, 'Bagaimana tanggapan anda dengan tampilan website ini ?', 'Pertanyaan', 0, 'Y', 1),
(2, 'Sangat Bagus', 'Jawaban', 18, 'Y', 1),
(3, 'Bagus', 'Jawaban', 6, 'Y', 1),
(4, 'Cukup Bagus', 'Jawaban', 5, 'Y', 1),
(6, 'Kurang Bagus', 'Jawaban', 2, 'Y', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_hukum`
--

CREATE TABLE `produk_hukum` (
  `produk_id` int(11) NOT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_hukum`
--

INSERT INTO `produk_hukum` (`produk_id`, `id`, `nama_produk`) VALUES
(2, 1, 'UNDANG - UNDANG'),
(3, 1, 'PERATURAN DAERAH'),
(4, 1, 'PERATURAN GUBERNUR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_kathukum`
--

CREATE TABLE `produk_kathukum` (
  `kathukum_id` int(11) NOT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `nama_kathukum` varchar(255) DEFAULT NULL,
  `file_kathukum` varchar(100) DEFAULT NULL,
  `tanggal_kathukum` date DEFAULT NULL,
  `status_kathukum` varchar(1) DEFAULT NULL COMMENT '0=tidak aktif 1=aktif',
  `skathukum` varchar(1) DEFAULT NULL COMMENT '1=lanjut, 0=tidaklanjut',
  `hits` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_kathukum`
--

INSERT INTO `produk_kathukum` (`kathukum_id`, `produk_id`, `nama_kathukum`, `file_kathukum`, `tanggal_kathukum`, `status_kathukum`, `skathukum`, `hits`) VALUES
(2, 3, 'Perda Perpustakaan 13 Tahun 2019', '1634630220_1d4a84671601a287f9c6.txt', '2021-10-17', '1', '0', 0),
(5, 3, 'Perda Kearsipan 2020', 'default.png', '2021-10-18', '1', '1', 0),
(11, 3, 'Perda Kearsipan 2021', 'default.png', '2021-10-18', '1', '1', 0),
(12, 4, 'PERGUB PERPUSTAKAAN', NULL, '2021-10-19', '1', '1', 0),
(13, 4, 'PERGUB KEARSIPAN', NULL, '2021-10-19', '1', '1', 0),
(14, 2, 'Undang - Undang Perpustakaan', '1634628022_845c6f69bee73bb0ba2c.txt', '2021-10-19', '1', '0', 0),
(15, 2, 'Undang - Undang Kearsipan', '1634628142_235f7faa5adeac36b7ea.txt', '2021-10-19', '1', '0', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_subkathukum`
--

CREATE TABLE `produk_subkathukum` (
  `subkathukum_id` int(11) NOT NULL,
  `kathukum_id` int(11) DEFAULT NULL,
  `nama_subkathukum` varchar(255) DEFAULT NULL,
  `file_subkathukum` varchar(100) DEFAULT NULL,
  `tanggal_subkathukum` date DEFAULT NULL,
  `status_subkathukum` varchar(1) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk_subkathukum`
--

INSERT INTO `produk_subkathukum` (`subkathukum_id`, `kathukum_id`, `nama_subkathukum`, `file_subkathukum`, `tanggal_subkathukum`, `status_subkathukum`, `hits`) VALUES
(1, 5, 'Perda Kearsipan 47 Tahun 2020', '1634722171_a31dfb6da13e2273a272.txt', '2021-10-18', '1', 0),
(5, 13, 'Pergub Nomor 12 Tahun 2014', '1634626119_3e4329db1d7265b6206d.jpg', '2021-10-19', '1', NULL),
(6, 13, 'Pergub Nomor 16 Tahun 2016', '1634626148_3f7d8e22ff0946bc48c8.jpg', '2021-10-19', '1', NULL),
(7, 13, 'Pergub Nomor 23 Tahun 2016', '1634626174_ab18ad8c52cbf84cb813.txt', '2021-10-19', '1', NULL),
(8, 12, 'Pergup no 01', '1634628569_9533e99cad25f2532320.txt', '2021-10-19', '1', NULL),
(9, 12, 'Pergub no 2', '1634628586_6b428f8aea480e3be314.txt', '2021-10-19', '1', NULL),
(10, 11, 'Perda Kearsipan 22 Tahun 2021', '1634630691_be3aeb80d7df06bdf077.txt', '2021-10-19', '1', NULL),
(11, 5, 'Perda Kearsipan 55 Tahun 2020', '1634630754_7a59a2c272776cb9ce67.txt', '2021-10-19', '1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `nama_section` varchar(100) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `linksumber` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`section_id`, `nama_section`, `gambar`, `link`, `linksumber`) VALUES
(1, 'LAYANAN', '1627648651_c1d0631924766575fa9f.jpg', 'layanan', 'N'),
(2, 'SURVEI KEPUASAN', '1627649693_9c083a0826f83eab97d9.jpg', 'survey', 'N'),
(3, 'AGENDA', '1627649842_625e57eff6d6e0be2cf9.jpg', 'agenda', 'N'),
(4, 'BANK DATA', '1627650439_567465492e43837fb2a3.jpg', 'bankdata', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `submenu_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `nama_submenu` varchar(100) DEFAULT NULL,
  `link_submenu` varchar(100) DEFAULT NULL,
  `iconsm` varchar(50) DEFAULT NULL,
  `urutansm` int(11) DEFAULT NULL,
  `targetsm` varchar(50) DEFAULT NULL,
  `linkexternalsm` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`submenu_id`, `menu_id`, `nama_submenu`, `link_submenu`, `iconsm`, `urutansm`, `targetsm`, `linkexternalsm`) VALUES
(1, 2, 'Visi dan Misi', 'page/visi-dan-misi', 'mdi mdi-library-books', 0, '_parent', 'N'),
(2, 2, 'Struktur Organisasi', 'page/struktur-organisasi', 'fa fa-users', 1, '_parent', 'N'),
(3, 2, 'Data Pegawai', 'pegawai', 'fas fa-user-tie', 3, '_parent', 'N'),
(4, 5, 'Foto', 'foto', 'far fa-image', 4, '_parent', 'N'),
(5, 5, 'Video', 'video', 'fas fa-video', 5, '_parent', 'N'),
(6, 6, 'Layanan', 'layanan', 'fas fa-chalkboard-teacher', 6, '_parent', 'N'),
(7, 6, 'Pengumuman', 'pengumuman', 'fas fa-bullhorn', 7, '_parent', 'N'),
(8, 6, 'Agenda', 'agenda', 'far fa-calendar-check', 8, '_parent', 'N'),
(9, 6, 'Bank Data', 'bankdata', 'fas fa-database', 9, '_parent', 'N'),
(10, 2, 'Tugas Pokok dan Fungsi', 'page/tugas-pokok-dan-fungsi', 'mdi mdi-buffer', 2, '_parent', 'N'),
(13, 6, 'Produk Hukum', 'produkhukum', 'fa fa-balance-scale', 10, '_parent', 'N'),
(14, 6, 'Infografis', 'infografis', 'far fa-images', 11, '_parent', 'N'),
(15, 21, 'Suara Anda', 'suaraanda', 'fas fa-comments', 14, '_parent', 'N'),
(16, 21, 'Survei', 'survey', 'far fa-check-square', 12, '_parent', 'N'),
(17, 21, 'Buku Tamu', 'bukutamu', 'far fa-comment-alt', 13, '_parent', 'N'),
(18, 21, 'Masukan & Saran', 'masukansaran', 'far fa-comment-dots', 15, NULL, NULL),
(19, 6, 'Transparansi Anggaran', 'transparansi', 'fas fa-chart-pie', 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subsubmenu`
--

CREATE TABLE `subsubmenu` (
  `subsubmenu_id` int(11) NOT NULL,
  `submenu_id` int(11) DEFAULT NULL,
  `nama_subsubmenu` varchar(100) DEFAULT NULL,
  `link_subsubmenu` varchar(100) DEFAULT NULL,
  `iconssm` varchar(50) DEFAULT NULL,
  `urutanssm` int(11) DEFAULT NULL,
  `targetssm` varchar(50) DEFAULT NULL,
  `linkexternalssm` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey_jawaban`
--

CREATE TABLE `survey_jawaban` (
  `jawaban_id` int(11) NOT NULL,
  `pertanyaan_id` int(11) DEFAULT NULL,
  `jawaban` varchar(200) DEFAULT NULL,
  `nilai` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `survey_jawaban`
--

INSERT INTO `survey_jawaban` (`jawaban_id`, `pertanyaan_id`, `jawaban`, `nilai`) VALUES
(1, 3, 'Tidak sesuai', 1),
(2, 3, 'Kurang sesuai', 2),
(3, 3, 'Sesuai', 3),
(6, 3, 'Sangat Sesuai', 4),
(7, 4, 'Tidak Mudah', 1),
(8, 4, 'Kurang Mudah', 2),
(9, 4, 'Mudah', 3),
(10, 4, 'Sangat Mudah', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey_pertanyaan`
--

CREATE TABLE `survey_pertanyaan` (
  `pertanyaan_id` int(11) NOT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `survey_pertanyaan`
--

INSERT INTO `survey_pertanyaan` (`pertanyaan_id`, `survey_id`, `pertanyaan`, `status`) VALUES
(3, 1, 'Bagaimana pendapat Saudara tentang kesesuaian persyaratan pelayanan dengan jenis pelayanannya.', '1'),
(4, 1, 'Bagaimana pemahaman Saudara tentang kemudahan prosedur\r\npelayanan di unit ini.', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey_responden`
--

CREATE TABLE `survey_responden` (
  `responden_id` int(11) NOT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `saran` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `survey_responden`
--

INSERT INTO `survey_responden` (`responden_id`, `survey_id`, `nohp`, `nama`, `saran`, `tanggal`) VALUES
(6, 1, '+6281353967028', 'Vian', '', '2021-10-23'),
(7, 1, '081353967028', 'Vian Taum', 'Tingkatkan pelayanan, dan maju terus', '2021-12-03'),
(8, 1, '+6281353967028', 'Devi Taum', '', '2021-12-05'),
(9, 1, '+6281353967028', 'Devi Taum', '', '2021-12-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey_topik`
--

CREATE TABLE `survey_topik` (
  `survey_id` int(11) NOT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `nama_survey` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `hits` int(11) DEFAULT 0,
  `skor` int(11) DEFAULT 0,
  `r1_stb` int(11) DEFAULT 0,
  `r2_stb` int(11) DEFAULT 0,
  `r1_kb` int(11) DEFAULT 0,
  `r2_kb` int(11) DEFAULT 0,
  `r1_b` int(11) DEFAULT 0,
  `r2_b` int(11) DEFAULT 0,
  `r1_sb` int(11) DEFAULT 0,
  `r2_sb` int(11) DEFAULT 0,
  `ket_stb` varchar(100) DEFAULT NULL,
  `ket_kb` varchar(100) DEFAULT NULL,
  `ket_b` varchar(100) DEFAULT NULL,
  `ket_sb` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `survey_topik`
--

INSERT INTO `survey_topik` (`survey_id`, `id`, `nama_survey`, `status`, `hits`, `skor`, `r1_stb`, `r2_stb`, `r1_kb`, `r2_kb`, `r1_b`, `r2_b`, `r1_sb`, `r2_sb`, `ket_stb`, `ket_kb`, `ket_b`, `ket_sb`) VALUES
(1, 1, 'Quisioner Survei Kepuasan Pelayanan Masyarakat', '1', 9, 24, 1, 4, 5, 9, 10, 19, 20, 25, 'Sangat Tidak Baik', 'Kurang Baik', 'Baik', 'Sangat Baik'),
(5, 1, 'Survei Kepuasan Perlengkapan Pelayanan', '0', 0, 0, 1, 4, 5, 9, 10, 19, 20, 25, 'Sangat Tidak Lengkap', 'Kurang Lengkap', 'Lengkap', 'Sangat Lengkap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `nama_tag` varchar(100) DEFAULT NULL,
  `slug_tag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`tag_id`, `nama_tag`, `slug_tag`) VALUES
(1, 'Olahraga', 'Olahraga'),
(2, 'Atlet', 'Atlet'),
(3, 'Kesehatan', 'Kesehatan'),
(5, 'Taekwondo', 'Taekwondo'),
(6, 'Teknologi', 'Teknologi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id_banner` int(11) NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_banner`
--

INSERT INTO `tbl_banner` (`id_banner`, `banner_image`, `ket`, `type`, `link`) VALUES
(28, '1638761650_69a7e858b593cba59fb4.jpg', 'Pesan Presiden RI Jokowi, saat pembukaan HAORNAS ke- 37 pada 9 September lalu', 1, NULL),
(29, '1638761743_e37a26ddd2b4a5be19c4.jpeg', 'Kembangkan Sistem dan big data analytic', 1, NULL),
(30, '1638761689_1ee8af85c9b1b4f8ee5b.jpeg', 'Olahraga bukan hanya urusan individu', 1, NULL),
(31, '1638761583_c0d10721fde79e3224a5.jpg', 'Olahraga adalah ibadah', 1, NULL),
(35, '1638761953_37739d0da03652bb60cd.png', 'Ekonomi Digital Untuk Indonesia Lebih Sejahtera', 1, NULL),
(36, '1638761531_e0124927df005023b977.jpeg', 'Tumbuh Kembang Anak Media Digital', 1, NULL),
(37, '1638761479_a070f403ac32acf54dc4.jpg', 'Cara Tingkatkan Oksigen Pasien Covid-19 Selain Proning', 1, NULL),
(46, '1673058970_a5887a579a051bd490b8.png', 'Aplikasi Pendidikan', 0, 'https://www.aplikasipendidikan.net/'),
(48, '1638762308_752a6d4391b4ddf85431.jpg', 'Jasa pembuatan Website dan Aplikasi', 1, NULL),
(49, '1673058992_dc72e2d12c4b1eb8a22a.png', 'Aplikasi Pendidikan', 0, 'https://www.aplikasipendidikan.net/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setaplikasi`
--

CREATE TABLE `tbl_setaplikasi` (
  `id_setaplikasi` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telp` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(120) DEFAULT NULL,
  `kabupaten` varchar(120) DEFAULT NULL,
  `provinsi` varchar(120) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `sts_sambutan` varchar(1) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `nama_pimpinan` varchar(100) DEFAULT NULL,
  `jabatan_pimpinan` varchar(100) DEFAULT NULL,
  `sambutan` text DEFAULT NULL,
  `gbr_sambutan` varchar(200) DEFAULT NULL,
  `link_gmap` varchar(200) DEFAULT NULL,
  `sosmed_fb` varchar(200) DEFAULT NULL,
  `sosmed_instagram` varchar(200) DEFAULT NULL,
  `sosmed_twiter` varchar(200) DEFAULT NULL,
  `sosmed_youtube` varchar(200) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `judul_section` varchar(50) DEFAULT NULL,
  `sts_section` varchar(1) DEFAULT NULL,
  `sts_modal` varchar(1) DEFAULT NULL,
  `ck` varchar(1) DEFAULT NULL,
  `sts_count` varchar(1) DEFAULT NULL,
  `sts_rt` varchar(1) DEFAULT NULL,
  `hplogo` int(11) DEFAULT NULL,
  `wllogo` int(11) DEFAULT NULL,
  `sts_regis` varchar(1) DEFAULT NULL,
  `sts_web` varchar(1) DEFAULT NULL,
  `sts_posting` varchar(1) DEFAULT NULL COMMENT '0=langsung aktif\r\n1=verifikasi admin',
  `verbost` varchar(1) DEFAULT NULL COMMENT '0=ver 4\r\n1=ver 5',
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_username` varchar(50) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `smtp_port` int(5) DEFAULT NULL,
  `smtp_pengirim` varchar(100) DEFAULT NULL,
  `smtp_pesanbalas` text DEFAULT NULL,
  `vercms` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_setaplikasi`
--

INSERT INTO `tbl_setaplikasi` (`id_setaplikasi`, `nama`, `alamat`, `no_telp`, `kecamatan`, `kabupaten`, `provinsi`, `website`, `email`, `deskripsi`, `logo`, `sts_sambutan`, `icon`, `google_map`, `nama_pimpinan`, `jabatan_pimpinan`, `sambutan`, `gbr_sambutan`, `link_gmap`, `sosmed_fb`, `sosmed_instagram`, `sosmed_twiter`, `sosmed_youtube`, `kategori_id`, `judul_section`, `sts_section`, `sts_modal`, `ck`, `sts_count`, `sts_rt`, `hplogo`, `wllogo`, `sts_regis`, `sts_web`, `sts_posting`, `verbost`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_pengirim`, `smtp_pesanbalas`, `vercms`) VALUES
(1, 'MAN 1 KOTA BARU', 'Jln. RS Bukit - Lembata Waikomo', '+62895386114985', 'Lebatukan', 'Lembata', 'Nusa Tenggara Timur', 'https://www.aplikasipendidikan.net/', 'shareaplikasipendidikan@gmail.com', 'Madrasah Aliyah Negri Kota Baru', '1672977790_4fa9bac24a9fced9fa60.png', '1', 'icon.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3947.1369737286846!2d123.4043691143332!3d-8.388185886927594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dab73867f9b5147%3A0xcd1190d849e57905!2sDatagoe%20Software!5e0!3m2!1sid!2sid!4v1623407918344!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Vian Taum, S.Kom', 'Kepala Dinas', '          <p class=\"MsoNormal\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px;\">Selamat datang di Website kami Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata, Website ini dimaksudkan sebagai sarana publikasi untuk memberikan Informasi dan gambaran Dinas Pemuda Olahraga dan Kebudayaan Kabupaten Lembata dalam Hal Publikasi kepada masyarakat. Melalui keberadaan website ini kiranya masyarakat dapat mengetahui seluruh informasi tentang Kebijakan Pemerintah Kabupaten Lembata pengelolaan sektor Kepemudaan dan Keolahragaan di wilayah Pemerintahan Kabupaten Lembata. </span><span open=\"\" \",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" \"=\"\" sans\",=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px; border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">Diharapkan website ini bisa dijadikan sebagai salah satu media komunikasi yang efektif, dapat memberikan informasi, layanan yang akurat dan akuntabel untuk membangun <span lang=\"EN-US\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">olahraga</span> di Kabupaten <span lang=\"EN-US\" style=\"border-width: 0px; border-style: solid; border-color: rgb(229, 231, 235);\">Lembata</span>. </span><span open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14.56px;=\"\" text-align:=\"\" center;\"=\"\" style=\"color: rgb(80, 93, 105); font-family: Nunito, sans-serif; font-size: 14.56px;\">Dan sebagai wujud rasa tanggungjawab kami dalam rangka meningkatkan pelayanan kepada masyarakat, maka kami adakan website dinas ini. Kritik dan saran terhadap kekurangan dan kesalahan yang ada sangat kami harapkan guna penyempurnaan Website ini dimasa akan datang. Semoga Website ini memberikan manfaat bagi kita semua. Terima Kasih..!</span><br></p>', 'avatar04.png', 'https://goo.gl/maps/QVtSNqKmgkHTBUCN8', 'https://www.facebook.com/aplikasipendidikanet', 'https://www.instagram.com/aplikasipendidikanet/', 'https://twitter.com/aplikasipendik1', 'https://www.youtube.com/channel/UCsiAiiC3LKnkeoHp2brYefA', 2, 'INFORMASI INSTANSI', '1', '1', '1', '1', '1', 121, 112, '1', '1', '1', '0', '', 'admin@aplikasipendidikan.net', '', 465, 'Admin', 'Terima Kasih telah menghubungi kami..!', '2.0.1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `template`
--

CREATE TABLE `template` (
  `template_id` int(5) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pembuat` varchar(50) DEFAULT NULL,
  `folder` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `template`
--

INSERT INTO `template` (`template_id`, `nama`, `pembuat`, `folder`, `status`, `id`, `ket`) VALUES
(1, 'Aplikasi Pendidikan', 'Deril Taum', 'plus1', 1, 1, 'Ukuran logo untuk template ini, Tinggi 121px Lebar 112px ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transparan`
--

CREATE TABLE `transparan` (
  `transparan_id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `jenis` varchar(1) DEFAULT NULL COMMENT '0=Pendapatan\r\n1=Pengeluaran',
  `sts` varchar(1) DEFAULT NULL,
  `vawal` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transparan`
--

INSERT INTO `transparan` (`transparan_id`, `judul`, `tahun`, `jenis`, `sts`, `vawal`) VALUES
(1, 'Realisasi Pendapatan Tahun Anggaran 2015', '2015', '0', '1', '0'),
(2, 'Realisasi Belanja Tahun Anggaran 2015', '2015', '1', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transparan_detail`
--

CREATE TABLE `transparan_detail` (
  `transparandetail_id` int(11) NOT NULL,
  `transparan_id` int(11) DEFAULT NULL,
  `transparan_nama` varchar(250) DEFAULT NULL,
  `transparan_jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transparan_detail`
--

INSERT INTO `transparan_detail` (`transparandetail_id`, `transparan_id`, `transparan_nama`, `transparan_jumlah`) VALUES
(1, 1, 'Pembentukan Dana Cadangan', 11500),
(2, 1, 'Penyertaan Modal', 3307),
(3, 1, 'Retribusi', 379),
(4, 1, 'Pajak Daerah', 240),
(8, 2, 'Belanja Pegawai', 1208),
(9, 2, 'Belanja Hibah', 2126),
(10, 2, 'Belanja Bantuan Sosial', 342),
(11, 2, 'Belanja Bagi Hasil kepada kepada Provinsi', 159),
(12, 2, 'Belanja tidak terduga', 1007);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'avatar.PNG',
  `password_hash` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `level` varchar(15) DEFAULT NULL,
  `new_email` varchar(191) DEFAULT NULL,
  `activate_hash` varchar(191) DEFAULT NULL,
  `reset_hash` varchar(191) DEFAULT NULL,
  `reset_expires` bigint(20) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `sts_on` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `active`, `level`, `new_email`, `activate_hash`, `reset_hash`, `reset_expires`, `created_at`, `updated_at`, `last_login`, `sts_on`) VALUES
(1, 'admin@gmail.com', 'admin', 'Administrator', '1634177511_cd4b221b23652e9c5e56.png', '$2y$10$r8qpXJVHdYRMLFOuL/In3.R8LbLDovMpivG3O0P2zp7Sa09LhP6D.', 1, 'admin', NULL, NULL, NULL, NULL, NULL, '2021-10-14 10:05:30', '2023-01-07 16:57:04', '0'),
(12, 'blakataduk@yahoo.co.id', 'vian', 'Erel Taum', '1633952653_0ab591eeeb6f2420bfbf.png', '$2y$10$SJnt7UWrJl2BjQB7Xlp.OexxHzU/QBo99U64wH6eBrEAP2fRyH6ra', 1, 'autor', NULL, NULL, NULL, NULL, NULL, '1634011822', '2022-01-02 12:06:19', '0'),
(14, 'fournet@yahoo.co.id', 'fournet', 'Fournet Juang', 'default.png', '$2y$10$rh3IsmL5O9xkqHd5ua/Eq./WCMmb6zEr3WpNbS3e1ZLzMHKsVrKIS', 1, 'autor', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-01 13:29:11', '0'),
(15, 'viantaum17@gmail.com', 'editor', 'Tukang Edit', '1640093063_32609d8a1dc7e82c2ec0.png', '$2y$10$6hePNmmBM30INr4RUpYOaOfck6q.xwtX.Br7xgY5h/6ZYHNa3as3O', 1, 'editor', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 20:48:01', '0'),
(16, 'deril@yahoo.com', 'deril', 'Ama Deril', '1640924046_8762884e3b921c56fdd9.png', '$2y$10$CP2iYeAE3uCBruvumluxeuKJqNDr9mmosBCLqmAUivIL5yeq7Y1oy', 0, 'autor', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-16 17:37:47', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `video_id` int(11) NOT NULL,
  `kategorivideo_id` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `video_link` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id` int(11) UNSIGNED DEFAULT NULL,
  `sts_v` varchar(1) DEFAULT NULL,
  `ket_video` text DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `likevideo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`video_id`, `kategorivideo_id`, `judul`, `video_link`, `tanggal`, `id`, `sts_v`, `ket_video`, `hits`, `likevideo`) VALUES
(2, 1, 'Import Data Penduduk New', 'Nt0KS2Y6MQE', '2021-06-08', 1, '1', NULL, NULL, NULL),
(3, 1, 'Tambah Kelompok dan Program Bantuan pada SIAD Datagoe', 'X_fh-xVmto0', '2021-06-08', 1, '1', NULL, NULL, NULL),
(4, 1, 'Ganti Logo Sesuai ukuran standar Aplikasi', 'ln-UEyLx_qU', '2021-06-08', 1, '1', NULL, 1, NULL),
(17, 1, 'Import Program Bantuan', 'p5bn2-oSc04', '2021-06-08', 1, '1', NULL, NULL, NULL),
(18, 1, 'Setting RT RW dan Dusun', 'R2WPd5WNmUU', '2021-06-08', 1, '1', NULL, NULL, NULL),
(19, 1, 'Pecah Kepala Keluarga', '0I8Md1hEpn0', '2021-06-08', 1, '1', '', NULL, NULL),
(20, 1, 'Tambah Dusun dan Reset Database', '3i3jwdi33NA', '2021-06-08', 1, '1', '', 21, NULL),
(21, 1, 'Tambah Jenis Surat Baru ', 'e3Ul4b-nYko', '2021-06-08', 1, '1', '', 3, NULL),
(33, 1, 'Import Data Penduduk', 'Nt0KS2Y6MQE', '2021-12-16', 1, '1', 'Pada versi terbaru ini, fitur untuk import data penduduk memungkinkan untuk mengimport data secara bertahap. Data yang sudah masuk ke system dan hendak menambahkan data lain lagi dapat dilakukan dengan mudah. \r\nJangan kawatir, jika data manual anda sudah tersedia dengan format Excel, maka Import data ini berfungsi untuk memproses data sekaligus, agar anda tidak menginput satu persatu. Silahkan simak video ini, jika ada pertanyaan seputar aplikasi ini, silahkan kunjungi website kami,.. https://datagoe.com\r\n. Berikut ini link update terbaru Versi 6.6 4 bagi pengguna SIAD Datagoe.. https://datagoe.com/get/UpdateSIAD664', 32, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `online` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visitor`
--

INSERT INTO `visitor` (`ip`, `tgl`, `hits`, `online`, `time`) VALUES
('::1', '2022-01-21', 29, '1642765915', '2022-01-21 19:51:55'),
('::1', '2022-12-16', 6, '1671190382', '2022-12-16 19:33:02'),
('::1', '2023-01-06', 18, '1672979097', '2023-01-06 12:24:57'),
('::1', '2023-01-07', 43, '1673082621', '2023-01-07 17:10:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agenda_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `bankdata`
--
ALTER TABLE `bankdata`
  ADD PRIMARY KEY (`bankdata_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`),
  ADD KEY `id` (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `berita_komen`
--
ALTER TABLE `berita_komen`
  ADD PRIMARY KEY (`beritakomen_id`),
  ADD KEY `id` (`id`),
  ADD KEY `berita_id` (`berita_id`);

--
-- Indeks untuk tabel `berita_tag`
--
ALTER TABLE `berita_tag`
  ADD PRIMARY KEY (`beritatag_id`),
  ADD KEY `berita_id` (`berita_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indeks untuk tabel `bt_bidang`
--
ALTER TABLE `bt_bidang`
  ADD PRIMARY KEY (`bidang_id`);

--
-- Indeks untuk tabel `bt_bukutamu`
--
ALTER TABLE `bt_bukutamu`
  ADD PRIMARY KEY (`bukutamu_id`),
  ADD KEY `bidang_id` (`bidang_id`);

--
-- Indeks untuk tabel `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id_counter`);

--
-- Indeks untuk tabel `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`ebook_id`),
  ADD KEY `kategoriebook_id` (`kategoriebook_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `faq_jawab`
--
ALTER TABLE `faq_jawab`
  ADD PRIMARY KEY (`faq_jawabid`),
  ADD KEY `faq_tanyaid` (`faq_tanyaid`);

--
-- Indeks untuk tabel `faq_tanya`
--
ALTER TABLE `faq_tanya`
  ADD PRIMARY KEY (`faq_tanyaid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`foto_id`),
  ADD KEY `id` (`id`),
  ADD KEY `kategorifoto_id` (`kategorifoto_id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`informasi_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `kategori_ebook`
--
ALTER TABLE `kategori_ebook`
  ADD PRIMARY KEY (`kategoriebook_id`);

--
-- Indeks untuk tabel `kategori_foto`
--
ALTER TABLE `kategori_foto`
  ADD PRIMARY KEY (`kategorifoto_id`);

--
-- Indeks untuk tabel `kategori_video`
--
ALTER TABLE `kategori_video`
  ADD PRIMARY KEY (`kategorivideo_id`);

--
-- Indeks untuk tabel `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`kritiksaran_id`);

--
-- Indeks untuk tabel `link_terkait`
--
ALTER TABLE `link_terkait`
  ADD PRIMARY KEY (`id_link`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `modalpopup`
--
ALTER TABLE `modalpopup`
  ADD PRIMARY KEY (`modalpopup_id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`poling_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `produk_hukum`
--
ALTER TABLE `produk_hukum`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `produk_kathukum`
--
ALTER TABLE `produk_kathukum`
  ADD PRIMARY KEY (`kathukum_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indeks untuk tabel `produk_subkathukum`
--
ALTER TABLE `produk_subkathukum`
  ADD PRIMARY KEY (`subkathukum_id`),
  ADD KEY `kathukum_id` (`kathukum_id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`submenu_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `subsubmenu`
--
ALTER TABLE `subsubmenu`
  ADD PRIMARY KEY (`subsubmenu_id`),
  ADD KEY `submenu_id` (`submenu_id`);

--
-- Indeks untuk tabel `survey_jawaban`
--
ALTER TABLE `survey_jawaban`
  ADD PRIMARY KEY (`jawaban_id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`);

--
-- Indeks untuk tabel `survey_pertanyaan`
--
ALTER TABLE `survey_pertanyaan`
  ADD PRIMARY KEY (`pertanyaan_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indeks untuk tabel `survey_responden`
--
ALTER TABLE `survey_responden`
  ADD PRIMARY KEY (`responden_id`),
  ADD KEY `survey_id` (`survey_id`);

--
-- Indeks untuk tabel `survey_topik`
--
ALTER TABLE `survey_topik`
  ADD PRIMARY KEY (`survey_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indeks untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `tbl_setaplikasi`
--
ALTER TABLE `tbl_setaplikasi`
  ADD PRIMARY KEY (`id_setaplikasi`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `transparan`
--
ALTER TABLE `transparan`
  ADD PRIMARY KEY (`transparan_id`);

--
-- Indeks untuk tabel `transparan_detail`
--
ALTER TABLE `transparan_detail`
  ADD PRIMARY KEY (`transparandetail_id`),
  ADD KEY `transparan_id` (`transparan_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`),
  ADD KEY `username_3` (`username`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `id` (`id`),
  ADD KEY `kategorivideo_id` (`kategorivideo_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bankdata`
--
ALTER TABLE `bankdata`
  MODIFY `bankdata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `berita_komen`
--
ALTER TABLE `berita_komen`
  MODIFY `beritakomen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `berita_tag`
--
ALTER TABLE `berita_tag`
  MODIFY `beritatag_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `bt_bidang`
--
ALTER TABLE `bt_bidang`
  MODIFY `bidang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `bt_bukutamu`
--
ALTER TABLE `bt_bukutamu`
  MODIFY `bukutamu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `counter`
--
ALTER TABLE `counter`
  MODIFY `id_counter` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ebook`
--
ALTER TABLE `ebook`
  MODIFY `ebook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `faq_jawab`
--
ALTER TABLE `faq_jawab`
  MODIFY `faq_jawabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `faq_tanya`
--
ALTER TABLE `faq_tanya`
  MODIFY `faq_tanyaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `informasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori_ebook`
--
ALTER TABLE `kategori_ebook`
  MODIFY `kategoriebook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_foto`
--
ALTER TABLE `kategori_foto`
  MODIFY `kategorifoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_video`
--
ALTER TABLE `kategori_video`
  MODIFY `kategorivideo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kritiksaran`
--
ALTER TABLE `kritiksaran`
  MODIFY `kritiksaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `link_terkait`
--
ALTER TABLE `link_terkait`
  MODIFY `id_link` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `modalpopup`
--
ALTER TABLE `modalpopup`
  MODIFY `modalpopup_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `poling_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk_hukum`
--
ALTER TABLE `produk_hukum`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk_kathukum`
--
ALTER TABLE `produk_kathukum`
  MODIFY `kathukum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `produk_subkathukum`
--
ALTER TABLE `produk_subkathukum`
  MODIFY `subkathukum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `subsubmenu`
--
ALTER TABLE `subsubmenu`
  MODIFY `subsubmenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `survey_jawaban`
--
ALTER TABLE `survey_jawaban`
  MODIFY `jawaban_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `survey_pertanyaan`
--
ALTER TABLE `survey_pertanyaan`
  MODIFY `pertanyaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `survey_responden`
--
ALTER TABLE `survey_responden`
  MODIFY `responden_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `survey_topik`
--
ALTER TABLE `survey_topik`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_setaplikasi`
--
ALTER TABLE `tbl_setaplikasi`
  MODIFY `id_setaplikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transparan`
--
ALTER TABLE `transparan`
  MODIFY `transparan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transparan_detail`
--
ALTER TABLE `transparan_detail`
  MODIFY `transparandetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bankdata`
--
ALTER TABLE `bankdata`
  ADD CONSTRAINT `bankdata_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `berita_tag`
--
ALTER TABLE `berita_tag`
  ADD CONSTRAINT `berita_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bt_bukutamu`
--
ALTER TABLE `bt_bukutamu`
  ADD CONSTRAINT `bt_bukutamu_ibfk_1` FOREIGN KEY (`bidang_id`) REFERENCES `bt_bidang` (`bidang_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ebook`
--
ALTER TABLE `ebook`
  ADD CONSTRAINT `ebook_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ebook_ibfk_2` FOREIGN KEY (`kategoriebook_id`) REFERENCES `kategori_ebook` (`kategoriebook_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `faq_jawab`
--
ALTER TABLE `faq_jawab`
  ADD CONSTRAINT `faq_jawab_ibfk_1` FOREIGN KEY (`faq_tanyaid`) REFERENCES `faq_tanya` (`faq_tanyaid`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`kategorifoto_id`) REFERENCES `kategori_foto` (`kategorifoto_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD CONSTRAINT `informasi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD CONSTRAINT `poling_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_hukum`
--
ALTER TABLE `produk_hukum`
  ADD CONSTRAINT `produk_hukum_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_kathukum`
--
ALTER TABLE `produk_kathukum`
  ADD CONSTRAINT `produk_kathukum_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk_hukum` (`produk_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk_subkathukum`
--
ALTER TABLE `produk_subkathukum`
  ADD CONSTRAINT `produk_subkathukum_ibfk_1` FOREIGN KEY (`kathukum_id`) REFERENCES `produk_kathukum` (`kathukum_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD CONSTRAINT `submenu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subsubmenu`
--
ALTER TABLE `subsubmenu`
  ADD CONSTRAINT `subsubmenu_ibfk_1` FOREIGN KEY (`submenu_id`) REFERENCES `submenu` (`submenu_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `survey_jawaban`
--
ALTER TABLE `survey_jawaban`
  ADD CONSTRAINT `survey_jawaban_ibfk_1` FOREIGN KEY (`pertanyaan_id`) REFERENCES `survey_pertanyaan` (`pertanyaan_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `survey_pertanyaan`
--
ALTER TABLE `survey_pertanyaan`
  ADD CONSTRAINT `survey_pertanyaan_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_topik` (`survey_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `survey_responden`
--
ALTER TABLE `survey_responden`
  ADD CONSTRAINT `survey_responden_ibfk_1` FOREIGN KEY (`survey_id`) REFERENCES `survey_topik` (`survey_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `survey_topik`
--
ALTER TABLE `survey_topik`
  ADD CONSTRAINT `survey_topik_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_setaplikasi`
--
ALTER TABLE `tbl_setaplikasi`
  ADD CONSTRAINT `tbl_setaplikasi_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `template`
--
ALTER TABLE `template`
  ADD CONSTRAINT `template_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transparan_detail`
--
ALTER TABLE `transparan_detail`
  ADD CONSTRAINT `transparan_detail_ibfk_1` FOREIGN KEY (`transparan_id`) REFERENCES `transparan` (`transparan_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`kategorivideo_id`) REFERENCES `kategori_video` (`kategorivideo_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
