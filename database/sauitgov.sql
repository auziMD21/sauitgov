-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Des 2019 pada 11.51
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sauitgov`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cobitisasi`
--

CREATE TABLE `cobitisasi` (
  `id_c` int(11) NOT NULL,
  `id_perusahaan` int(11) NOT NULL,
  `indikator` text,
  `misi` text NOT NULL,
  `masalah` text NOT NULL,
  `rid_ITB` varchar(50) DEFAULT NULL,
  `rid_ITG` text NOT NULL,
  `rid_ITP` text NOT NULL,
  `rid_quisioner` text NOT NULL,
  `waktu_pelaksanaan` datetime NOT NULL,
  `partisipan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cobitisasi`
--

INSERT INTO `cobitisasi` (`id_c`, `id_perusahaan`, `indikator`, `misi`, `masalah`, `rid_ITB`, `rid_ITG`, `rid_ITP`, `rid_quisioner`, `waktu_pelaksanaan`, `partisipan`) VALUES
(2, 5, 'Top Down', 'Pengembangan perangkat IT, agar mempermudah kinerja arsitektur IT$Pengembangan segala macam softwere yang dibutuhkan perusahaan ', '', '1', '2,14,17,18,19,20,21,22,2,18,2,4,12,20,26,6,7,11,1,5,6,11,28,7,8,11,13,5,25,28,9,24,5,24,1,5,25', '1,4,10,31,34,9,22,26,29,32,9,27,32,9,6,22,28,29,6,17,22,6,17,21,22,29,30,32,6,16,21,29,1,4,10,31,34,9,1,4,10,31,34,2,28,5,6,18,19,23,31,34,6,17,22,16,22,11,12,16,3,12,15,2,14,17,1,2,4,10,11,16,17,18,20,31,2,4,7,13,11,12,16,2,14,17,5,23,31,34,3,12,15,13,15,2,14,17,6,14,17,24,25,2,4,7,13,8,10,5,23,31,34,7,15,5,23,2,4,7,13,5,23,1,2,4,10,11,16,17,18,20,31,2,4,7,13,8,10', '9.82', '2019-10-22 13:40:23', 3),
(5, 3, 'Buttom Up', '', 'Ini Masalah nya', '1', '24', '5,23', '4.3333333333333', '2019-10-24 23:23:16', 1),
(6, 2, 'Buttom Up', '', ' aplikasi yang sedang berjalan lumayan lelet apabila di gunakan pada jam kerja dari jam 10 - 12 ketika sistem sudah di gunakan secara bersamaan\r\nhipotesis awal dikarenakan database yang digunakan masih menggunakan database sql server 2008', '3,6,8,9,10,11,16', '2,18,3,10,16,22,7,8,10,24,2,4,12,20,26,6,7,11,7,8,13,15,24,5,25,28', '1,4,10,31,34,9,8,14,18,19,24,25,27,30,19,8,14,16,17,27,6,16,21,29,3,12,15,13,15,19,5,23,1,4,10,31,34,2,28,5,6,18,19,23,31,34,6,17,22,16,22,11,12,16,3,12,15,2,14,17,3,12,15,13,15,6,14,17,24,25,3,13,20,24,26,5,23,2,4,7,13,8,10,5,23,31,34', '5.8375634517766', '2019-10-28 14:20:54', 2),
(7, 3, 'Buttom Up', '', 'Lambatnya penanganan masalah IT yang ada', '1', '24', '5,23', '1.3333333333333', '2019-10-29 13:01:54', 1),
(9, 1, 'Buttom Up', '', 'integrasi data belum dilakukan pada aplikasi yang ada', '2', '2,14,17,18,19,20,21,22', '1,4,10,31,34,9,22,26,29,32,9,27,32,9,6,22,28,29,6,17,22,6,17,21,22,29,30,32,6,16,21,29', '', '2019-11-04 16:52:18', 1),
(11, 6, 'Buttom Up', '', 'Keterbatasan pengetahuan IT yang dimiliki pengguna sistem dilingkungan perusahaan', '3,4,6,7,9,12,13,16', '2,18,3,23,3,10,16,22,1,5,25,2,4,12,20,26,2,19,20,21,22,26,27,2,13,5,25,28', '1,4,10,31,34,9,8,14,18,19,24,25,27,30,20,21,25,30,8,14,18,19,24,25,27,30,19,8,14,16,17,27,6,16,21,29,1,2,4,10,11,16,17,18,20,31,2,4,7,13,8,10,1,4,10,31,34,2,28,5,6,18,19,23,31,34,6,17,22,16,22,1,4,10,31,34,6,22,28,29,6,17,22,6,17,21,22,29,30,32,6,16,21,29,16,22,28,32,33,34,1,4,10,31,34,6,14,17,24,25,2,4,7,13,8,10,5,23,31,34', '2.9090909090909', '2019-11-25 15:39:07', 1),
(12, 9, 'Buttom Up', '', 'Universitas indonesia adalah sebuah masalah', '1', '9', '7,15', '2.0833333333333', '2019-12-17 17:20:27', 1),
(14, 9, 'Buttom Up', '', 'IT Belum Memadai Secara keseluruhan', '1', '24', '5,23', '3', '2019-12-17 18:40:16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_audite`
--

CREATE TABLE `db_audite` (
  `id` int(11) NOT NULL,
  `nama_audite` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `id_perusahaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_audite`
--

INSERT INTO `db_audite` (`id`, `nama_audite`, `email`, `jabatan`, `username`, `password`, `status`, `id_perusahaan`) VALUES
(3, 'Auzi Madani', 'auzi.madani@students.uin-suska.ac.id', 'karyawan Bidang Pemasaran', 'auzi21', 'auzi21', 0, 3),
(7, 'Jecki Dwi Ar', 'jecki@students.uin-suska.ac.id', 'Menager', 'jeki', 'jeki', 0, 3),
(14, 'Triman', '-', 'Manager Teknik dan Jaringan', 'triman', 'triman', 0, 5),
(15, 'Are Yuannata', 'are5050@yahoo.com', 'Staf IT', 'are', 'are', 0, 5),
(16, 'ridhotillah', '-', 'teknik ', 'rido', 'rido', 0, 5),
(17, 'Dede Syahputra', 'dedeeverglade@gmail.com', 'Staff EDP (Electornic Data Processing) - Network Engineer', 'dede43', '1000tiga', 0, 2),
(18, 'Khairul Anwar', '-', 'Softwere Enginer', 'khairul', 'khairul', 0, 2),
(19, 'Benny Sukma Negara', 'bsnegara@uin-suska.ac.id', 'Kepala PTIPD', 'bsnegara@uin-suska.ac.id', 'bsnegara@uin-suska.ac.id', 1, 1),
(20, 'Yogi Yudistira', '-', 'Kasubid pengembangan sistem informasi', 'yogi', '123456789', 0, 6),
(21, 'Alif Alhadi', '-', 'Staf IT', 'alif123', 'alif123', 0, 3),
(22, 'Bayu Sugara', '-', 'Menejer IT', 'b', 'b', 0, 7),
(23, 'abc', 'abc', 'abc', 'c', 'c', 0, 7),
(27, 'Muhammad Resky', 'roy@gmail.com', 'Direksi Perusahaan', 'roy', 'roy', 0, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_auditor`
--

CREATE TABLE `db_auditor` (
  `id_auditor` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_auditor`
--

INSERT INTO `db_auditor` (`id_auditor`, `nama_lengkap`, `alamat`, `no_hp`, `email`, `username`, `pw`) VALUES
(1, 'Teddi D, M.T.I', 'Gang Asia, Pekanbaru', 811753003, 'teddi_d@uin-suska.ac.id', 'td', 'td'),
(2, 'Novriyanto, S.T, M.Sc', 'Kota Pekanbaru, Provinsi Riau', 9757888, 'novriyanto@uin-suska.ac.id', 'paknov', 'paknov');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_quisioner`
--

CREATE TABLE `db_quisioner` (
  `id_quisioner` int(11) NOT NULL,
  `pertanyaan` text,
  `Id_ITP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_quisioner`
--

INSERT INTO `db_quisioner` (`id_quisioner`, `pertanyaan`, `Id_ITP`) VALUES
(1, 'Apakah sistem perusahaan yang digunakan saat ini sesuai dengan bisnis yang ada?', 1),
(2, 'Apakah perencanaan strategis bisnis dan TI  pada perusahaan sudah selaras?', 1),
(3, 'Apakah TI yang digunakan di perusahaan sudah stabil?', 1),
(4, 'Apakah rencana strategis TI di perusahaan sudah terinci?', 1),
(5, 'Apakah portofolio rencana TI  taktis berasal dari rencana startegis TI?', 1),
(6, 'Apakah TI yang ada sudah secara aktif mengelola bisnis yang ada? ', 1),
(7, 'Apakah rencana TI(memfasilitasi penciptaan, penggunaan, dan pembagian informasi yang optimal oleh bisnis dengan cara yang menjaga integritas dan fleksibel, fungsional, hemat biaya, tepat waktu, aman, dan tahan terhadap kegagalan) sudah berjalan dan konsisten?', 2),
(8, 'Apakah kamus data enterprise dan sintaksis sudah dijalankan dengan baik?', 2),
(9, 'Apakah skema klasifikasi pada aplikasi sudah diberlakukan(seperti sifat data yang publik atau rahasia) ?', 2),
(10, 'Apakah integritas dan konsistensi semua data elektronik termasuk database, data warehouse, dan data arsip sudah dimanajemen dengan tepat dan baik ?', 2),
(11, 'Apakah perencanaan teknologi untuk masa depan sudah direncanakan dengan sebaik-baiknya?', 3),
(12, 'Apakah teknologi infrastuktur sudah sesuai dengan Strategi Teknologi ?', 3),
(13, 'Apakah tren dan peraturan di masa depan sudah di pantau dengan sebaik-baiknya ?', 3),
(14, 'Apakah sudah ada forum teknologi yang menyediakan pedoman teknologi , saran tentang produk infrastruktur dan panduan tentang pemilihan teknologi ke depan ?', 3),
(15, 'Apakah sudah ada panduan arsitektur TI dan panduan aplikasi-aplikasi?', 3),
(16, 'Apakah kerangka kerja proses TI untuk melaksankan rencana strategis yang sudah ditentukan?', 4),
(17, 'Apakah tata kelola TI yang ada pada perusahaan sudah ditangani secara memadai?', 4),
(18, 'Apakah status proyek sudah selesai dan dapat digunakan untuk menyelesaikan konflik?', 4),
(19, 'Apakah fungsi TI sudah termasuk kedalam struktur organisasi secara keseluruhan ?', 4),
(20, 'Apakah struktur organisasi internal dan eksternal yang ditentukan telah mencerminkan kebutuhan bisnis?', 4),
(21, 'Apakah tanggung jawab dan akuntabilitas telah memenuhi kebutuhan organisasi ?', 4),
(22, 'Apakah perusahaan sudah memiliki tim yang memeriksa kualitas produk, peralatan dan pelayanan IT?', 4),
(23, 'Apakah perusahaan sudah memahami pentingnya manajemen resiko  pengelolaan IT pada tingkat perusahaan?', 4),
(24, 'Apakah bisnis yang dijalankan sudah menggunkan prosedur dan tool IT ?', 4),
(25, 'Apakah supervisior IT sudah kompeten dalam menjalankan tugasnya ?', 4),
(26, 'Apakah pegawai IT dibagi menjadi tim yang lebih spesifik dalam bekerja ?', 4),
(27, 'Apakah perusahaan menetapkan kualifikasi tertentu saat merekrut karyawan IT ?', 4),
(28, 'Apakah karyawan IT sudah memadai dalam menjalankan tugas?', 4),
(29, 'Apakah pegawai kontrak dan konsultan telah memahami peraturan perusahaan terkait informasi \r\npenting perusahaan ?', 4),
(30, 'Apakah tim IT memiliki koordinasi dengan devisi-devisi lain secara berkala?', 4),
(31, 'Apakah perusahaan menetapkan dan memelihara kerangka kerja keuangan untuk mengelola investasi dan biaya aset dan layanan TI melalui portofolio Itenabled investasi, kas bisnis dan anggaran TI ?', 5),
(32, 'Apakah perusahaan menerapkan proses pengambilan keputusan untuk memprioritaskan alokasi sumber daya TI untuk operasi, proyek dan pemeliharaan memaksimalkan kontribusi TI?', 5),
(33, 'Apakah perusahaan menetapkan dan menerapkan praktik-praktik untuk menyiapkan anggaran yang mencerminkan prioritas yang ditetapkan oleh portofolio perusahaan yang mendukung IT?', 5),
(34, 'Apakah perusahaan menerapkan proses manajemen biaya membandingkan biaya aktual dengan anggaran?', 5),
(35, 'Apakah perusahaan menerapkan proses untuk memantau manfaat dari penyediaan dan pemeliharaan kemampuan TI yang disesuaikan?', 5),
(36, 'Apakah perusahaan menetapkan elemen lingkungan kontrol untuk TI, selaras dengan filosofi manajemen dan gaya operasi perusahaan ?', 6),
(37, 'Apakah perusahaan mengembangkan dan memelihara kerangka kerja yang mendefinisikan pendekatan keseluruhan perusahaan terhadap risiko dan kontrol TI dan yang sejalan dengan TI ?', 6),
(38, 'Apakah perusahaan telah melakukan pengembangkan dan pemelihara serangkaian kebijakan untuk mendukung strategi TI?', 6),
(39, 'Apakah perusahaan telah melakukan peluncurkan dan penegakkan kebijakan TI untuk semua staf yang relevan, sehingga mereka dibangun ke dalam dan merupakan bagian integral dari operasi perusahaan?', 6),
(40, 'Apakah perusahaan telah mengkomunikasikan kesadaran dan pemahaman tentang tujuan dan arah bisnis dan TI kepada para pemangku kepentingan dan pengguna yang tepat di seluruh perusahaan?', 6),
(41, 'Apakah perusahaan Menerapkan suatu proses untuk memastikan bahwa organisasi memiliki IT yang tepat digunakan\r\ntenaga kerja dengan keterampilan yang diperlukan untuk mencapai tujuan organisasi?', 7),
(42, 'Apakah perusahaan telah menetetapkan persyaratan kompetensi inti TI dan verifikasi bahwa persyaratan tersebut dipertahankan, menggunakan kualifikasi dan sertifikasi program yang sesuai?', 7),
(43, 'Apakah perusahaan melakukan penetapan, pantau dan awasi peran, tanggung jawab, dan kerangka kerja kompensasi untuk personel, termasuk persyaratan untuk mematuhi kebijakan dan prosedur manajemen, kode etik, dan praktik profesional?', 7),
(44, 'Apakah perusahaan telah Memberikan karyawan IT dengan orientasi yang tepat ketika dipekerjakan dan pelatihan berkelanjutan untuk mempertahankan pengetahuan, keterampilan, kemampuan mereka, kontrol internal dan kesadaran keamanan di tingkat yang diperlukan untuk mencapai tujuan organisasi.?', 7),
(45, 'Apakah perusahaan telah Meminimalkan paparan ketergantungan kritis pada individu kunci melalui penangkapan pengetahuan (dokumentasi), berbagi pengetahuan, perencanaan suksesi dan cadangan staf.', 7),
(46, 'apakah dalam proses rekrutmen TI perusahaan melakukan pemeriksaan latar belakang personil?', 7),
(47, 'Apakah perusahaan telah melakkukan evaluasi yang tepat waktu untuk dilakukan secara berkala terhadap tujuan individu yang berasal dari tujuan organisasi, menetapkan standar dan tanggung jawab pekerjaan tertentu. Karyawan harus menerima bimbingan tentang kinerja dan melakukan kapan saja sesuai?', 7),
(48, 'Apakah perusahaan mengambil tindakan bijaksana terkait perubahan pekerjaan, terutama pemutusan hubungan kerja?', 7),
(49, 'Apakah perusahaan menyediakan, pendekatan standar formal dan berkelanjutan mengenai manajemen mutu yang sesuai dengan kebutuhan bisnis ?', 8),
(50, 'Apakah perusahaan menggunakan praktek-praktek industri yang baik untuk referensi ketika meningkatkan dan menyesuaikan praktek mutu organisasi ?', 8),
(51, 'Apakah perusahaan mengadopsi dan mempertahankan standar untuk semua pengembangan dan akuisisi?', 8),
(52, 'Apakah perusahaan sudah ada manajemen mutu pada pelanggan dengan menentukan kebutuhan dan menyelaraskan dengan standar dan praktek?', 8),
(53, 'Apakah perusahaan menjaga dan secara teratur berkomunikasi mengenai keseluruhan rencana kualitas?', 8),
(54, 'Apakah perusahaan sudah ada melakukan pengukuran, pemantauan dan pencatatan informasi digunakan untuk mengambil tindakan perbaikan dan pencegahan yang tepat?', 8),
(55, 'Apakah perusahaan Menetapkan kerangka kerja manajemen risiko TI yang selaras dengan kerangka kerja manajemen risiko organisasi (perusahaan?.', 9),
(56, 'Apakah perusahaan meneTetapkan konteks di mana kerangka kerja penilaian risiko diterapkan untuk memastikan hasil yang sesuai?', 9),
(57, 'Apakah perusahaan melakukan Identifikasi peristiwa (ancaman realistis penting yang mengeksploitasi kerentanan signifikan yang berlaku) dengan potensi dampak negatif pada tujuan atau operasi perusahaan, termasuk bisnis, peraturan, hukum, teknologi, mitra dagang, sumber daya manusia dan aspek operasional?', 9),
(59, 'Apakah perusahaan Menilai secara berulang kemungkinan dan dampak dari semua risiko yang diidentifikasi, menggunakan metode kualitatif dan kuantitatif?', 9),
(60, 'Apakah perusahaan mengembangkan dan pertahankan proses respons risiko yang dirancang untuk memastikan bahwa pengendalian yang hemat biaya memitigasi risiko terhadap dasar berkelanjutan?', 9),
(61, 'Apakah perusahaan memPrioritaskan dan rencanakan kegiatan pengendalian di semua tingkatan untuk mengimplementasikan respons risiko yang diidentifikasi perlu, termasuk identifikasibiaya, manfaat dan tanggung jawab untuk pelaksanaan?', 9),
(62, 'Apakah perusahaan me-maintain project yang berhubungan dengan program investasi yang mendukung IT?', 10),
(63, 'Apakah pengerjaan project sesuai dengan framework yang digunakan?', 10),
(64, 'Apakah penetapan manajemen project sudah sesuai dengan ukuran, kompleksitas dan persyaratan \r\nperaturan dari setiap proyek?', 10),
(65, 'Apakah perusahaan berkomitmen dan berpartisipasi dalam pelaksanaan proyek dalam konteks IT? ', 10),
(66, 'Apakah perusahaan sudah mendefenisikan dan mendokumentasikan sifat dan ruang lingkup proyek untuk dikonfirmasi dan dikembangkan ?', 10),
(67, 'Apakah di perusahaan menyetujui inisiasi dari fase masing-masing proyek besar dan berkomunikasi dengan  pemangku kepentingan ?', 10),
(68, 'Apakah perusahaan memandu dan mengkontrol selama proyek dilaksanakan ?', 10),
(69, 'Apakah perusahaan menentukan tanggung jawab,hubungan, wewenang, dan kriteria kinerja dari anggota tim proyek ?', 10),
(70, 'Apakah perusahaan sudah mengidentifikasi,menganalisis, menanggapi dan mengkontrol resiko tertentu yang terkait dengan proyek ?', 10),
(71, 'Apakah perusahaan sudah menyiapkan rencana manajemen kualitas yang menggambarkan kualitas proyek ?', 10),
(72, 'Apakah perusahaan sudah menetapkan perubahan kontrol sistem untuk masing-masing proyek ?', 10),
(73, 'Apakah perusahaan mengidentifikasi jaminan yang diperlukan untuk akreditasi sistem baru atau memodifikasi nya selama perencanaan proyek?', 10),
(74, 'Apakah perusahaan sudah mengidentifikasi dampak dari rencana pada proyek dan secara keseluruhan  ? ', 10),
(75, 'Apakah perusahaan mengidentifikasi dan melaporkan segala kegitan yang diperlukan untuk mencapai hasil yang direncanakan?', 10),
(76, 'Apakah memprioritaskan persyaratan fungsional dan teknik bisniss yang mencakup seluruh ruang lingkup telah dilaksanakan?', 11),
(77, 'Apakah mengidentifikasi dan mendokumentasikan resiko yang akan terjadi kedepan telah dilakukan?', 11),
(78, 'Apakah sudah layak dan sesuai manajemen bisnis yang dijalankan?', 11),
(80, 'Apakah kebutuhan bisnis terhadap spesifikasi desain tingkat tinggi untuk akuisisi software,  sudah diterjemahkan dengan baik ?', 12),
(81, 'Apakah rincian desain dan persyaratan aplikasi software sudah disiapkan dengan matang ?', 12),
(82, 'Apakah kontrol bisnis agar pemrosesan akurat,lengkap,tepat waktu,resmi dan dapat diaudit sudah diimplementasikan dengan tepat?', 12),
(83, 'Apakah keamanan aplikasi terhadap klasifikasi,arsitektur informasi, kemanan informasi dan toleransi resiko sudah dijelaskan dengan benar?', 12),
(84, 'Apakah perangkat aplikasi yang diperoleh untuk memenuhi tujuan bisnis sudah dikonfigurasi dan diaplikasikan dengan  tepat?', 12),
(85, 'Ketika terjadi perubahan besar pada sistem, apakah sistem yang baru mengikuti pengembangan sistem lama sudah teridentifikasi dan berjalan dengan baik?', 12),
(86, 'Apakah fungsionalitas otomatis pengembagan spesifikasi desain, dokumentasi standar dan persetujuan sudah dipastikan dengan benar?', 12),
(87, 'Apakah sumber daya dan pelaksaanan rencana QA sudah dikembangkan dengan baik demi menciptakan kualis dan mutu prosedur organisasi?', 12),
(88, 'Apakah status persyaratan individu sudah terlacak secara menyeluruh baik persyaratan ditolak maupun diterima?', 12),
(89, 'Apakah strategi dan rencana untuk pemeliharaan aplikasi software sudah dikembangkan dengan baik?', 12),
(90, 'Apakah perusahaan merencanakan Akuisisi Infrastruktur Teknologi Menghasilkan rencana untuk akuisisi, implementasi dan pemeliharaan infrastruktur teknologi yang memenuhi mapan persyaratan fungsional dan teknis bisnis dan sesuai dengan arahan teknologi organisasi?', 13),
(91, 'Apakah perusahaan melakukan pemantauan dan mengevaluasi penggunaan komponesn infrastruktur IT?', 13),
(92, 'Apakah perusahaan melakukan Pemeliharaan Infrastruktur Kembangkan strategi dan rencana untuk pemeliharaan infrastruktur, dan pastikan bahwa perubahan dikendalikan sesuai dengan organisasi ubah prosedur manajemen?', 13),
(93, 'Apakah perusahaan membangun lingkungan pengembangan dan pengujian untuk mendukung kelayakan dan integrasi pengujian infrastruktur yang efektif dan efisien komponen?', 13),
(94, 'Apakah rencana mengidentifikasi dan mendokumentasikan semua aspek teknis, operasional, dan penggunaan sudah dikembangkan?', 14),
(95, 'Apakah pengetahuan manajemen bisnis tentang ownership sistem dan data sudah diketahui oleh individu dengan baik?', 14),
(96, 'Apakah end user sudah memiliki pengetahuan dan keterampilan dalam menggunakan sistem secara efektif dan efisien?', 14),
(97, 'Apakah staf operation dan staf technical support memiliki pengetahuan dan keterampilan secara efektif dan efisien dalam mengembangkan, mendukung, dan memelihara sistem serta infrastruktur terkait?', 14),
(98, 'Apakah serangkaian prosedur dan standar telah konsisten dengan keseluruhan proses organisasi bisnis procurement?', 15),
(99, 'Apakah sudah dibuat prosedur untuk menetapkan, memodifikasi, dan mengakhiri kontrak untuk supplier?', 15),
(100, 'Apakah supplier sudah dipilih berdasarkan persyaratan yang sudah ditentukan?', 15),
(101, 'Apakah kepentingan organisasi dalam semua perjanjian kontrak akuisisi (termasuk hak dan kewajiban) telah dilindungi dan diterapkan? ', 15),
(102, 'Apakah dilakukan perubahan manajemen terhadap standar dan prosedur yang berjalan sesuai dengan permintaan?', 16),
(103, 'Apakah semua permintaan untuk perubahan sudah dinilai dengan cara terstruktur?', 16),
(104, 'Apakah ada ketetapan proses terhadap perubahan yang bersifat darurat?', 16),
(105, 'Apakah dilakukan pendokumentasian terhadap perubahan yang ditolak, status yang disetujui dan dalam proses perubahan, serta perubahan lengkap?', 16),
(106, 'Apakah setiap kali perubahan diterapkan, dilakukan dokumentasi pembaharuan sistem terkait dan user, serta prosedur yang sesuai?', 16),
(107, 'Apakah pelatihan dan rencana implementasi, serta materi terkait pengembangan sistem informasi, implementasi atau modifikasi proyek telah sesuai?', 17),
(108, 'Apakah rencana uji telah sesuai berdasarkan standar organisasi yang mendefinisikan peran, tanggung jawab, dan kriteria masuk dan keluar?', 17),
(109, 'Apakah rencana implementasi dan fallback/backout sudah mendapatkan persetujuan dari pihak terkait?', 17),
(110, 'Apakah perwakilan lingkungan uji yang aman dari lingkungan operasi yang direncanakan relatif terhadap keamanan, internal kontrol, praktik operasional, kualitas data dan persyaratan privasi, serta beban kerja telah ditetapkan?', 17),
(111, 'Apakah konversi data dan migrasi infrastruktur telah direncanakan sebagai bagian dari metode pengembangan organisasi, termasuk jejak audit, rollback dan fallback?', 17),
(112, 'Apakah sudah dipastikan bahwa rencana tersebut telah mempertimbangkan keamanan dan kinerja?', 17),
(113, 'Apakah owner dan TI stakeholder telah melakukan evaluasi hasil dari proses pengujian yang telah ditentukan oleh rencana pengujian?', 17),
(114, 'Apakah persetujuan dari stakeholder, seperti user, owner sistem, dan manajemen operasional sudah didapatkan?', 17),
(115, 'Apakah permintaan tinjauan pasca-implementasi telah ditetapkan dalam rencana implementasi?', 17),
(116, 'Apakah perusahaan sudah meningkatkan tingkat kepuasan layanan pengguna terhadap layanan yang disediakan?', 18),
(117, 'Apakah perusahaan sudah meningkatkan karakteristik layanan dan mengatur persyaratan bisnis yang ada pada perusahaan ini?', 18),
(118, 'Apakah perusahaan sudah memenuhi segala kebutuhan yang diperlukan oleh para pengguna aplikasi yang ada di perusahaan ini?', 18),
(119, 'Apakah Perusahaan sudah memenuhi segala tingkat layanan  sesuia standart?', 18),
(120, 'Apakah dengan memantau kinerja aplikasi layanan yang tersedia pada perusahaan ini dapat meningkatkan layanan yang tersedia?', 18),
(121, 'Apakah dengan cara memantau segala penyedia layanan baik dari pihak internal maupun pihak eksternal(pihak ketiga) bahwa penyedia layanan bekerja dengan efisien?', 18),
(124, 'Apakah perusahaan telah mengidentifikasi semua pemasok dokumentasi dari reklame teknis dan organisasi?', 19),
(125, 'Apakah perusahaan telah memproses cara mengatur hubungan dengan pelanggan?', 19),
(126, 'Apakah perusahaan mengidentifikasi dan mengurangi risiko yang berkaitan dengan kemampuan pemasok untuk penyampaian pelayanan yang efektif dan efisien?', 19),
(127, 'Apakah perusahaan telah memantau penyampaian layanan untuk memastikan pemasok mematuhi perjanjian?', 19),
(128, 'Apakah perusahaan telah memproses perencanaan kapasitas dan kinerja dalam memanfaatkan teknik pemodelan yang tepat untuk menghasilkan perkiraan kinerja saat ini?', 20),
(129, 'Apakah perusahaan telah menilai kapasitas kinerja saat ini dari sumber daya IT untuk menentukan kapasitas yang cukup?', 20),
(130, 'Apakah perusahaan telah melakukan perkiraan kinerja dan kapasitas sumber daya IT secara berkala untuk meminimalkan risiko gangguan layanan?', 20),
(131, 'Apakah perusahaan dapat memberikan kapasitas dan kinerja yang dibutuhkan dengan ketentuan seperti memprioritaskan tugas, toleransi kesalahan, dan alokasi sumber daya?', 20),
(132, 'Apakah perusahaan telah memantau kinerja sumber daya IT untuk mempertahankan dan menyempurnakan kinerja dalam IT?', 20),
(133, 'Tujuan dari kerangka kerja adalah untuk membantu pemprosesan dalam pekerjaan yang lebih efisien, apakah kerangka kerja di sini sudah diterapkan dalam semua aspek pekerjaan?', 21),
(134, 'Apakah rancangan dari proses bisnis yang sudah diterapkan dapat mengatasi dampak permasalahan yang ada?', 21),
(135, 'Apakah sumber daya TI yang ada sudah berkesinambungan dalam pemulihan ketahanan?', 21),
(136, 'Apakah prosedur pengendalian selalu menerapkan pemeliharaan yang mencerminkan kebutuhan bisnis?', 21),
(137, 'Apakah dalam pemulihan sistem selalu menyediakan seperti dokumentasi, pelaporan hasil tes dll?', 21),
(138, 'Apakah pihak yang berkepentingan selalu memberikan arahan atau pelatihan mengenai prosedur, peran dan tanggung jawab apabila terjadi incident?', 21),
(139, 'Apakah perusahaan sudah ada strategi untuk mendistribusikan perencanaan untuk memastikan rencana tersebut didistribusikan dengan baik, aman dan tersedia secara tepat?', 21),
(140, 'Apakah selalu ada tindakan ketika pemulihan untuk melanjutkan layanan?', 21),
(141, 'Apakah IT manajemen memastikan pengaturan seperti konten, keamanan dll secara berkala?', 21),
(142, 'Apakah manajemen TI telah menentukan dan menetapkan prosedur kelayakan pembaruan setelah sistem kembali beroperasi?', 21),
(143, 'Apakah perusahaan mengelola keamanan TI pada tingkat organisasi tertinggi yang sesuai, sehingga pengelolaan tindakan keamanan sejalan dengan bisnis?', 22),
(144, 'Apakah perusahaan menerjemahkan persyaratan bisnis, risiko, dan kepatuhan ke dalam keseluruhan rencana keamanan TI, dengan mempertimbangkan infrastruktur TI dan budaya keamanan?', 22),
(145, 'Apakah perusahaan melakukan Konfirmasikan bahwa hak akses pengguna ke sistem dan data sejalan dengan kebutuhan bisnis yang ditentukan dan didokumentasikan serta pekerjaan itu persyaratan terlampir pada identitas pengguna?', 22),
(146, 'Apakah perusahaan menyertakan prosedur persetujuan yang menjabarkan data atau pemilik sistem yang memberikan akses\r\nhak istimewa?', 22),
(147, 'Apakah perusahaan melakukan pengujian dan pemantauan implementasi keamanan TI secara proaktif?', 22),
(148, 'Apakah perusahaan Mendefinisikan dan mengkomunikasikan karakteristik insiden keamanan potensial dengan jelas sehingga dapat diklasifikasikan dengan benar dan ditangani oleh insiden dan proses manajemen masalah?', 22),
(149, 'Apakah memBuat teknologi terkait keamanan tahan terhadap gangguan, dan jangan ungkapkan dokumentasi keamanan yang tidak perlu?', 22),
(150, 'Apakah perusahaan menentukan bahwa ada kebijakan dan prosedur untuk mengatur pembangkitan, perubahan, pencabutan, penghancuran, distribusi, sertifikasi, penyimpanan, pemasukan, penggunaan dan pengarsipan kunci kriptografi untuk memastikan perlindungan kunci terhadap modifikasi danpengungkapan yang tidak sah? ', 22),
(151, 'Apakah perusahaan meletakkan langkah-langkah pencegahan, detektif dan korektif di tempat (terutama patch keamanan terbaru dan kontrol virus) di seluruh organisasi untuk melindungi sistem dan teknologi informasi dari malware?', 22),
(152, 'Apakah perusahaan Gunakan teknik keamanan dan prosedur manajemen terkait (mis., Firewall, peralatan keamanan, segmentasi jaringan, intrusi\r\ndeteksi) untuk mengotorisasi akses dan mengontrol arus informasi dari dan ke jaringan?\r\n', 22),
(153, 'Apakah perusahaan melakukan pengontrolan pertukaran data transaksi yang bertujuan memberikan keaslian data perusahaan ?', 22),
(154, 'Apakah perusahaan melakukan Identifikasi semua biaya TI, dan petakan ke layanan TI untuk mendukung model biaya yang transparan?', 23),
(155, 'Apakah perusahaan Tangkap dan mengalokasikan biaya aktual sesuai dengan model biaya perusahaan?', 23),
(156, 'Apakah perusahaan menetapkan dan menggunakan model penetapan biaya TI berdasarkan definisi layanan yang mendukung perhitungan tarif tolak bayar per layanan?', 23),
(157, 'Apakah perusahaan melakukan peninjauan dan pematokan secara berkala kesesuaian model biaya / isi ulang untuk mempertahankan relevansi dan kesesuaiannya dengan aktivitas bisnis dan TI yang berkembang?', 23),
(158, 'Apakah ada penetapan dan pembaharuan kurikulum secara berkala untuk setiap karyawan?', 24),
(159, 'Apakah setelah didapatkan kebutuhan pendidikan dan pelatihan untuk karyawan sudah ditunjuk pelatih dan diatur jadwal pelatihan yang tepat waktu ?', 24),
(160, 'Apakah dilakukan evaluasi terhadap pendidikan dan pelatihan yang telah diberikan untuk relevansi, kualitas, efektivitas, retensi pengetahuan, biaya dan nilai ?', 24),
(161, 'Sistem layanan yang disediakan perusahaan sudah mencakup semua kebutuhan yang diperlukan oleh pengguna ?', 25),
(162, 'Apakah perusahaan sudah mengantisipasi segala insiden atau memanajemen setiap masalah yang ada pada sistem ?', 25),
(163, 'Apakah Sistem yang digunakan sudah memenuhi segala pelaporan kendala yang terdapat pada aplikasi yang terdapat pada perusahaan?', 25),
(164, 'Apakah Segala pelaporan masalah sudah ter-back up oleh sistem yang tersedia dan memberikan informasi yang tepat kepada pengguna ?', 25),
(165, 'Apakah pelaporan segala aktivitas yang dilakukan oleh pengguna sehingga pengembang sistem dapat mengetahui segala kebutuhan yang diperlukan oleh pengguna dan menghindari terjadinya kesalahan yang sama terulang?', 25),
(167, 'Apakah perusahaan telah menggunakan alat pendukung dan repositori pusat untuk memuat semua informasi yang relevan tentang item konfigurasi?', 26),
(168, 'Apakah perusahaan Menetapkan prosedur konfigurasi untuk mendukung manajemen dan pencatatan semua perubahan ke repositori konfigurasi?', 26),
(169, 'Apakah perusahaan melakukan peninjauan data konfigurasi secara berkala untuk memverifikasi dan mengkonfirmasi integritas konfigurasi saat ini dan historis?', 26),
(170, 'Apakah perusahaan menggunakan proses/langkah-langkah dalam mengidentifikasi setiap masalah yang ada?', 27),
(171, 'Apakah perusahaan mempertimbangkan setiap akar penyebab dari semua permasalahan?', 27),
(172, 'Apakah sistem dapat memecahkan setiap masalah yang ada atau mengetahui masalah yang ada?', 27),
(173, 'Apakah perusahaan sudah mengintegrasikan proses terkait konfigurasi, insiden, dan manajemen masalah secara efektif?', 27),
(174, 'Apakah perusahaan melakukan Verifikasi bahwa semua data yang diharapkan untuk diproses diterima dan diproses sepenuhnya, akurat, dan tepat waktu, serta semua output dikirimkan sesuai dengan persyaratan bisnis?', 28),
(175, 'Apakah perusahaan menetapkan dan menerapkan prosedur untuk penyimpanan, retensi, dan pengarsipan data yang efektif dan efisien untuk memenuhi tujuan bisnis kebijakan keamanan dan persyaratan peraturan organisasi?', 28),
(176, 'Apakah perusahaan menetapkan dan prosedur untuk mempertahankan inventaris media yang disimpan dan diarsipkan untuk memastikan kegunaan dan integritasnya?', 28),
(177, 'Apakah perusahaan menetapkan dan prosedur untuk memastikan bahwa persyaratan bisnis untuk perlindungan data sensitif dan perangkat lunak dipenuhi saat data dan perangkat keras dibuang atau ditransfer?', 28),
(178, 'Apakah perusahaan menetapkan dan prosedur untuk pencadangan dan pemulihan sistem, aplikasi, data, dan dokumentasi yang sejalan dengan bisnis persyaratan dan rencana kesinambungan ?', 28),
(179, ' Apakah perusahaan menetapkan dan prosedur untuk mengidentifikasi dan menerapkan persyaratan keamanan yang berlaku untuk penerimaan, pemrosesan, penyimpanan dan output data untuk memenuhi tujuan bisnis?', 28),
(180, 'Apakah perusahaan menentukan dan memilih situs fisik untuk peralatan TI untuk mendukung strategi teknologi yang terkait dengan strategi bisnis?', 29),
(181, 'Apakah perusahaan menetapkan dan menerapkan langkah-langkah keamanan fisik sesuai dengan persyaratan bisnis untuk mengamankan lokasi dan aset fisik?', 29),
(182, 'Apakah perusahaan menetapkan dan menerapkan  prosedur untuk memberikan, membatasi, dan mencabut akses ke bangunan, bangunan, dan area sesuai dengan kebutuhan bisnis,termasuk keadaan darurat?', 29),
(183, 'Apakah perusahaan merancang dan menerapkan langkah-langkah untuk perlindungan terhadap faktor lingkungan?', 29),
(184, 'Apakah perusahaan melakukan pengelolaan fasilitas, termasuk daya dan peralatan komunikasi, sesuai dengan hukum dan peraturan, teknis dan bisnis?', 29),
(185, 'Apakah staf menentukan, menerapkan dan memelihara prosedur untuk operasi TI?', 30),
(186, 'Apakah semua penjadwalan pekerjaan sudah terlaksana selama ini?', 30),
(187, 'Apakah sudah terlaksana selama ini penerapan prosedur untuk memantau infrastruktur TI?', 30),
(188, 'Apakah sudah diterapkannya selama ini dokumen manajemen inventaris untuk aset TI?', 30),
(189, 'Apakah sudah berjalan prosedur untuk memastikan pemeliharaan infrastruktur yang tepat?', 30),
(190, 'Apakah di Perusahaan telah menetapkan kerangka kerja pemantauan solusi dan penyediaan layanan TI?', 31),
(191, 'Apakah di perusahaan telah menetapkan proses untuk mengumpulkan data tepat waktu dan akurat untuk melaporkan kemajuan?', 31),
(192, 'Apakah di perusahaan telah diterapkan monitoring kinerja yang mencatat target dan pengukuran kinerja TI?', 31),
(193, 'Apakah di perusahaan telah melakukan pemantauan secara berkala terhadap kinerja TI?', 31),
(194, 'Apakah di perusahaan telah di kembangkan laporan manajemen tentang kontribusi bisnis IT khususnya dalam hal kinerja perusahaan?', 31),
(195, 'Apakah di perusahaan telah ada identifikasi dan tindakan perbaikan masalah berdasarkan monitoring kinerja IT?', 31),
(196, 'Apakah perusahaan secara terus-menerus melakukan pemantauan, perbandingkan, dan peningkatkan lingkungan kendali TI dan kerangka kerja kendali untuk memenuhi tujuan organisasi?', 32),
(197, 'Apakah perusahaan melakukan pemantauan dan mengevaluasi efisiensi dan efektivitas kontrol tinjauan manajerial TI internal?', 32),
(198, 'Apakah perusahaan melakukan Identifikasi pengecualian kontrol, dan analisis dan identifikasi akar penyebabnya. Tingkatkan pengecualian kontrol dan laporkan ke pemangku kepentingan dengan tepat?', 32),
(199, 'Apakah perusahaan mengevaluasi kelengkapan dan keefektifan kendali manajemen atas proses, kebijakan, dan kontrak TI melalui berkelanjutan program penilaian diri?', 32),
(200, 'Apakah perusahaan mendapatkan jaminan pengendalian internal tentang kelengkapan dan efektivitas kontrol internal melalui tinjauan pihak ketiga?', 32),
(201, 'Apakah perusahaan melakukan penilaian status kontrol internal penyedia layanan eksternal?', 32),
(202, 'Apakah perusahaan melakukan Identifikasi terhadap penerapan tindakan perbaikan yang timbul dari penilaian dan pelaporan kontrol?', 32),
(203, 'Apakah perusahaan melakukan Identifikasi Persyaratan Kepatuhan Hukum, Peraturan dan Kontraktual Eksternal secara berkelanjutan untuk dimasukkan ke dalam kebijakan, standar, prosedur, dan metodologi TI organisasi?', 33),
(204, 'Apakah perusahaan melakukan peninjauan dan penyesuaian kebijakan, standar, prosedur, dan metodologi TI untuk memastikan legal, pengaturan, dan kontraktual persyaratan yang ditangani? ', 33),
(205, 'Apakah perusahaan mengkonfirmasikan kepatuhan terhadap kebijakan, standar, prosedur, dan metodologi TI dengan persyaratan hukum dan peraturan?', 33),
(206, 'Apakah perusahaan Memperoleh dan melaporkan jaminan kepatuhan dan kepatuhan terhadap semua kebijakan internal yang berasal dari arahan internal atau hukum eksternal?', 33),
(207, 'Apakah Perusahaan Mengintegrasikan pelaporan TI tentang persyaratan hukum, peraturan, dan kontrak dengan output serupa dari fungsi bisnis lainnya?', 33),
(208, 'Apakah perusahaan menentukan, menetapkan dan menyelaraskan kerangka kerja tata kelola TI dengan keseluruhan tata kelola perusahaan dan lingkungan kontrol?', 34),
(209, 'Apakah perusahaan telah bekerja sama dengan dewan dan badan tata kelola yang sudah mapan, seperti komite strategi TI, untuk memberikan arahan strategis manajemen relatif terhadap TI?', 34),
(210, 'Apakah perusahaan telah menerapkan pendekatan disiplin untuk portofolio, program dan manajemen proyek, bersikeras bahwa bisnis mengambil kepemilikan semua investasi yang mendukung TI dan TI memastikan optimalisasi biaya untuk memberikan kemampuan dan layanan TI?', 34),
(211, 'Apakah perusahaan mengawasi investasi, penggunaan, dan pengalokasian sumber daya TI melalui penilaian berkala atas inisiatif dan operasi TI untuk memastikan sumber daya yang sesuai dan keselarasan dengan tujuan strategis saat ini?', 34),
(212, 'Apakah perusahaan telah bekerja sama dengan dewan  untuk menentukan selera perusahaan akan risiko TI?', 34),
(213, 'Apakah perusahaan mengkonfirmasikan bahwa sasaran TI yang disepakati telah dipenuhi atau dilampaui, atau bahwa kemajuan menuju sasaran TI memenuhi harapan?', 34),
(214, 'Apakah perusahaan  mendapatkan jaminan independen (internal atau eksternal) tentang kesesuaian TI dengan undang-undang dan peraturan yang relevan dengan kinerja TI yang efektif dan efisien?', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan_itb_itg`
--

CREATE TABLE `hubungan_itb_itg` (
  `id_H_ITB_ITG` int(11) NOT NULL,
  `id_ITB` int(11) NOT NULL,
  `id_ITG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungan_itb_itg`
--

INSERT INTO `hubungan_itb_itg` (`id_H_ITB_ITG`, `id_ITB`, `id_ITG`) VALUES
(1, 1, 24),
(2, 2, 2),
(3, 2, 14),
(4, 2, 17),
(5, 2, 18),
(6, 2, 19),
(7, 2, 20),
(8, 2, 21),
(9, 2, 22),
(10, 3, 2),
(11, 3, 18),
(12, 4, 3),
(13, 4, 23),
(14, 5, 5),
(15, 5, 24),
(16, 6, 3),
(17, 6, 10),
(18, 6, 16),
(19, 6, 22),
(20, 7, 1),
(21, 7, 5),
(22, 7, 25),
(23, 8, 7),
(24, 8, 8),
(25, 8, 10),
(26, 8, 24),
(27, 9, 2),
(28, 9, 4),
(29, 9, 12),
(30, 9, 20),
(31, 9, 26),
(32, 10, 6),
(33, 10, 7),
(34, 10, 11),
(35, 11, 7),
(36, 11, 8),
(37, 11, 13),
(38, 11, 15),
(39, 11, 24),
(40, 12, 2),
(41, 12, 19),
(42, 12, 20),
(43, 12, 21),
(44, 12, 22),
(45, 12, 26),
(46, 12, 27),
(47, 13, 2),
(48, 13, 13),
(49, 14, 1),
(50, 14, 5),
(51, 14, 6),
(52, 14, 11),
(53, 14, 28),
(54, 15, 7),
(55, 15, 8),
(56, 15, 11),
(57, 15, 13),
(58, 16, 5),
(59, 16, 25),
(60, 16, 28),
(61, 17, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan_itg_itp`
--

CREATE TABLE `hubungan_itg_itp` (
  `id` int(11) NOT NULL,
  `id_ITG` int(11) DEFAULT NULL,
  `id_ITP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungan_itg_itp`
--

INSERT INTO `hubungan_itg_itp` (`id`, `id_ITG`, `id_ITP`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 10),
(5, 1, 11),
(6, 1, 16),
(7, 1, 17),
(8, 1, 18),
(9, 1, 20),
(10, 1, 31),
(11, 2, 1),
(12, 2, 4),
(13, 2, 10),
(14, 2, 31),
(15, 2, 34),
(16, 3, 8),
(17, 3, 14),
(18, 3, 18),
(19, 3, 19),
(20, 3, 24),
(21, 3, 25),
(22, 3, 27),
(23, 3, 30),
(24, 4, 2),
(25, 4, 28),
(26, 5, 2),
(27, 5, 4),
(28, 5, 7),
(29, 5, 13),
(30, 6, 11),
(31, 6, 12),
(32, 6, 16),
(33, 7, 3),
(34, 7, 12),
(35, 7, 15),
(36, 8, 13),
(37, 8, 15),
(38, 9, 7),
(39, 9, 15),
(40, 10, 19),
(41, 11, 2),
(42, 11, 14),
(43, 11, 17),
(44, 12, 5),
(45, 12, 6),
(46, 12, 18),
(47, 12, 19),
(48, 12, 23),
(49, 12, 31),
(50, 12, 34),
(51, 13, 6),
(52, 13, 14),
(53, 13, 17),
(54, 13, 24),
(55, 13, 25),
(56, 14, 9),
(57, 14, 22),
(58, 14, 26),
(59, 14, 29),
(60, 14, 32),
(61, 15, 3),
(62, 15, 13),
(63, 15, 20),
(64, 15, 24),
(65, 15, 26),
(66, 16, 8),
(67, 16, 14),
(68, 16, 16),
(69, 16, 17),
(70, 16, 27),
(71, 17, 9),
(72, 17, 27),
(73, 17, 32),
(74, 18, 9),
(75, 19, 6),
(76, 19, 22),
(77, 19, 28),
(78, 19, 29),
(79, 20, 6),
(80, 20, 17),
(81, 20, 22),
(82, 21, 6),
(83, 21, 17),
(84, 21, 21),
(85, 21, 22),
(86, 21, 29),
(87, 21, 30),
(88, 21, 32),
(89, 22, 6),
(90, 22, 16),
(91, 22, 21),
(92, 22, 29),
(93, 23, 20),
(94, 23, 21),
(95, 23, 25),
(96, 23, 30),
(97, 24, 5),
(98, 24, 23),
(99, 25, 8),
(100, 25, 10),
(101, 26, 16),
(102, 26, 22),
(103, 27, 28),
(104, 27, 32),
(105, 27, 33),
(106, 27, 34),
(107, 28, 5),
(108, 28, 23),
(109, 28, 31),
(110, 28, 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_bussines`
--

CREATE TABLE `it_bussines` (
  `id_ITB` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `nomor` varchar(3) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `it_bussines`
--

INSERT INTO `it_bussines` (`id_ITB`, `kategori`, `nomor`, `keterangan`) VALUES
(1, 'Segi Finansial', '1', 'Menciptakan pengembalian investasi yang baik dari investasi-investasi bisnis TI yang memungkinkan'),
(2, 'Segi Finansial', '2', 'Mengelola risiko TI bisnis terkait.'),
(3, 'Segi Finansial', '3', 'Meningkatkan transparansi dan tata kelola perusahaan.'),
(4, 'Segi Pelanggan', '4', 'Meningkatkan pelayanan dan orientasi pelanggan.'),
(5, 'Segi Pelanggan', '5', 'Menawarkan pelayanan-pelayanan dan produk yang kompetitif'),
(6, 'Segi Pelanggan', '6', 'Membangun ketersediaan kelangsungan pelayanan'),
(7, 'Segi Pelanggan', '7', 'Menciptakan ketanggapan dalam merespon perubahan kebutuhan bisnis.'),
(8, 'Segi Pelanggan', '8', 'Mencapai optimasi biaya penyediaan layanan.'),
(9, 'Segi Pelanggan', '9', 'Memperoleh informasi yang handal dan berguna untuk pengambilan keputusan strategis.'),
(10, 'Segi Internal', '10', 'Meningkatkan dan mempertahankan fungsi proses bisnis.'),
(11, 'Segi Internal', '11', 'Memperkecil biaya proses'),
(12, 'Segi Internal', '12', 'Memberikan kepatuhan terhadap hukum eksternal, peraturan dan kontrak.'),
(13, 'Segi Internal', '13', 'Memberikan kepatuhan kepada kebijakan internal.'),
(14, 'Segi Internal', '14', 'Mengelola perubahan bisnis.'),
(15, 'Segi Internal', '15', 'Meningkatkan dan mempertahankan operasional dan produktifitas staf.'),
(16, 'Segi Pembelajaran dan Pertumbuhan', '16', 'Mengelola produk dan inovasi bisnis'),
(17, 'Segi Pembelajaran dan Pertumbuhan', '17', 'Mendapatkan dan mempertahankan orang-orang terampil dan termotivasi.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_goals`
--

CREATE TABLE `it_goals` (
  `id_ITG` int(11) NOT NULL,
  `nomor` varchar(3) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `it_goals`
--

INSERT INTO `it_goals` (`id_ITG`, `nomor`, `keterangan`) VALUES
(1, '1', 'Menanggapi kebutuhan bisnis sejalan dengan strategi bisnis. \r\n'),
(2, '2', 'Menanggapi kebutuhan tata kelola sejalan dengan board direction \r\n'),
(3, '3', 'Menjamin kepuasan end user dengan penawaran layanan dan tingkat layanan. \r\n'),
(4, '4', 'Mengoptimalkan penggunaan informasi. \r\n'),
(5, '5', 'Menciptakan ketangkasan TI \r\n'),
(6, '6', 'Mendefinisikan bagaimana kebutuhan bisnis fungsional dan kontrol dijabarkan dalam solusi otomatis yang efektif dan efisien. \r\n'),
(7, '7', 'Mendapatkan dan memperoleh sistem aplikasi yang terstandarisasi dan terintegrasi. \r\n'),
(8, '8', 'Mendapatkan dan memperoleh infrastruktur TI yang terstandarisasi dan terintegrasi. \r\n\r\n'),
(9, '9', 'Mendapatkan dan mempertahankan kemampuan TI yang merespon ke strategi TI. \r\n'),
(10, '10', 'Menjamin saling kepuasan hubungan pihak ketiga. '),
(11, '11', 'Memastikan integrasi aplikasi ke dalam proses bisnis. \r\n'),
(12, '12', 'Menjamin transparansi dan pemahaman tentang biaya TI, keuntungan, strategi, kebijakan-kebijakan dan tingkatan pelayanan. \r\n'),
(13, '13', 'Memastikan kelayakan dan kinerja aplikasi dan solusi teknologi. \r\n'),
(14, '14', 'Memperhitungkan dan melindungi semua aset IT \r\n'),
(15, '15', 'Mengoptimalkan infrastruktur, sumber daya, dan kemampuan TI. \r\n'),
(16, '16', 'Pengurangan solusi dan dan kecacatan layanan pengiriman dan pengulangan kerja. \r\n'),
(17, '17', 'Melindungi pencapaian tujuan TI. \r\n'),
(18, '18', 'Membangun kejelasan dampak bisnis risiko untuk tujuan dan sumber daya TI. \r\n'),
(19, '19', 'Memastikan bahwa informasi penting dan rahasia tidak dapat dimiliki oleh orang-orang yang tidak memiliki akses kesana. \r\n'),
(20, '20', 'Memastikan bahwa transaksi bisnis otomatis dan pertukaran informasi dapat dipercaya \r\n'),
(21, '21', 'Memastikan layanan-layanan dan infrastruktur TI bisa resist dan merecover dari kegagalan karena error, serangan yang disengaja atau bencana \r\n'),
(22, '22', 'Memastikan dampak bisnis minimum dalam hal terjadinya gangguan atau perubahan TI. \r\n'),
(23, '23', 'Memastikan layanan TI tersedia sesuai kebutuhan. \r\n'),
(24, '24', 'Meningkatkan efisiensi biaya TI dan kontribusinya untuk profitabilitas bisnis.\r\n'),
(25, '25', 'Menyediakan proyek tepat waktu sesuai anggaran dan memenuhi kualitas standar. \r\n'),
(26, '26', 'Menjaga integritas informasi dan infrastruktur pengolahan. \r\n'),
(27, '27', 'Memastikan kepatuhan TI dengan hukum,regulasi dan kontrak.\r\n'),
(28, '28', 'Memastikan TI menunjukkan biaya kualitas pelayanan yang efisien, perbaikan terus menerus dan kesiapan untuk perubahan di masa depan. \r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `it_proses`
--

CREATE TABLE `it_proses` (
  `id_ITP` int(11) NOT NULL,
  `kode_subdomain` varchar(50) NOT NULL,
  `keterangan_domain` varchar(150) NOT NULL,
  `domain` varchar(5) NOT NULL,
  `non_existent` text NOT NULL,
  `initial` text NOT NULL,
  `repeatable` text NOT NULL,
  `defined` text NOT NULL,
  `managed` text NOT NULL,
  `optimised` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `it_proses`
--

INSERT INTO `it_proses` (`id_ITP`, `kode_subdomain`, `keterangan_domain`, `domain`, `non_existent`, `initial`, `repeatable`, `defined`, `managed`, `optimised`) VALUES
(1, 'PO1', 'Define a strategic IT plan (mendefinisikan rencana TI strategis)', 'PO', '0. Tidak ada saat Perencanaan strategis TI tidak dilakukan. Tidak ada perencanaan pengelolaan yang diperlukan. TI diperlukan untuk mendukungtujuan bisnis.', '1. Inisial / Ad Hoc saat Kebutuhan akan perencanaan strategis TI dikenal oleh manajemen TI. Perencanaan TI dilakukan berdasarkan kebutuhan dalam menanggapi persyaratan bisnis tertentu. Perencanaan strategis TI kadang-kadang dibahas pada pertemuan manajemen TI. Penjajaran persyaratan bisnis, aplikasi, dan teknologi berlangsung secara reaktif alih-alih oleh strategi organisasi secara luas. Strategisposisi risiko diidentifikasi secara informal berdasarkan proyek demi proyek', '2. Berulang tapi Intuitif saat Perencanaan strategis TI dibagi dengan manajemen bisnis berdasarkan kebutuhan. Pembaruan rencana TI terjadi sebagai tanggapan terhadap permintaan oleh manajemen. Keputusan strategis didorong berdasarkan proyek per proyek tanpa konsistensi dengan keseluruhan strategi organisasi. Risiko dan manfaat pengguna dari keputusan strategis utama diakui secara intuitif.', '3. Ditentukan saat Kebijakan menentukan kapan dan bagaimana melakukan perencanaan strategis TI. Perencanaan strategis TI mengikuti pendekatan terstruktur yaitu didokumentasikan dan diketahui oleh semua staf. Proses perencanaan TI cukup masuk akal dan memastikan bahwa perencanaan yang tepat kemungkinan akan terjadi dilakukan. Namun, kebijaksanaan diberikan kepada manajer individu sehubungan dengan implementasi proses, dan tidak ada prosedur untuk memeriksa proses. Strategi TI secara keseluruhan mencakup definisi risiko yang konsisten yang bersedia dilakukan organisasi ambil sebagai inovator atau pengikut. Strategi keuangan, teknis, dan sumber daya manusia TI semakin memengaruhi akuisisi produk dan teknologi baru. Perencanaan strategis TI dibahas pada pertemuan manajemen bisnis', '4. Dikelola dan Diukur apabila Perencanaan strategis TI adalah praktik standar dan pengecualian akan diperhatikan oleh manajemen. Perencanaan strategis TI didefinisikan fungsi manajemen dengan tanggung jawab tingkat senior. Manajemen dapat memonitor proses perencanaan strategis TI, membuat keputusan berdasarkan informasi itu dan mengukur efektivitasnya. Perencanaan TI jangka pendek dan jangka panjang terjadi dan mengalirke dalam organisasi, dengan pembaruan dilakukan sesuai kebutuhan. Strategi TI dan strategi organisasi semakin menjadi lebih terkoordinasi dengan menangani proses bisnis dan kapabilitas nilai tambah dan meningkatkan penggunaan aplikasi danteknologi melalui rekayasa ulang proses bisnis. Ada proses yang didefinisikan dengan baik untuk menentukan penggunaan internal dan sumber daya eksternal yang diperlukan dalam pengembangan dan pengoperasian sistem', '5.  Dioptimalkan saat Perencanaan strategis TI adalah proses hidup yang terdokumentasi; terus dipertimbangkan dalam penetapan tujuan bisnis; dan menghasilkan yang bisa dilihat nilai bisnis melalui investasi di bidang TI. Pertimbangan risiko dan nilai tambah terus diperbarui dalam perencanaan strategis IT proses. Rencana TI jangka panjang yang realistis dikembangkan dan terus diperbarui untuk mencerminkan perubahan teknologi dan yang terkait dengan bisnis perkembangan. Pembandingan terhadap norma-norma industri yang dipahami dengan baik dan dapat diandalkan terjadi dan terintegrasi dengan strategi proses perumusan. Rencana strategis mencakup bagaimana perkembangan teknologi baru dapat mendorong penciptaan bisnis barukemampuan dan meningkatkan keunggulan kompetitif organisasi'),
(2, 'PO2', 'Define the information architecture (mendefinisikan arsitektur teknologi informasi)', 'PO', '0. Tidak ada saat Tidak ada kesadaran akan pentingnya arsitektur informasi untuk organisasi. Pengetahuan, keahlian dan tanggung jawab yang diperlukan untuk mengembangkan arsitektur ini tidak ada dalam organisasi.', '1. Inisial / Ad Hoc saat Manajemen mengakui perlunya arsitektur informasi. Pengembangan beberapa komponen arsitektur informasi terjadi secara ad hoc . Definisi alamat data, bukan informasi, dan didorong oleh vendor perangkat lunak aplikasi persembahan. Ada komunikasi yang tidak konsisten dan sporadis tentang perlunya arsitektur informasi.', '2. Berulang tapi Intuitif saat Proses arsitektur informasi muncul dan prosedur yang serupa, meskipun informal dan intuitif, diikuti oleh berbeda individu dalam organisasi. Staf memperoleh keterampilan mereka dalam membangun arsitektur informasi melalui pengalaman langsung dan penerapan teknik yang berulang. Persyaratan taktis mendorong pengembangan komponen arsitektur informasi oleh anggota staf individu.', '3. Ditentukan saat Pentingnya arsitektur informasi dipahami dan diterima, dan tanggung jawab untuk pengirimannya ditetapkan dan jelas dikomunikasikan. Prosedur, alat, dan teknik terkait, meskipun tidak canggih, telah distandarisasi dan didokumentasikan danadalah bagian dari kegiatan pelatihan informal. Kebijakan arsitektur informasi dasar telah dikembangkan, termasuk beberapa strategi persyaratan, tetapi kepatuhan terhadap kebijakan, standar, dan alat tidak ditegakkan secara konsisten. Administrasi data yang ditetapkan secara formalfungsi sudah ada, menetapkan standar organisasi, dan mulai melaporkan pengiriman dan penggunaan informasi Arsitektur. Alat otomatis mulai digunakan, tetapi proses dan aturan yang digunakan ditentukan oleh perangkat lunak database penawaran vendor. Rencana pelatihan formal telah dikembangkan, tetapi pelatihan formal masih didasarkan pada inisiatif individu', '4. Dikelola dan Diukur saatPengembangan dan penegakan arsitektur informasi sepenuhnya didukung oleh metode dan teknik formal.Akuntabilitas untuk kinerja proses pengembangan arsitektur ditegakkan dan keberhasilan arsitektur informasi sedang diukur. Alat otomatis yang mendukung tersebar luas, tetapi belum terintegrasi. Metrik dasar telah diidentifikasi dan asistem pengukuran sudah ada. Proses definisi arsitektur informasi bersifat proaktif dan fokus pada penanganan masa depankebutuhan bisnis. Organisasi administrasi data secara aktif terlibat dalam semua upaya pengembangan aplikasi, untuk memastikankonsistensi. Repositori otomatis sepenuhnya diimplementasikan. Model data yang lebih kompleks sedang diimplementasikan untuk memanfaatkanisi informasi dari basis data. Sistem informasi eksekutif dan sistem pendukung keputusan memanfaatkan yang tersediainformasi', '5. Dioptimalkan saat Arsitektur informasi secara konsisten ditegakkan di semua tingkatan. Nilai arsitektur informasi untuk bisnis adalah terus stres. Personel TI memiliki keahlian dan keterampilan yang diperlukan untuk mengembangkan dan mempertahankan yang kuat dan responsif arsitektur informasi yang mencerminkan semua persyaratan bisnis. Informasi yang disediakan oleh arsitektur informasi adalah diterapkan secara konsisten dan luas. Penggunaan ekstensif dibuat dari praktik industri yang baik dalam pengembangan dan pemeliharaanarsitektur informasi, termasuk proses peningkatan berkelanjutan. Strategi untuk meningkatkan informasi melalui datateknologi pergudangan dan data mining didefinisikan. Arsitektur informasi terus meningkat dan dipertimbangkanpertimbangan informasi non-tradisional tentang proses, organisasi dan sistem.'),
(3, 'PO3', 'Determine technological direction (menentukan arah teknologi)', 'PO', '0. Tidak ada saat Tidak ada kesadaran akan pentingnya perencanaan infrastruktur teknologi untuk entitas. Pengetahuan dan keahlian yang dibutuhkan untuk mengembangkan rencana infrastruktur teknologi seperti itu tidak ada. Ada kekurangan pemahaman bahwa perencanaan untuk teknologi perubahan sangat penting untuk mengalokasikan sumber daya secara efektif.', '1. Inisial / Ad Hoc saat Manajemen mengakui perlunya perencanaan infrastruktur teknologi. Perkembangan komponen teknologi dan berkembang implementasi teknologi bersifat ad hoc dan terisolasi. Terdapat pendekatan yang reaktif dan terfokus secara operasional untuk infrastruktur perencanaan. Arahan teknologi didorong oleh rencana evolusi produk yang seringkali bertentangan dengan perangkat keras, perangkat lunak sistem dan vendor perangkat lunak aplikasi. Komunikasi tentang dampak potensial dari perubahan teknologi tidak konsisten.', '2. Berulang tapi Intuitif saat Kebutuhan dan pentingnya perencanaan teknologi dikomunikasikan. Perencanaan bersifat taktis dan terfokus pada menghasilkan solusi untuk masalah teknis, bukan pada penggunaan teknologi untuk memenuhi kebutuhan bisnis. Evaluasi perubahan teknologi diserahkan kepada individu yang berbeda yang mengikuti proses intuitif, tetapi serupa. Orang-orang memperoleh keterampilan mereka dalam perencanaan teknologi melalui praktik belajar dan aplikasi teknik berulang. Teknik dan standar umum muncul untuk pengembangan komponen infrastruktur', '3. Ditentukan saat Manajemen menyadari pentingnya rencana infrastruktur teknologi. Pengembangan rencana infrastruktur teknologi prosesnya cukup masuk akal dan selaras dengan rencana strategis TI. Ada yang didefinisikan, didokumentasikan dan dikomunikasikan dengan baik rencana infrastruktur teknologi, tetapi diterapkan secara tidak konsisten. Arah infrastruktur teknologi mencakup pemahaman tentang di mana organisasi ingin memimpin atau ketinggalan dalam penggunaan teknologi, berdasarkan risiko dan keselarasan dengan strategi organisasi. Vendor utama dipilih berdasarkan pemahaman teknologi jangka panjang dan rencana pengembangan produk mereka, konsisten dengan arah organisasi. Pelatihan formal dan komunikasi peran dan tanggung jawab ada.', '4. Dikelola dan Diukur saat Manajemen memastikan pengembangan dan pemeliharaan rencana infrastruktur teknologi. Anggota staf TI memiliki keahlian dan keterampilan yang diperlukan untuk mengembangkan rencana infrastruktur teknologi. Dampak potensial dari perubahan dan teknologi yang muncul adalah diperhitungkan. Manajemen dapat mengidentifikasi penyimpangan dari rencana dan mengantisipasi masalah. Tanggung jawab untuk pengembangan dan pemeliharaan rencana infrastruktur teknologi telah ditetapkan. Proses pengembangan rencana infrastruktur teknologi canggih dan responsif terhadap perubahan. Praktik baik internal telah diperkenalkan ke dalam proses. Sumber daya manusia strategi diselaraskan dengan arah teknologi, untuk memastikan bahwa anggota staf TI dapat mengelola perubahan teknologi. Paket migrasi untuk memperkenalkan teknologi baru didefinisikan. Outsourcing dan bermitra sedang dimanfaatkan untuk mengakses keahlian yang diperlukan dan keterampilan. Manajemen telah menganalisis penerimaan risiko terkait penggunaan atau keterlambatan penggunaan teknologi dalam mengembangkan bisnis baru peluang atau efisiensi operasional', '5. Dioptimalkan saat Ada fungsi penelitian untuk meninjau teknologi yang muncul dan berkembang dan membandingkan organisasi dengan norma-norma industri. Arah rencana infrastruktur teknologi dipandu oleh standar dan pengembangan industri dan internasional, daripada didorong oleh vendor teknologi. Dampak bisnis potensial dari perubahan teknologi ditinjau pada tingkat manajemen senior. Sana adalah persetujuan eksekutif formal dari arah teknologi yang baru dan berubah. Entitas memiliki rencana infrastruktur teknologi yang kuat mencerminkan persyaratan bisnis, responsif, dan dapat dimodifikasi untuk mencerminkan perubahan dalam lingkungan bisnis. Ada sebuah proses yang berkelanjutan dan diberlakukan untuk meningkatkan rencana infrastruktur teknologi. Praktik baik industri banyak digunakan dalam menentukan arah teknologi'),
(4, 'PO4', 'Define the IT processes,organization and relationships(mendefinisikan organisasi TI dan hubungannya)', 'PO', '0. Tidak ada saat Organisasi TI tidak dibentuk secara efektif untuk fokus pada pencapaian tujuan bisnis.', '1. Inisial / Ad Hoc saat Kegiatan dan fungsi TI reaktif dan diimplementasikan secara tidak konsisten. TI terlibat dalam proyek bisnis hanya pada tahap selanjutnya. Itu Fungsi TI dianggap sebagai fungsi pendukung, tanpa perspektif organisasi secara keseluruhan. Ada pemahaman implisit tentang butuhkan untuk organisasi TI; Namun, peran dan tanggung jawab tidak diformalkan atau ditegakkan', '2. Berulang tapi Intuitif saat Fungsi TI diatur untuk merespons secara taktis, tetapi tidak konsisten, terhadap kebutuhan pelanggan dan hubungan vendor. Kebutuhan akan a organisasi terstruktur dan manajemen vendor dikomunikasikan, tetapi keputusan masih tergantung pada pengetahuan dan keterampilan individu kunci. Ada kemunculan teknik umum untuk mengelola organisasi TI dan hubungan vendor.', '3. Ditentukan saat Peran dan tanggung jawab yang ditentukan untuk organisasi TI dan pihak ketiga ada. Organisasi TI dikembangkan, didokumentasikan, dikomunikasikan dan diselaraskan dengan strategi TI. Lingkungan kontrol internal didefinisikan. Ada formalisasi hubungan dengan pihak lain, termasuk komite pengarah, audit internal dan manajemen vendor. Organisasi TI secara fungsional lengkap. Ada definisi fungsi yang harus dilakukan oleh personel TI dan yang harus dilakukan oleh pengguna. TI yang esensial persyaratan dan keahlian kepegawaian didefinisikan dan dipenuhi. Ada definisi formal tentang hubungan dengan pengguna dan ketiga pesta. Pembagian peran dan tanggung jawab didefinisikan dan diimplementasikan.', '4. Dikelola dan Diukur saat Organisasi TI secara proaktif merespons perubahan dan memasukkan semua peran yang diperlukan untuk memenuhi persyaratan bisnis. Manajemen TI, proses kepemilikan, akuntabilitas, dan tanggung jawab didefinisikan dan seimbang. Praktik baik internal telah diterapkan dalam organisasi fungsi TI. Manajemen TI memiliki keahlian dan keterampilan yang tepat untuk mendefinisikan, mengimplementasikan, dan memantau organisasi dan hubungan yang disukai. Metrik yang terukur untuk mendukung tujuan bisnis dan faktor penentu keberhasilan kritis yang ditentukan pengguna (CSF) distandarisasi. Inventarisasi keterampilan tersedia untuk mendukung staf proyek dan pengembangan profesional. Keseimbangan antara keterampilan dan sumber daya yang tersedia secara internal dan yang dibutuhkan dari organisasi eksternal didefinisikan dan ditegakkan. IT struktur organisasi dengan tepat mencerminkan kebutuhan bisnis dengan menyediakan layanan yang selaras dengan proses bisnis strategis, daripada dengan teknologi yang terisolasi.', '5. Dioptimalkan saat Struktur organisasi TI bersifat fleksibel dan adaptif. Praktik baik industri dikerahkan. Ada banyak penggunaan teknologi untuk membantu memantau kinerja organisasi dan proses TI. Teknologi dimanfaatkan sesuai untuk mendukung kompleksitas dan distribusi geografis organisasi. Ada proses perbaikan berkelanjutan di tempat'),
(5, 'PO5', 'Manage the IT investment (mengelola investasi TI)', 'PO', '0. Tidak ada saat Tidak ada kesadaran akan pentingnya pemilihan dan penganggaran investasi TI. Tidak ada pelacakan atau pemantauan TI investasi dan pengeluaran.', '1. Inisial / Ad Hoc saat Organisasi mengakui perlunya mengelola investasi TI, tetapi kebutuhan ini dikomunikasikan secara tidak konsisten. Alokasi tanggung jawab untuk pemilihan investasi TI dan pengembangan anggaran dilakukan secara ad hoc . Implementasi TI yang terisolasi pemilihan dan penganggaran investasi terjadi, dengan dokumentasi informal. Investasi TI dibenarkan atas dasar ad hoc . Reaktif dan keputusan penganggaran yang berfokus secara operasional terjadi.', '2. Berulang tapi Intuitif saat Ada pemahaman implisit tentang perlunya pemilihan dan penganggaran investasi TI. Kebutuhan untuk pemilihan dan penganggaran proses dikomunikasikan. Kepatuhan tergantung pada inisiatif individu dalam organisasi. Ada kemunculan teknik umum untuk mengembangkan komponen anggaran TI. Keputusan penganggaran reaktif dan taktis terjadi', '3. Ditentukan saat Kebijakan dan proses untuk investasi dan penganggaran didefinisikan, didokumentasikan dan dikomunikasikan, dan mencakup bisnis utama dan masalah teknologi. Anggaran TI selaras dengan TI strategis dan rencana bisnis. Pilihan penganggaran dan investasi TI proses diformalkan, didokumentasikan dan dikomunikasikan. Pelatihan formal sedang muncul tetapi masih didasarkan terutama pada individu inisiatif. Persetujuan formal atas pilihan investasi dan anggaran TI sedang berlangsung. Anggota staf TI memiliki keahlian dan keterampilan diperlukan untuk mengembangkan anggaran TI dan merekomendasikan investasi TI yang sesuai.', '4. Dikelola dan Diukur saat Tanggung jawab dan pertanggungjawaban untuk pemilihan dan penganggaran investasi ditugaskan kepada individu tertentu. Varians anggaran adalah diidentifikasi dan diselesaikan. Analisis biaya formal dilakukan, meliputi biaya langsung dan tidak langsung dari operasi yang ada, serta investasi yang diusulkan, mempertimbangkan semua biaya selama siklus hidup total. Proses penganggaran yang proaktif dan terstandarisasi digunakan. Itu dampak pergeseran dalam pengembangan dan biaya operasi dari perangkat keras dan perangkat lunak ke integrasi sistem dan sumber daya manusia TI diakui dalam rencana investasi. Manfaat dan pengembalian dihitung dalam istilah finansial dan non-finansial.', '5. Dioptimalkan saat Praktik baik industri digunakan untuk menentukan biaya dan mengidentifikasi pendekatan untuk meningkatkan efektivitas investasi. Analisis perkembangan teknologi digunakan dalam pemilihan investasi dan proses penganggaran. Proses manajemen investasi adalah terus ditingkatkan berdasarkan pembelajaran dari analisis kinerja investasi aktual. Keputusan investasi menggabungkan tren peningkatan harga / kinerja. Alternatif pendanaan diselidiki secara formal dan dievaluasi dalam konteks dari struktur modal organisasi yang ada, menggunakan metode evaluasi formal. Ada identifikasi varian yang proaktif. Sebuah analisis biaya dan manfaat jangka panjang dari siklus hidup total dimasukkan dalam keputusan investasi'),
(6, 'PO6', 'Communicate management aims and direction ( mengkomunikasikan tujuan dan arah manajemen )', 'PO', '0. Tidak ada saat Manajemen belum membentuk lingkungan kendali TI yang positif. Tidak ada pengakuan akan perlunya menetapkan seperangkat kebijakan, rencana dan prosedur, dan proses kepatuhan. ', '1. Inisial / Ad Hoc saat Manajemen reaktif dalam menangani persyaratan lingkungan kontrol informasi. Kebijakan, prosedur dan standar dikembangkan dan dikomunikasikan secara ad hoc karena didorong oleh masalah. Pengembangan, komunikasi, dan kepatuhan prosesnya informal dan tidak konsisten', '2. Berulang tapi Intuitif saat Kebutuhan dan persyaratan lingkungan kontrol informasi yang efektif secara implisit dipahami oleh manajemen, tetapi praktik sebagian besar informal. Kebutuhan akan kebijakan, rencana, dan prosedur pengendalian dikomunikasikan oleh manajemen, tetapi pengembangan masih tertinggal untuk kebijaksanaan manajer individu dan bidang bisnis. Kualitas diakui sebagai filosofi yang diinginkan untuk diikuti, tetapi praktik diserahkan pada kebijaksanaan masing-masing manajer. Pelatihan dilakukan atas dasar individu, sesuai kebutuhan.', '3. Ditentukan saat Kontrol informasi yang lengkap dan lingkungan manajemen mutu dikembangkan, didokumentasikan dan dikomunikasikan oleh manajemen dan termasuk kerangka kerja untuk kebijakan, rencana dan prosedur. Proses pengembangan kebijakan terstruktur, dipelihara dan dikenal kepada staf, dan kebijakan, rencana, dan prosedur yang ada cukup masuk akal dan mencakup masalah-masalah utama. Manajemen membahas pentingnya kesadaran keamanan TI dan memulai program kesadaran. Pelatihan formal tersedia untuk mendukung informasi mengendalikan lingkungan tetapi tidak diterapkan dengan ketat. Sementara ada kerangka pengembangan keseluruhan untuk kebijakan kontrol dan prosedur, ada pemantauan kepatuhan yang tidak konsisten dengan kebijakan dan prosedur ini. Ada perkembangan menyeluruh kerangka. Teknik untuk meningkatkan kesadaran keamanan telah distandarisasi dan diformalkan', '4. Dikelola dan Diukur saat Manajemen menerima tanggung jawab untuk mengkomunikasikan kebijakan pengendalian internal dan mendelegasikan tanggung jawab dan mengalokasikan cukup sumber daya untuk menjaga lingkungan sejalan dengan perubahan signifikan. Lingkungan kontrol informasi yang positif dan proaktif, termasuk komitmen terhadap kualitas dan kesadaran keamanan TI, didirikan. Satu set lengkap kebijakan, rencana dan prosedur adalah dikembangkan, dipelihara dan dikomunikasikan dan merupakan gabungan dari praktik baik internal. Kerangka kerja untuk peluncuran dan selanjutnya pemeriksaan kepatuhan telah ditetapkan.', '5. Dioptimalkan saat Lingkungan kontrol informasi selaras dengan kerangka kerja strategis dan visi dan sering ditinjau, diperbarui dan terus ditingkatkan. Para ahli internal dan eksternal ditugaskan untuk memastikan bahwa praktik-praktik baik industri sedang dilaksanakan diadopsi sehubungan dengan mengontrol pedoman dan teknik komunikasi. Monitoring, penilaian diri dan pengecekan kepatuhan adalah meresap dalam organisasi. Teknologi digunakan untuk memelihara basis pengetahuan kebijakan dan kesadaran dan untuk mengoptimalkan komunikasi, menggunakan otomatisasi kantor dan alat pelatihan berbasis komputer'),
(7, 'PO7', 'Manage IT human resources (mengelola SDM)', 'PO', '0. Tidak ada saat Tidak ada kesadaran tentang pentingnya menyelaraskan manajemen sumber daya manusia TI dengan proses perencanaan teknologi untuk organisasi. Tidak ada orang atau kelompok yang secara resmi bertanggung jawab atas manajemen sumber daya manusia TI', '1 Inisial / Ad Hoc saat Manajemen mengakui perlunya manajemen sumber daya manusia TI. Proses manajemen sumber daya manusia TI bersifat informal dan reaktif. Proses sumber daya manusia TI secara operasional difokuskan pada perekrutan dan pengelolaan personel TI. Kesadaran adalah berkembang mengenai dampak perubahan bisnis dan teknologi yang cepat dan solusi yang semakin kompleks terhadap kebutuhan untuk tingkat keterampilan dan kompetensi baru.', '2. Berulang tapi Intuitif saat Ada pendekatan taktis untuk merekrut dan mengelola personel  keseimbangan ketersediaan internal dan eksternal staf terampil. Pelatihan informal berlangsung untuk personel baru, yang kemudian menerima pelatihan sesuai kebutuhan.', '3. Ditentukan saat Ada proses yang didefinisikan dan didokumentasikan untuk mengelola sumber daya manusia TI. Ada rencana manajemen sumber daya manusia TI. Ada pendekatan strategis untuk merekrut dan mengelola personel TI. Rencana pelatihan formal dirancang untuk memenuhi kebutuhan TI sumber daya manusia. Program rotasi, dirancang untuk memperluas keterampilan teknis dan manajemen bisnis, didirikan.', '4. Dikelola dan Diukur kapan Tanggung jawab untuk pengembangan dan pemeliharaan rencana manajemen sumber daya manusia TI ditugaskan kepada individu tertentu atau kelompok dengan keahlian dan keterampilan yang diperlukan untuk mengembangkan dan memelihara rencana tersebut. Proses pengembangan dan pengelolaan rencana manajemen sumber daya manusia TI responsif terhadap perubahan. Ada langkah-langkah terstandarisasi dalam organisasi untuk memungkinkannya mengidentifikasi penyimpangan dari rencana manajemen sumber daya manusia TI, dengan penekanan khusus pada pengelolaan dan pengembangan personil TI pergantian. Kompensasi dan ulasan kinerja sedang dibangun dan dibandingkan dengan organisasi TI lainnya dan industri yang baik praktek. Manajemen sumber daya manusia TI proaktif, dengan mempertimbangkan pengembangan jalur karier.', '5. Dioptimalkan saat Rencana manajemen sumber daya manusia TI terus diperbarui untuk memenuhi perubahan persyaratan bisnis. Itu manusia manajemen sumber daya terintegrasi dengan perencanaan teknologi, memastikan pengembangan optimal dan penggunaan keterampilan TI yang tersedia. manajemen sumber daya manusia terintegrasi dengan dan responsif terhadap arah strategis entitas. Komponen manusia IT pengelolaan sumber daya konsisten dengan praktik baik industri, seperti kompensasi, tinjauan kinerja, partisipasi dalam forum industri, transfer pengetahuan, pelatihan dan bimbingan. Program pelatihan dikembangkan untuk semua teknologi baru standar dan produk sebelum ditempatkan di organisasi.'),
(8, 'PO8', 'Manage quality human resource (mengelola kualitas)', 'PO', '0. Tidak ada saat Rumah sakit tidak memiliki proses perencanaan SMM dan metodologi siklus hidup pengembangan sistem (SDLC). Manajemen senior dan Anggota staf TI tidak menyadari bahwa program yang berkualitas diperlukan. Proyek dan operasi tidak pernah ditinjau untuk kualitas.', '1. Inisial / Ad Hoc saat Ada kesadaran manajemen tentang perlunya SMM. SMM didorong oleh individu di mana itu terjadi. Pengelolaan membuat penilaian informal pada kualitas', '2. Berulang tapi Intuitif saat Sebuah program sedang dibuat untuk mendefinisikan dan memantau kegiatan SMM dalam TI. Kegiatan SMM yang terjadi difokuskan pada TI inisiatif berorientasi proyek dan proses, bukan pada proses organisasi secara luas.', '3. Ditentukan saat Proses QMS yang didefinisikan dikomunikasikan ke seluruh perusahaan oleh manajemen dan melibatkan TI dan manajemen pengguna akhir. Sebuah program pendidikan dan pelatihan muncul untuk mengajarkan semua tingkatan organisasi tentang kualitas. Harapan kualitas dasar adalah didefinisikan dan dibagikan di antara proyek dan dalam organisasi TI. Alat dan praktik umum untuk manajemen mutu adalah muncul. Survei kepuasan kualitas direncanakan dan sesekali dilakukan.', '4. Dikelola dan Diukur saat SMM dibahas dalam semua proses, termasuk proses dengan mengandalkan pihak ketiga. Basis pengetahuan standar sedang didirikan untuk metrik kualitas. Metode analisis biaya-manfaat digunakan untuk membenarkan inisiatif SMM. Pembandingan terhadap industri dan pesaing muncul. Program pendidikan dan pelatihan dilembagakan untuk mengajarkan semua tingkatan organisasi tentang kualitas. Alat dan praktik sedang distandarisasi, dan analisis akar permasalahan diterapkan secara berkala. Survei kepuasan kualitas adalah dilakukan secara konsisten. Program standar untuk mengukur kualitas sudah ada dan terstruktur dengan baik. Manajemen TI sedang membangun  basis pengetahuan untuk metrik kualitas.', '5. Dioptimalkan saat SMM terintegrasi dan ditegakkan dalam semua kegiatan TI. Proses SMM fleksibel dan mudah beradaptasi dengan perubahan di lingkungan TI. Basis pengetahuan untuk metrik kualitas ditingkatkan dengan praktik eksternal yang baik. Benchmarking terhadap standar eksternal adalah dilakukan secara rutin. Survei kepuasan kualitas adalah proses yang berkelanjutan dan mengarah ke akar penyebab analisis dan tindakan perbaikan. Ada jaminan formal pada tingkat proses manajemen kualitas'),
(9, 'PO9', 'Asses and manage IT risks(Menilai dan Mengelola Risiko TI)', 'PO', '0. Tidak ada saat risiko untuk proses dan keputusan bisnis tidak terjadi. Organisasi tidak mempertimbangkan dampak bisnis terkait dengan kerentanan keamanan dan ketidakpastian proyek pengembangan. Manajemen risiko tidak diidentifikasi sebagai relevan dengan memperoleh solusi IT dan memberikan layanan IT.', '1. Inisial / Ad Hoc saat Risiko TI dipertimbangkan secara ad hoc . Penilaian informal atas risiko proyek berlangsung sebagaimana ditentukan oleh setiap proyek. Risiko penilaian kadang-kadang diidentifikasi dalam rencana proyek tetapi jarang ditugaskan untuk manajer tertentu. Risiko spesifik terkait TI, seperti keamanan, ketersediaan, dan integritas, kadang-kadang dipertimbangkan berdasarkan proyek per proyek. Risiko terkait TI memengaruhi sehari-hari operasi jarang dibahas pada rapat manajemen. Di mana risiko telah dipertimbangkan, mitigasi tidak konsisten. Ada sebuah pemahaman yang muncul bahwa risiko IT penting dan perlu dipertimbangkan', '2. Berulang tapi Intuitif saat Pendekatan penilaian risiko yang berkembang ada dan diimplementasikan atas kebijakan manajer proyek. Manajemen risiko adalah biasanya pada tingkat tinggi dan biasanya hanya diterapkan pada proyek-proyek besar atau sebagai respons terhadap masalah. Proses mitigasi risiko adalah mulai diterapkan di mana risiko diidentifikasi.', '3. Ditentukan saat Kebijakan manajemen risiko di seluruh organisasi menentukan kapan dan bagaimana melakukan penilaian risiko. Manajemen risiko mengikuti proses didefinisikan yang didokumentasikan. Pelatihan manajemen risiko tersedia untuk semua anggota staf. Keputusan untuk mengikuti risiko proses manajemen dan menerima pelatihan diserahkan pada kebijaksanaan individu. Metodologi untuk penilaian risiko adalah meyakinkan dan sehat dan memastikan bahwa risiko utama untuk bisnis diidentifikasi. Proses untuk memitigasi risiko utama biasanya dilakukan setelah risiko diidentifikasi. Deskripsi pekerjaan mempertimbangkan tanggung jawab manajemen risiko', '4. Dikelola dan Diukur saat Penilaian dan manajemen risiko adalah prosedur standar. Pengecualian untuk proses manajemen risiko dilaporkan ke IT pengelolaan. Manajemen risiko TI adalah tanggung jawab manajemen tingkat senior. Risiko dinilai dan dimitigasi pada individu tingkat proyek dan juga secara teratur berkaitan dengan operasi TI secara keseluruhan. Manajemen disarankan untuk melakukan perubahan dalam bisnis dan TI lingkungan yang secara signifikan dapat memengaruhi skenario risiko terkait-TI. Manajemen mampu memonitor posisi risiko dan membuat keputusan terinformasi mengenai pemaparan yang bersedia diterima. Semua risiko yang teridentifikasi memiliki pemilik yang ditunjuk, dan senior manajemen dan manajemen TI menentukan tingkat risiko yang akan ditoleransi organisasi. Manajemen TI mengembangkan standar langkah-langkah untuk menilai risiko dan menentukan risiko / rasio pengembalian. Anggaran manajemen untuk proyek manajemen risiko operasional untuk  menilai kembali risiko secara teratur. Database manajemen risiko dibuat, dan bagian dari proses manajemen risiko dimulai menjadi otomatis. Manajemen TI mempertimbangkan strategi mitigasi risiko', '5. Dioptimalkan saat Manajemen risiko berkembang ke tahap di mana proses terstruktur, organisasi secara luas ditegakkan dan dikelola dengan baik. Latihan yang baik diterapkan di seluruh organisasi. Pengambilan, analisis, dan pelaporan data manajemen risiko sangat otomatis. Bimbingan diambil dari para pemimpin di lapangan, dan organisasi TI mengambil bagian dalam kelompok sebaya untuk bertukar pengalaman. Risiko manajemen benar-benar terintegrasi ke dalam semua operasi bisnis dan TI, diterima dengan baik dan secara ekstensif melibatkan para pengguna TI jasa. Manajemen mendeteksi dan bertindak ketika keputusan operasional dan investasi TI utama dibuat tanpa pertimbangan rencana manajemen risiko. Manajemen terus menilai strategi mitigasi risiko.'),
(10, 'PO10', 'Manage projects(mengelola proyek)', 'PO', '0. Tidak ada saat Teknik manajemen proyek tidak digunakan dan organisasi tidak mempertimbangkan dampak bisnis yang terkait dengan proyek salah urus dan kegagalan proyek pembangunan.', '1. Inisial / Ad Hoc saat Penggunaan teknik manajemen proyek dan pendekatan dalam TI adalah keputusan yang diserahkan kepada manajer TI individu. Ada kekurangan komitmen manajemen untuk kepemilikan proyek dan manajemen proyek. Keputusan penting tentang manajemen proyek dibuat tanpa manajemen pengguna atau input pelanggan. Ada sedikit atau tidak ada keterlibatan pelanggan dan pengguna dalam mendefinisikan proyek TI. Tidak ada organisasi yang jelas dalam TI untuk pengelolaan proyek. Peran dan tanggung jawab untuk manajemen proyek tidak didefinisikan. Proyek, jadwal, dan tonggak pencapaiannya tidak didefinisikan dengan baik, jika ada. Waktu dan pengeluaran staf proyek tidak dilacak dan dibandingkan dengan anggaran.', '2. Berulang tapi Intuitif saat Manajemen senior memperoleh dan mengkomunikasikan kesadaran akan kebutuhan untuk manajemen proyek TI. Organisasi berada di proses mengembangkan dan memanfaatkan beberapa teknik dan metode dari proyek ke proyek. Proyek-proyek TI telah ditetapkan secara informal tujuan bisnis dan teknis. Ada keterlibatan pemangku kepentingan yang terbatas dalam manajemen proyek TI. Pedoman awal adalah dikembangkan untuk banyak aspek manajemen proyek. Penerapan pedoman manajemen proyek diserahkan pada kebijaksanaan manajer proyek individu', '3. Ditentukan saat Proses dan metodologi manajemen proyek TI ditetapkan dan dikomunikasikan. Proyek TI didefinisikan dengan tepat tujuan bisnis dan teknis. TI senior dan manajemen bisnis mulai berkomitmen dan terlibat dalam manajemen proyek TI. Kantor manajemen proyek didirikan dalam TI, dengan peran dan tanggung jawab awal ditetapkan. proyek dimonitor, dengan tonggak yang ditetapkan dan diperbarui, jadwal, anggaran dan pengukuran kinerja. Proyek pelatihan manajemen tersedia dan terutama merupakan hasil dari inisiatif staf individu. Prosedur dan post sistem QA kegiatan implementasi didefinisikan, tetapi tidak diterapkan secara luas oleh manajer TI. Proyek mulai dikelola sebagai portofolio.', '4. Dikelola dan Diukur saat Manajemen membutuhkan metrik proyek formal dan standar serta pelajaran yang dapat dipetik untuk ditinjau setelah penyelesaian proyek. Manajemen proyek diukur dan dievaluasi di seluruh organisasi dan tidak hanya di dalam TI. Peningkatan pada proyek proses manajemen diformalkan dan dikomunikasikan dengan anggota tim proyek yang dilatih tentang peningkatan. Manajemen TI mengimplementasikan struktur organisasi proyek dengan peran, tanggung jawab dan kriteria kinerja staf yang terdokumentasi. Kriteria untuk mengevaluasi kesuksesan di setiap tonggak sejarah ditetapkan. Nilai dan risiko diukur dan dikelola sebelum, selama dan setelah penyelesaian proyek. Proyek semakin membahas tujuan organisasi, bukan hanya yang spesifik IT. Ada yang kuat dan aktif dukungan proyek dari sponsor manajemen senior serta pemangku kepentingan. Pelatihan manajemen proyek yang relevan direncanakan untuk staf di kantor manajemen proyek dan di seluruh fungsi TI', '5. Dioptimalkan saat Metodologi proyek dan program program siklus hidup lengkap terbukti diimplementasikan, ditegakkan dan diintegrasikan ke dalam budaya keseluruhan organisasi. Inisiatif yang berkelanjutan untuk mengidentifikasi dan melembagakan praktik manajemen proyek terbaik diimplementasikan. Strategi TI untuk sumber pengembangan dan proyek operasional didefinisikan dan diimplementasikan. Kantor manajemen proyek terintegrasi adalah bertanggung jawab atas proyek dan program dari awal hingga pasca implementasi. Perencanaan program dan organisasi secara luas proyek memastikan bahwa sumber daya pengguna dan TI paling baik digunakan untuk mendukung inisiatif strategis'),
(11, 'AI1', 'Identify automated solutions (identifikasi solusi otomatis)', 'AI', '0 Tidak ada saat Organisasi tidak memerlukan identifikasi persyaratan fungsional dan operasional untuk pengembangan, implementasi atau modifikasi solusi, seperti sistem, layanan, infrastruktur, perangkat lunak, dan data. Organisasi tidak memelihara kesadaran akan solusi teknologi yang tersedia yang berpotensi relevan dengan bisnisnya.', '1. Inisial / Ad Hoc saat Ada kesadaran akan kebutuhan untuk mendefinisikan persyaratan dan mengidentifikasi solusi teknologi. Masing-masing kelompok bertemu untuk membahas kebutuhan informal, dan persyaratan kadang-kadang didokumentasikan. Solusi diidentifikasi oleh individu berdasarkan kesadaran pasar yang terbatas atau sebagai tanggapan atas penawaran vendor. Ada penelitian terstruktur minimal atau analisis teknologi yang tersedia.', '2. Berulang tapi Intuitif saat Beberapa pendekatan intuitif untuk mengidentifikasi solusi TI ada dan beragam di seluruh bisnis. Solusi diidentifikasi secara informal berdasarkan pengalaman internal dan pengetahuan fungsi TI. Keberhasilan setiap proyek tergantung pada keahlian beberapa kunci individu. Kualitas dokumentasi dan pengambilan keputusan sangat bervariasi. Pendekatan tidak terstruktur digunakan untuk mendefinisikan persyaratan dan mengidentifikasi solusi teknologi.', '3. Ditentukan saat Pendekatan yang jelas dan terstruktur dalam menentukan solusi TI ada. Pendekatan untuk penentuan solusi TI membutuhkan pertimbangan alternatif yang dievaluasi terhadap kebutuhan bisnis atau pengguna, peluang teknologi, kelayakan ekonomi, risiko penilaian, dan faktor lainnya. Proses untuk menentukan solusi TI diterapkan untuk beberapa proyek berdasarkan faktor-faktor seperti keputusan yang dibuat oleh anggota staf individu yang terlibat, jumlah waktu manajemen yang dilakukan, dan ukuran dan prioritas persyaratan bisnis asli. Pendekatan terstruktur digunakan untuk mendefinisikan persyaratan dan mengidentifikasi solusi TI.', '4. Dikelola dan Diukur saat Metodologi mapan untuk identifikasi dan penilaian solusi TI ada dan digunakan untuk sebagian besar proyek. Proyek dokumentasi berkualitas baik, dan setiap tahap disetujui dengan benar. Persyaratan diartikulasikan dengan baik dan sesuai dengan struktur yang telah ditentukan. Alternatif solusi dipertimbangkan, termasuk analisis biaya dan manfaat. Metodologinya jelas, didefinisikan, dipahami secara umum dan dapat diukur. Ada antarmuka yang jelas antara manajemen TI dan bisnis di Internet identifikasi dan penilaian solusi TI.', '5. Dioptimalkan saat Metodologi untuk identifikasi dan penilaian solusi TI terus mengalami peningkatan. Akuisisi dan metodologi implementasi memiliki fleksibilitas untuk proyek skala besar dan kecil. Metodologi ini didukung oleh internal dan database pengetahuan eksternal yang berisi bahan referensi tentang solusi teknologi. Metodologi itu sendiri menghasilkan dokumentasi dalam struktur yang telah ditentukan yang membuat produksi dan pemeliharaan efisien. Peluang baru sering diidentifikasi untuk memanfaatkan teknologi untuk mendapatkan keunggulan kompetitif, memengaruhi rekayasa ulang proses bisnis dan meningkatkan efisiensi secara keseluruhan. Manajemen mendeteksi dan bertindak jika solusi TI disetujui tanpa mempertimbangkan teknologi alternatif atau fungsional bisnis Persyaratan'),
(12, 'AI2', 'Acquire and maintain aplication software (memperoleh dan memelihara software aplikasi)', 'AI', '0. Tidak ada saat Tidak ada proses untuk merancang dan menentukan aplikasi. Biasanya, aplikasi diperoleh berdasarkan penawaran yang digerakkan oleh vendor, pengenalan merek atau keakraban staf TI dengan produk tertentu, dengan sedikit atau tanpa pertimbangan persyaratan sebenarnya.', '1. Inisial / Ad Hoc saat Ada kesadaran bahwa proses untuk mendapatkan dan memelihara aplikasi diperlukan. Pendekatan untuk memperoleh dan memelihara perangkat lunak aplikasi bervariasi dari proyek ke proyek. Beberapa solusi individu untuk persyaratan bisnis tertentu kemungkinan telah diperoleh secara independen, menghasilkan inefisiensi dengan pemeliharaan dan dukungan.', '2.  Berulang tapi Intuitif saat Ada beberapa proses yang berbeda, namun serupa, untuk memperoleh dan memelihara aplikasi berdasarkan keahlian dalam fungsi TI. Tingkat keberhasilan dengan aplikasi sangat tergantung pada keterampilan di rumah dan tingkat pengalaman dalam TI. Perawatan biasanya bermasalah dan menderita ketika pengetahuan internal hilang dari organisasi. Ada sedikit pertimbangan keamanan aplikasi dan ketersediaan dalam desain atau akuisisi perangkat lunak aplikasi', '3. Ditentukan saat Ada proses yang jelas, didefinisikan dan dipahami secara umum untuk akuisisi dan pemeliharaan perangkat lunak aplikasi. Proses ini adalah selaras dengan IT dan strategi bisnis. Suatu upaya dilakukan untuk menerapkan proses yang didokumentasikan secara konsisten di berbagai berbeda aplikasi dan proyek. Metodologi umumnya tidak fleksibel dan sulit untuk diterapkan dalam semua kasus, sehingga langkah-langkahnya mungkin dilewati. Kegiatan pemeliharaan direncanakan, dijadwalkan, dan terkoordinasi.', '4. Dikelola dan Diukur saat Ada metodologi formal dan dipahami dengan baik yang mencakup proses desain dan spesifikasi, kriteria untuk akuisisi, sebuah proses pengujian dan persyaratan untuk dokumentasi. Ada mekanisme persetujuan yang terdokumentasi dan disepakati untuk memastikan semuanya langkah-langkah diikuti dan pengecualian diotorisasi. Praktik dan prosedur berkembang dan sangat cocok untuk organisasi, digunakan oleh semua staf dan berlaku untuk sebagian besar persyaratan aplikasi.', '5. Dioptimalkan saat Praktik akuisisi dan pemeliharaan perangkat lunak aplikasi diselaraskan dengan proses yang ditentukan. Pendekatannya adalah komponen- berbasis, dengan aplikasi standar dan standar yang disesuaikan dengan kebutuhan bisnis. Pendekatannya adalah enterprisewideideide. Akuisisi dan metodologi perawatan sangat maju dan memungkinkan penyebaran cepat, memungkinkan untuk responsif dan fleksibilitas tinggi di menanggapi perubahan persyaratan bisnis. Akuisisi perangkat lunak aplikasi dan metodologi implementasi adalah mengalami peningkatan berkelanjutan dan didukung oleh database pengetahuan internal dan eksternal yang mengandung referensi bahan dan praktik yang baik. Metodologi menciptakan dokumentasi dalam struktur yang telah ditentukan yang membuat produksi dan perawatan yang efisien'),
(13, 'AI3', 'Acquire and maintain technology infratructure (memperoleh dan memelihara infrastruktur teknologi)', 'AI', '0. Tidak ada saat Mengelola infrastruktur teknologi tidak diakui sebagai topik yang cukup penting untuk ditangani.', '1. Inisial / Ad Hoc saat Ada perubahan yang dibuat untuk infrastruktur untuk setiap aplikasi baru, tanpa rencana keseluruhan. Meski ada kesadaran itu infrastruktur TI itu penting, tidak ada pendekatan keseluruhan yang konsisten. Aktivitas pemeliharaan bereaksi terhadap kebutuhan jangka pendek. Itu lingkungan produksi adalah lingkungan pengujian.', '2. Berulang tapi Intuitif saat Ada konsistensi antara pendekatan taktis ketika memperoleh dan memelihara infrastruktur TI. Akuisisi dan pemeliharaan infrastruktur TI tidak didasarkan pada strategi yang ditetapkan dan tidak mempertimbangkan kebutuhan aplikasi bisnis itu harus didukung. Ada pemahaman bahwa infrastruktur TI itu penting, didukung oleh beberapa praktik formal. Beberapa pemeliharaan dijadwalkan, tetapi tidak sepenuhnya dijadwalkan dan terkoordinasi. Untuk beberapa lingkungan, ada lingkungan pengujian terpisah.', '3. Ditentukan saat  Ada proses yang jelas, didefinisikan dan dipahami secara umum untuk memperoleh dan memelihara infrastruktur TI. Proses mendukung kebutuhan aplikasi bisnis yang kritis dan selaras dengan TI dan strategi bisnis, tetapi tidak diterapkan secara konsisten. Pemeliharaan adalah terencana, terjadwal dan terkoordinasi. Ada lingkungan terpisah untuk pengujian dan produksi.', '4. Dikelola dan Diukur saat  Proses akuisisi dan pemeliharaan untuk infrastruktur teknologi telah berkembang ke titik di mana ia bekerja dengan baik untuk sebagian besar situasi, diikuti secara konsisten dan difokuskan pada penggunaan kembali. Infrastruktur TI cukup mendukung aplikasi bisnis. Prosesnya terorganisasi dengan baik dan proaktif. Biaya dan waktu untuk mencapai tingkat skalabilitas, fleksibilitas, dan yang diharapkan integrasi sebagian dioptimalkan', '5. Dioptimalkan saat Proses akuisisi dan pemeliharaan untuk infrastruktur teknologi proaktif dan selaras dengan bisnis kritis aplikasi dan arsitektur teknologi. Praktik yang baik mengenai solusi teknologi diikuti, dan organisasi pun demikian mengetahui perkembangan platform terbaru dan alat manajemen. Biaya dikurangi dengan merasionalisasi dan menstandarkan infrastruktur komponen dan dengan menggunakan otomasi. Tingkat kesadaran teknis yang tinggi dapat mengidentifikasi cara optimal untuk meningkatkan secara proaktif kinerja, termasuk pertimbangan opsi alih daya. Infrastruktur TI dipandang sebagai penggerak utama untuk meningkatkan penggunaan IT.'),
(14, 'AI4', 'Enable operation and use (Memungkinkan operasi dan penggunaan)', 'AI', '0. Tidak ada saat Tidak ada proses yang berkaitan dengan produksi dokumentasi pengguna, manual operasi dan materi pelatihan. Itu hanya bahan yang ada yang disediakan dengan produk yang dibeli.', '1. Inisial / Ad Hoc saat Ada kesadaran bahwa proses dokumentasi diperlukan. Dokumentasi kadang-kadang diproduksi dan didistribusikan secara tidak konsisten untuk kelompok terbatas. Sebagian besar dokumentasi dan banyak prosedur sudah ketinggalan zaman. Materi pelatihan cenderung sekali saja skema dengan kualitas variabel. Hampir tidak ada integrasi prosedur di berbagai sistem dan unit bisnis. Tidak ada masukan dari unit bisnis dalam desain program pelatihan.', '2. Berulang tapi Intuitif saat Pendekatan serupa digunakan untuk menghasilkan prosedur dan dokumentasi, tetapi mereka tidak didasarkan pada pendekatan terstruktur atau kerangka. Tidak ada pendekatan yang seragam untuk pengembangan pengguna dan prosedur operasi. Materi pelatihan diproduksi oleh individu atau tim proyek, dan kualitas tergantung pada individu yang terlibat. Prosedur dan kualitas dukungan pengguna bervariasi dari yang buruk menjadi sangat baik, dengan sangat sedikit konsistensi dan integrasi di seluruh organisasi. Program pelatihan untuk bisnis dan pengguna disediakan atau difasilitasi, tetapi tidak ada rencana keseluruhan untuk peluncuran atau pengiriman pelatihan.', '3. Ditentukan saat Ada kerangka kerja yang didefinisikan dengan jelas, diterima dan dipahami untuk dokumentasi pengguna, manual operasi dan materi pelatihan. Prosedur disimpan dan dipelihara di perpustakaan formal dan dapat diakses oleh siapa saja yang perlu mengetahuinya. Koreksi ke dokumentasi dan prosedur dibuat secara reaktif. Prosedur tersedia secara offline dan dapat diakses dan dipelihara di kasus bencana. Ada proses yang menentukan pembaruan prosedur dan materi pelatihan untuk menjadi penyampaian perubahan secara eksplisit proyek. Meskipun ada pendekatan yang jelas, konten yang sebenarnya bervariasi karena tidak ada kontrol untuk menegakkan kepatuhan dengan standar. Pengguna secara informal terlibat dalam proses tersebut. Alat otomatis semakin banyak digunakan dalam generasi dan distribusi prosedur. Pelatihan bisnis dan pengguna direncanakan dan dijadwalkan', '4. Dikelola dan Diukur saat  Ada kerangka kerja yang ditetapkan untuk memelihara prosedur dan materi pelatihan yang memiliki dukungan manajemen TI. Pendekatan diambil untuk memelihara prosedur dan manual pelatihan mencakup semua sistem dan unit bisnis, sehingga proses dapat dilihat dari sebuah perspektif bisnis. Prosedur dan materi pelatihan diintegrasikan untuk mencakup interdependensi dan antarmuka. Kontrol ada untuk memastikan kepatuhan terhadap standar, dan prosedur dikembangkan dan dipelihara untuk semua proses. Umpan balik bisnis dan pengguna pada dokumentasi dan pelatihan dikumpulkan dan dinilai sebagai bagian dari proses peningkatan berkelanjutan. Dokumentasi dan pelatihan bahan biasanya pada tingkat keandalan dan ketersediaan yang dapat diprediksi dan baik. Proses yang muncul untuk menggunakan otomatis prosedur dokumentasi dan manajemen diimplementasikan. Pengembangan prosedur otomatis semakin terintegrasi dengan pengembangan sistem aplikasi yang memfasilitasi konsistensi dan akses pengguna. Pelatihan bisnis dan pengguna responsif terhadap kebutuhan bisnis. Manajemen TI sedang mengembangkan metrik untuk pengembangan dan pengiriman dokumentasi, materi pelatihan dan program pelatihan', '5. Dioptimalkan saat Proses untuk pengguna dan dokumentasi operasional terus ditingkatkan melalui adopsi alat atau metode baru. Itu bahan prosedur dan materi pelatihan diperlakukan sebagai basis pengetahuan yang terus berkembang yang dikelola secara elektronik menggunakan manajemen pengetahuan terkini, alur kerja dan teknologi distribusi, menjadikannya mudah diakses dan dirawat. Materi dokumentasi dan pelatihan diperbarui untuk mencerminkan perubahan organisasi, operasional, dan perangkat lunak. Pengembangan dari dokumentasi dan materi pelatihan dan penyampaian program pelatihan sepenuhnya terintegrasi dengan bisnis dan bisnis definisi proses, dengan demikian mendukung persyaratan organisasi, bukan hanya prosedur yang berorientasi pada TI');
INSERT INTO `it_proses` (`id_ITP`, `kode_subdomain`, `keterangan_domain`, `domain`, `non_existent`, `initial`, `repeatable`, `defined`, `managed`, `optimised`) VALUES
(15, 'AI5', 'Procure IT resources (Mendapatkan sumber daya TI)', 'AI', '0. Tidak ada saat Tidak ada proses pengadaan sumber daya TI yang ditetapkan. Organisasi tidak mengakui perlunya pengadaan yang jelas kebijakan dan prosedur untuk memastikan bahwa semua sumber daya TI tersedia secara tepat waktu dan hemat biaya', '1. Inisial / Ad Hoc saat Organisasi mengakui perlunya mendokumentasikan kebijakan dan prosedur yang menghubungkan akuisisi TI dengan bisnis keseluruhan proses pengadaan organisasi. Kontrak untuk akuisisi sumber daya TI dikembangkan dan dikelola oleh proyek manajer dan individu lain yang menjalankan penilaian profesional mereka alih-alih sebagai akibat dari prosedur dan kebijakan formal. Hanya ada hubungan ad hoc antara akuisisi perusahaan dan proses manajemen kontrak dan TI. Kontrak untuk akuisisi dikelola pada akhir proyek dan bukan secara berkelanjutan', '2. Berulang tapi Intuitif saat Ada kesadaran organisasi tentang perlunya memiliki kebijakan dan prosedur dasar untuk akuisisi TI. Kebijakan dan prosedur adalah sebagian terintegrasi dengan keseluruhan proses pengadaan organisasi bisnis. Proses pengadaan sebagian besar digunakan untuk yang besar dan proyek yang sangat terlihat. Tanggung jawab dan akuntabilitas untuk pengadaan TI dan manajemen kontrak ditentukan oleh pengalaman manajer kontrak individu. Pentingnya manajemen pemasok dan manajemen hubungan diakui; Namun, ini ditangani berdasarkan inisiatif individu. Proses kontrak sebagian besar digunakan oleh proyek-proyek besar atau sangat terlihat.', '3. Ditentukan saat Manajemen melembagakan kebijakan dan prosedur untuk akuisisi TI. Kebijakan dan prosedur dipandu oleh organisasi bisnis keseluruhan proses pengadaan. Akuisisi TI sebagian besar terintegrasi dengan sistem pengadaan bisnis secara keseluruhan. Standar TI untuk akuisisi sumber daya TI ada. Pemasok sumber daya TI diintegrasikan ke dalam mekanisme manajemen proyek organisasi dari perspektif manajemen kontrak. Manajemen TI mengkomunikasikan perlunya akuisisi dan kontrak yang tepat manajemen di seluruh fungsi TI.', '4. Dikelola dan Diukur saat Akuisisi TI sepenuhnya terintegrasi dengan sistem pengadaan bisnis secara keseluruhan. Standar TI untuk akuisisi sumber daya TI adalah digunakan untuk semua pengadaan. Pengukuran pada kontrak dan manajemen pengadaan dianggap relevan dengan kasus bisnis untuk TI perolehan. Pelaporan aktivitas akuisisi TI yang mendukung tujuan bisnis tersedia. Manajemen biasanya sadar pengecualian terhadap kebijakan dan prosedur untuk akuisisi TI. Manajemen hubungan yang strategis sedang berkembang. Manajemen TI memberlakukan penggunaan proses akuisisi dan manajemen kontrak untuk semua akuisisi dengan meninjau pengukuran kinerja', '5. Dioptimalkan saat Manajemen melembagakan proses pengadaan sumber daya menyeluruh untuk akuisisi TI. Manajemen menegakkan kepatuhan dengan kebijakan dan prosedur untuk akuisisi TI. Pengukuran pada kontrak dan manajemen pengadaan diambil yang relevan dengan kasus bisnis untuk akuisisi TI. Hubungan yang baik terjalin seiring waktu dengan sebagian besar pemasok dan mitra, dan kualitasnya hubungan diukur dan dipantau. Hubungan dikelola secara strategis. Standar, kebijakan dan prosedur TI untuk akuisisi sumber daya TI dikelola secara strategis dan menanggapi pengukuran proses. Manajemen TI mengkomunikasikan kepentingan strategis dari akuisisi yang tepat dan manajemen kontrak di seluruh fungsi TI'),
(16, 'AI6', 'Manage Changes (mengelola perubahan)', 'AI', '0. Tidak ada saat Tidak ada proses manajemen perubahan yang pasti, dan perubahan dapat dilakukan tanpa kontrol. Tidak ada kesadaran ituperubahan dapat mengganggu operasi TI dan bisnis, dan tidak ada kesadaran akan manfaat manajemen perubahan yang baik.', '1. Inisial / Ad Hoc saat Diakui bahwa perubahan harus dikelola dan dikendalikan. Praktiknya beragam, dan kemungkinan perubahan tidak sah terjadi. Ada dokumentasi perubahan yang buruk atau tidak ada, dan dokumentasi konfigurasi tidak lengkap dan tidak dapat diandalkan. Kesalahannya adalah kemungkinan terjadi bersamaan dengan gangguan pada lingkungan produksi yang disebabkan oleh manajemen perubahan yang buruk.', '2. Berulang tapi Intuitif saat Ada proses manajemen perubahan informal di tempat dan sebagian besar perubahan mengikuti pendekatan ini; Namun, itu tidak terstruktur, belum sempurna dan rawan kesalahan. Keakuratan dokumentasi konfigurasi tidak konsisten, dan hanya perencanaan dan dampak yang terbatas penilaian dilakukan sebelum perubahan.', '3. Ditentukan saat Ada proses manajemen perubahan formal yang ditetapkan di tempat, termasuk kategorisasi, penentuan prioritas, prosedur darurat, ubah otorisasi dan lepaskan manajemen, dan kepatuhan muncul. Penanganannya terjadi, dan prosesnya sering dilewati. Kesalahan dapat terjadi dan perubahan tidak sah terkadang terjadi. Analisis dampak perubahan TI pada bisnis operasi menjadi diformalkan, untuk mendukung peluncuran aplikasi dan teknologi baru yang direncanakan', '4. Dikelola dan Diukur saat Proses manajemen perubahan dikembangkan dengan baik dan diikuti secara konsisten untuk semua perubahan, dan manajemen yakin akan hal itu ada pengecualian minimal. Prosesnya efisien dan efektif, tetapi bergantung pada prosedur manual dan kontrol yang cukup memastikan kualitas yang dicapai. Semua perubahan tunduk pada perencanaan menyeluruh dan penilaian dampak untuk meminimalkan kemungkinan masalah pasca produksi. Proses persetujuan untuk perubahan sudah ada. Ubah dokumentasi manajemen terkini dan benar, dengan perubahan yang dilacak secara resmi. Dokumentasi konfigurasi umumnya akurat. Perencanaan dan manajemen perubahan TI implementasi menjadi lebih terintegrasi dengan perubahan dalam proses bisnis, untuk memastikan bahwa pelatihan, perubahan organisasi dan masalah kesinambungan bisnis dibahas. Ada peningkatan koordinasi antara manajemen perubahan TI dan proses bisnis mendesain ulang. Ada proses yang konsisten untuk memantau kualitas dan kinerja proses manajemen perubahan.', '5. Dioptimalkan saat Proses manajemen perubahan ditinjau dan diperbarui secara berkala untuk tetap sejalan dengan praktik yang baik. Proses peninjauan mencerminkan hasil pemantauan. Informasi konfigurasi berbasiskan komputer dan menyediakan kontrol versi. Pelacakan perubahan adalah canggih dan termasuk alat untuk mendeteksi perangkat lunak yang tidak sah dan tidak berlisensi. Manajemen perubahan TI terintegrasi dengan bisnis manajemen perubahan untuk memastikan bahwa TI adalah enabler dalam meningkatkan produktivitas dan menciptakan peluang bisnis baru untuk organisasi'),
(17, 'AI7', 'Install and accredit sulotions and changes (menginstal dan mengakreditasi sistem dan perubahannya)', 'AI', '0. Tidak ada saat Tidak ada proses instalasi atau akreditasi formal, dan tidak ada manajemen senior atau anggota staf TI mengenali kebutuhan untuk memverifikasi bahwa solusi cocok untuk tujuan yang dimaksud', '1. Inisial / Ad Hoc saat Ada kesadaran akan kebutuhan untuk memverifikasi dan mengkonfirmasi bahwa solusi yang diimplementasikan memenuhi tujuan yang dimaksud. Pengujian adalah dilakukan untuk beberapa proyek, tetapi inisiatif untuk pengujian diserahkan kepada masing-masing tim proyek, dan pendekatan yang diambil bervariasi. Akreditasi formal dan pengunduran diri jarang terjadi atau tidak ada.', '2. Berulang tapi Intuitif saat Ada beberapa konsistensi di antara pendekatan pengujian dan akreditasi, tetapi biasanya mereka tidak didasarkan pada metodologi apa pun. Tim pengembangan individu biasanya memutuskan pendekatan pengujian, dan biasanya tidak ada pengujian integrasi. Sana adalah proses persetujuan informal.', '3. Ditentukan saat  Metodologi formal yang berkaitan dengan instalasi, migrasi, konversi, dan penerimaan telah tersedia. Instalasi dan akreditasi TI proses diintegrasikan ke dalam siklus hidup sistem dan otomatis sampai batas tertentu. Pelatihan, pengujian dan transisi ke status produksi dan akreditasi cenderung bervariasi dari proses yang ditentukan, berdasarkan pada keputusan individu. Kualitas sistem yang masuk produksi tidak konsisten, dengan sistem baru sering menghasilkan tingkat masalah pasca-implementasi yang signifikan.', '4. Dikelola dan Diukur saat Prosedur diformalkan dan dikembangkan untuk dikelola dengan baik dan praktis dengan lingkungan pengujian dan akreditasi yang ditentukan Prosedur. Dalam praktiknya, semua perubahan besar pada sistem mengikuti pendekatan formal ini. Evaluasi memenuhi persyaratan pengguna adalah standar dan terukur, menghasilkan metrik yang dapat ditinjau dan dianalisis secara efektif oleh manajemen. Kualitas dari sistem yang memasuki produksi memuaskan manajemen bahkan dengan tingkat masalah pasca-implementasi yang masuk akal. Otomasi proses bersifat ad hoc dan bergantung pada proyek. Manajemen mungkin puas dengan tingkat efisiensi saat ini meskipun kurangnya evaluasi pasca-implementasi. Sistem pengujian mencerminkan lingkungan hidup secara memadai. Tes stres untuk yang baru sistem dan pengujian regresi untuk sistem yang ada diterapkan untuk proyek-proyek besar.', '5. Dioptimalkan saat Proses instalasi dan akreditasi telah disempurnakan ke tingkat praktik yang baik, berdasarkan hasil yang berkelanjutan perbaikan dan penyempurnaan. Instalasi dan proses akreditasi TI sepenuhnya terintegrasi ke dalam siklus hidup sistem dan terotomatisasi bila perlu, memfasilitasi pelatihan, pengujian, dan transisi yang paling efisien ke status produksi sistem baru. Lingkungan pengujian yang dikembangkan dengan baik, register masalah dan proses penyelesaian kesalahan memastikan transisi yang efisien dan efektif ke lingkungan produksi. Akreditasi biasanya terjadi tanpa pengerjaan ulang, dan masalah pasca-implementasi biasanya terbatas untuk koreksi kecil. Ulasan pasca implementasi distandarisasi, dengan pelajaran yang dipetik disalurkan kembali ke proses untuk memastikan peningkatan kualitas yang berkelanjutan. Pengujian tekanan untuk sistem baru dan pengujian regresi untuk sistem yang dimodifikasi diterapkan secara konsisten'),
(18, 'DS1', 'Define and manage service levels (menentukan dan mengelola tingkat layanan)', 'DS', '', '', '', '', '', ''),
(19, 'DS2', 'Manage third-party services (mengelola layanan pihak ketiga)', 'DS', '', '', '', '', '', ''),
(20, 'DS3', 'Manage performance and capacity (mengelola performa dan kapasitas)', 'DS', '', '', '', '', '', ''),
(21, 'DS4', 'Ensure Contuous System (menyakinkan keberlanjutan sistem)', 'DS', '', '', '', '', '', ''),
(22, 'DS5', 'Ensure system security (memastikan keamanan sistem)', 'DS', '', '', '', '', '', ''),
(23, 'DS6', 'Identify and allocate costs (identifikasi dan alokasi biaya)', 'DS', '', '', '', '', '', ''),
(24, 'DS7', 'Educate and train users (mendidik dan melatih pengguna)', 'DS', '', '', '', '', '', ''),
(25, 'DS8', 'Manage service desk and incidents', 'DS', '', '', '', '', '', ''),
(26, 'DS9', 'Manage the konfiguration (mengelola konfirugasi)', 'DS', '', '', '', '', '', ''),
(27, 'DS10', 'Manage problems (mengelola masalah)', 'DS', '', '', '', '', '', ''),
(28, 'DS11', 'Manage data (mengelola data)', 'DS', '', '', '', '', '', ''),
(29, 'DS12', 'Manage the phisycal enviroment (mengelola lingkungan fisik)', 'DS', '', '', '', '', '', ''),
(30, 'DS13', 'Manage operations (mengelola operasi)', 'DS', '', '', '', '', '', ''),
(31, 'ME1', 'ME1 Monitor and evaluate IT Performance (memonitor dan mengavaluasi kinerja TI)', 'ME', '', '', '', '', '', ''),
(32, 'ME2', 'ME2 Monitor and evaluate internal control (mengawasi dan mengavaluasi kelayakan kontrol internal)', 'ME', '', '', '', '', '', ''),
(33, 'ME3', 'Ensure compliance with external requirments ( Memastikan Kepatuhan dengan Kebutuhan External).', 'ME', '', '', '', '', '', ''),
(34, 'ME4', 'Provide IT governance (Menyediakan Tata Kelola).', 'ME', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alamat` text,
  `provinsi` varchar(30) DEFAULT NULL,
  `negara` varchar(30) DEFAULT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `status_validasi` int(11) NOT NULL,
  `id_auditor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `alamat`, `provinsi`, `negara`, `telp`, `email`, `npwp`, `status_validasi`, `id_auditor`) VALUES
(1, 'Pusat Teknologi Informasi dan Pangkal Data (PTIPD)', 'Jl. Raya Pekanbaru - Bangkinang, Simpang Baru, Kec. Tampan, Kota Pekanbaru, Riau 28293', 'Riau', 'indonesia', '0761-562223 ', 'humas@uin-suska.ac.id', '-', 1, 1),
(2, 'Rumah Sakit Umum Daerah Arifin Achmad Pekanbaru', 'Jl. Diponegoro No. 2, Sumahilang, Kec Pekanbaru Kota,Kota pekanbaru, Riau 28156', 'Riau', 'indonesia', '(0761)12618', 'rsudarifinachmmad@riau.go.id', '-', 1, 1),
(3, 'Universitas Pahlawan', 'Jalan tuanku tambusai bangkinang, Kampar', 'Riau', 'indonesia', '0812-09888', 'universitas.pahlawan@up.ac.id', '555321920102', 1, 1),
(5, 'PT Riau Media Televisi', 'Komp. Riau Pos Grup, Jl. HR. Soebrantas KM 10.5 Pekanbaru ', 'Riau', 'Indonesia', '(0761)567486', '-', '-', 1, 1),
(6, 'Badan Pendapatan Daerah Provinsi Riau', 'Jalan Jend. Sudirman No. 6 Simpang tiga, Sidumulyo Timur, Kec. Marpoyan Damai, Kota Pekanbaru, Riau', 'Riau', 'indonesia', '(0761) 707985', 'adminweb.dipenda@riau.go.id', '-', 1, 1),
(8, 'Universitas Andalas', 'Jalan KH Agus Salim Padang', 'Sumatera Barat', 'indonesia', '09172-29909', 'Humas@uni.andalas.ac.id', '-', 0, 1),
(9, 'Universitas Indonesia', 'Jl, Kebayoran Lama Depok', 'DKI Jakarta', 'Indonesia', '(0761)12618', 'Humas@ui.ac.id', '118871622', 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_quisioner`
--

CREATE TABLE `riwayat_quisioner` (
  `id_rq` int(11) NOT NULL,
  `id_audite` int(11) NOT NULL,
  `id_cobitisasi` int(11) NOT NULL,
  `waktu_pelaksanaan` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jawaban_quisioner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `riwayat_quisioner`
--

INSERT INTO `riwayat_quisioner` (`id_rq`, `id_audite`, `id_cobitisasi`, `waktu_pelaksanaan`, `jawaban_quisioner`) VALUES
(3, 15, 2, '2019-10-22 14:25:05', '[{"id_q":"1","jawaban":"5"},{"id_q":"2","jawaban":"5"},{"id_q":"3","jawaban":"5"},{"id_q":"4","jawaban":"5"},{"id_q":"5","jawaban":"1"},{"id_q":"6","jawaban":"5"},{"id_q":"7","jawaban":"5"},{"id_q":"8","jawaban":"3"},{"id_q":"9","jawaban":"3"},{"id_q":"10","jawaban":"5"},{"id_q":"11","jawaban":"1"},{"id_q":"12","jawaban":"1"},{"id_q":"13","jawaban":"5"},{"id_q":"14","jawaban":"3"},{"id_q":"15","jawaban":"3"},{"id_q":"16","jawaban":"3"},{"id_q":"17","jawaban":"5"},{"id_q":"18","jawaban":"0"},{"id_q":"19","jawaban":"1"},{"id_q":"20","jawaban":"1"},{"id_q":"21","jawaban":"4"},{"id_q":"22","jawaban":"5"},{"id_q":"23","jawaban":"4"},{"id_q":"24","jawaban":"4"},{"id_q":"25","jawaban":"5"},{"id_q":"26","jawaban":"5"},{"id_q":"27","jawaban":"5"},{"id_q":"28","jawaban":"3"},{"id_q":"29","jawaban":"5"},{"id_q":"30","jawaban":"5"},{"id_q":"31","jawaban":"5"},{"id_q":"32","jawaban":"5"},{"id_q":"33","jawaban":"4"},{"id_q":"34","jawaban":"5"},{"id_q":"35","jawaban":"5"},{"id_q":"36","jawaban":"5"},{"id_q":"37","jawaban":"1"},{"id_q":"38","jawaban":"5"},{"id_q":"39","jawaban":"5"},{"id_q":"40","jawaban":"5"},{"id_q":"41","jawaban":"5"},{"id_q":"42","jawaban":"1"},{"id_q":"43","jawaban":"5"},{"id_q":"44","jawaban":"5"},{"id_q":"45","jawaban":"1"},{"id_q":"46","jawaban":"5"},{"id_q":"47","jawaban":"5"},{"id_q":"48","jawaban":"5"},{"id_q":"49","jawaban":"5"},{"id_q":"50","jawaban":"5"},{"id_q":"51","jawaban":"4"},{"id_q":"52","jawaban":"1"},{"id_q":"53","jawaban":"5"},{"id_q":"54","jawaban":"4"},{"id_q":"55","jawaban":"5"},{"id_q":"56","jawaban":"5"},{"id_q":"57","jawaban":"5"},{"id_q":"59","jawaban":"5"},{"id_q":"60","jawaban":"5"},{"id_q":"61","jawaban":"5"},{"id_q":"62","jawaban":"5"},{"id_q":"63","jawaban":"5"},{"id_q":"64","jawaban":"5"},{"id_q":"65","jawaban":"5"},{"id_q":"66","jawaban":"4"},{"id_q":"67","jawaban":"5"},{"id_q":"68","jawaban":"5"},{"id_q":"69","jawaban":"5"},{"id_q":"70","jawaban":"5"},{"id_q":"71","jawaban":"5"},{"id_q":"72","jawaban":"5"},{"id_q":"73","jawaban":"4"},{"id_q":"74","jawaban":"4"},{"id_q":"75","jawaban":"5"},{"id_q":"76","jawaban":"5"},{"id_q":"77","jawaban":"5"},{"id_q":"78","jawaban":"5"},{"id_q":"80","jawaban":"5"},{"id_q":"81","jawaban":"5"},{"id_q":"82","jawaban":"5"},{"id_q":"83","jawaban":"5"},{"id_q":"84","jawaban":"2"},{"id_q":"85","jawaban":"5"},{"id_q":"86","jawaban":"5"},{"id_q":"87","jawaban":"5"},{"id_q":"88","jawaban":"5"},{"id_q":"89","jawaban":"1"},{"id_q":"90","jawaban":"4"},{"id_q":"91","jawaban":"4"},{"id_q":"92","jawaban":"5"},{"id_q":"93","jawaban":"5"},{"id_q":"94","jawaban":"5"},{"id_q":"95","jawaban":"5"},{"id_q":"96","jawaban":"5"},{"id_q":"97","jawaban":"5"},{"id_q":"98","jawaban":"5"},{"id_q":"99","jawaban":"5"},{"id_q":"100","jawaban":"5"},{"id_q":"101","jawaban":"5"},{"id_q":"102","jawaban":"5"},{"id_q":"103","jawaban":"4"},{"id_q":"104","jawaban":"4"},{"id_q":"105","jawaban":"5"},{"id_q":"106","jawaban":"5"},{"id_q":"107","jawaban":"4"},{"id_q":"108","jawaban":"4"},{"id_q":"109","jawaban":"4"},{"id_q":"110","jawaban":"5"},{"id_q":"111","jawaban":"4"},{"id_q":"112","jawaban":"4"},{"id_q":"113","jawaban":"5"},{"id_q":"114","jawaban":"5"},{"id_q":"115","jawaban":"5"},{"id_q":"116","jawaban":"4"},{"id_q":"117","jawaban":"5"},{"id_q":"118","jawaban":"5"},{"id_q":"119","jawaban":"5"},{"id_q":"120","jawaban":"4"},{"id_q":"121","jawaban":"5"},{"id_q":"124","jawaban":"4"},{"id_q":"125","jawaban":"4"},{"id_q":"126","jawaban":"5"},{"id_q":"127","jawaban":"5"},{"id_q":"128","jawaban":"5"},{"id_q":"129","jawaban":"5"},{"id_q":"130","jawaban":"5"},{"id_q":"131","jawaban":"4"},{"id_q":"132","jawaban":"4"},{"id_q":"133","jawaban":"5"},{"id_q":"134","jawaban":"5"},{"id_q":"135","jawaban":"5"},{"id_q":"136","jawaban":"5"},{"id_q":"137","jawaban":"5"},{"id_q":"138","jawaban":"5"},{"id_q":"139","jawaban":"4"},{"id_q":"140","jawaban":"1"},{"id_q":"141","jawaban":"5"},{"id_q":"142","jawaban":"5"},{"id_q":"143","jawaban":"5"},{"id_q":"144","jawaban":"5"},{"id_q":"145","jawaban":"5"},{"id_q":"146","jawaban":"5"},{"id_q":"147","jawaban":"1"},{"id_q":"148","jawaban":"4"},{"id_q":"149","jawaban":"1"},{"id_q":"150","jawaban":"4"},{"id_q":"151","jawaban":"5"},{"id_q":"152","jawaban":"5"},{"id_q":"153","jawaban":"5"},{"id_q":"154","jawaban":"5"},{"id_q":"155","jawaban":"5"},{"id_q":"156","jawaban":"5"},{"id_q":"157","jawaban":"5"},{"id_q":"158","jawaban":"5"},{"id_q":"159","jawaban":"4"},{"id_q":"160","jawaban":"5"},{"id_q":"161","jawaban":"5"},{"id_q":"162","jawaban":"5"},{"id_q":"163","jawaban":"4"},{"id_q":"164","jawaban":"4"},{"id_q":"165","jawaban":"5"},{"id_q":"167","jawaban":"5"},{"id_q":"168","jawaban":"5"},{"id_q":"169","jawaban":"5"},{"id_q":"170","jawaban":"1"},{"id_q":"171","jawaban":"5"},{"id_q":"172","jawaban":"5"},{"id_q":"173","jawaban":"5"},{"id_q":"174","jawaban":"5"},{"id_q":"175","jawaban":"4"},{"id_q":"176","jawaban":"5"},{"id_q":"177","jawaban":"5"},{"id_q":"178","jawaban":"4"},{"id_q":"179","jawaban":"4"},{"id_q":"180","jawaban":"4"},{"id_q":"181","jawaban":"5"},{"id_q":"182","jawaban":"5"},{"id_q":"183","jawaban":"5"},{"id_q":"184","jawaban":"5"},{"id_q":"185","jawaban":"5"},{"id_q":"186","jawaban":"5"},{"id_q":"187","jawaban":"5"},{"id_q":"188","jawaban":"5"},{"id_q":"189","jawaban":"5"},{"id_q":"190","jawaban":"5"},{"id_q":"191","jawaban":"5"},{"id_q":"192","jawaban":"5"},{"id_q":"193","jawaban":"4"},{"id_q":"194","jawaban":"5"},{"id_q":"195","jawaban":"4"},{"id_q":"196","jawaban":"5"},{"id_q":"197","jawaban":"5"},{"id_q":"198","jawaban":"5"},{"id_q":"199","jawaban":"5"},{"id_q":"200","jawaban":"5"},{"id_q":"201","jawaban":"5"},{"id_q":"202","jawaban":"5"},{"id_q":"208","jawaban":"5"},{"id_q":"209","jawaban":"0"},{"id_q":"210","jawaban":"5"},{"id_q":"211","jawaban":"5"},{"id_q":"212","jawaban":"0"},{"id_q":"213","jawaban":"5"},{"id_q":"214","jawaban":"1"}]'),
(5, 16, 2, '2019-10-22 18:43:11', '[{"id_q":"1","jawaban":"2"},{"id_q":"2","jawaban":"3"},{"id_q":"3","jawaban":"2"},{"id_q":"4","jawaban":"3"},{"id_q":"5","jawaban":"3"},{"id_q":"6","jawaban":"3"},{"id_q":"7","jawaban":"3"},{"id_q":"8","jawaban":"2"},{"id_q":"9","jawaban":"3"},{"id_q":"10","jawaban":"3"},{"id_q":"11","jawaban":"4"},{"id_q":"12","jawaban":"3"},{"id_q":"13","jawaban":"2"},{"id_q":"14","jawaban":"3"},{"id_q":"15","jawaban":"4"},{"id_q":"16","jawaban":"3"},{"id_q":"17","jawaban":"4"},{"id_q":"18","jawaban":"2"},{"id_q":"19","jawaban":"4"},{"id_q":"20","jawaban":"2"},{"id_q":"21","jawaban":"3"},{"id_q":"22","jawaban":"2"},{"id_q":"23","jawaban":"3"},{"id_q":"24","jawaban":"2"},{"id_q":"25","jawaban":"4"},{"id_q":"26","jawaban":"5"},{"id_q":"27","jawaban":"4"},{"id_q":"28","jawaban":"4"},{"id_q":"29","jawaban":"3"},{"id_q":"30","jawaban":"5"},{"id_q":"31","jawaban":"4"},{"id_q":"32","jawaban":"3"},{"id_q":"33","jawaban":"1"},{"id_q":"34","jawaban":"2"},{"id_q":"35","jawaban":"3"},{"id_q":"36","jawaban":"1"},{"id_q":"37","jawaban":"1"},{"id_q":"38","jawaban":"1"},{"id_q":"39","jawaban":"3"},{"id_q":"40","jawaban":"2"},{"id_q":"41","jawaban":"2"},{"id_q":"42","jawaban":"3"},{"id_q":"43","jawaban":"4"},{"id_q":"44","jawaban":"2"},{"id_q":"45","jawaban":"1"},{"id_q":"46","jawaban":"0"},{"id_q":"47","jawaban":"3"},{"id_q":"48","jawaban":"3"},{"id_q":"49","jawaban":"2"},{"id_q":"50","jawaban":"2"},{"id_q":"51","jawaban":"3"},{"id_q":"52","jawaban":"3"},{"id_q":"53","jawaban":"2"},{"id_q":"54","jawaban":"3"},{"id_q":"55","jawaban":"3"},{"id_q":"56","jawaban":"2"},{"id_q":"57","jawaban":"1"},{"id_q":"59","jawaban":"2"},{"id_q":"60","jawaban":"3"},{"id_q":"61","jawaban":"3"},{"id_q":"62","jawaban":"2"},{"id_q":"63","jawaban":"4"},{"id_q":"64","jawaban":"2"},{"id_q":"65","jawaban":"1"},{"id_q":"66","jawaban":"1"},{"id_q":"67","jawaban":"1"},{"id_q":"68","jawaban":"3"},{"id_q":"69","jawaban":"3"},{"id_q":"70","jawaban":"3"},{"id_q":"71","jawaban":"3"},{"id_q":"72","jawaban":"2"},{"id_q":"73","jawaban":"2"},{"id_q":"74","jawaban":"1"},{"id_q":"75","jawaban":"1"},{"id_q":"76","jawaban":"3"},{"id_q":"77","jawaban":"4"},{"id_q":"78","jawaban":"3"},{"id_q":"80","jawaban":"4"},{"id_q":"81","jawaban":"3"},{"id_q":"82","jawaban":"1"},{"id_q":"83","jawaban":"2"},{"id_q":"84","jawaban":"2"},{"id_q":"85","jawaban":"2"},{"id_q":"86","jawaban":"2"},{"id_q":"87","jawaban":"2"},{"id_q":"88","jawaban":"2"},{"id_q":"89","jawaban":"3"},{"id_q":"90","jawaban":"4"},{"id_q":"91","jawaban":"3"},{"id_q":"92","jawaban":"2"},{"id_q":"93","jawaban":"2"},{"id_q":"94","jawaban":"2"},{"id_q":"95","jawaban":"3"},{"id_q":"96","jawaban":"3"},{"id_q":"97","jawaban":"3"},{"id_q":"98","jawaban":"3"},{"id_q":"99","jawaban":"3"},{"id_q":"100","jawaban":"2"},{"id_q":"101","jawaban":"2"},{"id_q":"102","jawaban":"2"},{"id_q":"103","jawaban":"2"},{"id_q":"104","jawaban":"3"},{"id_q":"105","jawaban":"3"},{"id_q":"106","jawaban":"3"},{"id_q":"107","jawaban":"3"},{"id_q":"108","jawaban":"2"},{"id_q":"109","jawaban":"2"},{"id_q":"110","jawaban":"3"},{"id_q":"111","jawaban":"3"},{"id_q":"112","jawaban":"3"},{"id_q":"113","jawaban":"2"},{"id_q":"114","jawaban":"2"},{"id_q":"115","jawaban":"3"},{"id_q":"116","jawaban":"5"},{"id_q":"117","jawaban":"5"},{"id_q":"118","jawaban":"4"},{"id_q":"119","jawaban":"4"},{"id_q":"120","jawaban":"4"},{"id_q":"121","jawaban":"5"},{"id_q":"124","jawaban":"3"},{"id_q":"125","jawaban":"3"},{"id_q":"126","jawaban":"3"},{"id_q":"127","jawaban":"3"},{"id_q":"128","jawaban":"3"},{"id_q":"129","jawaban":"5"},{"id_q":"130","jawaban":"2"},{"id_q":"131","jawaban":"3"},{"id_q":"132","jawaban":"2"},{"id_q":"133","jawaban":"4"},{"id_q":"134","jawaban":"3"},{"id_q":"135","jawaban":"3"},{"id_q":"136","jawaban":"2"},{"id_q":"137","jawaban":"3"},{"id_q":"138","jawaban":"4"},{"id_q":"139","jawaban":"2"},{"id_q":"140","jawaban":"3"},{"id_q":"141","jawaban":"3"},{"id_q":"142","jawaban":"2"},{"id_q":"143","jawaban":"4"},{"id_q":"144","jawaban":"4"},{"id_q":"145","jawaban":"3"},{"id_q":"146","jawaban":"5"},{"id_q":"147","jawaban":"3"},{"id_q":"148","jawaban":"4"},{"id_q":"149","jawaban":"2"},{"id_q":"150","jawaban":"3"},{"id_q":"151","jawaban":"4"},{"id_q":"152","jawaban":"2"},{"id_q":"153","jawaban":"3"},{"id_q":"154","jawaban":"3"},{"id_q":"155","jawaban":"4"},{"id_q":"156","jawaban":"4"},{"id_q":"157","jawaban":"3"},{"id_q":"158","jawaban":"3"},{"id_q":"159","jawaban":"3"},{"id_q":"160","jawaban":"4"},{"id_q":"161","jawaban":"2"},{"id_q":"162","jawaban":"3"},{"id_q":"163","jawaban":"2"},{"id_q":"164","jawaban":"3"},{"id_q":"165","jawaban":"2"},{"id_q":"167","jawaban":"3"},{"id_q":"168","jawaban":"0"},{"id_q":"169","jawaban":"3"},{"id_q":"170","jawaban":"3"},{"id_q":"171","jawaban":"2"},{"id_q":"172","jawaban":"3"},{"id_q":"173","jawaban":"3"},{"id_q":"174","jawaban":"2"},{"id_q":"175","jawaban":"2"},{"id_q":"176","jawaban":"3"},{"id_q":"177","jawaban":"1"},{"id_q":"178","jawaban":"2"},{"id_q":"179","jawaban":"1"},{"id_q":"180","jawaban":"4"},{"id_q":"181","jawaban":"2"},{"id_q":"182","jawaban":"3"},{"id_q":"183","jawaban":"3"},{"id_q":"184","jawaban":"2"},{"id_q":"185","jawaban":"3"},{"id_q":"186","jawaban":"3"},{"id_q":"187","jawaban":"3"},{"id_q":"188","jawaban":"2"},{"id_q":"189","jawaban":"3"},{"id_q":"190","jawaban":"3"},{"id_q":"191","jawaban":"3"},{"id_q":"192","jawaban":"3"},{"id_q":"193","jawaban":"3"},{"id_q":"194","jawaban":"3"},{"id_q":"195","jawaban":"3"},{"id_q":"196","jawaban":"2"},{"id_q":"197","jawaban":"2"},{"id_q":"198","jawaban":"3"},{"id_q":"199","jawaban":"2"},{"id_q":"200","jawaban":"3"},{"id_q":"201","jawaban":"2"},{"id_q":"202","jawaban":"3"},{"id_q":"208","jawaban":"2"},{"id_q":"209","jawaban":"3"},{"id_q":"210","jawaban":"2"},{"id_q":"211","jawaban":"3"},{"id_q":"212","jawaban":"3"},{"id_q":"213","jawaban":"1"},{"id_q":"214","jawaban":"3"}]'),
(7, 14, 2, '2019-10-22 18:48:47', '[{"id_q":"1","jawaban":"1"},{"id_q":"2","jawaban":"3"},{"id_q":"3","jawaban":"2"},{"id_q":"4","jawaban":"3"},{"id_q":"5","jawaban":"2"},{"id_q":"6","jawaban":"3"},{"id_q":"7","jawaban":"3"},{"id_q":"8","jawaban":"3"},{"id_q":"9","jawaban":"3"},{"id_q":"10","jawaban":"2"},{"id_q":"11","jawaban":"4"},{"id_q":"12","jawaban":"2"},{"id_q":"13","jawaban":"4"},{"id_q":"14","jawaban":"3"},{"id_q":"15","jawaban":"2"},{"id_q":"16","jawaban":"3"},{"id_q":"17","jawaban":"3"},{"id_q":"18","jawaban":"2"},{"id_q":"19","jawaban":"3"},{"id_q":"20","jawaban":"1"},{"id_q":"21","jawaban":"1"},{"id_q":"22","jawaban":"1"},{"id_q":"23","jawaban":"1"},{"id_q":"24","jawaban":"1"},{"id_q":"25","jawaban":"2"},{"id_q":"26","jawaban":"3"},{"id_q":"27","jawaban":"4"},{"id_q":"28","jawaban":"3"},{"id_q":"29","jawaban":"3"},{"id_q":"30","jawaban":"4"},{"id_q":"31","jawaban":"2"},{"id_q":"32","jawaban":"2"},{"id_q":"33","jawaban":"1"},{"id_q":"34","jawaban":"1"},{"id_q":"35","jawaban":"2"},{"id_q":"36","jawaban":"3"},{"id_q":"37","jawaban":"2"},{"id_q":"38","jawaban":"1"},{"id_q":"39","jawaban":"1"},{"id_q":"40","jawaban":"1"},{"id_q":"41","jawaban":"1"},{"id_q":"42","jawaban":"3"},{"id_q":"43","jawaban":"2"},{"id_q":"44","jawaban":"1"},{"id_q":"45","jawaban":"3"},{"id_q":"46","jawaban":"2"},{"id_q":"47","jawaban":"2"},{"id_q":"48","jawaban":"2"},{"id_q":"49","jawaban":"2"},{"id_q":"50","jawaban":"2"},{"id_q":"51","jawaban":"2"},{"id_q":"52","jawaban":"2"},{"id_q":"53","jawaban":"2"},{"id_q":"54","jawaban":"2"},{"id_q":"55","jawaban":"3"},{"id_q":"56","jawaban":"3"},{"id_q":"57","jawaban":"2"},{"id_q":"59","jawaban":"2"},{"id_q":"60","jawaban":"3"},{"id_q":"61","jawaban":"3"},{"id_q":"62","jawaban":"2"},{"id_q":"63","jawaban":"3"},{"id_q":"64","jawaban":"3"},{"id_q":"65","jawaban":"3"},{"id_q":"66","jawaban":"2"},{"id_q":"67","jawaban":"2"},{"id_q":"68","jawaban":"2"},{"id_q":"69","jawaban":"2"},{"id_q":"70","jawaban":"2"},{"id_q":"71","jawaban":"2"},{"id_q":"72","jawaban":"3"},{"id_q":"73","jawaban":"3"},{"id_q":"74","jawaban":"3"},{"id_q":"75","jawaban":"2"},{"id_q":"76","jawaban":"1"},{"id_q":"77","jawaban":"2"},{"id_q":"78","jawaban":"3"},{"id_q":"80","jawaban":"2"},{"id_q":"81","jawaban":"2"},{"id_q":"82","jawaban":"2"},{"id_q":"83","jawaban":"3"},{"id_q":"84","jawaban":"2"},{"id_q":"85","jawaban":"0"},{"id_q":"86","jawaban":"3"},{"id_q":"87","jawaban":"4"},{"id_q":"88","jawaban":"5"},{"id_q":"89","jawaban":"4"},{"id_q":"90","jawaban":"4"},{"id_q":"91","jawaban":"4"},{"id_q":"92","jawaban":"5"},{"id_q":"93","jawaban":"4"},{"id_q":"94","jawaban":"5"},{"id_q":"95","jawaban":"5"},{"id_q":"96","jawaban":"4"},{"id_q":"97","jawaban":"2"},{"id_q":"98","jawaban":"2"},{"id_q":"99","jawaban":"2"},{"id_q":"100","jawaban":"2"},{"id_q":"101","jawaban":"3"},{"id_q":"102","jawaban":"3"},{"id_q":"103","jawaban":"3"},{"id_q":"104","jawaban":"2"},{"id_q":"105","jawaban":"1"},{"id_q":"106","jawaban":"1"},{"id_q":"107","jawaban":"1"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"2"},{"id_q":"110","jawaban":"3"},{"id_q":"111","jawaban":"3"},{"id_q":"112","jawaban":"2"},{"id_q":"113","jawaban":"3"},{"id_q":"114","jawaban":"3"},{"id_q":"115","jawaban":"2"},{"id_q":"116","jawaban":"2"},{"id_q":"117","jawaban":"2"},{"id_q":"118","jawaban":"0"},{"id_q":"119","jawaban":"2"},{"id_q":"120","jawaban":"2"},{"id_q":"121","jawaban":"3"},{"id_q":"124","jawaban":"3"},{"id_q":"125","jawaban":"2"},{"id_q":"126","jawaban":"3"},{"id_q":"127","jawaban":"5"},{"id_q":"128","jawaban":"4"},{"id_q":"129","jawaban":"4"},{"id_q":"130","jawaban":"5"},{"id_q":"131","jawaban":"3"},{"id_q":"132","jawaban":"3"},{"id_q":"133","jawaban":"4"},{"id_q":"134","jawaban":"3"},{"id_q":"135","jawaban":"4"},{"id_q":"136","jawaban":"3"},{"id_q":"137","jawaban":"4"},{"id_q":"138","jawaban":"3"},{"id_q":"139","jawaban":"4"},{"id_q":"140","jawaban":"3"},{"id_q":"141","jawaban":"4"},{"id_q":"142","jawaban":"4"},{"id_q":"143","jawaban":"3"},{"id_q":"144","jawaban":"4"},{"id_q":"145","jawaban":"3"},{"id_q":"146","jawaban":"4"},{"id_q":"147","jawaban":"3"},{"id_q":"148","jawaban":"3"},{"id_q":"149","jawaban":"4"},{"id_q":"150","jawaban":"4"},{"id_q":"151","jawaban":"3"},{"id_q":"152","jawaban":"4"},{"id_q":"153","jawaban":"2"},{"id_q":"154","jawaban":"1"},{"id_q":"155","jawaban":"1"},{"id_q":"156","jawaban":"3"},{"id_q":"157","jawaban":"2"},{"id_q":"158","jawaban":"2"},{"id_q":"159","jawaban":"2"},{"id_q":"160","jawaban":"1"},{"id_q":"161","jawaban":"3"},{"id_q":"162","jawaban":"2"},{"id_q":"163","jawaban":"3"},{"id_q":"164","jawaban":"2"},{"id_q":"165","jawaban":"3"},{"id_q":"167","jawaban":"3"},{"id_q":"168","jawaban":"3"},{"id_q":"169","jawaban":"2"},{"id_q":"170","jawaban":"1"},{"id_q":"171","jawaban":"4"},{"id_q":"172","jawaban":"3"},{"id_q":"173","jawaban":"3"},{"id_q":"174","jawaban":"2"},{"id_q":"175","jawaban":"3"},{"id_q":"176","jawaban":"3"},{"id_q":"177","jawaban":"3"},{"id_q":"178","jawaban":"2"},{"id_q":"179","jawaban":"3"},{"id_q":"180","jawaban":"3"},{"id_q":"181","jawaban":"2"},{"id_q":"182","jawaban":"3"},{"id_q":"183","jawaban":"2"},{"id_q":"184","jawaban":"3"},{"id_q":"185","jawaban":"2"},{"id_q":"186","jawaban":"2"},{"id_q":"187","jawaban":"2"},{"id_q":"188","jawaban":"3"},{"id_q":"189","jawaban":"3"},{"id_q":"190","jawaban":"2"},{"id_q":"191","jawaban":"3"},{"id_q":"192","jawaban":"4"},{"id_q":"193","jawaban":"2"},{"id_q":"194","jawaban":"1"},{"id_q":"195","jawaban":"2"},{"id_q":"196","jawaban":"4"},{"id_q":"197","jawaban":"4"},{"id_q":"198","jawaban":"5"},{"id_q":"199","jawaban":"4"},{"id_q":"200","jawaban":"3"},{"id_q":"201","jawaban":"4"},{"id_q":"202","jawaban":"5"},{"id_q":"208","jawaban":"5"},{"id_q":"209","jawaban":"5"},{"id_q":"210","jawaban":"5"},{"id_q":"211","jawaban":"4"},{"id_q":"212","jawaban":"5"},{"id_q":"213","jawaban":"5"},{"id_q":"214","jawaban":"5"}]'),
(8, 7, 3, '2019-10-22 19:31:10', '[{"id_q":"1","jawaban":"3"},{"id_q":"2","jawaban":"3"},{"id_q":"3","jawaban":"3"},{"id_q":"4","jawaban":"3"},{"id_q":"5","jawaban":"3"},{"id_q":"6","jawaban":"4"},{"id_q":"11","jawaban":"3"},{"id_q":"12","jawaban":"3"},{"id_q":"13","jawaban":"3"},{"id_q":"14","jawaban":"3"},{"id_q":"15","jawaban":"3"},{"id_q":"16","jawaban":"3"},{"id_q":"17","jawaban":"3"},{"id_q":"18","jawaban":"3"},{"id_q":"19","jawaban":"3"},{"id_q":"20","jawaban":"3"},{"id_q":"21","jawaban":"3"},{"id_q":"22","jawaban":"3"},{"id_q":"23","jawaban":"3"},{"id_q":"24","jawaban":"3"},{"id_q":"25","jawaban":"3"},{"id_q":"26","jawaban":"3"},{"id_q":"27","jawaban":"3"},{"id_q":"28","jawaban":"3"},{"id_q":"29","jawaban":"3"},{"id_q":"30","jawaban":"3"},{"id_q":"31","jawaban":"3"},{"id_q":"32","jawaban":"3"},{"id_q":"33","jawaban":"3"},{"id_q":"34","jawaban":"3"},{"id_q":"35","jawaban":"3"},{"id_q":"36","jawaban":"3"},{"id_q":"37","jawaban":"3"},{"id_q":"38","jawaban":"3"},{"id_q":"39","jawaban":"3"},{"id_q":"40","jawaban":"3"},{"id_q":"62","jawaban":"3"},{"id_q":"63","jawaban":"3"},{"id_q":"64","jawaban":"3"},{"id_q":"65","jawaban":"3"},{"id_q":"66","jawaban":"3"},{"id_q":"67","jawaban":"3"},{"id_q":"68","jawaban":"3"},{"id_q":"69","jawaban":"3"},{"id_q":"70","jawaban":"3"},{"id_q":"71","jawaban":"3"},{"id_q":"72","jawaban":"3"},{"id_q":"73","jawaban":"3"},{"id_q":"74","jawaban":"3"},{"id_q":"75","jawaban":"3"},{"id_q":"80","jawaban":"3"},{"id_q":"81","jawaban":"3"},{"id_q":"82","jawaban":"3"},{"id_q":"83","jawaban":"4"},{"id_q":"84","jawaban":"3"},{"id_q":"85","jawaban":"3"},{"id_q":"86","jawaban":"3"},{"id_q":"87","jawaban":"3"},{"id_q":"88","jawaban":"3"},{"id_q":"89","jawaban":"3"},{"id_q":"90","jawaban":"3"},{"id_q":"91","jawaban":"3"},{"id_q":"92","jawaban":"3"},{"id_q":"93","jawaban":"3"},{"id_q":"94","jawaban":"3"},{"id_q":"95","jawaban":"3"},{"id_q":"96","jawaban":"3"},{"id_q":"97","jawaban":"3"},{"id_q":"98","jawaban":"3"},{"id_q":"99","jawaban":"3"},{"id_q":"100","jawaban":"3"},{"id_q":"101","jawaban":"3"},{"id_q":"107","jawaban":"3"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"3"},{"id_q":"110","jawaban":"3"},{"id_q":"111","jawaban":"3"},{"id_q":"112","jawaban":"3"},{"id_q":"113","jawaban":"3"},{"id_q":"114","jawaban":"3"},{"id_q":"115","jawaban":"3"},{"id_q":"128","jawaban":"3"},{"id_q":"129","jawaban":"3"},{"id_q":"130","jawaban":"3"},{"id_q":"131","jawaban":"3"},{"id_q":"132","jawaban":"3"},{"id_q":"154","jawaban":"3"},{"id_q":"155","jawaban":"3"},{"id_q":"156","jawaban":"3"},{"id_q":"157","jawaban":"3"},{"id_q":"158","jawaban":"3"},{"id_q":"159","jawaban":"3"},{"id_q":"160","jawaban":"3"},{"id_q":"161","jawaban":"3"},{"id_q":"162","jawaban":"3"},{"id_q":"163","jawaban":"3"},{"id_q":"164","jawaban":"3"},{"id_q":"165","jawaban":"4"},{"id_q":"167","jawaban":"3"},{"id_q":"168","jawaban":"3"},{"id_q":"169","jawaban":"3"},{"id_q":"190","jawaban":"3"},{"id_q":"191","jawaban":"3"},{"id_q":"192","jawaban":"3"},{"id_q":"193","jawaban":"3"},{"id_q":"194","jawaban":"3"},{"id_q":"195","jawaban":"3"},{"id_q":"208","jawaban":"3"},{"id_q":"209","jawaban":"3"},{"id_q":"210","jawaban":"3"},{"id_q":"211","jawaban":"3"},{"id_q":"212","jawaban":"4"},{"id_q":"213","jawaban":"3"},{"id_q":"214","jawaban":"3"}]'),
(9, 3, 3, '2019-10-22 19:35:09', '[{"id_q":"1","jawaban":"2"},{"id_q":"2","jawaban":"2"},{"id_q":"3","jawaban":"2"},{"id_q":"4","jawaban":"2"},{"id_q":"5","jawaban":"2"},{"id_q":"6","jawaban":"2"},{"id_q":"11","jawaban":"2"},{"id_q":"12","jawaban":"2"},{"id_q":"13","jawaban":"3"},{"id_q":"14","jawaban":"2"},{"id_q":"15","jawaban":"2"},{"id_q":"16","jawaban":"2"},{"id_q":"17","jawaban":"2"},{"id_q":"18","jawaban":"2"},{"id_q":"19","jawaban":"2"},{"id_q":"20","jawaban":"2"},{"id_q":"21","jawaban":"2"},{"id_q":"22","jawaban":"2"},{"id_q":"23","jawaban":"2"},{"id_q":"24","jawaban":"2"},{"id_q":"25","jawaban":"2"},{"id_q":"26","jawaban":"2"},{"id_q":"27","jawaban":"2"},{"id_q":"28","jawaban":"2"},{"id_q":"29","jawaban":"2"},{"id_q":"30","jawaban":"2"},{"id_q":"31","jawaban":"2"},{"id_q":"32","jawaban":"2"},{"id_q":"33","jawaban":"2"},{"id_q":"34","jawaban":"2"},{"id_q":"35","jawaban":"2"},{"id_q":"36","jawaban":"2"},{"id_q":"37","jawaban":"2"},{"id_q":"38","jawaban":"2"},{"id_q":"39","jawaban":"2"},{"id_q":"40","jawaban":"2"},{"id_q":"62","jawaban":"2"},{"id_q":"63","jawaban":"2"},{"id_q":"64","jawaban":"2"},{"id_q":"65","jawaban":"2"},{"id_q":"66","jawaban":"2"},{"id_q":"67","jawaban":"2"},{"id_q":"68","jawaban":"2"},{"id_q":"69","jawaban":"2"},{"id_q":"70","jawaban":"2"},{"id_q":"71","jawaban":"2"},{"id_q":"72","jawaban":"2"},{"id_q":"73","jawaban":"2"},{"id_q":"74","jawaban":"2"},{"id_q":"75","jawaban":"2"},{"id_q":"80","jawaban":"2"},{"id_q":"81","jawaban":"2"},{"id_q":"82","jawaban":"3"},{"id_q":"83","jawaban":"2"},{"id_q":"84","jawaban":"2"},{"id_q":"85","jawaban":"2"},{"id_q":"86","jawaban":"2"},{"id_q":"87","jawaban":"2"},{"id_q":"88","jawaban":"2"},{"id_q":"89","jawaban":"2"},{"id_q":"90","jawaban":"2"},{"id_q":"91","jawaban":"2"},{"id_q":"92","jawaban":"2"},{"id_q":"93","jawaban":"2"},{"id_q":"94","jawaban":"2"},{"id_q":"95","jawaban":"2"},{"id_q":"96","jawaban":"2"},{"id_q":"97","jawaban":"2"},{"id_q":"98","jawaban":"2"},{"id_q":"99","jawaban":"2"},{"id_q":"100","jawaban":"2"},{"id_q":"101","jawaban":"2"},{"id_q":"107","jawaban":"2"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"2"},{"id_q":"110","jawaban":"2"},{"id_q":"111","jawaban":"2"},{"id_q":"112","jawaban":"2"},{"id_q":"113","jawaban":"2"},{"id_q":"114","jawaban":"2"},{"id_q":"115","jawaban":"2"},{"id_q":"128","jawaban":"2"},{"id_q":"129","jawaban":"2"},{"id_q":"130","jawaban":"2"},{"id_q":"131","jawaban":"2"},{"id_q":"132","jawaban":"2"},{"id_q":"154","jawaban":"2"},{"id_q":"155","jawaban":"2"},{"id_q":"156","jawaban":"2"},{"id_q":"157","jawaban":"2"},{"id_q":"158","jawaban":"2"},{"id_q":"159","jawaban":"2"},{"id_q":"160","jawaban":"2"},{"id_q":"161","jawaban":"3"},{"id_q":"162","jawaban":"2"},{"id_q":"163","jawaban":"2"},{"id_q":"164","jawaban":"2"},{"id_q":"165","jawaban":"2"},{"id_q":"167","jawaban":"2"},{"id_q":"168","jawaban":"2"},{"id_q":"169","jawaban":"2"},{"id_q":"190","jawaban":"2"},{"id_q":"191","jawaban":"2"},{"id_q":"192","jawaban":"3"},{"id_q":"193","jawaban":"2"},{"id_q":"194","jawaban":"2"},{"id_q":"195","jawaban":"2"},{"id_q":"208","jawaban":"2"},{"id_q":"209","jawaban":"2"},{"id_q":"210","jawaban":"2"},{"id_q":"211","jawaban":"2"},{"id_q":"212","jawaban":"2"},{"id_q":"213","jawaban":"2"},{"id_q":"214","jawaban":"3"}]'),
(10, 15, 4, '2019-10-24 23:10:02', '[{"id_q":"31","jawaban":"4"},{"id_q":"32","jawaban":"3"},{"id_q":"33","jawaban":"5"},{"id_q":"34","jawaban":"2"},{"id_q":"35","jawaban":"4"},{"id_q":"154","jawaban":"4"},{"id_q":"155","jawaban":"3"},{"id_q":"156","jawaban":"4"},{"id_q":"157","jawaban":"2"}]'),
(11, 7, 5, '2019-10-24 23:24:19', '[{"id_q":"31","jawaban":"4"},{"id_q":"32","jawaban":"5"},{"id_q":"33","jawaban":"5"},{"id_q":"34","jawaban":"4"},{"id_q":"35","jawaban":"4"},{"id_q":"154","jawaban":"4"},{"id_q":"155","jawaban":"5"},{"id_q":"156","jawaban":"5"},{"id_q":"157","jawaban":"3"}]'),
(12, 17, 6, '2019-10-28 15:49:33', '[{"id_q":"1","jawaban":"4"},{"id_q":"2","jawaban":"4"},{"id_q":"3","jawaban":"3"},{"id_q":"4","jawaban":"3"},{"id_q":"5","jawaban":"3"},{"id_q":"6","jawaban":"4"},{"id_q":"7","jawaban":"3"},{"id_q":"8","jawaban":"4"},{"id_q":"9","jawaban":"4"},{"id_q":"10","jawaban":"4"},{"id_q":"11","jawaban":"4"},{"id_q":"12","jawaban":"3"},{"id_q":"13","jawaban":"3"},{"id_q":"14","jawaban":"4"},{"id_q":"15","jawaban":"3"},{"id_q":"16","jawaban":"4"},{"id_q":"17","jawaban":"4"},{"id_q":"18","jawaban":"4"},{"id_q":"19","jawaban":"3"},{"id_q":"20","jawaban":"2"},{"id_q":"21","jawaban":"2"},{"id_q":"22","jawaban":"4"},{"id_q":"23","jawaban":"4"},{"id_q":"24","jawaban":"4"},{"id_q":"25","jawaban":"4"},{"id_q":"26","jawaban":"4"},{"id_q":"27","jawaban":"4"},{"id_q":"28","jawaban":"4"},{"id_q":"29","jawaban":"4"},{"id_q":"30","jawaban":"3"},{"id_q":"31","jawaban":"3"},{"id_q":"32","jawaban":"3"},{"id_q":"33","jawaban":"4"},{"id_q":"34","jawaban":"4"},{"id_q":"35","jawaban":"4"},{"id_q":"36","jawaban":"3"},{"id_q":"37","jawaban":"3"},{"id_q":"38","jawaban":"4"},{"id_q":"39","jawaban":"3"},{"id_q":"40","jawaban":"2"},{"id_q":"41","jawaban":"2"},{"id_q":"42","jawaban":"3"},{"id_q":"43","jawaban":"2"},{"id_q":"44","jawaban":"3"},{"id_q":"45","jawaban":"2"},{"id_q":"46","jawaban":"4"},{"id_q":"47","jawaban":"2"},{"id_q":"48","jawaban":"2"},{"id_q":"49","jawaban":"2"},{"id_q":"50","jawaban":"1"},{"id_q":"51","jawaban":"1"},{"id_q":"52","jawaban":"2"},{"id_q":"53","jawaban":"1"},{"id_q":"54","jawaban":"2"},{"id_q":"55","jawaban":"2"},{"id_q":"56","jawaban":"1"},{"id_q":"57","jawaban":"2"},{"id_q":"59","jawaban":"2"},{"id_q":"60","jawaban":"2"},{"id_q":"61","jawaban":"2"},{"id_q":"62","jawaban":"3"},{"id_q":"63","jawaban":"5"},{"id_q":"64","jawaban":"4"},{"id_q":"65","jawaban":"3"},{"id_q":"66","jawaban":"2"},{"id_q":"67","jawaban":"3"},{"id_q":"68","jawaban":"4"},{"id_q":"69","jawaban":"4"},{"id_q":"70","jawaban":"3"},{"id_q":"71","jawaban":"3"},{"id_q":"72","jawaban":"3"},{"id_q":"73","jawaban":"3"},{"id_q":"74","jawaban":"3"},{"id_q":"75","jawaban":"3"},{"id_q":"76","jawaban":"2"},{"id_q":"77","jawaban":"2"},{"id_q":"78","jawaban":"3"},{"id_q":"80","jawaban":"3"},{"id_q":"81","jawaban":"3"},{"id_q":"82","jawaban":"3"},{"id_q":"83","jawaban":"4"},{"id_q":"84","jawaban":"4"},{"id_q":"85","jawaban":"2"},{"id_q":"86","jawaban":"3"},{"id_q":"87","jawaban":"1"},{"id_q":"88","jawaban":"1"},{"id_q":"89","jawaban":"4"},{"id_q":"90","jawaban":"2"},{"id_q":"91","jawaban":"3"},{"id_q":"92","jawaban":"3"},{"id_q":"93","jawaban":"2"},{"id_q":"94","jawaban":"3"},{"id_q":"95","jawaban":"2"},{"id_q":"96","jawaban":"3"},{"id_q":"97","jawaban":"4"},{"id_q":"98","jawaban":"3"},{"id_q":"99","jawaban":"3"},{"id_q":"100","jawaban":"3"},{"id_q":"101","jawaban":"2"},{"id_q":"102","jawaban":"2"},{"id_q":"103","jawaban":"3"},{"id_q":"104","jawaban":"2"},{"id_q":"105","jawaban":"2"},{"id_q":"106","jawaban":"3"},{"id_q":"107","jawaban":"3"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"2"},{"id_q":"110","jawaban":"1"},{"id_q":"111","jawaban":"1"},{"id_q":"112","jawaban":"1"},{"id_q":"113","jawaban":"2"},{"id_q":"114","jawaban":"2"},{"id_q":"115","jawaban":"2"},{"id_q":"116","jawaban":"3"},{"id_q":"117","jawaban":"2"},{"id_q":"118","jawaban":"3"},{"id_q":"119","jawaban":"2"},{"id_q":"120","jawaban":"3"},{"id_q":"121","jawaban":"2"},{"id_q":"124","jawaban":"1"},{"id_q":"125","jawaban":"2"},{"id_q":"126","jawaban":"1"},{"id_q":"127","jawaban":"2"},{"id_q":"128","jawaban":"2"},{"id_q":"129","jawaban":"3"},{"id_q":"130","jawaban":"2"},{"id_q":"131","jawaban":"2"},{"id_q":"132","jawaban":"3"},{"id_q":"133","jawaban":"2"},{"id_q":"134","jawaban":"2"},{"id_q":"135","jawaban":"3"},{"id_q":"136","jawaban":"2"},{"id_q":"137","jawaban":"2"},{"id_q":"138","jawaban":"2"},{"id_q":"139","jawaban":"2"},{"id_q":"140","jawaban":"2"},{"id_q":"141","jawaban":"3"},{"id_q":"142","jawaban":"2"},{"id_q":"143","jawaban":"2"},{"id_q":"144","jawaban":"2"},{"id_q":"145","jawaban":"3"},{"id_q":"146","jawaban":"2"},{"id_q":"147","jawaban":"2"},{"id_q":"148","jawaban":"2"},{"id_q":"149","jawaban":"2"},{"id_q":"150","jawaban":"2"},{"id_q":"151","jawaban":"3"},{"id_q":"152","jawaban":"4"},{"id_q":"153","jawaban":"3"},{"id_q":"154","jawaban":"3"},{"id_q":"155","jawaban":"2"},{"id_q":"156","jawaban":"3"},{"id_q":"157","jawaban":"2"},{"id_q":"158","jawaban":"2"},{"id_q":"159","jawaban":"2"},{"id_q":"160","jawaban":"3"},{"id_q":"161","jawaban":"3"},{"id_q":"162","jawaban":"2"},{"id_q":"163","jawaban":"2"},{"id_q":"164","jawaban":"2"},{"id_q":"165","jawaban":"2"},{"id_q":"167","jawaban":"2"},{"id_q":"168","jawaban":"2"},{"id_q":"169","jawaban":"3"},{"id_q":"170","jawaban":"3"},{"id_q":"171","jawaban":"3"},{"id_q":"172","jawaban":"3"},{"id_q":"173","jawaban":"3"},{"id_q":"174","jawaban":"3"},{"id_q":"175","jawaban":"3"},{"id_q":"176","jawaban":"3"},{"id_q":"177","jawaban":"3"},{"id_q":"178","jawaban":"4"},{"id_q":"179","jawaban":"3"},{"id_q":"180","jawaban":"4"},{"id_q":"181","jawaban":"4"},{"id_q":"182","jawaban":"4"},{"id_q":"183","jawaban":"4"},{"id_q":"184","jawaban":"3"},{"id_q":"185","jawaban":"4"},{"id_q":"186","jawaban":"3"},{"id_q":"187","jawaban":"3"},{"id_q":"188","jawaban":"3"},{"id_q":"189","jawaban":"3"},{"id_q":"190","jawaban":"3"},{"id_q":"191","jawaban":"4"},{"id_q":"192","jawaban":"4"},{"id_q":"193","jawaban":"4"},{"id_q":"194","jawaban":"3"},{"id_q":"195","jawaban":"3"},{"id_q":"208","jawaban":"4"},{"id_q":"209","jawaban":"5"},{"id_q":"210","jawaban":"2"},{"id_q":"211","jawaban":"4"},{"id_q":"212","jawaban":"2"},{"id_q":"213","jawaban":"3"},{"id_q":"214","jawaban":"3"}]'),
(13, 3, 7, '2019-10-29 13:02:52', '[{"id_q":"31","jawaban":"0"},{"id_q":"32","jawaban":"1"},{"id_q":"33","jawaban":"2"},{"id_q":"34","jawaban":"1"},{"id_q":"35","jawaban":"0"},{"id_q":"154","jawaban":"1"},{"id_q":"155","jawaban":"2"},{"id_q":"156","jawaban":"3"},{"id_q":"157","jawaban":"2"}]'),
(14, 18, 6, '2019-10-29 16:10:41', '[{"id_q":"1","jawaban":"4"},{"id_q":"2","jawaban":"4"},{"id_q":"3","jawaban":"3"},{"id_q":"4","jawaban":"3"},{"id_q":"5","jawaban":"3"},{"id_q":"6","jawaban":"4"},{"id_q":"7","jawaban":"4"},{"id_q":"8","jawaban":"3"},{"id_q":"9","jawaban":"3"},{"id_q":"10","jawaban":"3"},{"id_q":"11","jawaban":"3"},{"id_q":"12","jawaban":"3"},{"id_q":"13","jawaban":"2"},{"id_q":"14","jawaban":"4"},{"id_q":"15","jawaban":"3"},{"id_q":"16","jawaban":"2"},{"id_q":"17","jawaban":"3"},{"id_q":"18","jawaban":"4"},{"id_q":"19","jawaban":"2"},{"id_q":"20","jawaban":"3"},{"id_q":"21","jawaban":"3"},{"id_q":"22","jawaban":"4"},{"id_q":"23","jawaban":"3"},{"id_q":"24","jawaban":"3"},{"id_q":"25","jawaban":"4"},{"id_q":"26","jawaban":"4"},{"id_q":"27","jawaban":"3"},{"id_q":"28","jawaban":"3"},{"id_q":"29","jawaban":"3"},{"id_q":"30","jawaban":"2"},{"id_q":"31","jawaban":"3"},{"id_q":"32","jawaban":"4"},{"id_q":"33","jawaban":"3"},{"id_q":"34","jawaban":"3"},{"id_q":"35","jawaban":"3"},{"id_q":"36","jawaban":"2"},{"id_q":"37","jawaban":"2"},{"id_q":"38","jawaban":"2"},{"id_q":"39","jawaban":"3"},{"id_q":"40","jawaban":"3"},{"id_q":"41","jawaban":"3"},{"id_q":"42","jawaban":"3"},{"id_q":"43","jawaban":"3"},{"id_q":"44","jawaban":"2"},{"id_q":"45","jawaban":"4"},{"id_q":"46","jawaban":"4"},{"id_q":"47","jawaban":"4"},{"id_q":"48","jawaban":"4"},{"id_q":"49","jawaban":"4"},{"id_q":"50","jawaban":"3"},{"id_q":"51","jawaban":"4"},{"id_q":"52","jawaban":"3"},{"id_q":"53","jawaban":"4"},{"id_q":"54","jawaban":"3"},{"id_q":"55","jawaban":"4"},{"id_q":"56","jawaban":"3"},{"id_q":"57","jawaban":"4"},{"id_q":"59","jawaban":"4"},{"id_q":"60","jawaban":"3"},{"id_q":"61","jawaban":"2"},{"id_q":"62","jawaban":"3"},{"id_q":"63","jawaban":"2"},{"id_q":"64","jawaban":"3"},{"id_q":"65","jawaban":"3"},{"id_q":"66","jawaban":"2"},{"id_q":"67","jawaban":"3"},{"id_q":"68","jawaban":"3"},{"id_q":"69","jawaban":"3"},{"id_q":"70","jawaban":"3"},{"id_q":"71","jawaban":"3"},{"id_q":"72","jawaban":"3"},{"id_q":"73","jawaban":"2"},{"id_q":"74","jawaban":"2"},{"id_q":"75","jawaban":"2"},{"id_q":"76","jawaban":"2"},{"id_q":"77","jawaban":"4"},{"id_q":"78","jawaban":"3"},{"id_q":"80","jawaban":"3"},{"id_q":"81","jawaban":"3"},{"id_q":"82","jawaban":"3"},{"id_q":"83","jawaban":"3"},{"id_q":"84","jawaban":"4"},{"id_q":"85","jawaban":"3"},{"id_q":"86","jawaban":"3"},{"id_q":"87","jawaban":"3"},{"id_q":"88","jawaban":"3"},{"id_q":"89","jawaban":"3"},{"id_q":"90","jawaban":"2"},{"id_q":"91","jawaban":"3"},{"id_q":"92","jawaban":"3"},{"id_q":"93","jawaban":"3"},{"id_q":"94","jawaban":"3"},{"id_q":"95","jawaban":"3"},{"id_q":"96","jawaban":"3"},{"id_q":"97","jawaban":"3"},{"id_q":"98","jawaban":"4"},{"id_q":"99","jawaban":"4"},{"id_q":"100","jawaban":"4"},{"id_q":"101","jawaban":"4"},{"id_q":"102","jawaban":"3"},{"id_q":"103","jawaban":"3"},{"id_q":"104","jawaban":"3"},{"id_q":"105","jawaban":"3"},{"id_q":"106","jawaban":"4"},{"id_q":"107","jawaban":"4"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"4"},{"id_q":"110","jawaban":"3"},{"id_q":"111","jawaban":"3"},{"id_q":"112","jawaban":"3"},{"id_q":"113","jawaban":"4"},{"id_q":"114","jawaban":"4"},{"id_q":"115","jawaban":"4"},{"id_q":"116","jawaban":"3"},{"id_q":"117","jawaban":"2"},{"id_q":"118","jawaban":"2"},{"id_q":"119","jawaban":"2"},{"id_q":"120","jawaban":"3"},{"id_q":"121","jawaban":"3"},{"id_q":"124","jawaban":"3"},{"id_q":"125","jawaban":"3"},{"id_q":"126","jawaban":"3"},{"id_q":"127","jawaban":"3"},{"id_q":"128","jawaban":"4"},{"id_q":"129","jawaban":"3"},{"id_q":"130","jawaban":"2"},{"id_q":"131","jawaban":"2"},{"id_q":"132","jawaban":"2"},{"id_q":"133","jawaban":"2"},{"id_q":"134","jawaban":"3"},{"id_q":"135","jawaban":"3"},{"id_q":"136","jawaban":"3"},{"id_q":"137","jawaban":"2"},{"id_q":"138","jawaban":"3"},{"id_q":"139","jawaban":"3"},{"id_q":"140","jawaban":"2"},{"id_q":"141","jawaban":"3"},{"id_q":"142","jawaban":"4"},{"id_q":"143","jawaban":"2"},{"id_q":"144","jawaban":"3"},{"id_q":"145","jawaban":"3"},{"id_q":"146","jawaban":"3"},{"id_q":"147","jawaban":"2"},{"id_q":"148","jawaban":"3"},{"id_q":"149","jawaban":"4"},{"id_q":"150","jawaban":"3"},{"id_q":"151","jawaban":"2"},{"id_q":"152","jawaban":"3"},{"id_q":"153","jawaban":"4"},{"id_q":"154","jawaban":"2"},{"id_q":"155","jawaban":"3"},{"id_q":"156","jawaban":"2"},{"id_q":"157","jawaban":"4"},{"id_q":"158","jawaban":"3"},{"id_q":"159","jawaban":"3"},{"id_q":"160","jawaban":"2"},{"id_q":"161","jawaban":"3"},{"id_q":"162","jawaban":"4"},{"id_q":"163","jawaban":"3"},{"id_q":"164","jawaban":"4"},{"id_q":"165","jawaban":"3"},{"id_q":"167","jawaban":"3"},{"id_q":"168","jawaban":"3"},{"id_q":"169","jawaban":"2"},{"id_q":"170","jawaban":"2"},{"id_q":"171","jawaban":"2"},{"id_q":"172","jawaban":"4"},{"id_q":"173","jawaban":"4"},{"id_q":"174","jawaban":"3"},{"id_q":"175","jawaban":"3"},{"id_q":"176","jawaban":"2"},{"id_q":"177","jawaban":"3"},{"id_q":"178","jawaban":"3"},{"id_q":"179","jawaban":"3"},{"id_q":"180","jawaban":"3"},{"id_q":"181","jawaban":"3"},{"id_q":"182","jawaban":"2"},{"id_q":"183","jawaban":"3"},{"id_q":"184","jawaban":"4"},{"id_q":"185","jawaban":"2"},{"id_q":"186","jawaban":"3"},{"id_q":"187","jawaban":"4"},{"id_q":"188","jawaban":"4"},{"id_q":"189","jawaban":"3"},{"id_q":"190","jawaban":"3"},{"id_q":"191","jawaban":"4"},{"id_q":"192","jawaban":"4"},{"id_q":"193","jawaban":"3"},{"id_q":"194","jawaban":"3"},{"id_q":"195","jawaban":"3"},{"id_q":"208","jawaban":"1"},{"id_q":"209","jawaban":"3"},{"id_q":"210","jawaban":"4"},{"id_q":"211","jawaban":"3"},{"id_q":"212","jawaban":"3"},{"id_q":"213","jawaban":"4"},{"id_q":"214","jawaban":"3"}]'),
(15, 20, 11, '2019-11-25 16:36:33', '[{"id_q":"1","jawaban":"4"},{"id_q":"2","jawaban":"2"},{"id_q":"3","jawaban":"3"},{"id_q":"4","jawaban":"2"},{"id_q":"5","jawaban":"2"},{"id_q":"6","jawaban":"4"},{"id_q":"7","jawaban":"4"},{"id_q":"8","jawaban":"2"},{"id_q":"9","jawaban":"4"},{"id_q":"10","jawaban":"3"},{"id_q":"16","jawaban":"3"},{"id_q":"17","jawaban":"2"},{"id_q":"18","jawaban":"4"},{"id_q":"19","jawaban":"5"},{"id_q":"20","jawaban":"3"},{"id_q":"21","jawaban":"4"},{"id_q":"22","jawaban":"5"},{"id_q":"23","jawaban":"4"},{"id_q":"24","jawaban":"3"},{"id_q":"25","jawaban":"4"},{"id_q":"26","jawaban":"5"},{"id_q":"27","jawaban":"5"},{"id_q":"28","jawaban":"4"},{"id_q":"29","jawaban":"4"},{"id_q":"30","jawaban":"4"},{"id_q":"31","jawaban":"3"},{"id_q":"32","jawaban":"4"},{"id_q":"33","jawaban":"3"},{"id_q":"34","jawaban":"4"},{"id_q":"35","jawaban":"2"},{"id_q":"36","jawaban":"3"},{"id_q":"37","jawaban":"4"},{"id_q":"38","jawaban":"3"},{"id_q":"39","jawaban":"3"},{"id_q":"40","jawaban":"5"},{"id_q":"41","jawaban":"4"},{"id_q":"42","jawaban":"2"},{"id_q":"43","jawaban":"3"},{"id_q":"44","jawaban":"2"},{"id_q":"45","jawaban":"4"},{"id_q":"46","jawaban":"2"},{"id_q":"47","jawaban":"2"},{"id_q":"48","jawaban":"2"},{"id_q":"49","jawaban":"3"},{"id_q":"50","jawaban":"3"},{"id_q":"51","jawaban":"3"},{"id_q":"52","jawaban":"3"},{"id_q":"53","jawaban":"2"},{"id_q":"54","jawaban":"3"},{"id_q":"55","jawaban":"2"},{"id_q":"56","jawaban":"3"},{"id_q":"57","jawaban":"2"},{"id_q":"59","jawaban":"3"},{"id_q":"60","jawaban":"3"},{"id_q":"61","jawaban":"4"},{"id_q":"62","jawaban":"5"},{"id_q":"63","jawaban":"3"},{"id_q":"64","jawaban":"3"},{"id_q":"65","jawaban":"4"},{"id_q":"66","jawaban":"3"},{"id_q":"67","jawaban":"4"},{"id_q":"68","jawaban":"3"},{"id_q":"69","jawaban":"4"},{"id_q":"70","jawaban":"3"},{"id_q":"71","jawaban":"3"},{"id_q":"72","jawaban":"2"},{"id_q":"73","jawaban":"3"},{"id_q":"74","jawaban":"3"},{"id_q":"75","jawaban":"4"},{"id_q":"76","jawaban":"3"},{"id_q":"77","jawaban":"1"},{"id_q":"78","jawaban":"2"},{"id_q":"90","jawaban":"2"},{"id_q":"91","jawaban":"3"},{"id_q":"92","jawaban":"3"},{"id_q":"93","jawaban":"4"},{"id_q":"94","jawaban":"3"},{"id_q":"95","jawaban":"2"},{"id_q":"96","jawaban":"2"},{"id_q":"97","jawaban":"4"},{"id_q":"102","jawaban":"4"},{"id_q":"103","jawaban":"4"},{"id_q":"104","jawaban":"3"},{"id_q":"105","jawaban":"1"},{"id_q":"106","jawaban":"2"},{"id_q":"107","jawaban":"1"},{"id_q":"108","jawaban":"3"},{"id_q":"109","jawaban":"2"},{"id_q":"110","jawaban":"2"},{"id_q":"111","jawaban":"2"},{"id_q":"112","jawaban":"3"},{"id_q":"113","jawaban":"3"},{"id_q":"114","jawaban":"3"},{"id_q":"115","jawaban":"2"},{"id_q":"116","jawaban":"2"},{"id_q":"117","jawaban":"3"},{"id_q":"118","jawaban":"2"},{"id_q":"119","jawaban":"2"},{"id_q":"120","jawaban":"3"},{"id_q":"121","jawaban":"4"},{"id_q":"124","jawaban":"2"},{"id_q":"125","jawaban":"2"},{"id_q":"126","jawaban":"2"},{"id_q":"127","jawaban":"3"},{"id_q":"128","jawaban":"2"},{"id_q":"129","jawaban":"2"},{"id_q":"130","jawaban":"3"},{"id_q":"131","jawaban":"3"},{"id_q":"132","jawaban":"4"},{"id_q":"133","jawaban":"4"},{"id_q":"134","jawaban":"3"},{"id_q":"135","jawaban":"4"},{"id_q":"136","jawaban":"3"},{"id_q":"137","jawaban":"2"},{"id_q":"138","jawaban":"2"},{"id_q":"139","jawaban":"1"},{"id_q":"140","jawaban":"3"},{"id_q":"141","jawaban":"3"},{"id_q":"142","jawaban":"3"},{"id_q":"143","jawaban":"3"},{"id_q":"144","jawaban":"4"},{"id_q":"145","jawaban":"4"},{"id_q":"146","jawaban":"2"},{"id_q":"147","jawaban":"4"},{"id_q":"148","jawaban":"3"},{"id_q":"149","jawaban":"4"},{"id_q":"150","jawaban":"2"},{"id_q":"151","jawaban":"4"},{"id_q":"152","jawaban":"4"},{"id_q":"153","jawaban":"4"},{"id_q":"154","jawaban":"3"},{"id_q":"155","jawaban":"2"},{"id_q":"156","jawaban":"1"},{"id_q":"157","jawaban":"1"},{"id_q":"158","jawaban":"2"},{"id_q":"159","jawaban":"1"},{"id_q":"160","jawaban":"2"},{"id_q":"161","jawaban":"2"},{"id_q":"162","jawaban":"3"},{"id_q":"163","jawaban":"3"},{"id_q":"164","jawaban":"2"},{"id_q":"165","jawaban":"2"},{"id_q":"170","jawaban":"2"},{"id_q":"171","jawaban":"3"},{"id_q":"172","jawaban":"3"},{"id_q":"173","jawaban":"2"},{"id_q":"174","jawaban":"3"},{"id_q":"175","jawaban":"2"},{"id_q":"176","jawaban":"3"},{"id_q":"177","jawaban":"3"},{"id_q":"178","jawaban":"3"},{"id_q":"179","jawaban":"4"},{"id_q":"180","jawaban":"2"},{"id_q":"181","jawaban":"4"},{"id_q":"182","jawaban":"2"},{"id_q":"183","jawaban":"3"},{"id_q":"184","jawaban":"2"},{"id_q":"185","jawaban":"3"},{"id_q":"186","jawaban":"3"},{"id_q":"187","jawaban":"3"},{"id_q":"188","jawaban":"4"},{"id_q":"189","jawaban":"4"},{"id_q":"190","jawaban":"2"},{"id_q":"191","jawaban":"3"},{"id_q":"192","jawaban":"2"},{"id_q":"193","jawaban":"2"},{"id_q":"194","jawaban":"3"},{"id_q":"195","jawaban":"3"},{"id_q":"196","jawaban":"4"},{"id_q":"197","jawaban":"4"},{"id_q":"198","jawaban":"2"},{"id_q":"199","jawaban":"3"},{"id_q":"200","jawaban":"2"},{"id_q":"201","jawaban":"3"},{"id_q":"202","jawaban":"2"},{"id_q":"203","jawaban":"2"},{"id_q":"204","jawaban":"3"},{"id_q":"205","jawaban":"3"},{"id_q":"206","jawaban":"2"},{"id_q":"207","jawaban":"3"},{"id_q":"208","jawaban":"3"},{"id_q":"209","jawaban":"2"},{"id_q":"210","jawaban":"3"},{"id_q":"211","jawaban":"2"},{"id_q":"212","jawaban":"2"},{"id_q":"213","jawaban":"4"},{"id_q":"214","jawaban":"4"}]'),
(19, 22, 13, '2019-12-06 09:59:55', '[{"id_q":"31","jawaban":"2"},{"id_q":"32","jawaban":"2"},{"id_q":"33","jawaban":"2"},{"id_q":"34","jawaban":"2"},{"id_q":"35","jawaban":"2"},{"id_q":"154","jawaban":"2"},{"id_q":"155","jawaban":"2"},{"id_q":"156","jawaban":"2"},{"id_q":"157","jawaban":"2"}]'),
(20, 23, 13, '2019-12-06 10:00:23', '[{"id_q":"31","jawaban":"4"},{"id_q":"32","jawaban":"4"},{"id_q":"33","jawaban":"4"},{"id_q":"34","jawaban":"4"},{"id_q":"35","jawaban":"4"},{"id_q":"154","jawaban":"4"},{"id_q":"155","jawaban":"4"},{"id_q":"156","jawaban":"4"},{"id_q":"157","jawaban":"4"}]'),
(23, 27, 12, '2019-12-17 18:21:29', '[{"id_q":"41","jawaban":"2"},{"id_q":"42","jawaban":"2"},{"id_q":"43","jawaban":"3"},{"id_q":"44","jawaban":"2"},{"id_q":"45","jawaban":"2"},{"id_q":"46","jawaban":"2"},{"id_q":"47","jawaban":"2"},{"id_q":"48","jawaban":"2"},{"id_q":"98","jawaban":"2"},{"id_q":"99","jawaban":"2"},{"id_q":"100","jawaban":"2"},{"id_q":"101","jawaban":"2"}]'),
(24, 27, 14, '2019-12-17 18:43:57', '[{"id_q":"31","jawaban":"3"},{"id_q":"32","jawaban":"3"},{"id_q":"33","jawaban":"3"},{"id_q":"34","jawaban":"3"},{"id_q":"35","jawaban":"3"},{"id_q":"154","jawaban":"3"},{"id_q":"155","jawaban":"3"},{"id_q":"156","jawaban":"3"},{"id_q":"157","jawaban":"3"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `pwd`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cobitisasi`
--
ALTER TABLE `cobitisasi`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `db_audite`
--
ALTER TABLE `db_audite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_auditor`
--
ALTER TABLE `db_auditor`
  ADD PRIMARY KEY (`id_auditor`);

--
-- Indexes for table `db_quisioner`
--
ALTER TABLE `db_quisioner`
  ADD PRIMARY KEY (`id_quisioner`);

--
-- Indexes for table `hubungan_itb_itg`
--
ALTER TABLE `hubungan_itb_itg`
  ADD PRIMARY KEY (`id_H_ITB_ITG`);

--
-- Indexes for table `hubungan_itg_itp`
--
ALTER TABLE `hubungan_itg_itp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_bussines`
--
ALTER TABLE `it_bussines`
  ADD PRIMARY KEY (`id_ITB`);

--
-- Indexes for table `it_goals`
--
ALTER TABLE `it_goals`
  ADD PRIMARY KEY (`id_ITG`);

--
-- Indexes for table `it_proses`
--
ALTER TABLE `it_proses`
  ADD PRIMARY KEY (`id_ITP`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `riwayat_quisioner`
--
ALTER TABLE `riwayat_quisioner`
  ADD PRIMARY KEY (`id_rq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cobitisasi`
--
ALTER TABLE `cobitisasi`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `db_audite`
--
ALTER TABLE `db_audite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `db_auditor`
--
ALTER TABLE `db_auditor`
  MODIFY `id_auditor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_quisioner`
--
ALTER TABLE `db_quisioner`
  MODIFY `id_quisioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `hubungan_itb_itg`
--
ALTER TABLE `hubungan_itb_itg`
  MODIFY `id_H_ITB_ITG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `hubungan_itg_itp`
--
ALTER TABLE `hubungan_itg_itp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `it_goals`
--
ALTER TABLE `it_goals`
  MODIFY `id_ITG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `it_proses`
--
ALTER TABLE `it_proses`
  MODIFY `id_ITP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `riwayat_quisioner`
--
ALTER TABLE `riwayat_quisioner`
  MODIFY `id_rq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
