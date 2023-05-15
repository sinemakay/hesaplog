-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 May 2023, 09:03:59
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hesap`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hesap`
--

CREATE TABLE `hesap` (
  `id` int(11) NOT NULL,
  `sayi1` double NOT NULL,
  `sayi2` double NOT NULL,
  `islem` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `sonuc` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hesap`
--

INSERT INTO `hesap` (`id`, `sayi1`, `sayi2`, `islem`, `sonuc`) VALUES
(1, 1, 3, 'toplama', 4),
(2, 1, 3, 'cikarma', 0),
(3, 1, 3, 'carpma', 0),
(4, 1, 3, 'bolme', 0),
(5, 5, 6, 'cikarma', -1),
(6, 5, 6, 'carpma', 30),
(7, 5, 6, 'bolme', 0.83333333333333),
(8, 1, 5, 'toplama', 6),
(9, 0, 0, 'bolme', 0),
(10, 0, 1, 'toplama', 1),
(11, 0, 1, 'cikarma', -1),
(12, 0, 1, 'carpma', 0),
(13, 0, 1, 'bolme', 0),
(14, 0, 1, 'bolme', 0),
(15, 0, 1, 'bolme', 0),
(16, 0, 1, 'bolme', 0),
(17, 0, 1, 'bolme', 0),
(18, 0, 1, 'bolme', 0),
(19, 0, 1, 'bolme', 0),
(20, 0, 1, 'bolme', 0),
(21, 0, 1, 'bolme', 0),
(22, 1, 3, 'toplama', 4),
(23, 1, 3, 'toplama', 4),
(24, 1, 3, 'toplama', 4),
(25, 1, 5, 'toplama', 6);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hesap`
--
ALTER TABLE `hesap`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `hesap`
--
ALTER TABLE `hesap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
