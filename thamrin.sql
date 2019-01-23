-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 Jul 2018 pada 09.17
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thamrin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `level` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `level`) VALUES
(8, 'robi', 'd21fe1e54e2f1e45b793687f78163603', 1),
(9, 'wendy', '9ae8bd0b8ebe21d60482d3ecb130ca47', 2),
(10, 'rendy', 'c6a2963a5145a07712760a4eb2bb63ff', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg_msk_hino`
--

CREATE TABLE `brg_msk_hino` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brg_msk_hino`
--

INSERT INTO `brg_msk_hino` (`no`, `tanggal`, `jenis`, `tipe`, `jumlah`) VALUES
(52, '2018-07-04', 'HINO 300 Series', 'Dutro 110 SD', 2),
(53, '2018-07-20', 'HINO 500 Series', 'FL 235 JW', 11),
(54, '2018-07-11', 'HINO 300 Series', 'Dutro 110 SD', 3),
(55, '2018-07-11', 'HINO 300 Series', 'Dutro 110 SDL', 4),
(57, '2018-07-19', 'HINO 500 Series', 'FL 260 JT', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg_msk_mercedes`
--

CREATE TABLE `brg_msk_mercedes` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `mobil` varchar(50) NOT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brg_msk_mercedes`
--

INSERT INTO `brg_msk_mercedes` (`no`, `tanggal`, `mobil`, `warna`, `jumlah`) VALUES
(3, '2018-07-14', 'GLA 200', 'Abu-abu', 4),
(4, '2018-07-11', 'GLA 333 1111', 'Abu-abu', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg_msk_suzuki`
--

CREATE TABLE `brg_msk_suzuki` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `mobil` varchar(50) NOT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brg_msk_suzuki`
--

INSERT INTO `brg_msk_suzuki` (`no`, `tanggal`, `mobil`, `warna`, `jumlah`) VALUES
(1, '2018-07-04', 'Baleno AT', 'Hitam', 4),
(3, '2018-07-06', 'Baleno AT', 'Hitam', 4),
(4, '2018-07-10', 'Carry Pick Up WD', 'Hitam', 3),
(5, '2018-07-10', 'Ignis GL MT', 'Hitam', 2),
(6, '2018-07-18', 'Baleno AT', 'Abu-abu', 1),
(7, '2018-07-12', 'Baleno AT', 'Abu-abu', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dealer`
--

CREATE TABLE `dealer` (
  `no` int(10) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `keterangan` varchar(25) DEFAULT NULL,
  `link` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dealer`
--

INSERT INTO `dealer` (`no`, `gambar`, `keterangan`, `link`) VALUES
(1, 'nscb123.png', 'Main Dealer Suzuki', 'index.php?page=Suzuki Mobil'),
(2, 'hino23.jpg', 'Main Dealer Hino', 'index.php?page=Hino Mobil'),
(3, '123.jpg', 'Main Dealer Mercedes-Benz', 'index.php?page=Mercedes Mobil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hino_mobil`
--

CREATE TABLE `hino_mobil` (
  `jenis` varchar(50) DEFAULT NULL,
  `tipe` varchar(50) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `keterangan` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hino_mobil`
--

INSERT INTO `hino_mobil` (`jenis`, `tipe`, `gambar`, `harga`, `keterangan`) VALUES
('HINO 300 Series ', 'Dutro 110 SD ', '1.jpg', 210000000, '   <strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\n<br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n      '),
('HINO 300 Series', 'Dutro 110 SDL', '7.jpg', 300000000, ' <strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\n<br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n       '),
('HINO 300 Series', 'Dutro 130 HDL', '5.jpg', 100000000, '<strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\nMobil Derek <br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n'),
('HINO 500 Series', 'FL 235 JN', '10.jpg', 200000000, '<strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\n<br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n		  '),
('HINO 500 Series', 'FL 235 JW', '2.jpg', 100000000, '<strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\n<br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n						  '),
('HINO 500 Series', 'FL 240 JW', 'hino.jpg', 200000000, '<strong>Sekilas </strong>	<br><br>Mekanikal	Dimensi\r\nTipe Karoseri	Model Mesin	Dimensi (mm)\r\nAmbulans\r\nMobil Boks/Bak\r\nLos Bak\r\nBak Terbuka\r\nBoks Berpendingin\r\nSky Lift <br><br>\r\n <br><br> <strong>	Model :  </strong><br><br> W04D â€“ TP\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 110 / 2.800\r\nTorsi Maksimum (Kgm/rpm) : 29 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 2530\r\nCabin to End : 2.050\r\nTotal Panjang : 4.745\r\nTotal Lebar : 1.717\r\nTotal Tinggi : 2.120\r\nLebar Jejak Depan : 1.415\r\nLebar Jejak Belakang : 1.420\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.149\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 126 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 31,7	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg) <br><br> <strong>  \r\nTipe :   </strong> <br><br>Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.288\r\nBelakang : 635\r\nBerat Kosong : 1.923\r\nGVWR / GCWR : 5200 <br><br>  \r\nTransmisi	  </strong><br><br>\r\nTipe : M153\r\nPerbandingan gigi:\r\nke-1 : 5,339\r\nke-2 : 2,792\r\nke-3 : 1,593\r\nke-4 : 1,000\r\nke-5 : 0,788\r\nMundur 5,339	 <br><br>  <strong>\r\nKemudi	 </strong><br><br> \r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,5 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 4,625\r\nSistem Penggerak : Rear, 4 x 2	<br><br> <strong>\r\nRem	</strong><br><br>\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	<br><br> <strong>\r\nRoda & Ban	</strong><br><br>\r\nUkuran Rim : 15 x 5.50F-30\r\nUkuran Ban : 7.50-15-12PR\r\nJumlah Ban : 4 (+1)	<br><br> <strong>\r\nSuspensi	 </strong><br><br>\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2\r\n  '),
('HINO 500 Series', 'FL 260 JT', 'mixer1.jpg', 2147483647, '<b>Sekilas</b><br>	Mekanikal	Dimensi\r\nTipe Karoseri	<br><br><b>Model Mesin</b>	<br>Dimensi (mm)\r\nMolen	Model : W04D â€“ TR\r\nTipe : Mesin Diesel 4 Langkah Segaris;\r\nDirect Injection; Turbo Charge Intercooler\r\nTenaga Maksimum (PS/rpm) : 130 / 2.500\r\nTorsi Maksimum (Kgm/rpm) : 37 / 1.800\r\nJumlah Silinder : 4\r\nDiameter x Langkah Piston (mm) : 104 x 118\r\nIsi Silinder (cc) : 4.009	Jarak Sumbu Roda : 3380\r\nCabin to End : 2.900\r\nTotal Panjang : 6.026\r\nTotal Lebar : 1.945\r\nTotal Tinggi : 2.165\r\nLebar Jejak Depan : 1.455\r\nLebar Jejak Belakang : 1.480\r\nJulur Depan : 1.066\r\nJulur Belakang : 1.580\r\nPerforma	Tangki Solar\r\nKecepatan Maksimum : 103 (km/jam)\r\nDaya Tanjak (tan Ã˜) : 33,6	Kapasitas : 100 lt\r\nKopling	Berat Chassis (kg)\r\nTipe : Pelat Kering Tunggal;\r\nHydraulic Operation\r\nDiameter Cakram : 300 mm	Depan : 1.419\r\nBelakang : 936\r\nBerat Kosong : 2.355\r\nGVWR / GCWR : 8250\r\nTransmisi	\r\nTipe : M550\r\nPerbandingan gigi:\r\nke-1 : 4,981\r\nke-2 : 2,911\r\nke-3 : 1,556\r\nke-4 : 1,000\r\nke-5 : 0,738 \r\nMundur 4,625	<b> <br><br>\r\nKemudi	</b><br>\r\nTipe : Recirculating Ball Screw\r\nMinimal Radius Putar : 5,8 m	\r\nSumbu	\r\nBelakang : Full Floating Type,\r\nSingle Reduction,\r\nSingle Speed by Hypoid Gear\r\nDepan : Reverse Elliot, I-Section Beam\r\nPerbandingan Gigi Akhir : 6,428\r\nSistem Penggerak : Rear, 4 x 2	<br><br><b>\r\nRem</b><br>	\r\nRem Utama : Vacuum Servo\r\ndengan Sirkuit Ganda; Dilengkapi Booster\r\nRem Pelambat : Dengan Pipa Gas Buang\r\nRem Parkir : Internal Expanding; Out Shaft Transmisi	\r\nRoda & Ban	\r\nUkuran Rim : 16 x 6.00GS-127\r\nUkuran Ban : 7.50-16-14PR\r\nJumlah Ban : 6 (+1)	\r\nSuspensi	\r\nDepan & Belakang : Rigid Axle\r\ndengan Pegas Daun Semi Elliptic	\r\nSistim Listrik Accu	\r\nAccu : 12V-60Ah x2						    ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hino_stok`
--

CREATE TABLE `hino_stok` (
  `no` int(10) NOT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `stok` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hino_stok`
--

INSERT INTO `hino_stok` (`no`, `jenis`, `tipe`, `stok`) VALUES
(1, 'HINO 500 Series', 'FL 235 JW', 11),
(6, 'HINO 300 Series', 'Dutro 110 SDL', 19),
(8, 'HINO 300 Series ', 'Dutro 130 HDL', 19),
(9, 'HINO 300 Series', 'Dutro 110 SD', 9),
(10, 'HINO 500 Series', 'FL 240 JW', 12),
(11, 'HINO 500 Series', 'FL 260 JT', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mercedes_mobil`
--

CREATE TABLE `mercedes_mobil` (
  `mobil` varchar(50) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `keterangan` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mercedes_mobil`
--

INSERT INTO `mercedes_mobil` (`mobil`, `gambar`, `harga`, `keterangan`) VALUES
('E 250', 'e-class.jpg', 2147483647, 'aaaaaaaaaaa'),
('E 300', '111.jpg', 1111111111, 'aaaaaaaaaaaa'),
('GLA 200', 'gla.jpg', 2147483647, ''),
('GLA 45', 'gla45.jpg', 100000000, 'aaaaaaa1111111111'),
('GLC 200', 'glc.jpg', 100000000, 'aaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mercedes_stok`
--

CREATE TABLE `mercedes_stok` (
  `no` int(10) NOT NULL,
  `mobil` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `stok` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mercedes_stok`
--

INSERT INTO `mercedes_stok` (`no`, `mobil`, `warna`, `stok`) VALUES
(2, 'GLA 200', 'Abu-abu', 6),
(3, 'GLA 200', 'Hitam', 4),
(4, 'GLA 200', 'Silver', 5),
(7, 'GLA 200', 'Merah', 10),
(12, 'E 250', 'Hitam', 4),
(15, 'E 250', 'Putih', 5),
(16, 'E 250', 'Silver', 10),
(17, 'E 300', 'Hitam', 6),
(18, 'E 300', 'Putih', 7),
(19, 'E 300', 'Silver', 8),
(20, 'GLC 200', 'Hitam', 6),
(21, 'GLC 200', 'Putih', 9),
(22, 'GLA 45', 'Hitam', 8),
(23, 'GLA 45', 'Putih', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjln_hino`
--

CREATE TABLE `pjln_hino` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pjln_hino`
--

INSERT INTO `pjln_hino` (`no`, `tanggal`, `jenis`, `tipe`, `jumlah`) VALUES
(17, '2018-07-19', 'HINO 300 Series ', 'Dutro 110 SDL', 3),
(19, '2018-07-12', 'HINO 300 Series ', 'Dutro 110 SD ', 4),
(20, '2018-07-19', 'HINO 300 Series ', 'Dutro 110 SD ', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjln_mercedes`
--

CREATE TABLE `pjln_mercedes` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `mobil` varchar(50) NOT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pjln_mercedes`
--

INSERT INTO `pjln_mercedes` (`no`, `tanggal`, `mobil`, `warna`, `jumlah`) VALUES
(1, '2018-07-11', 'GLA 200', 'Abu-abu', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjln_suzuki`
--

CREATE TABLE `pjln_suzuki` (
  `no` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `mobil` varchar(50) NOT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pjln_suzuki`
--

INSERT INTO `pjln_suzuki` (`no`, `tanggal`, `mobil`, `warna`, `jumlah`) VALUES
(1, '2018-06-05', 'Baleno AT', 'Hitam', 1),
(2, '2018-06-12', 'New SX4 Scross MT', 'Hitam', 1),
(3, '2018-06-11', 'Baleno AT', 'Coklat', 1),
(4, '2018-06-28', 'New SX4 Scross AT', 'Hitam', 1),
(5, '2018-06-11', 'New Ertiga GL AT', 'Hitam', 1),
(6, '2018-04-01', 'Baleno AT', 'Hitam', 2),
(7, '2018-04-05', 'Mega Carry Box', 'Hitam', 4),
(9, '2018-07-19', 'Baleno AT', 'Abu-abu', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suzuki_mobil`
--

CREATE TABLE `suzuki_mobil` (
  `mobil` varchar(50) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `keterangan` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suzuki_mobil`
--

INSERT INTO `suzuki_mobil` (`mobil`, `gambar`, `harga`, `keterangan`) VALUES
('Baleno AT', 'baleno.jpg', 229000000, '1.	Chrome Curve Front Grille\r\n2.	Front Sporty Bumper\r\n3.	HID Projector Headlamps with DRL\r\n4.	Fog Lamps\r\n5.	Rear Sporty Bumper\r\n6.	Rear Spoiler with High Mount Stop Lamp\r\n7.	LED Rear Combination Lamps\r\n8.	195/55 R16\r\n9.	Sensor Parkir 4 Titik\r\n10.	Panjang Keseluruhan = 3.995 mm\r\n11.	Lebar Keseluruhan = 1.745 mm\r\n12.	Tinggi Keseluruhan = 1.510 mm\r\n13.	Jarak Poros Roda = 2.520 mm\r\n14.	Jarak Pijak Depan  = 1.505 mm\r\n15.	Jarak Pijak Belakang = 1.510 mm\r\n16.	Jarak Terendah  = 710 mm\r\n17.	Radius Putar Minimum = 4,9 m\r\n18.	Jenis = K14B\r\n19.	Isi Silinder  = 1.373 cc\r\n20.	Jumlah Katup = 16\r\n21.	Jumlah Silinder = 4 in-line\r\n22.	Diameter x Langkah = 73.0 x 82.0\r\n23.	Perbandingan Kompresi = â€“\r\n24.	Daya Maksimum = 92.4 PS / 6.000 rpm\r\n25.	Momem Puntir Maksimum = 130 Nm / 4.200 rpm\r\n26.	Sistem Bahan Bakar = Multi Point Injection \r\n27.	Tempat Duduk   = 5 orang\r\n28.	Bagasi  = 339 liter \r\n29.	Tangki Bahan Bakar = 37 liter\r\n\r\n'),
('Baleno MT', 'baleno.jpg', 217000000, '1.	Chrome Curve Front Grille\r\n2.	Front Sporty Bumper\r\n3.	HID Projector Headlamps with DRL\r\n4.	Fog Lamps\r\n5.	Rear Sporty Bumper\r\n6.	Rear Spoiler with High Mount Stop Lamp\r\n7.	LED Rear Combination Lamps\r\n8.	195/55 R16\r\n9.	Sensor Parkir 4 Titik\r\n10.	Panjang Keseluruhan = 3.995 mm\r\n11.	Lebar Keseluruhan = 1.745 mm\r\n12.	Tinggi Keseluruhan = 1.510 mm\r\n13.	Jarak Poros Roda = 2.520 mm\r\n14.	Jarak Pijak Depan  = 1.505 mm\r\n15.	Jarak Pijak Belakang = 1.510 mm\r\n16.	Jarak Terendah  = 710 mm\r\n17.	Radius Putar Minimum = 4,9 m\r\n18.	Jenis = K14B\r\n19.	Isi Silinder  = 1.373 cc\r\n20.	Jumlah Katup = 16\r\n21.	Jumlah Silinder = 4 in-line\r\n22.	Diameter x Langkah = 73.0 x 82.0\r\n23.	Perbandingan Kompresi = â€“\r\n24.	Daya Maksimum = 92.4 PS / 6.000 rpm\r\n25.	Momem Puntir Maksimum = 130 Nm / 4.200 rpm\r\n26.	Sistem Bahan Bakar = Multi Point Injection \r\n27.	Tempat Duduk   = 5 orang\r\n28.	Bagasi  = 339 liter \r\n29.	Tangki Bahan Bakar = 37 liter\r\n\r\n'),
('Carry Pick Up FD', 'carr3.jpg', 134000000, 'keterangan'),
('Carry Pick Up WD', 'carry2.jpg', 138000000, 'keterangan'),
('Ertiga Diesel Smart Hybird MT', 'ertiga6.jpg', 241000000, 'dddddddd'),
('Ertiga Dreza AT', 'ertiga6.jpg', 269000000, 'aaaaaaaaaaa'),
('Ertiga Dreza MT', 'ertiga4.jpg', 256000000, 'aaaaaaaaaa'),
('Ignis GL MT', 'ignis.jpg', 154000000, '1.	Panjang Keseluruhan = 3.700 mm\r\n2.	Isi Silinder = 1.491 cm3\r\n3.	Lebar Keseluruhan = 1.660 mm\r\n4.	Tinggi Keseluruhan = 1.595 mm\r\n5.	Jarak Poros Roda = 2.435 mm\r\n6.	Jarak Pijak Depan = 1.460 mm\r\n7.	Jarak Pijak Belakang = 1.470 mm\r\n8.	Jarak Terendah = 180 mm\r\n9.	Radius Putar Minimum = 4,7 m\r\n10.	Jenis = K12M\r\n11.	Isi Silinder = 1.197 cc\r\n12.	Jumlah Katup = 16\r\n13.	Jumlah Silinder = 4\r\n14.	Diameter x Langkah = 73.0 x 71.5 mm\r\n15.	Perbandingan Kompresi = 11.0\r\n16.	Daya Maksimum = 83 PS / 6000 rpm\r\n17.	Momem Puntir Maksimum = 113 Nm / 4.200 rpm\r\n18.	Sistem Bahan Bakar = Multi Point Injection\r\n19.	Berat Kosong = 840 - 850 kg\r\n20.	Berat Kotor = 1.280 kg\r\n\r\n21.	Sistem Kemudi = Rack & Pinion\r\n22.	Suspensi Depan = MacPhershon Strut with Coil Spring\r\n23.	Suspensi Belakang = Torsion Beam with Coil Spring\r\n24.	Rem Depan = Ventilated Disc\r\n25.	Rem Belakang = Drum, Leading & Trailing\r\n26.	Ukuran Ban = 175/65/R15\r\n\r\n27.	Tempat Duduk = 5 orang\r\n28.	Tangki Bahan Bakar = 35 liter\r\n29.	Bagasi = 260 liter (with Parcel Tray\r\n'),
('Ignis GX MT', 'ignis.jpg', 175000000, '1.	Panjang Keseluruhan = 3.700 mm\r\n2.	Isi Silinder = 1.491 cm3\r\n3.	Lebar Keseluruhan = 1.660 mm\r\n4.	Tinggi Keseluruhan = 1.595 mm\r\n5.	Jarak Poros Roda = 2.435 mm\r\n6.	Jarak Pijak Depan = 1.460 mm\r\n7.	Jarak Pijak Belakang = 1.470 mm\r\n8.	Jarak Terendah = 180 mm\r\n9.	Radius Putar Minimum = 4,7 m\r\n10.	Jenis = K12M\r\n11.	Isi Silinder = 1.197 cc\r\n12.	Jumlah Katup = 16\r\n13.	Jumlah Silinder = 4\r\n14.	Diameter x Langkah = 73.0 x 71.5 mm\r\n15.	Perbandingan Kompresi = 11.0\r\n16.	Daya Maksimum = 83 PS / 6000 rpm\r\n17.	Momem Puntir Maksimum = 113 Nm / 4.200 rpm\r\n18.	Sistem Bahan Bakar = Multi Point Injection\r\n19.	Berat Kosong = 840 - 850 kg\r\n20.	Berat Kotor = 1.280 kg\r\n\r\n21.	Sistem Kemudi = Rack & Pinion\r\n22.	Suspensi Depan = MacPhershon Strut with Coil Spring\r\n23.	Suspensi Belakang = Torsion Beam with Coil Spring\r\n24.	Rem Depan = Ventilated Disc\r\n25.	Rem Belakang = Drum, Leading & Trailing\r\n26.	Ukuran Ban = 175/65/R15\r\n\r\n27.	Tempat Duduk = 5 orang\r\n28.	Tangki Bahan Bakar = 35 liter\r\n29.	Bagasi = 260 liter (with Parcel Tray\r\n'),
('Karimun Wagon  R GS MT', 'karimun.jpg', 141000000, 'Jenis Mobil : City Car, LCGC. <br>\r\nTipe Mesin : K10B engine with DOHC, 998cc, 12 valves 3 in line. <br>\r\nMax. Tenaga : 68PS/6.200rpm. <br>\r\nMax. Torsi : 90Nm/3.500rpm. <br>\r\nDimensi (PXLXT) : 3,600 mm x 1,475 mm x 1,700 mm. <br>\r\nWheelbase : 2,400 mm. <br>\r\nUkuran Ban : 145/80 R13. <br>\r\nGround Clearence : -. <br>\r\nSuspensi Depan : MacPherson Strut with coil spring. <br>\r\nSuspensi Belakang : 3-Links Rigid with coil spring. <br>\r\nKapasitas Tangki : 35. <br>\r\nJenis Bahan Bakar : Bensin. <br>\r\n\r\n'),
('Karimun Wagon R GL AGS', 'karimun.jpg', 139000000, 'Jenis Mobil : City Car, LCGC. <br>\r\nTipe Mesin : K10B engine with DOHC, 998cc, 12 valves 3 in line. <br>\r\nMax. Tenaga : 68PS/6.200rpm. <br>\r\nMax. Torsi : 90Nm/3.500rpm. <br>\r\nDimensi (PXLXT) : 3,600 mm x 1,475 mm x 1,700 mm. <br>\r\nWheelbase : 2,400 mm. <br>\r\nUkuran Ban : 145/80 R13. <br>\r\nGround Clearence : -. <br>\r\nSuspensi Depan : MacPherson Strut with coil spring. <br>\r\nSuspensi Belakang : 3-Links Rigid with coil spring. <br>\r\nKapasitas Tangki : 35. <br>\r\nJenis Bahan Bakar : Bensin. <br>\r\n'),
('Karimun Wagon R GL MT', 'karimun.jpg', 129000000, 'Jenis Mobil : City Car, LCGC. <br>\r\nTipe Mesin : K10B engine with DOHC, 998cc, 12 valves 3 in line. <br>\r\nMax. Tenaga : 68PS/6.200rpm. <br>\r\nMax. Torsi : 90Nm/3.500rpm. <br>\r\nDimensi (PXLXT) : 3,600 mm x 1,475 mm x 1,700 mm. <br>\r\nWheelbase : 2,400 mm. <br>\r\nUkuran Ban : 145/80 R13. <br>\r\nGround Clearence : -. <br>\r\nSuspensi Depan : MacPherson Strut with coil spring. <br>\r\nSuspensi Belakang : 3-Links Rigid with coil spring. <br>\r\nKapasitas Tangki : 35. <br>\r\nJenis Bahan Bakar : Bensin. <br>\r\n'),
('Karimun Wagon R GS AGS', 'karimun.jpg', 150000000, 'Jenis Mobil : City Car, LCGC. <br>\r\nTipe Mesin : K10B engine with DOHC, 998cc, 12 valves 3 in line. <br>\r\nMax. Tenaga : 68PS/6.200rpm. <br>\r\nMax. Torsi : 90Nm/3.500rpm. <br>\r\nDimensi (PXLXT) : 3,600 mm x 1,475 mm x 1,700 mm. <br>\r\nWheelbase : 2,400 mm. <br>\r\nUkuran Ban : 145/80 R13. <br>\r\nGround Clearence : -. <br>\r\nSuspensi Depan : MacPherson Strut with coil spring. <br>\r\nSuspensi Belakang : 3-Links Rigid with coil spring. <br>\r\nKapasitas Tangki : 35. <br>\r\nJenis Bahan Bakar : Bensin. <br>\r\n'),
('Mega Carry Box', 'carry2.jpg', 159500000, 'Transisi <br>\r\nPerbandingan Gigi 1st	:	3.579\r\nPerbandingan Gigi 2nd	:	2.094\r\nPerbandingan Gigi 3rd	:	1.530\r\nPerbandingan Gigi 4th	:	1.000\r\nPerbandingan Gigi 5th	:	0.855\r\nPerbandingan Gigi 6th	:	-\r\nPerbandingan Gigi 7th	:	-\r\nPerbandingan Gigi 8th	:	-\r\nPerbandingan Gigi Reverse	:	3.727\r\nPerbandingan Gigi Akhir	:	4.875 <br> \r\n\r\nDimensi <br>\r\nBerat Kosong Tanpa Muatan (Kg)	:	800\r\nJarak Pijak Depan (mm)	:	1.345\r\nKapasitas Tangki (Litres)	:	42\r\nBerat Kosong Dengan Muatan (Kg)	:	1.945\r\nJarak Rendah Kendaraan (mm)	:	180\r\nRadius Putar/Momen Puntir (m)	:	4.2\r\nPanjang Kendaraan (mm)	:	3.780\r\nTinggi Kendaraan (mm)	:	1.825\r\nLebar Kendaraan (mm)	:	1.580\r\nJarak Pijak Belakang (mm)	:	-\r\nKapasitas Penumpang (orang)	:	2\r\nSumbu Roda/Jarak Poros Roda (mm)	:	1.970\r\n<br>\r\nRem  <br>\r\n\r\nRem Depan	:	Disc\r\nRem Belakang	:	Drum <br>\r\n\r\nSasis, Ban dan Vleg  <br>\r\n\r\nVelg/Alloy Wheels	:	No\r\nSistem Kemudi/Steering	:	Rack & Pinnion\r\nUkuran Ban Depan dan Belakang	:	R13\r\n\r\n'),
('Mega Carry PU', 'carry1.jpg', 145500000, 'Transisi <br>\r\nPerbandingan Gigi 1st	:	3.579\r\nPerbandingan Gigi 2nd	:	2.094\r\nPerbandingan Gigi 3rd	:	1.530\r\nPerbandingan Gigi 4th	:	1.000\r\nPerbandingan Gigi 5th	:	0.855\r\nPerbandingan Gigi 6th	:	-\r\nPerbandingan Gigi 7th	:	-\r\nPerbandingan Gigi 8th	:	-\r\nPerbandingan Gigi Reverse	:	3.727\r\nPerbandingan Gigi Akhir	:	4.875 <br> \r\n\r\nDimensi <br>\r\nBerat Kosong Tanpa Muatan (Kg)	:	800\r\nJarak Pijak Depan (mm)	:	1.345\r\nKapasitas Tangki (Litres)	:	42\r\nBerat Kosong Dengan Muatan (Kg)	:	1.945\r\nJarak Rendah Kendaraan (mm)	:	180\r\nRadius Putar/Momen Puntir (m)	:	4.2\r\nPanjang Kendaraan (mm)	:	3.780\r\nTinggi Kendaraan (mm)	:	1.825\r\nLebar Kendaraan (mm)	:	1.580\r\nJarak Pijak Belakang (mm)	:	-\r\nKapasitas Penumpang (orang)	:	2\r\nSumbu Roda/Jarak Poros Roda (mm)	:	1.970\r\n<br>\r\nRem  <br>\r\n\r\nRem Depan	:	Disc\r\nRem Belakang	:	Drum <br>\r\n\r\nSasis, Ban dan Vleg  <br>\r\n\r\nVelg/Alloy Wheels	:	No\r\nSistem Kemudi/Steering	:	Rack & Pinnion\r\nUkuran Ban Depan dan Belakang	:	R13\r\n'),
('Mega Carry PU FD PS', 'carry2.jpg', 151500000, 'Transisi <br>\r\nPerbandingan Gigi 1st	:	3.579\r\nPerbandingan Gigi 2nd	:	2.094\r\nPerbandingan Gigi 3rd	:	1.530\r\nPerbandingan Gigi 4th	:	1.000\r\nPerbandingan Gigi 5th	:	0.855\r\nPerbandingan Gigi 6th	:	-\r\nPerbandingan Gigi 7th	:	-\r\nPerbandingan Gigi 8th	:	-\r\nPerbandingan Gigi Reverse	:	3.727\r\nPerbandingan Gigi Akhir	:	4.875 <br> \r\n\r\nDimensi <br>\r\nBerat Kosong Tanpa Muatan (Kg)	:	800\r\nJarak Pijak Depan (mm)	:	1.345\r\nKapasitas Tangki (Litres)	:	42\r\nBerat Kosong Dengan Muatan (Kg)	:	1.945\r\nJarak Rendah Kendaraan (mm)	:	180\r\nRadius Putar/Momen Puntir (m)	:	4.2\r\nPanjang Kendaraan (mm)	:	3.780\r\nTinggi Kendaraan (mm)	:	1.825\r\nLebar Kendaraan (mm)	:	1.580\r\nJarak Pijak Belakang (mm)	:	-\r\nKapasitas Penumpang (orang)	:	2\r\nSumbu Roda/Jarak Poros Roda (mm)	:	1.970\r\n<br>\r\nRem  <br>\r\n\r\nRem Depan	:	Disc\r\nRem Belakang	:	Drum <br>\r\n\r\nSasis, Ban dan Vleg  <br>\r\n\r\nVelg/Alloy Wheels	:	No\r\nSistem Kemudi/Steering	:	Rack & Pinnion\r\nUkuran Ban Depan dan Belakang	:	R13\r\n'),
('Mega Carry PU WD', 'carry2.jpg', 147500000, 'keterangan'),
('Mega Carry PU WD PS', 'carr3.jpg', 153500000, 'Transisi <br>\r\nPerbandingan Gigi 1st	:	3.579\r\nPerbandingan Gigi 2nd	:	2.094\r\nPerbandingan Gigi 3rd	:	1.530\r\nPerbandingan Gigi 4th	:	1.000\r\nPerbandingan Gigi 5th	:	0.855\r\nPerbandingan Gigi 6th	:	-\r\nPerbandingan Gigi 7th	:	-\r\nPerbandingan Gigi 8th	:	-\r\nPerbandingan Gigi Reverse	:	3.727\r\nPerbandingan Gigi Akhir	:	4.875 <br> \r\n\r\nDimensi <br>\r\nBerat Kosong Tanpa Muatan (Kg)	:	800\r\nJarak Pijak Depan (mm)	:	1.345\r\nKapasitas Tangki (Litres)	:	42\r\nBerat Kosong Dengan Muatan (Kg)	:	1.945\r\nJarak Rendah Kendaraan (mm)	:	180\r\nRadius Putar/Momen Puntir (m)	:	4.2\r\nPanjang Kendaraan (mm)	:	3.780\r\nTinggi Kendaraan (mm)	:	1.825\r\nLebar Kendaraan (mm)	:	1.580\r\nJarak Pijak Belakang (mm)	:	-\r\nKapasitas Penumpang (orang)	:	2\r\nSumbu Roda/Jarak Poros Roda (mm)	:	1.970\r\n<br>\r\nRem  <br>\r\n\r\nRem Depan	:	Disc\r\nRem Belakang	:	Drum <br>\r\n\r\nSasis, Ban dan Vleg  <br>\r\n\r\nVelg/Alloy Wheels	:	No\r\nSistem Kemudi/Steering	:	Rack & Pinnion\r\nUkuran Ban Depan dan Belakang	:	R13\r\n'),
('New Ertiga GL AT', 'ertiga3.jpg', 239000000, '1. 1.400 cc VVT, DOHC, MPI. \r\n2. AC Denso, Blower : Double. \r\n3. Electronic Power Steering. \r\n4. Velg Alloy 185/65 R-15. \r\n5. Mount Stop Lamp. \r\n6. Rem : Depan Cakram, Belakang Tromol. \r\n7. Ada Wiper belakang. \r\n8. Power Window. \r\n9. Audio Double Din dengan Pengontrol Audio di Stir Kemudi [Audio Switch Control] dan Tweeter. \r\n10. Headrest di semua baris kursi. \r\n11. Lampu tanda belok/sign berada di Spion. \r\n12. Warna Handle pintu dan cover spion sesuai warna mobil.\r\n13. Immobilizer / sistem keamanan kunci anti maling dengan Remote.\r\n14. Kursi Driver bisa naik-turun [Seat Adjuster].\r\n15. Bagasi Belakang : atas dan bawah.\r\n16. Handle Pintu bagian dalam dan Knop perseneling berwarna Krom.\r\n17. Ada Pelindung panas pada kap mesin bagian dalam.\r\n18. Sistem pengereman ada tambahan ABS [Anti Lock Brake System] dan EBD [Electronic Braking Distribution].\r\n19. Airbag pada Stir Kemudi dan Dashboard samping kiri driver.\r\n20. Side Impact Beam [Besi Baja batangan menyilang pada masing pintu untuk melindungi benturan dari samping].\r\n21. Fitur Terbaru di Suzuki : One Touch Sliding-Recycling [kursi baris ke 2 bisa digeser 24cm -lipat hanya dengan 1 tuas] \r\n\r\n'),
('New Ertiga GL MT', 'ertiga5.jpg', 227000000, '1. 1.400 cc VVT, DOHC, MPI. \r\n2. AC Denso, Blower : Double. \r\n3. Electronic Power Steering. \r\n4. Velg Alloy 185/65 R-15. \r\n5. Mount Stop Lamp. \r\n6. Rem : Depan Cakram, Belakang Tromol. \r\n7. Ada Wiper belakang. \r\n8. Power Window. \r\n9. Audio Double Din. \r\n10. Headrest di semua baris kursi. \r\n11. Lampu tanda belok/sign berada di Spion. \r\n12. Warna Handle pintu dan coover spion sesuai warna mobil. \r\n13. Immobilizer / sistem keamanan kunci anti maling dengan Remote. \r\n14. Garnis Krom pada Grille. \r\n15. Bagasi Belakang : atas dan bawah. \r\n16. Side Impact Beam [Besi Baja batangan menyilang pada \r\nmasing pintu untuk melindungi benturan dari samping]. \r\n17. Fitur Terbaru di Suzuki : One Touch Sliding-Recycling [kursi baris ke 2 bisa digeser24cm -lipat hanya dengan 1 tuas]\r\n\r\n'),
('New Ertiga GX AT', 'ertiga1.jpg', 250000000, '1. 1.400 cc VVT, DOHC, MPI. 2. AC Denso, Blower : Double. 3. Electronic Power Steering. 4. Velg Alloy 185/65 R-15. 5. Mount Stop Lamp. 6. Rem : Depan Cakram, Belakang Tromol. 7. Ada Wiper belakang. 8. Power Window. 9. Audio Double Din dengan Pengontrol Audio di Stir Kemudi [Audio Switch Control] dan Tweeter. 10. Headrest di semua baris kursi. 11. Lampu tanda belok/sign berada di Spion. 12. Warna Handle pintu dan cover spion sesuai warna mobil. 13. Immobilizer / sistem keamanan kunci anti maling dengan Remote. 14. Kursi Driver bisa naik-turun [Seat Adjuster]. 15. Bagasi Belakang : atas dan bawah. 16. Handle Pintu bagian dalam dan Knop perseneling berwarna Krom. 17. Ada Pelindung panas pada kap mesin bagian dalam. 18. Sistem pengereman ada tambahan ABS [Anti Lock Brake System] dan EBD [Electronic Braking Distribution]. 19. Airbag pada Stir Kemudi dan Dashboard samping kiri driver. 20. Side Impact Beam [Besi Baja batangan menyilang pada masing pintu untuk melindungi benturan dari samping]. 21. Fitur Terbaru di Suzuki : One Touch Sliding-Recycling [kursi baris ke 2 bisa digeser 24cm -lipat hanya dengan 1 tuas]'),
('New Ertiga GX MT', 'ertiga2.jpg', 238000000, '1. 1.400 cc VVT, DOHC, MPI. 2. AC Denso, Blower : Double. 3. Electronic Power Steering. 4. Velg Alloy 185/65 R-15. 5. Mount Stop Lamp. 6. Rem : Depan Cakram, Belakang Tromol. 7. Ada Wiper belakang. 8. Power Window. 9. Audio Double Din dengan Pengontrol Audio di Stir Kemudi [Audio Switch Control] dan Tweeter. 10. Headrest di semua baris kursi. 11. Lampu tanda belok/sign berada di Spion. 12. Warna Handle pintu dan cover spion sesuai warna mobil. 13. Immobilizer / sistem keamanan kunci anti maling dengan Remote. 14. Kursi Driver bisa naik-turun [Seat Adjuster]. 15. Bagasi Belakang : atas dan bawah. 16. Handle Pintu bagian dalam dan Knop perseneling berwarna Krom. 17. Ada Pelindung panas pada kap mesin bagian dalam. 18. Sistem pengereman ada tambahan ABS [Anti Lock Brake System] dan EBD [Electronic Braking Distribution]. 19. Airbag pada Stir Kemudi dan Dashboard samping kiri driver. 20. Side Impact Beam [Besi Baja batangan menyilang pada masing pintu untuk melindungi benturan dari samping]. 21. Fitur Terbaru di Suzuki : One Touch Sliding-Recycling [kursi baris ke 2 bisa digeser 24cm -lipat hanya dengan 1 tuas]'),
('New SX4 Scross AT', 'scroos.jpg', 291000000, '1.	Panjang Keseluruhan=  4.300 mm\r\n2.	Lebar Keseluruhan = 1.785 mm\r\n3.	Tinggi Keseluruhan = 1.595 mm\r\n4.	Jarak Poros Roda = 2.600 mm\r\n5.	Jarak Pijak Depan = 1.535 mm\r\n6.	Jarak Pijak Belakang = 1.505 mm\r\n7.	Jarak Terendah = 185 mm\r\n8.	Radius Putar Minimum = 5,2 m\r\n9.	Jenis = M15A, DOHC, VVT\r\n10.	Isi Silinder =  1,491 cc\r\n11.	Jumlah Katup = 16\r\n12.	Jumlah Silinder = 4\r\n13.	Diameter X Langkah = 78.0 mm x 78.0 mm\r\n14.	Perbandingan Kompresi = 1 : 10.3\r\n15.	Daya Maksimum = 109 PS/6000 rpm\r\n16.	Momem Puntir Maksimum = 138 Nm/4.400rpm\r\n17.	Sistem Bahan Bakar = MPI (Multi Point Injection)\r\n\r\n18.	Sistem Kemudi = Rack & Pinion\r\n19.	Suspensi Depan  = MacPherson Strut with Coil Spring \r\n20.	Suspensi Belakang  = Torsion Beam with Coil Spring \r\n21.	Rem Depan = Ventilated Disc \r\n22.	Suspensi Belakang  = Disc\r\n23.	Ukuran Ban  = 215/60 R 16\r\n24.	Berat Kosong = 1.150 kg (MT) 1.170 kg (AT)\r\n25.	Berat Kotor = 1.670 (MT) 1.670(AT)\r\n26.	Tempat Duduk = 5 orang\r\n27.	Bahan Bakar  =  48 liter\r\n\r\n'),
('New SX4 Scross MT', 'scroos.jpg', 277000000, '1.	Panjang Keseluruhan=  4.300 mm\r\n2.	Lebar Keseluruhan = 1.785 mm\r\n3.	Tinggi Keseluruhan = 1.595 mm\r\n4.	Jarak Poros Roda = 2.600 mm\r\n5.	Jarak Pijak Depan = 1.535 mm\r\n6.	Jarak Pijak Belakang = 1.505 mm\r\n7.	Jarak Terendah = 185 mm\r\n8.	Radius Putar Minimum = 5,2 m\r\n9.	Jenis = M15A, DOHC, VVT\r\n10.	Isi Silinder =  1,491 cc\r\n11.	Jumlah Katup = 16\r\n12.	Jumlah Silinder = 4\r\n13.	Diameter X Langkah = 78.0 mm x 78.0 mm\r\n14.	Perbandingan Kompresi = 1 : 10.3\r\n15.	Daya Maksimum = 109 PS/6000 rpm\r\n16.	Momem Puntir Maksimum = 138 Nm/4.400rpm\r\n17.	Sistem Bahan Bakar = MPI (Multi Point Injection)\r\n\r\n18.	Sistem Kemudi = Rack & Pinion\r\n19.	Suspensi Depan  = MacPherson Strut with Coil Spring \r\n20.	Suspensi Belakang  = Torsion Beam with Coil Spring \r\n21.	Rem Depan = Ventilated Disc \r\n22.	Suspensi Belakang  = Disc\r\n23.	Ukuran Ban  = 215/60 R 16\r\n24.	Berat Kosong = 1.150 kg (MT) 1.170 kg (AT)\r\n25.	Berat Kotor = 1.670 (MT) 1.670(AT)\r\n26.	Tempat Duduk = 5 orang\r\n27.	Bahan Bakar  =  48 liter\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suzuki_stok`
--

CREATE TABLE `suzuki_stok` (
  `no` int(10) NOT NULL,
  `mobil` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  `stok` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suzuki_stok`
--

INSERT INTO `suzuki_stok` (`no`, `mobil`, `warna`, `stok`) VALUES
(1, 'New Ertiga GL AT', 'Hitam', 9),
(2, 'New Ertiga GL AT', 'Putih', 9),
(3, 'New Ertiga GL AT', 'Silver', 8),
(4, 'New Ertiga GL AT', 'Coklat', 10),
(5, 'New Ertiga GL AT', 'Abu-abu', 17),
(6, 'New Ertiga GL AT', 'Merah', 21),
(7, 'New Ertiga GL AT', 'Merah Maron', 15),
(8, 'New Ertiga GL MT', 'Hitam', 15),
(9, 'New Ertiga GL MT', 'Putih', 25),
(10, 'New Ertiga GL MT', 'Silver', 12),
(11, 'New Ertiga GL MT', 'Coklat', 12),
(12, 'New Ertiga GL MT', 'Abu-abu', 19),
(13, 'New Ertiga GL MT', 'Merah', 12),
(14, 'New Ertiga GL MT', 'Merah Maron', 18),
(15, 'New Ertiga GX AT', 'Hitam', 5),
(16, 'New Ertiga GX AT', 'Putih', 6),
(17, 'New Ertiga GX AT', 'Silver', 8),
(18, 'New Ertiga GX AT', 'Coklat', 9),
(19, 'New Ertiga GX AT', 'Abu-abu', 8),
(20, 'New Ertiga GX AT', 'Merah', 5),
(21, 'New Ertiga GX AT', 'Merah Maron', 10),
(22, 'New Ertiga GX MT', 'Hitam', 9),
(23, 'New Ertiga GX MT', 'Putih', 15),
(24, 'New Ertiga GX MT', 'Silver', 20),
(25, 'New Ertiga GX MT', 'Coklat', 10),
(26, 'New Ertiga GX MT', 'Abu-abu', 11),
(27, 'New Ertiga GX MT', 'Merah', 12),
(28, 'New Ertiga GX MT', 'Merah Maron', 16),
(29, 'New SX4 Scross AT', 'Putih', 10),
(30, 'New SX4 Scross AT', 'Biru', 15),
(31, 'New SX4 Scross AT', 'Silver', 18),
(32, 'New SX4 Scross AT', 'Abu-abu', 12),
(33, 'New SX4 Scross MT', 'Putih', 10),
(34, 'New SX4 Scross MT', 'Biru', 13),
(35, 'New SX4 Scross MT', 'Silver', 10),
(36, 'New SX4 Scross MT', 'Abu-abu', 13),
(37, 'Baleno MT', 'Hitam', 20),
(38, 'Baleno MT', 'Putih', 11),
(39, 'Baleno MT', 'Abu-abu', 12),
(40, 'Baleno MT', 'Silver', 2),
(41, 'Baleno MT', 'Biru', 9),
(42, 'Baleno MT', 'Merah', 10),
(43, 'Baleno AT', 'Hitam', 21),
(44, 'Baleno AT', 'Putih', 12),
(45, 'Baleno AT', 'Abu-abu', 10),
(46, 'Baleno AT', 'Silver', 12),
(47, 'Baleno AT', 'Biru', 15),
(48, 'Baleno AT', 'Merah', 12),
(49, 'Ignis GL MT', 'Hitam', 21),
(50, 'Ignis GL MT', 'Putih', 12),
(51, 'Ignis GL MT', 'Abu-abu', 15),
(52, 'Ignis GL MT', 'Silver', 16),
(53, 'Ignis GL MT', 'Biru', 10),
(54, 'Ignis GL MT', 'Merah', 9),
(55, 'Ignis GX MT', 'Hitam', 14),
(56, 'Ignis GX MT', 'Putih', 10),
(57, 'Ignis GX MT', 'Abu-abu', 2),
(58, 'Ignis GX MT', 'Silver', 9),
(59, 'Ignis GX MT', 'Biru', 10),
(60, 'Ignis GX MT', 'Merah', 11),
(61, 'Karimun Wagon R GL MT', 'Hitam', 10),
(62, 'Karimun Wagon R GL MT', 'Putih', 12),
(63, 'Karimun Wagon R GL MT', 'Abu-abu', 13),
(64, 'Karimun Wagon R GL MT', 'Silver', 13),
(65, 'Karimun Wagon R GL MT', 'Merah', 11),
(66, 'Karimun Wagon R GL MT', 'Biru', 13),
(67, 'Karimun Wagon R GL AGS', 'Hitam', 12),
(68, 'Karimun Wagon R GL AGS', 'Putih', 11),
(69, 'Karimun Wagon R GL AGS', 'Abu-abu', 11),
(70, 'Karimun Wagon R GL AGS', 'Silver', 8),
(71, 'Karimun Wagon R GL AGS', 'Merah', 7),
(72, 'Karimun Wagon R GL AGS', 'Biru', 10),
(73, 'Karimun Wagon R GS AGS', 'Hitam', 11),
(74, 'Karimun Wagon R GS AGS', 'Putih', 8),
(75, 'Karimun Wagon R GS AGS', 'Abu-abu', 7),
(76, 'Karimun Wagon R GS AGS', 'Silver', 17),
(77, 'Karimun Wagon R GS AGS', 'Merah', 5),
(78, 'Karimun Wagon R GS AGS', 'Biru', 12),
(79, 'Karimun Wagon R GS MT', 'Hitam', 10),
(80, 'Karimun Wagon R GS MT', 'Putih', 11),
(81, 'Karimun Wagon R GS MT', 'Abu-abu', 9),
(82, 'Karimun Wagon R GS MT', 'Silver', 8),
(83, 'Karimun Wagon R GS MT', 'Merah', 12),
(84, 'Karimun Wagon R GS MT', 'Biru', 11),
(85, 'Mega Carry PU', 'Hitam', 12),
(86, 'Mega Carry PU', 'Putih', 8),
(87, 'Mega Carry PU', 'Silver', 12),
(88, 'Mega Carry PU FD PS', 'Hitam', 12),
(89, 'Mega Carry PU FD PS', 'Putih', 9),
(90, 'Mega Carry PU FD PS', 'Silver', 8),
(91, 'Mega Carry PU WD', 'Hitam', 12),
(92, 'Mega Carry PU WD', 'Putih', 12),
(93, 'Mega Carry PU WD', 'Silver', 10),
(94, 'Mega Carry PU WD PS', 'Hitam', 8),
(95, 'Mega Carry PU WD PS', 'Putih', 15),
(96, 'Mega Carry PU WD PS', 'Silver', 20),
(97, 'Ertiga Diesel Smart Hybird MT', 'Hitam', 6),
(98, 'Ertiga Diesel Smart Hybird MT', 'Putih', 6),
(99, 'Ertiga Diesel Smart Hybird MT', 'Silver', 10),
(100, 'Carry Pick Up FD', 'Hitam', 9),
(101, 'Carry Pick Up FD', 'Putih', 9),
(102, 'Carry Pick Up WD', 'Hitam', 13),
(103, 'Carry Pick Up WD', 'Putih', 15),
(104, 'Carry Pick Up WD', 'Silver', 7),
(105, 'Ertiga Dreza AT', 'Hitam', 10),
(106, 'Ertiga Dreza AT', 'Putih', 9),
(107, 'Ertiga Dreza AT', 'Silver', 8),
(108, 'Ertiga Dreza MT', 'Hitam', 19),
(109, 'Ertiga Dreza MT', 'Putih', 15),
(110, 'Ertiga Dreza MT', 'Silver', 12),
(111, 'Ertiga Dreza MT', 'Abu-abu', 9),
(112, 'Karimun Wagon  R GS MT', 'Hitam', 14),
(113, 'Karimun Wagon  R GS MT', 'Putih', 18),
(114, 'Karimun Wagon  R GS MT', 'Silver', 9),
(115, 'Karimun Wagon  R GS MT', 'Abu-abu', 9),
(116, 'Karimun Wagon  R GS MT', 'Merah', 8),
(117, 'Mega Carry Box', 'Hitam', 4),
(118, 'Mega Carry Box', 'Putih', 15),
(119, 'Mega Carry Box', 'Silver', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brg_msk_hino`
--
ALTER TABLE `brg_msk_hino`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `brg_msk_mercedes`
--
ALTER TABLE `brg_msk_mercedes`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `brg_msk_suzuki`
--
ALTER TABLE `brg_msk_suzuki`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `hino_mobil`
--
ALTER TABLE `hino_mobil`
  ADD PRIMARY KEY (`tipe`);

--
-- Indexes for table `hino_stok`
--
ALTER TABLE `hino_stok`
  ADD PRIMARY KEY (`no`),
  ADD KEY `kode` (`tipe`);

--
-- Indexes for table `mercedes_mobil`
--
ALTER TABLE `mercedes_mobil`
  ADD PRIMARY KEY (`mobil`);

--
-- Indexes for table `mercedes_stok`
--
ALTER TABLE `mercedes_stok`
  ADD PRIMARY KEY (`no`),
  ADD KEY `kode` (`mobil`);

--
-- Indexes for table `pjln_hino`
--
ALTER TABLE `pjln_hino`
  ADD PRIMARY KEY (`no`),
  ADD KEY `jenis` (`jenis`),
  ADD KEY `tipe` (`tipe`);

--
-- Indexes for table `pjln_mercedes`
--
ALTER TABLE `pjln_mercedes`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pjln_suzuki`
--
ALTER TABLE `pjln_suzuki`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `suzuki_mobil`
--
ALTER TABLE `suzuki_mobil`
  ADD PRIMARY KEY (`mobil`);

--
-- Indexes for table `suzuki_stok`
--
ALTER TABLE `suzuki_stok`
  ADD PRIMARY KEY (`no`),
  ADD KEY `kode` (`mobil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `brg_msk_hino`
--
ALTER TABLE `brg_msk_hino`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `brg_msk_mercedes`
--
ALTER TABLE `brg_msk_mercedes`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brg_msk_suzuki`
--
ALTER TABLE `brg_msk_suzuki`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hino_stok`
--
ALTER TABLE `hino_stok`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mercedes_stok`
--
ALTER TABLE `mercedes_stok`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `pjln_hino`
--
ALTER TABLE `pjln_hino`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pjln_mercedes`
--
ALTER TABLE `pjln_mercedes`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pjln_suzuki`
--
ALTER TABLE `pjln_suzuki`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `suzuki_stok`
--
ALTER TABLE `suzuki_stok`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pjln_hino`
--
ALTER TABLE `pjln_hino`
  ADD CONSTRAINT `pjln_hino_ibfk_1` FOREIGN KEY (`tipe`) REFERENCES `hino_mobil` (`tipe`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
