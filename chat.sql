-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 19 Maj 2015, 16:16
-- Wersja serwera: 5.6.23
-- Wersja PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `tpazera`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Color` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Text` varchar(10000) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `chat`
--

INSERT INTO `chat` (`ID`, `Name`, `Color`, `Time`, `Text`) VALUES
(1, 'Tomek', '#2CD6D1', '2015-05-18 17:31:53', 'test'),
(2, 'Tomek', '#0D9CDB', '2015-05-18 17:33:06', 'test'),
(3, 'Tomek', '#01853A', '2015-05-18 17:33:14', 'xD'),
(4, 'Tomek', '#0D9CDB', '2015-05-18 17:33:17', 'asd'),
(5, 'Tomek', '#DDFA70', '2015-05-18 17:33:42', 'dasd');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `chat`
--
ALTER TABLE `chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
