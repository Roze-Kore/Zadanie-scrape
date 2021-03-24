-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Mar 2021, 22:03
-- Wersja serwera: 10.4.16-MariaDB
-- Wersja PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `scrape`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `haslo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `accounts`
--

INSERT INTO `accounts` (`id_account`, `login`, `haslo`) VALUES
(1, 'kar', '123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa_produktu` varchar(100) DEFAULT NULL,
  `cena_produktu` varchar(40) DEFAULT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_produktu`, `nazwa_produktu`, `cena_produktu`, `date_added`) VALUES
(1, 'Kubek Magiczne japońskie stworzenia DO WYBORU Kattlett', '25,00zł', '2021-03-24'),
(2, 'Kubek Magiczny Magiczne japońskie stworzenia DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(3, 'Mystery Box Exitus Letalis – Kattlett', '25,00zł – 250,00zł', '2021-03-24'),
(4, 'Mystery Box The Racist – Kattlett', '25,00zł – 250,00zł', '2021-03-24'),
(5, 'Mystery Box Pentagram Alchemist – Kattlett', '25,00zł – 250,00zł', '2021-03-24'),
(6, 'Mystery Box Prize – Kattlett', '25,00zł – 200,00zł', '2021-03-24'),
(7, 'Mystery Box Kattlett', '25,00zł – 250,00zł', '2021-03-24'),
(8, 'Mystery Box Artifical People – Kattlett', '25,00zł – 250,00zł', '2021-03-24'),
(9, 'Mystery Box Hit Me / Kick Me – Kattlett', '25,00zł – 200,00zł', '2021-03-24'),
(10, 'Plecak / workoplecak Kami – Kattlett', '45,00zł', '2021-03-24'),
(11, 'Plecak / workoplecak Kitsune – Kattlett', '45,00zł', '2021-03-24'),
(12, 'Plecak / workoplecak Pentagram Alchemist – Z Mefisiem – Kattlett', '45,00zł', '2021-03-24'),
(13, 'Plecak / workoplecak Tanuki – Kattlett', '45,00zł', '2021-03-24'),
(14, 'Plecak / workoplecak Pentagram Alchemist – Mephisto – Kattlett', '45,00zł', '2021-03-24'),
(15, 'Plecak / workoplecak Pentagram Alchemist – w bandanach – Kattlett', '45,00zł', '2021-03-24'),
(16, 'Plecak / workoplecak Okami – Kattlett', '45,00zł', '2021-03-24'),
(17, 'Plecak / workoplecak Nekomata – Kattlett', '45,00zł', '2021-03-24'),
(18, 'Plecak / workoplecak Exitus Letalis – Eva – Kattlett', '45,00zł', '2021-03-24'),
(19, 'Plecak / workoplecak Kattlett', '45,00zł', '2021-03-24'),
(20, 'Plecak / workoplecak Exitus Letalis – Eva Fake – Kattlett', '45,00zł', '2021-03-24'),
(21, 'Koszulka Pentagram Alchemist – Marika i Dark – Kattlett', '65,00zł', '2021-03-24'),
(22, 'Koszulka Pentagram Alchemist – Bandana – Kattlett', '65,00zł', '2021-03-24'),
(23, 'Koszulka – Nekomata – Kattlett', '65,00zł', '2021-03-24'),
(24, 'Koszulka Pentagram Alchemist – Maska – Kattlett', '65,00zł', '2021-03-24'),
(25, 'Koszulka – Okami – Kattlett', '65,00zł', '2021-03-24'),
(26, 'Koszulka – Kami – Kattlett', '65,00zł', '2021-03-24'),
(27, 'Koszulka Pentagram Alchemist – Wszyscy – Kattlett', '65,00zł', '2021-03-24'),
(28, 'Koszulka – Tanuki – Kattlett', '65,00zł', '2021-03-24'),
(29, 'Koszulka Pentagram Alchemist – Fire – Kattlett', '65,00zł', '2021-03-24'),
(30, 'Koszulka – Kitsune – Kattlett', '65,00zł', '2021-03-24'),
(31, 'Koszulka Exitus Letalis – David – Kattlett', '65,00zł', '2021-03-24'),
(32, 'Koszulka Exitus Letalis – Kaleidoscope – Kattlett', '65,00zł', '2021-03-24'),
(33, 'Koszulka Exitus Letalis – Eva – Kattlett', '65,00zł', '2021-03-24'),
(34, 'Koszulka Exitus Letalis – Kaleidoscope B&W – Kattlett', '65,00zł', '2021-03-24'),
(35, 'Koszulka Exitus Letalis – Eva Fake? – Kattlett', '65,00zł', '2021-03-24'),
(36, 'Koszulka Exitus Letalis – Adam i Eva – Kattlett', '65,00zł', '2021-03-24'),
(37, 'Koszulka Artifical People – Kattlett', '65,00zł', '2021-03-24'),
(38, 'Poduszka kwadratowa Pentagram Alchemist DO WYBORU Kattlett', '45,00zł', '2021-03-24'),
(39, 'Poduszka Pentagram Alchemist DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(40, 'Kubek Magiczny Pentagram Alchemist DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(41, 'Kubek Pentagram Alchemist DO WYBORU Kattlett', '25,00zł', '2021-03-24'),
(42, 'Plakat Pentagram Alchemist DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(43, 'Dakimakura Pentagram Alchemist DO WYBORU duża Kattlett', '115,00zł', '2021-03-24'),
(44, 'Dakimakura Pentagram Alchemist DO WYBORU Kattlett', '75,00zł', '2021-03-24'),
(45, 'Plakat Prize DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(46, 'Poduszka Prize DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(47, 'Poduszka kwadratowa Prize DO WYBORU Kattlett', '45,00zł', '2021-03-24'),
(48, 'Poduszka kwadratowa Hit me Kick me DO WYBORU Kattlett', '45,00zł', '2021-03-24'),
(49, 'Plakat Hit me Kick me DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(50, 'Dakimakura Hit me Kick me DO WYBORU duża Kattlett', '115,00zł', '2021-03-24'),
(51, 'Dakimakura Hit me Kick me DO WYBORU Kattlett', '75,00zł', '2021-03-24'),
(52, 'Plakat Artifical People DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(53, 'Poduszka Artifical People DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(54, 'Poduszka kwadratowa Artifical People DO WYBORU Kattlett', '45,00zł', '2021-03-24'),
(55, 'Pocztówka The NOM DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(56, 'Pocztówka Pentagram Alchemist DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(57, 'Pocztówka Prize DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(58, 'Pocztówka Hit me Kick me DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(59, 'Pocztówka Artifical People DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(60, 'Pocztówka Exitus Letalis DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(61, 'Poduszka Exitus Letalis DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(62, 'Dakimakura Exitus Letalis DO WYBORU duża Kattlett', '115,00zł', '2021-03-24'),
(63, 'Dakimakura Exitus Letalis DO WYBORU Kattlett', '75,00zł', '2021-03-24'),
(64, 'Plakat Exitus Letalis DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(65, 'Dakimakura The NOM Kattlett', '115,00zł', '2021-03-24'),
(66, 'Dakimakura The NOM Kattlett', '75,00zł', '2021-03-24'),
(67, 'Poduszka kwadratowa The NOM Kattlett', '45,00zł', '2021-03-24'),
(68, 'Plakat The NOM Kattlett', '15,00zł', '2021-03-24'),
(69, 'Kubek Exitus Letalis DO WYBORU Kattlett', '25,00zł', '2021-03-24'),
(70, 'Poduszka Hit me Kick me Kattlett', '40,00zł', '2021-03-24'),
(71, 'Kubek Magiczny Exitus Letalis DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(72, 'Kubek Magiczny Artifical People DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(73, 'Kubek Magiczny Hit Me Kick Me DO WYBORU Kattlett', '40,00zł', '2021-03-24'),
(74, 'Pocztówka Kattlett DO WYBORU', '5,00zł', '2021-03-24'),
(75, 'Poduszka kwadratowa Kattlett DO WYBORU', '45,00zł', '2021-03-24'),
(76, 'Plakat Kattlett DO WYBORU', '15,00zł', '2021-03-24'),
(77, 'Pocztówka The Racist DO WYBORU Kattlett', '5,00zł', '2021-03-24'),
(78, 'Plakat The Racist DO WYBORU Kattlett', '15,00zł', '2021-03-24'),
(79, 'Kubek Magiczny The Racist DO WYBORU Kattlett', '40,00zł', '2021-03-24');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `IDaccount` (`id_account`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD UNIQUE KEY `IDproduktu` (`id_produktu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
