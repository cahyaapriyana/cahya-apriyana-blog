-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2025 at 05:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cahya_apriyana_d1a240400`
--
CREATE DATABASE IF NOT EXISTS `db_cahya_apriyana_d1a240400` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_cahya_apriyana_d1a240400`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

DROP TABLE IF EXISTS `tbl_about`;
CREATE TABLE `tbl_about` (
  `id_about` int(2) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(8, ' Saya adalah seorang pengembang web yang bersemangat dalam menciptakan pengalaman digital yang menarik.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

DROP TABLE IF EXISTS `tbl_artikel`;
CREATE TABLE `tbl_artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama_artikel` text NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `isi_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `label`, `isi_artikel`) VALUES
(1, 'Perkembangan Teknologi AI di Tahun 2024', 'Teknologi', 'Artificial Intelligence (AI) tlah menjadi salah satu teknologi yang paling berkembang pesat di tahun 2024. Dengan kemajuan dalam machine learning dan deep learning, AI telah mengubah cara kita bekerja dan berinteraksi dengan teknologi. Dari asisten virtual hingga sistem rekomendasi, AI telah menjadi bagian tak terpisahkan dari kehidupan sehari-hari.'),
(5, 'Pentingnya Pendidikan Karakter di Era Digital', 'Pendidikan', 'Di era digital yang serba cepat ini, pendidikan karakter menjadi semakin penting untuk membentuk generasi muda yang tangguh dan berakhlak. Pendidikan karakter tidak hanya fokus pada pencapaian akademis, tetapi juga pada pengembangan nilai-nilai moral, etika, dan soft skills. Sekolah-sekolah di Indonesia mulai mengintegrasikan pendidikan karakter dalam kurikulum mereka, dengan fokus pada nilai-nilai seperti kejujuran, tanggung jawab, dan empati. Orang tua juga memainkan peran penting dalam membentuk karakter anak melalui teladan dan bimbingan sehari-hari. Dengan pendidikan karakter yang kuat, generasi muda akan lebih siap menghadapi tantangan di era digital sambil tetap mempertahankan nilai-nilai luhur bangsa.'),
(6, 'Tips Menjaga Kesehatan Mental di Masa Pandemi', 'Kesehatan', 'Pandemi COVID-19 telah memberikan dampak signifikan pada kesehatan mental masyarakat. Banyak orang mengalami stres, kecemasan, dan depresi akibat isolasi sosial dan ketidakpastian. Untuk menjaga kesehatan mental, ada beberapa tips yang bisa diterapkan: pertama, jaga rutinitas harian yang teratur. Kedua, tetap terhubung dengan keluarga dan teman melalui teknologi. Ketiga, lakukan aktivitas fisik secara rutin di rumah. Keempat, praktikkan mindfulness dan meditasi. Kelima, batasi konsumsi berita dan media sosial. Keenam, jangan ragu untuk mencari bantuan profesional jika diperlukan. Ingat bahwa menjaga kesehatan mental sama pentingnya dengan menjaga kesehatan fisik, terutama di masa-masa sulit seperti ini.'),
(7, 'Sejarah dan Perkembangan Sepak Bola Indonesia', 'Olahraga', 'Sepak bola memiliki sejarah panjang di Indonesia, dimulai dari era kolonial Belanda. PSSI (Persatuan Sepak Bola Seluruh Indonesia) didirikan pada tahun 1930, menjadikannya salah satu federasi sepak bola tertua di Asia. Sepak bola Indonesia telah mengalami berbagai pasang surut, dari masa kejayaan di era 1950-an hingga berbagai tantangan di era modern. Liga Indonesia telah berkembang menjadi kompetisi yang lebih profesional dengan dukungan sponsor dan infrastruktur yang lebih baik. Tim nasional Indonesia juga telah menunjukkan peningkatan dalam beberapa tahun terakhir, meskipun masih ada banyak pekerjaan yang perlu dilakukan untuk mencapai level internasional yang lebih tinggi.'),
(8, 'Mengenal Budaya Batik Indonesia', 'Lainnya', 'Batik adalah warisan budaya Indonesia yang telah diakui UNESCO sebagai Warisan Budaya Tak Benda. Teknik pembuatan batik melibatkan proses yang rumit dan membutuhkan ketelitian tinggi. Setiap daerah di Indonesia memiliki motif batik khasnya sendiri, seperti batik Solo, Yogyakarta, Pekalongan, dan Cirebon. Motif-motif batik sering kali memiliki makna filosofis yang dalam, mencerminkan nilai-nilai budaya dan kepercayaan masyarakat. Saat ini, batik tidak hanya digunakan untuk acara formal, tetapi juga telah menjadi bagian dari fashion modern. Banyak desainer lokal yang mengkreasikan batik dalam berbagai bentuk pakaian kontemporer, membantu melestarikan warisan budaya ini sambil membuatnya relevan dengan zaman.'),
(11, 'Perkembangan Teknologi Web di Era Modern', 'Teknologi', 'Perkembangan teknologi web telah mengalami transformasi yang signifikan dalam beberapa tahun terakhir. Dari website statis sederhana hingga aplikasi web yang kompleks dan interaktif, teknologi web terus berkembang untuk memenuhi kebutuhan pengguna yang semakin dinamis.\r\n\r\nSalah satu perkembangan terbesar adalah munculnya framework JavaScript modern seperti React, Vue, dan Angular. Framework-framework ini memungkinkan pengembang untuk membuat aplikasi web yang lebih responsif dan interaktif. Dengan adanya Single Page Application (SPA), pengalaman pengguna menjadi lebih mulus dan cepat.\r\n\r\nSelain itu, perkembangan CSS juga tidak kalah menarik. Dengan munculnya CSS Grid dan Flexbox, pengembang web sekarang memiliki kontrol yang lebih baik dalam membuat layout yang responsif dan fleksibel. Tailwind CSS, yang digunakan dalam website ini, adalah contoh bagaimana utility-first CSS dapat mempercepat proses pengembangan.\r\n\r\nDi sisi backend, Node.js telah merevolusi cara kita membangun server-side applications. Dengan kemampuan untuk menjalankan JavaScript di server, pengembang sekarang dapat menggunakan bahasa yang sama di frontend dan backend, yang meningkatkan efisiensi pengembangan.\r\n\r\nKeamanan web juga menjadi fokus utama dalam pengembangan modern. Dengan meningkatnya ancaman cyber, praktik keamanan seperti HTTPS, Content Security Policy, dan sanitasi input menjadi standar wajib dalam pengembangan web.\r\n\r\nMasa depan teknologi web terlihat semakin menjanjikan dengan munculnya WebAssembly, yang memungkinkan kode berjalan di browser dengan performa yang mendekati native. Ini membuka kemungkinan baru untuk aplikasi web yang lebih powerful dan kompleks.'),
(12, 'Pentingnya Pendidikan Teknologi di Era Digital', 'Pendidikan', 'Di era digital yang semakin berkembang pesat, pendidikan teknologi menjadi salah satu aspek penting yang tidak bisa diabaikan. Kemampuan untuk memahami dan menggunakan teknologi dengan baik telah menjadi kebutuhan dasar dalam berbagai aspek kehidupan.\r\n\r\nPendidikan teknologi tidak hanya tentang mempelajari cara menggunakan komputer atau smartphone, tetapi juga tentang memahami konsep dasar teknologi, cara kerja internet, keamanan digital, dan kemampuan untuk berpikir secara komputasional. Hal ini penting untuk mempersiapkan generasi muda menghadapi tantangan masa depan.\r\n\r\nSalah satu aspek penting dalam pendidikan teknologi adalah coding atau pemrograman. Belajar coding tidak hanya tentang menulis kode, tetapi juga melatih kemampuan problem solving, logical thinking, dan kreativitas. Bahasa pemrograman seperti Python, JavaScript, dan Java menjadi populer untuk dipelajari di tingkat pendidikan dasar.\r\n\r\nSelain itu, literasi digital juga menjadi komponen penting dalam pendidikan teknologi. Ini mencakup kemampuan untuk mengevaluasi informasi online, memahami privasi digital, dan menggunakan teknologi secara bertanggung jawab. Dengan meningkatnya penggunaan media sosial dan platform digital, literasi digital menjadi semakin penting.\r\n\r\nPendidikan teknologi juga harus mengakomodasi kebutuhan khusus dan memberikan akses yang sama bagi semua siswa. Dengan adanya berbagai tools dan platform pembelajaran online, pendidikan teknologi menjadi lebih inklusif dan dapat diakses oleh siapa saja.\r\n\r\nMasa depan pendidikan teknologi terlihat menjanjikan dengan munculnya teknologi seperti Artificial Intelligence, Virtual Reality, dan Augmented Reality yang dapat digunakan untuk meningkatkan pengalaman belajar. Namun, yang terpenting adalah memastikan bahwa pendidikan teknologi tetap fokus pada pengembangan kemampuan berpikir kritis dan kreativitas siswa.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE `tbl_gallery` (
  `id_gallery` int(5) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(5, 'Batik Kawung', 'batik-kawung.jpg'),
(7, 'Persib Bandung', 'pemain-persib-bandung.jpeg'),
(8, 'Teknologi AI', 'Artificial-Intelligence.jpg'),
(11, 'Mie Ayam', 'Mi_ayam_jamur.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('cahya', '123'),
('cahyaap', 'cahya123'),
('test', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id_about` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
