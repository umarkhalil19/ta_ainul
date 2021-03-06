-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table db_ta_ainul.gejala
CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `kode` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.gejala: ~20 rows (approximately)
DELETE FROM `gejala`;
/*!40000 ALTER TABLE `gejala` DISABLE KEYS */;
INSERT INTO `gejala` (`id`, `nama`, `kode`) VALUES
	(1, 'Sesak Nafas', 'G01'),
	(2, 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 'G02'),
	(3, 'Mual / muntah', 'G03'),
	(4, 'Begah', 'G04'),
	(5, 'Demam', 'G05'),
	(6, 'Keringat dingin', 'G06'),
	(7, 'Lemas/Mudah lelah', 'G07'),
	(8, 'Kepala terasa ringan', 'G08'),
	(9, 'Batuk (berdahak, kering, saat berbaring)', 'G09'),
	(10, 'Katup jantung tidak bekerja dengan baik', 'G10'),
	(11, 'Penurunan berat badan atau Kenaikan berat badan signifikan', 'G11'),
	(12, 'Sulit tidur', 'G12'),
	(13, 'Muncul suara desir aliran darah atau murmur dari jantung', 'G13'),
	(14, 'Pusing / pingsan', 'G14'),
	(15, 'jantung berdebar-debar', 'G15'),
	(16, 'Denyut nadi yang lemah dan cepat', 'G16'),
	(17, 'Pembengkakan tungkai', 'G17'),
	(18, 'Nafsu makan berkurang', 'G18'),
	(19, 'Tekanan darah tinggi', 'G19'),
	(20, 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)', 'G20'),
	(21, 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit', 'G21');
/*!40000 ALTER TABLE `gejala` ENABLE KEYS */;

-- Dumping structure for table db_ta_ainul.gejala_bobot
CREATE TABLE IF NOT EXISTS `gejala_bobot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `penyakit_id` int(11) NOT NULL,
  `gejala_kode` varchar(15) NOT NULL DEFAULT '',
  `gejala_nama` varchar(100) NOT NULL,
  `bobot` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.gejala_bobot: ~78 rows (approximately)
DELETE FROM `gejala_bobot`;
/*!40000 ALTER TABLE `gejala_bobot` DISABLE KEYS */;
INSERT INTO `gejala_bobot` (`id`, `penyakit_id`, `gejala_kode`, `gejala_nama`, `bobot`) VALUES
	(1, 2, 'G01', 'Sesak Nafas', 0.2),
	(2, 2, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.8),
	(3, 2, 'G03', 'Mual / muntah', 0.6),
	(4, 2, 'G05', 'Demam', 0.9),
	(5, 2, 'G06', 'Keringat dingin', 0.8),
	(6, 2, 'G07', 'Lemas/Mudah lelah', 0.7),
	(7, 2, 'G09', 'Batuk (berdahak, kering, saat berbaring)', 0.1),
	(8, 2, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung', 0.7),
	(9, 1, 'G01', 'Sesak Nafas', 0.8),
	(10, 1, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.7),
	(11, 1, 'G03', 'Mual / muntah', 0.8),
	(12, 1, 'G04', 'Begah', 0.2),
	(13, 1, 'G05', 'Demam', 0.3),
	(14, 1, 'G06', 'Keringat dingin', 0.7),
	(15, 1, 'G07', 'Lemas/Mudah lelah', 0.7),
	(16, 1, 'G08', 'Kepala terasa ringan', 0.5),
	(17, 1, 'G09', 'Batuk (berdahak, kering, saat berbaring)', 0.5),
	(18, 1, 'G10', 'Katup jantung tidak bekerja dengan baik', 0.2),
	(19, 1, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan', 0.2),
	(20, 1, 'G12', 'Sulit tidur', 0.2),
	(21, 1, 'G15', 'jantung berdebar-debar', 0.6),
	(22, 3, 'G01', 'Sesak Nafas', 0.6),
	(23, 3, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.9),
	(24, 3, 'G06', 'Keringat dingin', 0.3),
	(25, 3, 'G07', 'Lemas/Mudah lelah', 0.5),
	(26, 3, 'G12', 'Sulit tidur', 0.1),
	(27, 3, 'G14', 'Pusing / pingsan', 0.8),
	(28, 3, 'G15', 'jantung berdebar-debar', 0.8),
	(29, 3, 'G16', 'Denyut nadi yang lemah dan cepat', 0.2),
	(30, 4, 'G01', 'Sesak Nafas', 0.6),
	(31, 4, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.9),
	(32, 4, 'G05', 'Demam', 0.2),
	(33, 4, 'G06', 'Keringat dingin', 0.3),
	(34, 4, 'G07', 'Lemas/Mudah lelah', 0.7),
	(35, 4, 'G09', 'Batuk (berdahak, kering, saat berbaring)', 0.8),
	(36, 4, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan', 0.6),
	(37, 4, 'G12', 'Sulit tidur', 0.1),
	(38, 4, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung', 0.1),
	(39, 4, 'G14', 'Pusing / pingsan', 0.7),
	(40, 4, 'G15', 'jantung berdebar-debar', 0.5),
	(41, 4, 'G17', 'Pembengkakan tungkai', 0.6),
	(42, 4, 'G18', 'Nafsu makan berkurang', 0.8),
	(43, 5, 'G01', 'Sesak Nafas', 0.6),
	(44, 5, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.8),
	(45, 5, 'G04', 'Begah', 0.6),
	(46, 5, 'G07', 'Lemas/Mudah lelah', 0.9),
	(47, 5, 'G09', 'Batuk (berdahak, kering, saat berbaring)', 0.5),
	(48, 5, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan', 0.5),
	(49, 5, 'G14', 'Pusing / pingsan', 0.7),
	(50, 5, 'G15', 'jantung berdebar-debar', 0.7),
	(51, 5, 'G17', 'Pembengkakan tungkai', 0.6),
	(52, 5, 'G18', 'Nafsu makan berkurang', 0.8),
	(53, 5, 'G19', 'Tekanan darah tinggi', 0.3),
	(54, 6, 'G01', 'Sesak Nafas', 0.9),
	(55, 6, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)', 0.6),
	(56, 6, 'G03', 'Mual / muntah', 0.3),
	(57, 6, 'G07', 'Lemas/Mudah lelah', 0.5),
	(58, 6, 'G09', 'Batuk (berdahak, kering, saat berbaring)', 0.6),
	(59, 6, 'G10', 'Katup jantung tidak bekerja dengan baik', 0.1),
	(60, 6, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan', 0.2),
	(61, 6, 'G12', 'Sulit tidur', 0.2),
	(62, 6, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung', 0.1),
	(63, 6, 'G14', 'Pusing / pingsan', 0.6),
	(64, 6, 'G15', 'jantung berdebar-debar', 0.7),
	(65, 6, 'G16', 'Denyut nadi yang lemah dan cepat', 0.3),
	(66, 6, 'G17', 'Pembengkakan tungkai', 0.8),
	(67, 6, 'G18', 'Nafsu makan berkurang', 0.2),
	(68, 6, 'G20', 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)', 0.1),
	(69, 7, 'G01', 'Sesak Nafas', 0.9),
	(70, 7, 'G07', 'Lemas/Mudah lelah', 0.6),
	(71, 7, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan', 0.6),
	(72, 7, 'G14', 'Pusing / pingsan', 0.3),
	(73, 7, 'G16', 'Denyut nadi yang lemah dan cepat', 0.9),
	(74, 7, 'G17', 'Pembengkakan tungkai', 0.7),
	(75, 7, 'G20', 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)', 0.8),
	(76, 2, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit', 0),
	(77, 2, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit', 0.4),
	(78, 3, 'G08', 'Kepala Terasa Ringan', 0.7),
	(79, 5, 'G08', 'Kepala terasa ringan', 0.1),
	(80, 6, 'G19', 'Tekanan darah tinggi', 0.4);
/*!40000 ALTER TABLE `gejala_bobot` ENABLE KEYS */;

-- Dumping structure for table db_ta_ainul.pasien
CREATE TABLE IF NOT EXISTS `pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `usia` int(2) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `nilai_diagnosa` float NOT NULL,
  `penyakit` varchar(100) NOT NULL,
  `array_nilai` text NOT NULL,
  `array_id` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.pasien: ~50 rows (approximately)
DELETE FROM `pasien`;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` (`id`, `nama`, `usia`, `jenis_kelamin`, `nilai_diagnosa`, `penyakit`, `array_nilai`, `array_id`) VALUES
	(1, 'nurhari A', 61, 'Perempuan', 72.9582, 'Jantung Koroner', '72.958199356913', '1'),
	(2, 'Asiyah yakop', 46, 'Perempuan', 67.6812, 'Jantung Koroner', '67.68115942029', '1'),
	(3, 'hamdani', 46, 'Laki-Laki', 75.6637, 'Jantung Koroner', '75.663716814159,74.285714285714', '1,2'),
	(4, 'Ibrahim', 73, 'Laki-Laki', 74.1584, 'Kardiomiopati', '74.158415841584', '5'),
	(5, 'Helmati', 56, 'Perempuan', 73.7895, 'Jantung Koroner', '73.789473684211', '1'),
	(6, 'Muzakir', 56, 'Laki-Laki', 73.5115, 'Jantung Koroner', '73.511450381679', '1'),
	(9, 'Saudah', 81, 'Perempuan', 72.2222, 'Jantung Koroner', '72.222222222222', '1'),
	(10, 'Ilias daud', 50, 'Perempuan', 73.7895, 'Jantung Koroner', '73.789473684211', '1'),
	(11, 'Rahmi', 67, 'Perempuan', 77.9654, 'gagal jantung', '77.965367965368,71.098901098901,69.685863874346', '4,6,1'),
	(12, 'Mursida', 50, 'Perempuan', 78.1967, 'kutup jantung', '78.196721311475,71.98347107438', '6,1'),
	(13, 'Saudah', 81, 'Perempuan', 78.1967, 'kutup jantung', '78.196721311475,71.98347107438', '6,1'),
	(14, 'Ibrahim', 83, 'Laki-Laki', 77.7596, 'Jantung reumatik', '77.75956284153', '2'),
	(15, 'M. Daut', 56, 'Laki-Laki', 79.3004, 'Jantung reumatik', '79.300411522634', '2'),
	(16, 'Ismail', 73, 'Laki-Laki', 80.0813, 'Jantung reumatik', '80.081300813008,68.877551020408', '2,1'),
	(17, 'Nurhayati ubit', 67, 'Perempuan', 80.3673, 'Jantung reumatik', '80.367346938776', '2'),
	(18, 'Salwiyah', 70, 'Perempuan', 83.8255, 'Jantung reumatik', '83.825503355705', '2'),
	(20, 'M. Isa', 66, 'Laki-Laki', 77.5556, 'Aritmia jantung', '77.555555555556,76.810035842294,73.166666666667', '3,5,4'),
	(21, 'Muliadi', 43, 'Laki-Laki', 79.9574, 'Aritmia jantung', '79.957446808511,75.170731707317,60.533333333333', '3,4,6'),
	(22, 'hasan usman', 55, 'Laki-Laki', 77.5556, 'Aritmia jantung', '77.555555555556,76.810035842294,73.166666666667', '3,5,4'),
	(23, 'huseini', 59, 'Laki-Laki', 80.2564, 'Aritmia jantung', '80.25641025641,79.300411522634,75.490196078431', '3,5,4'),
	(24, 'Abdul', 31, 'Laki-Laki', 78.6395, 'Aritmia jantung', '78.639455782313', '3'),
	(25, 'Saudah', 67, 'Perempuan', 86.8421, 'Jantung bawaan', '86.842105263158,77.142857142857,70.769230769231', '7,6,3'),
	(26, 'Muktar', 67, 'Laki-Laki', 71.6446, 'gagal jantung', '71.644562334218,70.835820895522', '4,6'),
	(27, 'Nur aina', 47, 'Perempuan', 78.9655, 'kutup jantung', '78.965517241379,77.096774193548,69.567567567568', '6,5,4'),
	(28, 'M. Nur', 54, 'Laki-Laki', 75.7895, 'gagal jantung', '75.789473684211,74.297520661157,74.297520661157', '4,6,5'),
	(29, 'Helmati', 69, 'Laki-Laki', 54, 'Jantung Koroner', '54,45.862068965517', '1,4'),
	(30, 'Hamidah', 68, 'Perempuan', 78.9655, 'kutup jantung', '78.965517241379,74.455445544554,72.247191011236', '6,7,5'),
	(31, 'Tgk. Sabudi', 83, 'Laki-Laki', 78.0365, 'kutup jantung', '78.036529680365,74.455445544554,61.643835616438', '6,5,4'),
	(32, 'Fatimah yunus', 52, 'Perempuan', 77.9654, 'kutup jantung', '77.965367965368,66.049382716049', '6,4'),
	(33, 'Munardi', 76, 'Laki-Laki', 73.6458, 'kutup jantung', '73.645833333333,68.4', '6,4'),
	(34, 'Jummadi taleb', 51, 'Laki-Laki', 76.5574, 'kutup jantung', '76.55737704918', '6'),
	(36, 'Muzakir', 56, 'Laki-Laki', 71.7714, 'Kardiomiopati', '71.771428571429', '5'),
	(37, 'Adin. S', 46, 'Laki-Laki', 75.7895, 'gagal jantung', '75.789473684211,74.297520661157,74.297520661157', '4,6,5'),
	(38, 'Aminah', 78, 'Perempuan', 74.6053, 'gagal jantung', '74.605263157895,74.605263157895,66.178861788618', '4,5,6'),
	(39, 'Nurjannah', 44, 'Perempuan', 75.5435, 'gagal jantung', '75.54347826087,75.54347826087,69.40074906367', '4,5,6'),
	(40, 'Husaini', 75, 'Laki-Laki', 70.1282, 'Kardiomiopati', '70.128205128205', '5'),
	(41, 'M. Amin', 78, 'Laki-Laki', 73.0588, 'gagal jantung', '73.058823529412,73.058823529412,72.079510703364', '4,5,6'),
	(42, 'Nanang sutadi', 41, 'Laki-Laki', 76.5574, 'kutup jantung', '76.55737704918', '6'),
	(43, 'Misiah', 64, 'Perempuan', 75.7895, 'Kardiomiopati', '75.789473684211,75.490196078431,71.762114537445', '5,6,4'),
	(44, 'Muklis rahaya', 84, 'Laki-Laki', 76.1702, 'kutup jantung', '76.170212765957', '6'),
	(45, 'Muliadi', 48, 'Laki-Laki', 74.8889, 'Kardiomiopati', '74.888888888889,73.573883161512,71.449275362319', '5,6,4'),
	(46, 'Hasan usman', 80, 'Laki-Laki', 71.8085, 'gagal jantung', '71.808510638298,71.479452054795,71.450151057402', '4,5,6'),
	(47, 'Usman piah', 62, 'Laki-Laki', 76.81, 'Kardiomiopati', '76.810035842294,72.871794871795,69.013452914798', '5,6,4'),
	(48, 'Ruqiah', 68, 'Perempuan', 73.5556, 'kutup jantung', '73.555555555556', '6'),
	(49, 'Maimunah', 67, 'Perempuan', 75.4902, 'kutup jantung', '75.490196078431,73.585657370518,63.74358974359', '6,5,4'),
	(50, 'Aminah', 70, 'Perempuan', 75.7895, 'Kardiomiopati', '75.789473684211,75.714285714286,69.65811965812', '5,6,4'),
	(51, 'Rosnidar', 18, 'Perempuan', 75.2344, 'kutup jantung', '75.234375', '6'),
	(52, 'M. fadli', 20, 'Laki-Laki', 78.5714, 'kutup jantung', '78.571428571429,75.789473684211', '6,7'),
	(53, 'Zubaidah', 76, 'Perempuan', 75.7895, 'Kardiomiopati', '75.789473684211,75.714285714286,69.65811965812', '5,6,4'),
	(54, 'Rosmaniar', 56, 'Perempuan', 90, 'Aritmia jantung', '90,90,80', '3,4,2');
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;

-- Dumping structure for table db_ta_ainul.pasien_gejala
CREATE TABLE IF NOT EXISTS `pasien_gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pasien_id` int(11) NOT NULL,
  `gejala_kode` varchar(15) NOT NULL DEFAULT '',
  `gejala_nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.pasien_gejala: ~0 rows (approximately)
DELETE FROM `pasien_gejala`;
/*!40000 ALTER TABLE `pasien_gejala` DISABLE KEYS */;
INSERT INTO `pasien_gejala` (`id`, `pasien_id`, `gejala_kode`, `gejala_nama`) VALUES
	(1, 1, 'G01', 'Sesak Nafas'),
	(2, 1, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(3, 1, 'G03', 'Mual / muntah'),
	(4, 1, 'G06', 'Keringat dingin'),
	(5, 1, 'G07', 'Lemas/Mudah lelah'),
	(6, 1, 'G15', 'jantung berdebar-debar'),
	(7, 2, 'G01', 'Sesak Nafas'),
	(8, 2, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(9, 2, 'G03', 'Mual / muntah'),
	(10, 2, 'G04', 'Begah'),
	(11, 2, 'G05', 'Demam'),
	(12, 2, 'G08', 'Kepala terasa ringan'),
	(13, 2, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(14, 2, 'G15', 'jantung berdebar-debar'),
	(15, 3, 'G01', 'Sesak Nafas'),
	(16, 3, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(17, 3, 'G03', 'Mual / muntah'),
	(18, 3, 'G06', 'Keringat dingin'),
	(19, 4, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(20, 4, 'G04', 'Begah'),
	(21, 4, 'G07', 'Lemas/Mudah lelah'),
	(22, 4, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(23, 4, 'G14', 'Pusing / pingsan'),
	(24, 4, 'G15', 'jantung berdebar-debar'),
	(25, 4, 'G17', 'Pembengkakan tungkai'),
	(26, 4, 'G18', 'Nafsu makan berkurang'),
	(27, 5, 'G01', 'Sesak Nafas'),
	(28, 5, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(29, 5, 'G03', 'Mual / muntah'),
	(30, 5, 'G04', 'Begah'),
	(31, 5, 'G05', 'Demam'),
	(72, 6, 'G01', 'Sesak Nafas'),
	(73, 6, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(74, 6, 'G03', 'Mual / muntah'),
	(75, 6, 'G06', 'Keringat dingin'),
	(76, 6, 'G15', 'jantung berdebar-debar'),
	(77, 9, 'G01', 'Sesak Nafas'),
	(78, 9, 'G03', 'Mual / muntah'),
	(79, 9, 'G08', 'Kepala terasa ringan'),
	(80, 9, 'G15', 'jantung berdebar-debar'),
	(81, 10, 'G01', 'Sesak Nafas'),
	(82, 10, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(83, 10, 'G03', 'Mual / muntah'),
	(84, 10, 'G04', 'Begah'),
	(85, 10, 'G05', 'Demam'),
	(86, 11, 'G01', 'Sesak Nafas'),
	(87, 11, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(88, 11, 'G07', 'Lemas/Mudah lelah'),
	(89, 11, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(90, 11, 'G12', 'Sulit tidur'),
	(91, 12, 'G01', 'Sesak Nafas'),
	(92, 12, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(93, 12, 'G10', 'Katup jantung tidak bekerja dengan baik'),
	(94, 12, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(95, 13, 'G01', 'Sesak Nafas'),
	(96, 13, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(97, 13, 'G10', 'Katup jantung tidak bekerja dengan baik'),
	(98, 13, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(99, 14, 'G01', 'Sesak Nafas'),
	(100, 14, 'G05', 'Demam'),
	(101, 14, 'G07', 'Lemas/Mudah lelah'),
	(102, 14, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung'),
	(103, 14, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit'),
	(104, 15, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(105, 15, 'G05', 'Demam'),
	(106, 15, 'G07', 'Lemas/Mudah lelah'),
	(107, 15, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung'),
	(108, 15, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit'),
	(109, 16, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(110, 16, 'G03', 'Mual / muntah'),
	(111, 16, 'G05', 'Demam'),
	(112, 16, 'G06', 'Keringat dingin'),
	(113, 16, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(114, 17, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(115, 17, 'G03', 'Mual / muntah'),
	(116, 17, 'G05', 'Demam'),
	(117, 17, 'G06', 'Keringat dingin'),
	(118, 17, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit'),
	(119, 18, 'G01', 'Sesak Nafas'),
	(120, 18, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(121, 18, 'G05', 'Demam'),
	(122, 18, 'G21', 'Pembesaran kelenjar getah bening dan benjolan di permukaan kulit'),
	(123, 20, 'G01', 'Sesak Nafas'),
	(124, 20, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(125, 20, 'G07', 'Lemas/Mudah lelah'),
	(126, 20, 'G14', 'Pusing / pingsan'),
	(127, 20, 'G15', 'jantung berdebar-debar'),
	(128, 21, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(129, 21, 'G07', 'Lemas/Mudah lelah'),
	(130, 21, 'G12', 'Sulit tidur'),
	(131, 21, 'G14', 'Pusing / pingsan'),
	(132, 21, 'G15', 'jantung berdebar-debar'),
	(133, 22, 'G01', 'Sesak Nafas'),
	(134, 22, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(135, 22, 'G07', 'Lemas/Mudah lelah'),
	(136, 22, 'G14', 'Pusing / pingsan'),
	(137, 22, 'G15', 'jantung berdebar-debar'),
	(138, 23, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(139, 23, 'G07', 'Lemas/Mudah lelah'),
	(140, 23, 'G14', 'Pusing / pingsan'),
	(141, 23, 'G15', 'jantung berdebar-debar'),
	(142, 24, 'G01', 'Sesak Nafas'),
	(143, 24, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(144, 24, 'G08', 'Kepala terasa ringan'),
	(145, 24, 'G14', 'Pusing / pingsan'),
	(146, 24, 'G15', 'jantung berdebar-debar'),
	(147, 24, 'G01', 'Sesak Nafas'),
	(148, 24, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(149, 24, 'G08', 'Kepala terasa ringan'),
	(150, 24, 'G14', 'Pusing / pingsan'),
	(151, 24, 'G15', 'jantung berdebar-debar'),
	(152, 25, 'G01', 'Sesak Nafas'),
	(153, 25, 'G14', 'Pusing / pingsan'),
	(154, 25, 'G16', 'Denyut nadi yang lemah dan cepat'),
	(155, 26, 'G01', 'Sesak Nafas'),
	(156, 26, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(157, 26, 'G07', 'Lemas/Mudah lelah'),
	(158, 26, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(159, 26, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(160, 26, 'G12', 'Sulit tidur'),
	(161, 26, 'G14', 'Pusing / pingsan'),
	(162, 26, 'G15', 'jantung berdebar-debar'),
	(163, 26, 'G17', 'Pembengkakan tungkai'),
	(164, 27, 'G01', 'Sesak Nafas'),
	(165, 27, 'G07', 'Lemas/Mudah lelah'),
	(166, 27, 'G17', 'Pembengkakan tungkai'),
	(167, 27, 'G18', 'Nafsu makan berkurang'),
	(168, 28, 'G01', 'Sesak Nafas'),
	(169, 28, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(170, 28, 'G07', 'Lemas/Mudah lelah'),
	(171, 28, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(172, 28, 'G17', 'Pembengkakan tungkai'),
	(173, 29, 'G05', 'Demam'),
	(174, 29, 'G15', 'jantung berdebar-debar'),
	(175, 30, 'G01', 'Sesak Nafas'),
	(176, 30, 'G07', 'Lemas/Mudah lelah'),
	(177, 30, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(178, 30, 'G17', 'Pembengkakan tungkai'),
	(179, 31, 'G01', 'Sesak Nafas'),
	(180, 31, 'G07', 'Lemas/Mudah lelah'),
	(181, 31, 'G15', 'jantung berdebar-debar'),
	(182, 31, 'G17', 'Pembengkakan tungkai'),
	(183, 32, 'G01', 'Sesak Nafas'),
	(184, 32, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(185, 32, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung'),
	(186, 32, 'G15', 'jantung berdebar-debar'),
	(187, 32, 'G17', 'Pembengkakan tungkai'),
	(188, 33, 'G01', 'Sesak Nafas'),
	(189, 33, 'G07', 'Lemas/Mudah lelah'),
	(190, 33, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(191, 33, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung'),
	(192, 33, 'G15', 'jantung berdebar-debar'),
	(193, 34, 'G01', 'Sesak Nafas'),
	(194, 34, 'G03', 'Mual / muntah'),
	(195, 34, 'G07', 'Lemas/Mudah lelah'),
	(196, 34, 'G17', 'Pembengkakan tungkai'),
	(197, 34, 'G18', 'Nafsu makan berkurang'),
	(208, 36, 'G01', 'Sesak Nafas'),
	(209, 36, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(210, 36, 'G08', 'Kepala terasa ringan'),
	(211, 36, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(212, 36, 'G14', 'Pusing / pingsan'),
	(213, 36, 'G15', 'jantung berdebar-debar'),
	(214, 36, 'G17', 'Pembengkakan tungkai'),
	(215, 36, 'G19', 'Tekanan darah tinggi'),
	(216, 37, 'G01', 'Sesak Nafas'),
	(217, 37, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(218, 37, 'G07', 'Lemas/Mudah lelah'),
	(219, 37, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(220, 37, 'G17', 'Pembengkakan tungkai'),
	(221, 38, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(222, 38, 'G07', 'Lemas/Mudah lelah'),
	(223, 38, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(224, 38, 'G14', 'Pusing / pingsan'),
	(225, 38, 'G15', 'jantung berdebar-debar'),
	(226, 38, 'G17', 'Pembengkakan tungkai'),
	(227, 39, 'G01', 'Sesak Nafas'),
	(228, 39, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(229, 39, 'G07', 'Lemas/Mudah lelah'),
	(230, 39, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(231, 39, 'G14', 'Pusing / pingsan'),
	(232, 39, 'G15', 'jantung berdebar-debar'),
	(233, 39, 'G18', 'Nafsu makan berkurang'),
	(234, 40, 'G01', 'Sesak Nafas'),
	(235, 40, 'G04', 'Begah'),
	(236, 40, 'G07', 'Lemas/Mudah lelah'),
	(237, 40, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(238, 40, 'G14', 'Pusing / pingsan'),
	(239, 40, 'G15', 'jantung berdebar-debar'),
	(240, 40, 'G17', 'Pembengkakan tungkai'),
	(241, 41, 'G01', 'Sesak Nafas'),
	(242, 41, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(243, 41, 'G07', 'Lemas/Mudah lelah'),
	(244, 41, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(245, 41, 'G14', 'Pusing / pingsan'),
	(246, 41, 'G15', 'jantung berdebar-debar'),
	(247, 41, 'G17', 'Pembengkakan tungkai'),
	(248, 42, 'G01', 'Sesak Nafas'),
	(249, 42, 'G03', 'Mual / muntah'),
	(250, 42, 'G07', 'Lemas/Mudah lelah'),
	(251, 42, 'G12', 'Sulit tidur'),
	(252, 42, 'G17', 'Pembengkakan tungkai'),
	(253, 43, 'G01', 'Sesak Nafas'),
	(254, 43, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(255, 43, 'G07', 'Lemas/Mudah lelah'),
	(256, 43, 'G15', 'jantung berdebar-debar'),
	(257, 43, 'G17', 'Pembengkakan tungkai'),
	(258, 44, 'G01', 'Sesak Nafas'),
	(259, 44, 'G07', 'Lemas/Mudah lelah'),
	(260, 44, 'G13', 'Muncul suara desir aliran darah atau murmur dari jantung'),
	(261, 44, 'G17', 'Pembengkakan tungkai'),
	(262, 44, 'G19', 'Tekanan darah tinggi'),
	(263, 44, 'G20', 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)'),
	(264, 45, 'G01', 'Sesak Nafas'),
	(265, 45, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(266, 45, 'G07', 'Lemas/Mudah lelah'),
	(267, 45, 'G14', 'Pusing / pingsan'),
	(268, 45, 'G15', 'jantung berdebar-debar'),
	(269, 45, 'G17', 'Pembengkakan tungkai'),
	(270, 46, 'G01', 'Sesak Nafas'),
	(271, 46, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(272, 46, 'G07', 'Lemas/Mudah lelah'),
	(273, 46, 'G09', 'Batuk (berdahak, kering, saat berbaring)'),
	(274, 46, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(275, 46, 'G14', 'Pusing / pingsan'),
	(276, 46, 'G15', 'jantung berdebar-debar'),
	(277, 46, 'G17', 'Pembengkakan tungkai'),
	(278, 47, 'G01', 'Sesak Nafas'),
	(279, 47, 'G07', 'Lemas/Mudah lelah'),
	(280, 47, 'G14', 'Pusing / pingsan'),
	(281, 47, 'G15', 'jantung berdebar-debar'),
	(282, 47, 'G18', 'Nafsu makan berkurang'),
	(283, 48, 'G01', 'Sesak Nafas'),
	(284, 48, 'G10', 'Katup jantung tidak bekerja dengan baik'),
	(285, 48, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(286, 48, 'G14', 'Pusing / pingsan'),
	(287, 48, 'G15', 'jantung berdebar-debar'),
	(288, 48, 'G16', 'Denyut nadi yang lemah dan cepat'),
	(289, 49, 'G01', 'Sesak Nafas'),
	(290, 49, 'G07', 'Lemas/Mudah lelah'),
	(291, 49, 'G14', 'Pusing / pingsan'),
	(292, 49, 'G15', 'jantung berdebar-debar'),
	(293, 49, 'G17', 'Pembengkakan tungkai'),
	(294, 50, 'G01', 'Sesak Nafas'),
	(295, 50, 'G07', 'Lemas/Mudah lelah'),
	(296, 50, 'G14', 'Pusing / pingsan'),
	(297, 50, 'G17', 'Pembengkakan tungkai'),
	(298, 50, 'G18', 'Nafsu makan berkurang'),
	(299, 51, 'G01', 'Sesak Nafas'),
	(300, 51, 'G07', 'Lemas/Mudah lelah'),
	(301, 51, 'G14', 'Pusing / pingsan'),
	(302, 51, 'G15', 'jantung berdebar-debar'),
	(303, 51, 'G17', 'Pembengkakan tungkai'),
	(304, 51, 'G20', 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)'),
	(305, 52, 'G01', 'Sesak Nafas'),
	(306, 52, 'G07', 'Lemas/Mudah lelah'),
	(307, 52, 'G11', 'Penurunan berat badan atau Kenaikan berat badan signifikan'),
	(308, 52, 'G17', 'Pembengkakan tungkai'),
	(309, 52, 'G20', 'Kulit tampak kebiruan (bibir, kulit, dan jari-jari)'),
	(310, 36, 'G07', 'Lemas/Mudah lelah'),
	(311, 53, 'G01', 'Sesak Nafas'),
	(312, 53, 'G07', 'Lemas/Mudah lelah'),
	(313, 53, 'G14', 'Pusing / pingsan'),
	(314, 53, 'G17', 'Pembengkakan tungkai'),
	(315, 53, 'G18', 'Nafsu makan berkurang'),
	(316, 54, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(317, 54, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)'),
	(318, 54, 'G02', 'Nyeri dada (sendi, kepala, perut, pada leher, rahang, bahu, lengan dan uluhati)');
/*!40000 ALTER TABLE `pasien_gejala` ENABLE KEYS */;

-- Dumping structure for table db_ta_ainul.penyakit
CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `gejala_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.penyakit: ~0 rows (approximately)
DELETE FROM `penyakit`;
/*!40000 ALTER TABLE `penyakit` DISABLE KEYS */;
INSERT INTO `penyakit` (`id`, `nama`, `gejala_id`) VALUES
	(1, 'Jantung Koroner', 'G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11,G12,G15'),
	(2, 'Jantung reumatik', 'G01,G02,G03,G05,G06,G07,G09,G13,G21'),
	(3, 'Aritmia jantung', 'G01,G02,G06,G07,G12,G14,G15,G16'),
	(4, 'gagal jantung', 'G01,G02,G05,G06,G07,G09,G11,G12,G13,G14,G15,G17,G18'),
	(5, 'Kardiomiopati', 'G01,G02,G04,G07,G08,G09,G11,G14,G15,G17,G18,G19'),
	(6, 'kutup jantung', 'G01,G02,G03,G07,G09,G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20'),
	(7, 'Jantung bawaan', 'G01,G07,G11,G14,G16,G17,G20');
/*!40000 ALTER TABLE `penyakit` ENABLE KEYS */;

-- Dumping structure for table db_ta_ainul.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table db_ta_ainul.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `nama`, `username`, `password`, `email`) VALUES
	(1, 'Ainul', 'admin', '2b5e148f18eb011f5863b6b171a66a41', 'ainul@mhs.unimal.ac.id');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
