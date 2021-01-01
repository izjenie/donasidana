-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Des 2020 pada 11.43
-- Versi server: 5.7.32
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thenetw1_justgiving`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `country`, `password`, `role`, `photo`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(1, 'Genius Admin', 'admin', 'admin@gmail.com', '0111111111', 'Bahamas', '$2y$10$IqHFJevSztLR7RpeINrZCuMfSZi0XDY4Pyxu3Pfh5bMfmz3rCnMtO', 'administrator', '1491825290645x430-film-animasi-larrikins-borong-bintang-bintang-australia-160604k.jpg', '2017-01-24 03:21:40', '2017-06-12 15:41:38', 'qX818xSn1YFMe45Z5CvtOnpK0g3xGV0dSkXts4IFVOiXd9T1rZgppNifVqp3', 1),
(2, 'S Zaman', 'genius', 'genius@gmail.com', '017178906233', NULL, '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'administrator', '11822730_1619598781649385_5506560502405630990_n.jpg', '2017-01-27 22:35:17', '2017-03-06 11:02:08', '', 1),
(4, 'ShaOn Zaman', NULL, 'shaoneel@gmail.com', '00000000', NULL, '$2y$10$uOQAsb955bGBrScpf8PyguNizsdOSZGoVAdTq88olRbpw1rrNbFOW', 'staff', '9iE19511294_100903557217180_8324313416681688131_n.jpg', '2018-01-18 10:54:36', '2018-01-18 10:54:36', '39yYxaujiZWlJhzHtUywKxKC8INFKkXbfkzwEX1p6HYy5UeviOIiKHkGcMii', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `details`, `featured_image`, `source`, `views`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Nedi Supriadi', '<p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Nedi Supriadi adalah seorang penyandang disabilitas fisik di bagian kakinya. Awal dari perjumpaan Nedi Supriyadi &nbsp;dengan LDD terjadi pada tahun 2006 secara tidak sengaja. Saat sedang melintas di sekitar Katedral, ia melihat sebuah plang yang bertuliskan <i>‘Menerima Kaum Disabilitas’ </i>dan memutuskan masuk dan ikut pelatihan.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\"><i>“LDD sudah saya anggap seperti keluarga sendiri. Saya senang&nbsp;<span style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">ngumpul-ngumpul</span>&nbsp;di LDD, karena tak ada memandang agama atau apapun. LDD mau mendengar keluhan saya &amp; berperan penting di awal kebangkitan hidup saya sampai saya bisa begini,</i>” cetus Nedi.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\"><b>Tangguh! </b>adalah&nbsp;kata yang layak disematkan kepada pria kelahiran Cianjur, 13 Mei 1986. Bagaimana tidak, walaupun kesehariannya berada di atas kursi roda, &nbsp;pria ini mampu bertahan hidup di Jakarta yang keras dan bahkan mampu menghidupi keluarga kecilnya yang terdiri atas seorang istri &amp; seorang anak berusia enam tahun.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Kisah Nedi berawal dari peristiwa kabur dari rumahnya dan meninggalkan keluarganya di kampung untuk mengadu nasib di Jakarta. Dengan menumpang mobil sayuran milik tetangganya, ia bertekad untuk pindah ke Jakarta karena kehidupan di kampung tak banyak memberi jaminan akan masa depannya. Selain tidak adanya sarana yang mendukung mobilitas kaum disabilitas sepertinya, sekolah orang tuanya juga hanya mengizinkan Nedi untuk bersekolah hingga bangku Sekolah Dasar. Bagi orang tuanya, sekolah tidak akan berguna bagi seorang Nedi kecil yang berjalan saja tidak bisa.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Sesampainya Jakarta, ia ditampung di Panti Bina Daksa di Cengkareng. Di sana Nedi belajar mereparasi televisi tabung dan ponsel. Setelah dua tahun belajar, ia bingung karena tak punya modal. “<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Skill</em>&nbsp;saja tak cukup untuk membuka jasa reparasi elektronik. Butuh modal besar,” keluhnya. Nedi bingung, ia tak punya sanak saudara yang dapat menjadi wadahnya untuk berkeluh kesah.&nbsp; Meskipun hampir putus harapan, ia terus mencari jalan keluar.&nbsp;&nbsp;</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Suatu hari, secara tak sengaja, Nedi melintas di Jl. Katedral Jakarta Pusat. Ia membaca plang LDD yang bertuliskan ‘Menerima Kaum Disabilitas’. Berharap ini mungkin sebuah solusi baginya, ia berkenalan dengan staf LDD. Kemudian ia menceriterakan situasi dirinya dan juga harapan-harapannya. Sebagian harapannya terjawab. Semangatnya mulai bangkit.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Ia masih ingat, LDD memberi dukungan dan apresiasi atas keinginanya untuk mempunyai usaha reparasi elektronik sendiri. “LDD bantu saya modal alat reparasi. Staf LDD yang menemani saya belanja,” kenang Nedi saat berbincang di kontrakannya yang sekaligus merupakan tempat usahanya, &nbsp;di wilayah Kemayoran, Jakarta Pusat.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Selain bantuan modal alat, LDD juga memberi Nedi kursi roda untuk menunjang kesehariannya.&nbsp;<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sharing-sharin</em>g di pertemuan komunitas di LDD turut menguatkan Nedi untuk menjadi semakin tangguh. Maklum saat itu, Nedi merasa belum sukses. Ia malu untuk pulang kampung jika tidak berhasil.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Motivasi dari kawan-kawannya dan keberaniannya untuk mengikuti bermacam-macam pelatihan membuat&nbsp; Nedi&nbsp; makin berkembang. Dari tadinya berprofesi sebagai tukang reparasi HP &amp; pedagang pulsa, ia mengembangkan diri menjadi pengajar reparasi untuk penyandang disabilitas, mahasiswa, bahkan pekerja. Di LDD, Nedi dipercaya untuk mengajar warga dampingan non-disabilitas.</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Keberhasilan dan kegagalan ia terima sebagai bagian berkah dari Sang Pencipta. Pandemi Covid-19 membuatnya rugi awal tahun ini. Ia sempat menyewa ruko di kawasan Cempaka Putih, namun sia-sia karena sepi pelanggan. Namun semangat Nedi tak pupus. Sekarang ia memperbanyak kegiatan mengajar reparasi hp via daring. Pelanggannya adalah yayasan-yayasan pendamping penyandang disabilitas. “Rejekinya&nbsp;<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">sih</em>&nbsp;tidak rutin datang, tapi lumayan. Setidaknya cukup untuk memenuhi kebutuhan hidupnya,” ujar Nedi. Namun tetap saja, ia masih memiliki beban pikiran tentang masa depan anaknya. Maka dari itu, di kontrakannya, Nedi berjualan mainan anak, makanan ringan, dan beranekaragam minuman.&nbsp;</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Sekarang, Nedi memandang keterbatasan fisiknya bukan lagi sebuah halangan. “Kesuksesan itu relatif,” katanya. Besar harapannya untuk bisa memiliki rumah tetap, sebagai tempat bagi keluarganya untuk bernaung. “Saya sangat menyayangkan. Persyaratan pengajuan KPR bagi penyandang disabilitas dipersulit dengan syarat harus melampirkan slip gaji. Padahal, umumnya penyandang disabilitas itu pekerja informal,” ujar Nedi. “Semoga pemerintah mempermudah hal ini bagi saya dan teman teman penyandang disabilitas lain.”</p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\">Saksikan kisah Nedi dalam serial Sang Inspirator:</p><p style=\"margin-bottom: 1.75em; text-align: justify; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><font color=\"#4b4b4b\" face=\"Open Sans, sans-serif\"><span style=\"font-size: 15px;\"><a href=\"http://https://www.youtube.com/watch?v=8l__SGXEWis&amp;t=49s\" title=\"\" target=\"\">https://www.youtube.com/watch?v=8l__SGXEWis&amp;t=49s</a></span></font><br></p><p style=\"margin-bottom: 1.75em; text-align: justify; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" border:=\"\" 0px;=\"\" font-size:=\"\" 15px;=\"\" outline:=\"\" padding:=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(75,=\"\" 75,=\"\" 75);\"=\"\"><br></p>', '56fDonasi-Dana---News---Image-New.jpg', 'lddkaj.org', 41, '2017-11-28 15:25:10', '2020-12-29 05:11:21', 1),
(2, '1234567890123456789012345', 'In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.', 'J1Ebagus di detail.png', 'lddkaj.org', 64, '2017-11-28 15:25:10', '2020-12-30 02:54:35', 1),
(8, 'Test Blog 3', 'Test Blog 3<br>', 'J2Rhero-bg.jpg', 'Test Blog 3', 2, '2020-12-19 05:04:38', '2020-12-29 16:24:10', 1),
(9, 'Test Blog 4', 'Test Blog 4<br>', 'PhGcontent-2-img.png', 'Test Blog 4', 1, '2020-12-19 05:05:34', '2020-12-30 02:58:05', 1),
(10, 'Perjuangan Nedi – Hati Yang Tidak Terbatas', '<p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Nedi Supriadi adalah seorang penyandang disabilitas fisik di bagian kakinya. Awal dari perjumpaan Nedi Supriyadi &nbsp;dengan LDD terjadi pada tahun 2006 secara tidak sengaja. Sedang melintas di sekitar Katedral, ia melihat sebuah plang yang bertuliskan ‘Menerima Kaum Disabilitas’. “LDD sudah saya anggap seperti keluarga sendiri. Saya senang&nbsp;<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">ngumpul-ngumpul</em>&nbsp;di LDD, karena tak ada memandang agama atau apapun. LDD mau mendengar keluhan saya &amp; berperan penting di awal kebangkitan hidup saya sampai saya bisa begini,” cetus Nedi.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Tangguh. Sebuah kata yang layak disematkan kepada pria kelahiran Cianjur, 13 Mei 1986. Bagaimana tidak, walaupun kesehariannya berada di atas kursi roda, &nbsp;pria ini mampu bertahan hidup di Jakarta yang keras. Ia bahkan mampu menghidupi keluarga kecilnya yang terdiri atas seorang istri &amp; seorang anak berusia enam tahun.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Kisah Nedi berawal dari peristiwa kabur dari rumahnya dan meninggalkan keluarganya di kampung untuk mengadu nasib di Jakarta. Dengan menumpang mobil sayuran milik tetangganya, ia bertekad untuk pindah ke Jakarta karena kehidupan di kampung tak banyak memberi jaminan akan masa depannya. Selain tidak adanya sarana yang mendukung mobilitas kaum disabilitas sepertinya, ekolah orang tuanya juga hanya mengizinkan Nedi untuk bersekolah hingga bangku Sekolah Dasar. Bagi orang tuanya, sekolah tidak akan berguna bagi seorang Nedi kecil yang berjalan saja tidak bisa.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Sesampainya Jakarta, ia ditampung di Panti Bina Daksa di Cengkareng. Di sana Nedi belajar mereparasi televisi tabung dan ponsel. Setelah dua tahun belajar, ia bingung karena tak punya modal. “<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Skill</em>&nbsp;saja tak cukup untuk membuka jasa reparasi elektronik. Butuh modal besar,” keluhnya. Nedi bingung, ia tak punya sanak saudara yang dapat menjadi wadahnya untuk berkeluh kesah.&nbsp; Meskipun hampir putus harapan, ia terus mencari jalan keluar.&nbsp;&nbsp;</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Suatu hari, secara tak sengaja, Nedi melintas di Jl. Katedral Jakarta Pusat. Ia membaca plang LDD yang bertuliskan ‘Menerima Kaum Disabilitas’. Berharap ini mungkin sebuah solusi baginya, ia berkenalan dengan staf LDD. Kemudian ia menceriterakan situasi dirinya dan juga harapan-harapannya. Sebagian harapannya terjawab. Semangatnya mulai bangkit.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Ia masih ingat, LDD memberi dukungan dan apresiasi atas keinginanya untuk mempunyai usaha reparasi elektronik sendiri. “LDD bantu saya modal alat reparasi. Staf LDD yang menemani saya belanja,” kenang Nedi saat berbincang di kontrakannya yang sekaligus merupakan tempat usahanya, &nbsp;di wilayah Kemayoran, Jakarta Pusat.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Selain bantuan modal alat, LDD juga memberi Nedi kursi roda untuk menunjang kesehariannya.&nbsp;<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Sharing-sharin</em>g di pertemuan komunitas di LDD turut menguatkan Nedi untuk menjadi semakin tangguh. Maklum saat itu, Nedi merasa belum sukses. Ia malu untuk pulang kampung jika tidak berhasil.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Motivasi dari kawan-kawannya dan keberaniannya untuk mengikuti bermacam-macam pelatihan membuat&nbsp; Nedi&nbsp; makin berkembang. Dari tadinya berprofesi sebagai tukang reparasi HP &amp; pedagang pulsa, ia mengembangkan diri menjadi pengajar reparasi untuk penyandang disabilitas, mahasiswa, bahkan pekerja. Di LDD, Nedi dipercaya untuk mengajar warga dampingan non-disabilitas.</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Keberhasilan dan kegagalan ia terima sebagai bagian berkah dari Sang Pencipta. Pandemi Covid-19 membuatnya rugi awal tahun ini. Ia sempat menyewa ruko di kawasan Cempaka Putih, namun sia-sia karena sepi pelanggan. Namun semangat Nedi tak pupus. Sekarang ia memperbanyak kegiatan mengajar reparasi hp via daring. Pelanggannya adalah yayasan-yayasan pendamping penyandang disabilitas. “Rejekinya&nbsp;<em style=\"border: 0px; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">sih</em>&nbsp;tidak rutin datang, tapi lumayan. Setidaknya cukup untuk memenuhi kebutuhan hidupnya,” ujar Nedi. Namun tetap saja, ia masih memiliki beban pikiran tentang masa depan anaknya. Maka dari itu, di kontrakannya, Nedi berjualan mainan anak, makanan ringan, dan beranekaragam minuman.&nbsp;</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Sekarang, Nedi memandang keterbatasan fisiknya bukan lagi sebuah halangan. “Kesuksesan itu relatif,” katanya. Besar harapannya untuk bisa memiliki rumah tetap, sebagai tempat bagi keluarganya untuk bernaung. “Saya sangat menyayangkan. Persyaratan pengajuan KPR bagi penyandang disabilitas dipersulit dengan syarat harus melampirkan slip gaji. Padahal, umumnya penyandang disabilitas itu pekerja informal,” ujar Nedi. “Semoga pemerintah mempermudah hal ini bagi saya dan teman teman penyandang disabilitas lain.”</p><p style=\"border: 0px; font-size: 15px; margin-bottom: 1.75em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif;\">Saksikan kisah Nedi dalam serial Sang Inspirator:</p><div><br></div><figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\" style=\"margin-bottom: 1em; color: rgb(75, 75, 75); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\"><div class=\"wp-block-embed__wrapper\" style=\"border: 0px; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; position: relative;\"></div></figure>', 'eAsNews-1.jpg', 'http://www.lddkaj.or.id/blog/perjuangan-nedi-hati-yang-tidak-terbatas/', 4, '2020-12-27 16:55:45', '2020-12-30 03:34:40', 1),
(12, 'Kisah Casirimus', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"IN\">Bapak Casimirus</span>. Sekitar <span lang=\"IN\">&nbsp;8 tahun yang lalu</span>, <span lang=\"IN\">&nbsp;pertama datang ke LDD untuk mengajukan\r\npermohonan bantuan sembako utuk kebutuhan hidup sehari-hari. Dua minggu\r\nberikutnya Pak Casimirus datang kembali menyampaikan kesulitan pengurusan surat\r\ndata diri untuk pembuatan KK. Ketika disarankan LDD untuk datang ke Dinas\r\nterkait P Casimirus menngatakan takut kalau dimintain bayar dan ditanya\r\nmacem-macem oleh orang dinas. Setelah dimotivasi oleh LDD, Pak Casimirus\r\nmemberanikan diri untuk mendatangi kelurahan, kecamatan sampai dengan DUKCAPIL\r\nyang akhirnya surat-surat yang Pak Casimirus butuhkan</span> di dapatkan. <span lang=\"IN\">. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"IN\">Perkenalan ini yang\r\nmembuat Pak Casimirus terkesan dan menjadi akrab dengan LDD, sehingga P\r\nCasimirus mempercai LDD sebagai tempat untuk menyampaikan masalahnya. Masalah\r\nlain yang dihadapi Pak Casimirus adalah </span>m<span lang=\"IN\">asalah Pendidikan anaknya yang kesulitan biaya, </span>m<span lang=\"IN\">asalah kontrakan rumahnya\r\nyang belum terbayarkan,</span> m<span lang=\"IN\">asalah tidak memiliki pekerjaan.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"IN\">Untuk membantu\r\nmenyelesaikan masalah Pak Casimirus ini, LDD tidak serta </span>merta <span lang=\"IN\">memberi materi</span>. LDD&nbsp; <span lang=\"IN\">memberikan saran</span> dan <span lang=\"IN\">&nbsp;bantuan </span>langsung&nbsp;\r\nberupa biaya <span lang=\"IN\">pendidikan anaknya</span> dan <span lang=\"IN\">modal usaha. </span><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><o:p>&nbsp;</o:p>Pak Casimirus yang\r\nmemiliki 4 anak ini, beberapa kali mendapatkan bantuan modal untuk usaha\r\nmusiman di Hari Raya Idul Fitri dan Tahun Baru. Dari kebiasaan ini Pak\r\nCasimirus terasah untuk mengembangkan kemampuannya menangkap peluang usaha yang\r\nakhirnya mampu membiayai sendiri pendidikannya dengan usaha yang dia lakukan\r\ndan mengakses bantuan yang ada baik pemerintah dan swasta hingga kenal dengan\r\npegawai Balai Kota Jakarta</p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"IN\">Anak pertama P\r\nCasimirus yang juga ikut jualan kaki lima,&nbsp;\r\n5 bulan lagi akan wisuda, sementara itu istri P Casimirus juga sudah\r\nmemiliki warung. Terakhir kali LDD bertemu Pak Casimirus, Pak Casimirus\r\nmengatakan </span>bahwa dia beruntung\r\ndibantu oleh LDD tentang&nbsp; “<span lang=\"IN\">perubahan cara berfikir bagaimana mengatasi masalah ekonomi, pendidikan\r\ndan keluarganya</span>”<span lang=\"IN\">.<a name=\"_GoBack\"></a><o:p></o:p></span></p>', 'lPkDonasi-Dana---News---Image-New-2.jpg', 'lddkaj.org', 4, '2020-12-29 06:34:05', '2020-12-30 03:32:10', 1),
(13, 'Kisah Letti Watimena', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\"><font size=\"2\" face=\"arial\">Letti\r\nWatimena a</font></span><span style=\"font-family: arial; font-size: small;\">dalah seorang penyandanga disabilitas sesorik rungu. </span><span style=\"font-family: arial; font-size: small;\">&nbsp;</span><span style=\"font-family: arial; font-size: small;\">Aktif bersama kelas ketrampilan sejak tahun\r\n2010. Beliau belum menikah. Berdomisili di Bilangan Jakarta Timur. Tepatnya di\r\nJl. Pramuka.</span><span style=\"font-family: arial; font-size: small;\">&nbsp; </span><span style=\"font-family: arial; font-size: small;\">Di kelas ketrampilan khusus\r\nuntuk penyandang disabilitas ini, ketrampilan yang dilatihkan berupa pembuatan\r\naksesoris dari bahan manic manik, merajut, menjahit totebag, karakter dari\r\nbahan flannel, decoupage, dan kerajinan berbahan kulit.</span></p>\r\n\r\n<p class=\"MsoNormal\"><font size=\"2\" face=\"arial\">Ketrampilan yang dimiliki otomatis bertambah dan beliau\r\nsudah naik level sebagai asisten instruktur. Tidak pelit untuk berbagi kepada\r\nteman teman di kelas junior. Dari keterbatasan ketrampilan yang dimiliki,\r\nsekarang beliau sudah mampu menghasilkan sesuatu yang bernilai jual. Banyak\r\nhasil karya tangan beliau yang sudah terjual. Dari penjualan, beliau mendapat\r\ntambahan penghasilan yang dapat digunakan untuk menghidupi keluarganya.&nbsp;</font><o:p></o:p></p>', 'yr3Donasi-Dana---News---Image-New-2.jpg', 'lddkaj.org', 2, '2020-12-29 06:36:23', '2020-12-29 09:39:29', 1),
(14, 'BELA RASA PADA PANDEMI COVID-19  Versi IGNATIUS KARDINAL SUHARYO', '<div>Wabah Virus corona itu memang sedang melanda kita sekarang, tetapi akibatnya begitu besar dan berjangka jauh. Oleh karena itu saya akan sangat bersyukur dan sangat berharap semoga solidaritas dan kreatifitas yang muncul pada masa ini nanti akan terus berlanjut.&nbsp;</div><div>Kalau saya boleh menggunakan salah satu ayat kitab suci, tentu ayat kitab suci Katolik : gambaran dari umat perdana ketika masyarakat, ketika umat,&nbsp; sehati sejiwa tidak seorangpun diantara mereka yang berkekurangan karena semua warga umat rela berbagi.&nbsp;</div><div><br></div><div>Moga-moga semangat kerelaan berkorban, berbagi, yang sangat dahsyat pada masa ini akan terus dijalankan pada masa-masa yang akan datang, bukan sekedar ; tentu dalam jangka pendek untuk menanggapi situasi sulit, tetapi dalam jangka panjang untuk mengungkapkan dan mewujudkan watak bangsa kita yang memang sejak awal mempunyai watak gotong royong, solidaritas, bekerjasama.&nbsp;</div><div>Yang tidak kalah penting adalah kreatifitas untuk menggunakan semua sumberdaya yang ada. Macam-macam: kemampuan untuk bekerja barang sedikit, kemampuan untuk menggarap tanah sekecil apapun, dan bagi kita yang mempunyai lahan yang agak luas menawarkan lahan itu untuk dikerjakan.</div><div><br></div><div>Semuanya bisa dipikirkan dan saya kira jawabanya mesti kita cari, tidak secara teoritis tetapi secara secara konkrit&nbsp; dengan menjawab pertanyaan ini : apa yang harus kita lakukan setiap saat supaya umat dan warga masyarakat kita semakin sehati sejiwa, sehingga diantara umat dan masyarakat itu tidak seorangpun yang berkekurangan karena semua pihak rela berbagi.&nbsp;</div><div>Tidak ada orang yang mengatakan terlalu miskin sehingga tidak bisa berbagi : tidak ada. Dan tidak ada orang yang terlalu kaya, terlalu kuat;&nbsp; sampai bisa mengatakan saya tidak butuh siapapun. Kehidupan kita sebagai warga bangsa sungguh-sungguh mesti kita bangun seperti tadi : semakin sehati sejiwa sehingga tidak seorangpun diantara kita yang kekurangan apapun karena semua warga kita rela berbagi&nbsp;</div><div><br></div><div><br></div><div>Transkrif dari vidio eklusif :&nbsp;</div><div>pesan kardinal untuk Gerakan Bela Rasa Bagi Warga Terdampak COVID 19 oleh LDDKAJ</div><div>Shoting : 22 April 2020, wisma Uskup pk. 09.30 WIB</div><div><br></div><div>&lt;iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p2MR1xb4pJo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen&gt;&lt;/iframe&gt;<br></div><div><br></div>', 'KvlDonasi-Dana---News---Image-New.jpg', 'lddkaj.org', 2, '2020-12-29 06:43:40', '2020-12-29 06:48:36', 1),
(15, 'Pelayanan Kesehatan', 'LDD KAJ melayani kaum miskin yang mengalami kesulitan untuk mendapatkan akses pelayanan kesehatan dengan menunjungi&nbsp; keluarga-keluarga&nbsp; di okasi padat dan kumuh. Para relawan Dokter sangat membantu dalam upaya pelayanan ini.&nbsp; &nbsp;Dengan sabar dan penuh kasih para dokter dan relawan medis melayani warga yang mengeluhkan tentang kesehatannya<div><span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",\"sans-serif\";mso-fareast-font-family:calibri;mso-bidi-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-ansi-language:en-us;mso-fareast-language:en-us;=\"\" mso-bidi-language:ar-sa;mso-no-proof:yes\"=\"\"><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\">\r\n <v:stroke joinstyle=\"miter\">\r\n <v:formulas>\r\n  <v:f eqn=\"if lineDrawn pixelLineWidth 0\">\r\n  <v:f eqn=\"sum @0 1 0\">\r\n  <v:f eqn=\"sum 0 0 @1\">\r\n  <v:f eqn=\"prod @2 1 2\">\r\n  <v:f eqn=\"prod @3 21600 pixelWidth\">\r\n  <v:f eqn=\"prod @3 21600 pixelHeight\">\r\n  <v:f eqn=\"sum @0 0 1\">\r\n  <v:f eqn=\"prod @6 1 2\">\r\n  <v:f eqn=\"prod @7 21600 pixelWidth\">\r\n  <v:f eqn=\"sum @8 21600 0\">\r\n  <v:f eqn=\"prod @7 21600 pixelHeight\">\r\n  <v:f eqn=\"sum @10 21600 0\">\r\n </v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:f></v:formulas>\r\n <v:path o:extrusionok=\"f\" gradientshapeok=\"t\" o:connecttype=\"rect\">\r\n <o:lock v:ext=\"edit\" aspectratio=\"t\">\r\n</o:lock></v:path></v:stroke></v:shapetype><v:shape id=\"Picture_x0020_1\" o:spid=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:380.4pt;height:213.6pt;visibility:visible\">\r\n <v:imagedata src=\"file:///C:\\Users\\FITRIK~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" o:title=\"20151029_125805\"></v:imagedata></v:shape></span><img src=\"https://i.imgur.com/oyLQ5L8.jpg\" width=\"645\"></div><div><br><div><br></div><div><br><div><br></div><div><br></div></div></div><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/p2MR1xb4pJo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe>', 'bhiDonasi-Dana---News---Image-New.jpg', 'lddkaj.org', 3, '2020-12-29 06:47:08', '2020-12-29 10:01:15', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `logo`, `status`) VALUES
(3, 'Io1519468640zbrand.png', 1),
(4, '601519468648zbrand.png', 1),
(5, 'oX1519468660zbrand.png', 1),
(6, 'uZ1519468670zbrand.png', 1),
(7, 'JB1519468717zbrand.png', 1),
(8, 'jn1519468725zbrand.png', 1),
(9, 'Ee1519468732zbrand.png', 1),
(10, 'WQ1519468743zbrand.png', 1),
(11, 'Rr1519468753zbrand.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `feature_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `goal` int(11) DEFAULT NULL,
  `available_fund` float NOT NULL DEFAULT '0',
  `default_amount` float DEFAULT NULL,
  `preloaded_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_after` enum('goal','date') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'goal',
  `featured` int(11) NOT NULL DEFAULT '0',
  `admin_aproved` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','running','closed','reject') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `campaigns`
--

INSERT INTO `campaigns` (`id`, `createdby`, `category`, `title`, `description`, `feature_image`, `video_link`, `start_date`, `end_date`, `goal`, `available_fund`, `default_amount`, `preloaded_amount`, `end_after`, `featured`, `admin_aproved`, `created_at`, `updated_at`, `status`) VALUES
(1, 0, 'Donasi Pemberdayaan', 'Donasi Untuk Anak Kalimantan', '<p style=\"text-align: justify;\">Di tengah pandemic Covid-19 saat ini, banyak sekali saudara-saudara kita di Kalimantan , dimana anak-anaknya tidak lagi mampu membiayai kebutuhan sekolahnya. Just Giving LDD tergerak untuk mengadakan donasi, dimana donasi ini akan dibuat dalam bentuk subsidi bagi anak-anak, seperti baju sekolah, sepatu, buku tulis, uang SPP, dsb.</p>', '1608303741happiness-5d1e2415097f3639af1ef642.jpg', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', NULL, '2020-12-24 00:00:00', 200000000, 0, 20, '50000,100000,250000,500000,1000000', 'goal', 1, 'yes', '2017-06-04 16:52:03', '2020-12-29 10:06:09', 'closed'),
(3, 2, 'Donasi Advokasi', 'Kampanye Untuk India', '<p style=\"text-align: justify;\">\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p style=\"text-align: justify;\">\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>\r\n<p style=\"text-align: justify;\">\r\nAenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra \r\nsem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero. \r\nNullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque. \r\nNam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis, \r\nlibero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi \r\nsagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere \r\nodio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae \r\ntellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc \r\nut lorem vestibulum fermentum sit amet ac metus.\r\n</p>\r\n<p style=\"text-align: justify;\">\r\nSed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat \r\nconsectetur, nibh neque elementum neque, ac sagittis sapien odio nec \r\nnisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem. \r\nVestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet \r\nturpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel \r\ncommodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.\r\n Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi. \r\nCras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet. \r\nAenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit\r\n amet iaculis facilisis. Praesent scelerisque elit nec accumsan \r\nultricies.\r\n</p>', '1496595123first.jpg', 'https://www.youtube.com/watch?v=WLt2cnu9Hg0', NULL, '2017-06-12 00:00:00', 22000, 260, NULL, '50,60,70', 'goal', 1, 'yes', '2017-06-10 15:56:32', '2020-12-29 10:07:02', 'closed'),
(5, 2, 'Donasi Karitatif', '12345678901234567 12345678901234567 12345678901234567', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>\r\n<p>\r\nAenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra \r\nsem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero. \r\nNullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque. \r\nNam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis, \r\nlibero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi \r\nsagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere \r\nodio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae \r\ntellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc \r\nut lorem vestibulum fermentum sit amet ac metus.\r\n</p>\r\n<p>\r\nSed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat \r\nconsectetur, nibh neque elementum neque, ac sagittis sapien odio nec \r\nnisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem. \r\nVestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet \r\nturpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel \r\ncommodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.\r\n Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi. \r\nCras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet. \r\nAenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit\r\n amet iaculis facilisis. Praesent scelerisque elit nec accumsan \r\nultricies.\r\n</p>', '1497277141first.jpg', NULL, NULL, '2017-06-15 00:00:00', 100, 0, NULL, '20.00,30.00,40.00,50.00', 'goal', 0, 'yes', '2017-06-12 14:19:01', '2020-12-29 05:43:35', 'running'),
(20, 0, 'Donasi Karitatif', 'Donasi Untuk Dokter Perawat RS', '<div style=\"text-align: justify;\"><span style=\"background-color: transparent;\">Bantuan dana ini nantinya akan ditujukan bagi kawan-kawan kita yang ada di garda terdepan saat ini dalam menanggulangi Covid-19. Nantinya seluruh donasi yang terkumpul, akan disalurkan dalam bentuk masker, APD Hazmat, kebutuhan pangan, dll</span></div>', '16083027395e76e43705575.jpg', NULL, NULL, '2020-12-20 00:00:00', 10000000, 0, NULL, '50000,100000,250000,500000', 'date', 1, 'yes', '2020-12-18 14:45:39', '2020-12-29 10:06:24', 'closed'),
(21, 0, 'Donasi Kebencanaan', 'Donasi Untuk Papua', '<div style=\"text-align: justify;\"><span style=\"background-color: transparent;\">Bantuan Korban Bencana di Papua</span></div>', '1608611964002 Article - Pengumuman - PANDUAN KARDINAL - Thumbnail 2.jpg', NULL, NULL, '2020-12-24 00:00:00', 1000000000, 0, NULL, '200000, 500000, 1000000', 'goal', 1, 'yes', '2020-12-22 04:39:24', '2020-12-29 10:06:42', 'closed'),
(22, 0, 'Donasi Pemberdayaan', 'Pelayanan Pemberdayaan Ekonomi Kreatif', '<p class=\"MsoNormal\" style=\"text-align:justify\"><font size=\"2\"><span lang=\"IN\">Di 2020 dunia mengalami masa sulit dengan pandemi </span><span lang=\"IN\">Covid</span>-<span lang=\"IN\">19 yang dampaknya sampai ke negara Indonesia. Kondisi ini </span>semakin <span lang=\"IN\">memanggil LDD</span> KAJ<span lang=\"IN\"> untuk bergerak lebih\r\nmasif mengembangkan pelayanan</span><span lang=\"IN\"> </span>pemberdayaan ekonomi\r\nkreatif&nbsp; bagi <span lang=\"IN\">masyarakat\r\n</span>&nbsp;terdampak yang k<span lang=\"IN\">ecil</span>, &nbsp;l<span lang=\"IN\">emah</span>, &nbsp;m<span lang=\"IN\">iskin</span>, &nbsp;t<span lang=\"IN\">ersingki</span>r,<span lang=\"IN\"> dan </span>d<span lang=\"IN\">isabilitas</span>. &nbsp;<o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><font size=\"2\"><span lang=\"IN\">Untuk bisa membantu\r\n</span><span lang=\"IN\">&nbsp;</span><span lang=\"IN\">lebih banyak</span> warga terdampak<span lang=\"IN\">, LDD-KAJ </span>akan <span lang=\"IN\">membentuk\r\nkelompok-kelompok usaha yang akan</span><span lang=\"IN\">ok </span>akan <span lang=\"IN\">menekuni </span>pengembangan <span lang=\"IN\">satu jenis\r\nproduk </span>kreatif. Untuk selanjutnya,\r\nkelompok akan didampingi dalam peningkatan <span lang=\"IN\">produksi,\r\npengemasan, pemasaran</span>, dan &nbsp;pengelolaan\r\nkeuangan usaha.&nbsp;</font></p><p class=\"MsoNormal\" style=\"text-align:justify\"><font size=\"2\"><span lang=\"IN\" style=\"text-indent: 36pt;\">Pada\r\ntahun 2021 </span><span style=\"text-indent: 36pt;\">direncanakan</span><span style=\"text-indent: 36pt;\">&nbsp;</span><span style=\"text-indent: 36pt;\">ada </span><span lang=\"IN\" style=\"text-indent: 36pt;\">7 kelompok </span><span style=\"text-indent: 36pt;\">usaha yang dikuti</span><span style=\"text-indent: 36pt;\">&nbsp; </span><span style=\"text-indent: 36pt;\">67 orang anggota (termasuk warga disabilitas).</span><span style=\"text-indent: 36pt;\">&nbsp;&nbsp;</span></font></p><p class=\"MsoNormal\" style=\"text-align:justify\"><font size=\"2\"><span style=\"text-indent: 36pt;\">Kelompok ini berada lokasi <b>Bantar Gebang </b></span><span lang=\"IN\" style=\"text-indent: 36pt;\"><b>Bekasi, Marunda, Cilincing, Muara Angke, Kebon Sayur</b></span><span style=\"text-indent: 36pt;\"><b>,</b> </span><span lang=\"IN\" style=\"text-indent: 36pt;\">&nbsp;dan </span><span lang=\"IN\" style=\"text-indent: 36pt;\">&nbsp;</span><span lang=\"IN\" style=\"text-indent: 36pt;\">kelompok </span><span style=\"text-indent: 36pt;\">khusus d</span><span lang=\"IN\" style=\"text-indent: 36pt;\">isabilitas</span><span style=\"text-indent: 36pt;\"> di LDD KAJ.</span></font></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\"><font size=\"2\"><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt;\"><font size=\"2\"><span lang=\"IN\">Bentuk usaha </span>kreatif\r\nyang&nbsp; <span lang=\"IN\">akan </span>kembangkan&nbsp;\r\n<span lang=\"IN\">adalah : <o:p></o:p></span></font></p>\r\n\r\n<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;\r\nmso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"></p><ol><li style=\"text-align: justify;\"><font size=\"2\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;</span><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]--><span lang=\"IN\">Usaha </span>K<span lang=\"IN\">reasi jahit menjahit,\r\nsablon dan bordir</span></font></li><li style=\"text-align: justify;\"><font size=\"2\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Usaha\r\nAneka Cookies</font></li><li style=\"text-align: justify;\"><font size=\"2\"><span lang=\"IN\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"IN\">Usaha </span>K<span lang=\"IN\">acang </span>B<span lang=\"IN\">awang</span> Special </font></li><li style=\"text-align: justify;\"><font size=\"2\"><span lang=\"IN\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"IN\">Usaha </span>Kacang M<span lang=\"IN\">ede </span>P<span lang=\"IN\">anggang<o:p></o:p></span></font></li><li style=\"text-align: justify;\"><font size=\"2\"><span lang=\"IN\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Usaha\r\nPengolahan Ikan Peda</font></li><li style=\"text-align: justify;\"><font size=\"2\"><span lang=\"IN\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"IN\">Usaha </span>Budidaya K<span lang=\"IN\">roto (telur\r\nsemut </span>)</font></li><li style=\"text-align: justify;\"><font size=\"2\"><span lang=\"IN\" style=\"\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]-->Usaha Budidaya\r\n</font><span lang=\"IN\" style=\"\"><font size=\"2\">Magot BSF<o:p></o:p></font></span></li></ol><p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt;\"><span lang=\"IN\"><font size=\"2\">&nbsp;</font></span></p></blockquote><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;\r\nmso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom:0cm;margin-bottom:\r\n.0001pt;mso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><o:p></o:p></p>', '1609219486Untitled-1-2.jpg', NULL, NULL, '2021-01-31 00:00:00', 71264999, 0, NULL, NULL, 'goal', 1, 'yes', '2020-12-29 05:23:02', '2020-12-29 10:07:52', 'running'),
(23, 0, 'Donasi Pemberdayaan', 'Kursi Roda untuk Teman Disabilitas', '<div style=\"text-align: justify;\">LDD – KAJ sejak tahun 2000 melalui <b>Biro Pelayanan Penyandang Disabilitas (BPPD) </b>memberikan pendampingan dan pelayanan kepada para penyandang Disabilitas, mulai dari Disabilitas Netra, Tuli, Keterbelakangan Mental dan Daksa.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ditengah situasi saat ini dimana pandemi Covid-19 belum jelas kapan berakhirnya,keadaan yang berkepanjangan ini berdampak kepada semua orang dari segala lapisan dan status sosial masyarakat. Oleh karena itu saudara-saudara kita yang berkebutuhan khusus semakin mengalami kesulitan mobilitas untuk mencari nafkah untuk memenuhi kebutuhan hidupnya sehari-hari.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">LDD KAJ menanggapi persoalan tersebut dengan memikirkan perlunya layanan yang dapat mendukung hidup sehari-hari mereka yaitu melalui program <i>Orientasi Mobilitas (OM)</i> yang sudah ada, dan juga memikirkan kebutuhan aktuil sekarang melalui pemberian alat bantu untuk memudahkan para disabilitas melakukan aktivitas fisik di lingkungan tempat tinggal, kerja, sekolah dan aktivitas sosial lainnya antar anggota komunitas disabilitas, yaitu berupa kursi roda.</div><div style=\"text-align: justify;\">&nbsp;</div><div style=\"text-align: justify;\">Sasaran program ini meliputi Wilayah Jakarta dan sekitarnya, Tangerang dan Bekasi.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Dengan tujuan utama agar mereka dapat melakukan aktivitasnya secara baik dan perkembangan pribadinya menjadi lebih mandiri.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Target LDD-KAJ di tahun 2021 ini merencanakan pemberian bantuan kepada <b>75 orang Disabilitas Daksa</b> yang memerlukan Kursi Roda untuk mendukung aktifitas keseharian mereka.</div><div style=\"text-align: justify;\"><br></div>', '1609220106002 Campaign - Image 2.jpg', NULL, NULL, '2021-03-31 00:00:00', 210225000, 0, NULL, NULL, 'goal', 1, 'yes', '2020-12-29 05:35:06', '2020-12-29 10:07:17', 'running'),
(24, 0, 'Donasi Karitatif', 'Mobil untuk Aksi Kemanusiaan', '<div style=\"text-align: justify;\"><span style=\"font-size: small;\">LDD-KAJ, lembaga sosial yang telah berusia 58 tahun, melakukan perjalanan aksi kemanusiaan untuk berbela-rasa kepada para penyintas bencana telah berlangsung lama.</span><br></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Tercatat aksi bela rasa pada bencana tsunami Aceh 2004, Gempa Padang dan Jogja pada 2009, dan bencana gunung Merapi 2010, serta rentenan bencana Gempa Lombok, Tsunami dan Liquifaksi di Palu – Donggala – Sigi, dan&nbsp; terakhir tsunami selat Sunda di Banten 2018. Bencana banjir di wilayah Jabodetabek tahun 2005 dan 2013,&nbsp; bencana banjir dan kebakaran di tahun-tahun berikutnya telah mewarnai aksi kemanusiaan LDD KAJ di wilayah Keuskupan Agung Jakarta.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Sebagai pemangku mandat Caritas di Keuskupan Agung Jakarta, LDD KAJ bukan saja sebagai inisiator, animator dan fasilitator, namun secara aktif terlibat dalam jaringan Caritas Indonesia dengan mengirimkan bantuan dana dan bantuan lainnya. Selain itu juga para relawan LDD KAJ terlibat langsung dalam posko bela rasa, baik secara mandiri maupun bersama-sama jaringan Caritas Indonesia.</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Tingginya mobilitas LDD KAJ dalam aksi bela rasa didorong rasa tanggung jawab akan misi kemanusiaan. Ketika orang-orang pergi meninggalkan,&nbsp; para relawan LDD KAJ berjibaku menembus jalan pintas dan banjir, memasuki wilayah yang sulit dan akses yang tidak bersahabat, demi mengantar bantuan dari para donatur untuk para penyintas bencana.&nbsp;</font></div><div style=\"text-align: justify;\"><font size=\"2\"><br></font></div><div style=\"text-align: justify;\"><font size=\"2\">Untuk mendukung terus aktivitas aksi kemanusiaan, LDD KAJ membutuhkan&nbsp; sarana mobil 4x4 (berpenggerak 4 roda) untuk memperlancar segala kegiatan bela rasa, terlebih berbagai macam medan yang pernah dilalui seperti banjir, gempa, tanah longsor dan letusan gunung berapi merupakan medan yang selalu ada di depan mata para pelaku aksi kemanusiaan dari LDD-KAJ</font></div><div style=\"text-align: justify;\"><br></div>', '1609220255002 Campaign - Image 2.jpg', NULL, NULL, '2021-05-31 00:00:00', 460000000, 0, NULL, NULL, 'goal', 1, 'yes', '2020-12-29 05:37:36', '2020-12-29 10:07:32', 'running'),
(25, 0, NULL, 'Peningkatan Kapasitas Relawan Guru Paud', '<div style=\"text-align: justify;\">Pada tahun 2021 Lembaga Daya Dharma KAJ&nbsp; mendampingi&nbsp; 8 rumah sekolah&nbsp; Pendidikan Anak Usia Dini (PAUD)&nbsp; untuk bertransformasi dari PAUD yang \"biasa-biasa saja\" (yang lebih mengembangkan&nbsp; kemampuan belajar menulis dan membaca) ) menuju&nbsp; pendidikan&nbsp; PAUD yang&nbsp; holistik berbasis karakter.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Ini adalah upaya LDD KAJ bersama masyarakat setempat untuk turut ambil bagian dalam proses membangun&nbsp; generasi bangsa Indonesia yang berkarakter tangguh, kreatif, cerdas, dan mencintai perdamaian&nbsp; dalam keberagaman sejak usia dini.</div><div style=\"text-align: justify;\">Para GURU ini adalah masyarakat sekitar rumah sekolah PAUD yang belajar secara otodidak untuk&nbsp; bisa sekedar mengajar. Kebanyakan adalah ibu rumah tangga yang memiliki semangat tulus mengabdi dan rela hati berkorban.&nbsp; Pendidikan mereka pada umumnya SLTP dan sedikit yang lulus SLTA.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Agar upaya transformasi menuju Pendidikan PAUD yang mengembangkan hak-hak mendasar bagi anak dalam pendidikan bisa tercapai, LDD KAJ merencanakan program&nbsp; pengembangan kapasitas bagi 33 orang GURU PAUD ini. Program pelatihan&nbsp; akan dilaksanakan dalam 33 hari pelatihan sistemik dan terstuktur tanpa mengganggu aktifitas pembelajaran harian.&nbsp; &nbsp;Adapun tema pokok pelatihan adalah&nbsp; hak-hak dasar anak, kurikulum pendidikan Anak usia dini yang holistik berbasis karekter beserta modul pembelajarananya, dan ketrmapilan menggunkan komputer untuk memperlancar proses pembelajaran.</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Untuk mendukung implementasi&nbsp; program&nbsp; pendidikan holistik berbasis karakter (PHBK),&nbsp; direncanakan juga pengadaan sarana pembelajaran dan perpustakaan mini bagi 8 PAUD yang tersebar di pinggiran pantai utara Jakarta.&nbsp;</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">Rumah sekolah PAUD yang didampingi LDD KAJ tahun 2021 sebagai berikut :</div><div style=\"text-align: justify;\">1. Muara Angke Eceng</div><div style=\"text-align: justify;\">2. Muara Angke Empang&nbsp;</div><div style=\"text-align: justify;\">3. Rawa Elok</div><div style=\"text-align: justify;\">4. Muara Baru&nbsp;</div><div style=\"text-align: justify;\">5. Pantai Indah Marunda</div><div style=\"text-align: justify;\">6. Marunda Pitung</div><div style=\"text-align: justify;\">7. Marunda Amaniah</div><div style=\"text-align: justify;\">8. Cilincing</div><div style=\"text-align: justify;\"><br></div>', '1609221206002 Campaign - Image 2.jpg', NULL, NULL, '2021-03-31 00:00:00', 179600000, 0, NULL, NULL, 'goal', 1, 'yes', '2020-12-29 05:53:27', '2020-12-29 10:08:04', 'running');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `image`, `status`) VALUES
(20, 'Donasi Karitatif', 'donasi-karitatif', 'o7Ckarikatif.png', 1),
(28, 'Donasi Pemberdayaan', 'donasi-pemberdayaan', '7LBpemberdayaan.png', 1),
(29, 'Donasi Advokasi', 'donasi-advokasi', 'Fmaadvokasi.png', 1),
(30, 'Donasi Kebencanaan', 'donasi-kebencanaan', 'OpNkebencanaan.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `code_scripts`
--

CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `code_scripts`
--

INSERT INTO `code_scripts` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>', 'Donasi Dana, LDD KAJ, Lembaga Daya Dharma, Donasi Keuskupan Agung Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `counter`
--

INSERT INTO `counter` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1043, 0, NULL),
(4, 'browser', 'Linux', 29, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 339, 0, NULL),
(6, 'browser', 'Windows 7', 4, 0, NULL),
(7, 'referral', 'yandex.ru', 1, 0, NULL),
(8, 'browser', 'Windows 8.1', 65, 0, NULL),
(9, 'referral', 'www.google.com', 2, 0, NULL),
(10, 'browser', 'Android', 29, 0, NULL),
(11, 'browser', 'Mac OS X', 110, 0, NULL),
(12, 'browser', 'iPhone', 18, 0, NULL),
(13, 'referral', 'com.google.android.googlequicksearchbox', 1, 0, NULL),
(14, 'browser', 'Ubuntu', 11, 0, NULL),
(15, 'referral', 'app.sandbox.midtrans.com', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `donation_number` varchar(255) DEFAULT NULL,
  `campid` int(11) DEFAULT NULL,
  `campby` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `anonymous` enum('yes','no') NOT NULL DEFAULT 'no',
  `donator_name` varchar(255) DEFAULT NULL,
  `donator_email` varchar(255) DEFAULT NULL,
  `donator_phone` varchar(255) DEFAULT NULL,
  `donator_address` varchar(255) DEFAULT NULL,
  `donator_city` varchar(255) DEFAULT NULL,
  `donator_zip` varchar(255) DEFAULT NULL,
  `donation_method` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `donate_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`) VALUES
(1, 'Apakah LDD - KAJ ?', '<span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br><br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><br><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>', 1),
(2, 'Apa itu Donasi Dana - LDD KAJ', 'In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>', 1),
(3, 'Apakah bisa donasi barang di LDD KAJ ?', 'fdkjfgadbfogj vaduofgbad gousdgojadoufghdakpofgupioadhgfpineqg', 1),
(4, 'Bagaimana Cara Berdonasi di Donasi Dana - LDD KAJ ?', 'fdkjfgadbfogj vaduofgbad gousdgojadoufghdakpofgupioadhgfpineqg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `packageid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `packageid`, `image`) VALUES
(10, 5, 'ql1493393791single_blog-img1.png'),
(11, 5, 'L91493393791single_blog-img2.png'),
(12, 5, '9H1493393791single_blog-img3.png'),
(13, 8, 'Nu14935510431-min.jpg'),
(14, 8, '8k14935510432-min.jpg'),
(15, 8, 'xE14935510433-min.jpg'),
(16, 8, 'CI14935510434-min.jpg'),
(17, 8, 'Oc14935510435-min.jpg'),
(18, 8, 'qo14935510436-min.jpg'),
(19, 9, 'fg14935513162-min.jpg'),
(20, 9, 'yw14935513163-min.jpg'),
(21, 9, 'W114935513164-min.jpg'),
(22, 9, 'Ri14935513165-min.jpg'),
(23, 9, 'Fu14935513166-min.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `welcome_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_description` text COLLATE utf8_unicode_ci,
  `welcome_link` text COLLATE utf8_unicode_ci,
  `slider_status` int(11) DEFAULT '1',
  `split_status` int(11) DEFAULT '1',
  `welcome_status` int(11) DEFAULT '1',
  `service_status` int(11) DEFAULT '1',
  `category_status` int(11) DEFAULT '1',
  `counter_status` int(11) DEFAULT '1',
  `latest_status` int(11) DEFAULT '1',
  `featured_status` int(11) DEFAULT '1',
  `volunteer_status` int(11) DEFAULT '1',
  `portfolio_status` int(11) DEFAULT '1',
  `testimonial_status` int(11) DEFAULT '1',
  `blog_status` int(11) DEFAULT '1',
  `partners_status` int(11) DEFAULT '1',
  `home_reg_status` int(11) DEFAULT '1',
  `w_b_status` int(11) NOT NULL DEFAULT '1',
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `welcome_title`, `welcome_image`, `welcome_description`, `welcome_link`, `slider_status`, `split_status`, `welcome_status`, `service_status`, `category_status`, `counter_status`, `latest_status`, `featured_status`, `volunteer_status`, `portfolio_status`, `testimonial_status`, `blog_status`, `partners_status`, `home_reg_status`, `w_b_status`, `c_status`, `a_status`, `f_status`) VALUES
(1, 'Terima kasih telah menghubungi Donasi Dana by LDD - KAJ', 'lddkaj62@gmail.com', '<h2><span style=\"color: inherit; font-family: inherit;\">Donasi Dana by LDD-KAJ</span><br></h2><div>Lembaga Daya Dharma – Keuskupan Agung Jakarta (LDD KAJ) adalah lembaga sosial milik KAJ yang didirikan pada 10 Mei 1962 oleh Mgr. Djajaseputra, SJ, untuk memberikan bantuan kepada warga masyarakat yang Kecil, Lemah, Miskin, Tersingkir dan Disabilitas (KLMTD)<br></div>', '<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>', 'Welcome to FundPro Please Rise your Helping Hand', '16T26165752_1605377126220778_1140583099586293990_n.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, odioserunt provident maiores consectetur adipisicing elit. Aliquam odio dese runtesseu provident maiores libero porro dolorem est. Velit necessitatibus fugiat error incidunt excepturi doloribus officia aspernatur quod libero Velit necessitatibus fugiat error incidunt excepturi doloribus officia', 'http://localhost/charityup/campaigns', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `portfolios`
--

INSERT INTO `portfolios` (`id`, `image`, `status`) VALUES
(3, '7uJsingle_project1.png', 1),
(4, 'PRSsingle_project2.png', 1),
(5, 'jIOsingle_project3.png', 1),
(6, 'NRysingle_project5.png', 1),
(7, 'VDjsingle_project6.png', 1),
(8, 's36single_project7.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `section_titles`
--

CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `service_text` text CHARACTER SET latin1,
  `category_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_text` text COLLATE utf8_unicode_ci,
  `newcamp_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newcamp_text` text COLLATE utf8_unicode_ci,
  `pricing_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pricing_text` text CHARACTER SET latin1,
  `volunteer_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volunteer_text` text COLLATE utf8_unicode_ci,
  `portfolio_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `portfolio_text` text CHARACTER SET latin1,
  `testimonial_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `testimonial_text` text CHARACTER SET latin1,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `section_titles`
--

INSERT INTO `section_titles` (`id`, `service_title`, `service_text`, `category_title`, `category_text`, `newcamp_title`, `newcamp_text`, `pricing_title`, `pricing_text`, `volunteer_title`, `volunteer_text`, `portfolio_title`, `portfolio_text`, `testimonial_title`, `testimonial_text`, `blog_title`, `blog_text`) VALUES
(1, 'Donasi Dana by LDD - KAJ', 'Merupakan inisiatif dari Lembaga Daya Dharma Keuskupan Agung Jakarta (LDD-KAJ) sebagai upaya pencarian dana secara online untuk mempermudah partisipasi umat dalam berbela-rasa. \r\nLembaga pelayanan sosial yang dimiliki oleh Keuskupan Agung Jakarta dan sudah berdiri selama 56 tahun selalu siap untuk melayani kebutuhan masyarakat miskin dan menanggulangi penyebab kemiskinan dengan berbagai program sosial bela rasa dibawah divisi berikut :', 'Campaign Categories', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Program Donasi', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Program Donasi', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Our Volunteers', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Projects', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Review Pengguna', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Cerita LDD', 'Cerita - cerita bela rasa di Lembaga Daya Dharma KAJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_section`
--

CREATE TABLE `service_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `service_section`
--

INSERT INTO `service_section` (`id`, `title`, `text`, `icon`, `status`) VALUES
(4, 'Karitatif', '123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890', 'o7Ckarikatif.png', 1),
(5, 'Pemberdayaan', '123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890', '7LBpemberdayaan.png', 1),
(6, 'Advokasi', '123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890', 'Fmaadvokasi.png', 1),
(7, 'Kebencanaan', '123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890 123456789012345678901234567890', 'OpNkebencanaan.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `currency_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_business` varchar(255) NOT NULL,
  `stripe_key` varchar(255) DEFAULT NULL,
  `stripe_secret` varchar(255) DEFAULT NULL,
  `success_msg` text,
  `withdraw_charge` int(11) NOT NULL DEFAULT '0',
  `paypal_donate` int(11) NOT NULL DEFAULT '1',
  `stripe_donate` int(11) NOT NULL DEFAULT '1',
  `anonym_donation` int(11) NOT NULL DEFAULT '1',
  `theme_color` varchar(255) DEFAULT NULL,
  `css_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `about`, `address`, `phone`, `fax`, `email`, `footer`, `background`, `currency_sign`, `currency_code`, `paypal_business`, `stripe_key`, `stripe_secret`, `success_msg`, `withdraw_charge`, `paypal_donate`, `stripe_donate`, `anonym_donation`, `theme_color`, `css_file`) VALUES
(1, 'Logodonasidana.png', 'favicon.ico', 'Donasi Dana - LDD KAJ', 'Fuckcccccc', '<div><br></div><div style=\"text-align: justify; \"><span style=\"font-size: small;\">Bagian dari Lembaga Daya Dharma - Keuskupan Agung Jakarta</span><br></div>', 'Gedung Karya Sosial KAJ, Jl. Katedral No.5, Pasar Baru, Jakarta Pusat, 10710', '+6285695016601', '00 000 000 000', 'lddkaj62@gmail.com', 'COPYRIGHT 2020 Donasi Dana by <a href=\"http://www.lddkaj.or.id/\" title=\"\" target=\"_blank\">LDD-KAJ</a> | Powered by The-Netwerk<a href=\"http://geniusocean.com\"><br></a>', 'Untitled-3.jpg', 'Rp', 'IDR', 'shaon143-facilitator-1@gmail.com', 'pk_test_bD5Si0msHNV75sd5R71jSJFb', 'sk_test_r7zxASOuYYCiuT3svkUtuh6W', '<h1 class=\"text-center\" style=\"color: green\">Payment Success.<br> Thank You !!</h1>\n                        <h2>Your Donation Received Successfully.</h2>', 10, 1, 1, 0, '#84c171', 'genius1.css');

-- --------------------------------------------------------

--
-- Struktur dari tabel `site_language`
--

CREATE TABLE `site_language` (
  `id` int(11) NOT NULL,
  `home` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_up` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgot_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaigns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `running_campaigns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_campaigns` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donations` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `funded` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_left` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dates` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transactions` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_today` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_profile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_blogs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recent_posts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_links` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_documentation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_in_social` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donate_anonymous` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enter_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `site_language`
--

INSERT INTO `site_language` (`id`, `home`, `about_us`, `contact_us`, `faq`, `log_in`, `sign_up`, `my_account`, `forgot_password`, `campaigns`, `running_campaigns`, `completed_campaigns`, `donations`, `funded`, `campaign_details`, `donate`, `goal`, `days_left`, `created_by`, `dates`, `action`, `amount`, `withdraw`, `settings`, `transactions`, `total`, `subscription`, `subscribe`, `address`, `contact_us_today`, `street_address`, `phone`, `email`, `fax`, `submit`, `name`, `dashboard`, `update_profile`, `change_password`, `latest_blogs`, `recent_posts`, `footer_links`, `view_details`, `blog`, `api_documentation`, `share_in_social`, `donate_anonymous`, `enter_details`, `logout`) VALUES
(1, 'Home', 'About Us', 'Contact Us', 'FAQ', 'Log In', 'Sign Up', 'My Account', 'Forgot Password', 'Campaigns', 'Campaigns Berjalan', 'Campaigns Selesai', 'Donasi', 'Terkumpul', 'Detail Campaign', 'Donasi', 'Goal', 'Hari Tersisa', 'Dibuat Oleh', 'Date', 'Action', 'Jumlah', 'Withdraw', 'Settings', 'Transactions', 'Total', 'SUBSCRIBE TO OUR NEWSLETTER', 'Subscribe', 'Address', 'Contact Us Today!', 'Contact Info', 'Phone', 'Email', 'Fax', 'Submit', 'Name', 'Dashboard', 'Update Profile', 'Change Password', 'Latest Blogs', 'Recent Posts', 'Footer Links', 'Read More', 'Blog', 'API Documantation', 'Share', 'Donate Anonymous', 'Enter Details', 'Logout');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `text` text CHARACTER SET latin1,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `image`, `text_position`, `status`) VALUES
(3, 'Let\'s make a diference together', 'Raise money or make a donation', 'YUwbanner top.jpg', 'slide_style_left', 1),
(7, 'Menembus Batas Solidaritas', 'Mari ikut berbela rasa', '23c002 Article - Pengumuman - PANDUAN KARDINAL - Thumbnail 2.jpg', 'slide_style_center', 1),
(9, 'Menembus Batas Solidaritas', 'Mari ikut berbela rasa', 'tfhDonasi-Dana---Banner---New-1-B.jpg', 'slide_style_left', 1),
(10, '12345678901234', '1234567890123456789012345678901234567890', 'ywuDonasi-Dana---Banner---New-2-B.jpg', 'slide_style_left', 1),
(11, NULL, NULL, 'cGCDonasi-Dana---Banner---New.jpg', 'slide_style_center', 1),
(12, NULL, NULL, 'cDBDonasi-Dana---Banner---New-2.jpg', 'slide_style_center', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twiter`, `g_plus`, `linkedin`, `f_status`, `t_status`, `g_status`, `link_status`) VALUES
(1, 'http://facebook.com/ebangladesh', 'http://twitter.com/', 'http://google.com/', 'http://linkedin.com/', 'enable', 'enable', 'disable', 'disable');

-- --------------------------------------------------------

--
-- Struktur dari tabel `split_section`
--

CREATE TABLE `split_section` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `split_section`
--

INSERT INTO `split_section` (`id`, `icon`, `title`, `text`, `status`) VALUES
(1, 'fa-music', 'EXPERT ENGINEERS', '<span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.</span>', 1),
(2, 'fa-heart', 'EXPERT ENGINEERS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.', 1),
(3, 'fa-map-marker', 'EXPERT ENGINEERS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subscription`
--

INSERT INTO `subscription` (`id`, `email`) VALUES
(1, 'shaoneel@gmail.com'),
(2, 'shaoneel@gmail.com'),
(3, 'bimaindra444@gmail.com'),
(4, 'albertxtian@gmail.com'),
(5, 'vidiamustikadewi@gmail.com'),
(6, 'izak.jenie@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `review` text CHARACTER SET latin1 NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `review`, `client`, `designation`) VALUES
(1, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'eBangladesh', 'Project Manager'),
(2, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'The Usual Suspects', 'Owner'),
(3, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Ricky John', 'CEO'),
(4, 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'James', 'CTO'),
(5, 'Web Just Giving LDD ini sangat membantu sekali bagi orang-orang yang hatinya terbeban untuk berbagi kasih dengan siapaun yang membutuhkan', 'Albertus', 'Project Manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `name`, `gender`, `phone`, `fax`, `email`, `password`, `country`, `address`, `city`, `zip`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(2, 'User Name', NULL, '2222256474', '324344', 'user@gmail.com', '$2y$10$PdI5luZqAmZyZWZxbjyvlu4R1s.wqMvjthk7we.lEK2X6VlVgWY3.', 'Argentina', 'sss', 'ssss', 'ssss', '2017-05-04 11:59:39', '2018-01-09 17:03:42', 'LUW3pzNOZh06ClQf5PL8XQXcTCMFtR4yLb806VjNhyGNY93as2RSNzc5t2Tf', 1),
(4, 'ShaOn Zaman', NULL, '0000000000', NULL, 'admiereeen@gmail.com', '$2y$10$Md6d/XYCWmWnNYF3pcDuM.F/siXbem.dzRCPG1EGsbptp0Z7WpY0y', NULL, NULL, NULL, NULL, '2018-01-07 16:09:53', '2020-12-17 16:51:43', NULL, 0),
(5, 'Badruddoza Chowdhury', NULL, '1745546773', NULL, 'badruddoza.me@gmail.com', '$2y$10$fWnomkdQxnGz6SY6Xv9OpuLDkC1jVrH..9uRC6ZoK132HBDmscZJu', NULL, NULL, NULL, NULL, '2018-02-25 13:14:07', '2018-02-25 13:14:07', NULL, 1),
(6, 'akhmad', NULL, '089647382446', NULL, 'wemadesign@gmail.com', '$2y$10$L7iKMBkSEiAFmstHjZ7rV.CMGcXRWy9LNA4UMGfOrmF/lidS66kYa', NULL, NULL, NULL, NULL, '2020-11-19 05:31:00', '2020-11-19 05:31:00', NULL, 1),
(7, 'Demo Netwerk 123', NULL, '081235525552', NULL, 'demo@gmail.com', '$2y$10$03wggc7kqfdzfG1yN/3TS.MP1sYxeEIZY3OXF7didKsQvzGu3fbc2', NULL, NULL, NULL, NULL, '2020-12-17 04:06:59', '2020-12-17 04:12:49', NULL, 1),
(8, 'Bima Indra', NULL, '089650691537', NULL, 'bimaindra444@gmail.com', '$2y$10$7oj8NNtaO5/h.nb4hzvt5eHHJ4fn5zGVuN.O.Ba66/s7BxhNbdw02', NULL, NULL, NULL, NULL, '2020-12-17 09:01:34', '2020-12-17 09:01:34', NULL, 1),
(9, 'Albertus Netwerk', NULL, '081235525552', NULL, 'albertus@the-netwerk.com', '$2y$10$F8hlmscoHP7O5AppsyS5BO6ANXSpzFkua89KsDYDZkkghX8hNe6o.', NULL, NULL, NULL, NULL, '2020-12-17 17:44:21', '2020-12-17 17:44:21', NULL, 1),
(10, 'Muhhamd Faruq', NULL, '089660489841', NULL, 'faruq@gmail.com', '$2y$10$Ljdr/cSjULO3uZVpx9lEKuxjEY.F5LNgvNDztV1WngWcL6KnyrzvK', NULL, NULL, NULL, NULL, '2020-12-18 13:52:30', '2020-12-18 13:52:30', NULL, 1),
(11, 'SG', NULL, '08123303168', NULL, 'sg@the-netwerk.com', '$2y$10$1hKDwbPoCcLWnEAGou3/u.JMdjYziPQjAK7KSX8//rC6YIPIyzEMO', NULL, NULL, NULL, NULL, '2020-12-18 16:12:20', '2020-12-18 16:12:20', NULL, 1),
(12, 'Vidia', NULL, '08113662068', NULL, 'vidia@the-netwerk.com', '$2y$10$8pBsodMFq9itjrUPDrN7VOvC4aq./.0sm9l4yTxcQxy/gO3aayWbu', NULL, NULL, NULL, NULL, '2020-12-21 01:19:08', '2020-12-29 10:17:47', NULL, 0),
(13, 'Vidia Mustika Dewi', NULL, '08113662068', NULL, 'vidiamustikadewi@gmail.com', '$2y$10$f1yaIHD05WogKBvqc/xBsejAlnJhwkq6UoChvC1/7lfhiRM0tNCfu', NULL, NULL, NULL, NULL, '2020-12-21 09:21:12', '2020-12-29 10:17:20', NULL, 0),
(14, 'Izak Jenie', NULL, '08119502673', NULL, 'izak.jenie@gmail.com', '$2y$10$3yVRnJx.lhp/Chbdl5XpbuHMWLfd8nwdUrbNTJrHTBgdKy3Y/aK36', NULL, NULL, NULL, NULL, '2020-12-22 04:25:58', '2020-12-22 04:30:55', NULL, 1),
(15, 'Test JASK', NULL, '0818809609', NULL, 'praf3ani@gmail.com', '$2y$10$zZ1rpkDCdNFxupiFKI.zpOfyMjFCxKDB4PbY8Fupx6nVJQCBttd4C', NULL, NULL, NULL, NULL, '2020-12-22 04:31:33', '2020-12-22 04:31:33', NULL, 1),
(16, 'Test 291220', NULL, '08113662068', NULL, 'test29@gmail.com', '$2y$10$t5EtS1aFoeKHs.AGAi6O9.nn8LK89147TQfVVRW6/1Mq.PxXGNv5q', NULL, NULL, NULL, NULL, '2020-12-29 10:18:56', '2020-12-29 10:18:56', NULL, 1),
(17, 'Imelda', NULL, '0818727347', NULL, 'imelda1702@yahoo.com', '$2y$10$HmDCVXEQSEMIKVy8AJywheT3a1Pm1vs/mEZo4gK.xsX58QC90RJ3a', NULL, NULL, NULL, NULL, '2020-12-29 12:59:38', '2020-12-29 12:59:38', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','former') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `volunteers`
--

INSERT INTO `volunteers` (`id`, `name`, `designation`, `photo`, `facebook`, `google_plus`, `twitter`, `linkedin`, `status`) VALUES
(2, 'Badruddoza Chowdhur', 'Web Designer', 'U6rzzzzz.jpg', 'https://www.facebook.com', 'https://www.google.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'active'),
(3, 'Chowdhury', 'Office Manager', 'Fkuzzzzz.jpg', 'facebook.com', 'facebook.com', 'facebook.com', 'facebook.com', 'active'),
(4, 'Badruddoza', 'Owner', 'Jc9zzzzz.jpg', 'https://www.facebook.com', 'https://www.google.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'active'),
(5, 'Chowdhury', 'Designer', 'BVWzzzzz.jpg', 'https://www.facebook.com', 'https://www.google.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `campid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `acc_phone` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `code_scripts`
--
ALTER TABLE `code_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site_language`
--
ALTER TABLE `site_language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `split_section`
--
ALTER TABLE `split_section`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `code_scripts`
--
ALTER TABLE `code_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT untuk tabel `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `service_section`
--
ALTER TABLE `service_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `site_language`
--
ALTER TABLE `site_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `split_section`
--
ALTER TABLE `split_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
