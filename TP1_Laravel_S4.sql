-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 01 juil. 2022 à 01:55
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : TP1_Laravel_S4
--

-- --------------------------------------------------------

--
-- Structure de la table etudiants
--

DROP TABLE IF EXISTS etudiants;
CREATE TABLE etudiants (
  id bigint(20) UNSIGNED NOT NULL,
  nom varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  adresse varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  phone varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  date_de_naissance date NOT NULL,
  villeId bigint(20) UNSIGNED NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE etudiants:
--   villeId
--       villes -> id
--

--
-- Déchargement des données de la table etudiants
--

INSERT INTO etudiants (id, nom, adresse, phone, email, date_de_naissance, villeId, created_at, updated_at) VALUES
(1, 'Dangelo Spinka', '4611 Aaliyah Village Suite 796\r\nAaliyahshire, CO 36302', '881-344-1553', 'hal28@example.net', '1994-04-18', 1, '2022-06-23 03:41:40', '2022-06-30 06:54:37'),
(2, 'Evans Shanahan', '612 Gerlach Lodge\nSouth Nyabury, NC 90979', '978-196-5883', 'jewel56@example.org', '1969-08-02', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(3, 'Keanu Considine', '18682 Julien Via\nLake Eunice, ND 68354-8912', '352-603-2157', 'moen.brady@example.com', '1980-08-28', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(4, 'Dr. Robb Hudson Jr.', '657 Vladimir Mountain\nRainaton, MS 35658-7734', '704-247-8591', 'bradley64@example.org', '2005-09-26', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(5, 'Justyn Kirlin', '66581 Grady Villages Apt. 311\nSouth Albinmouth, UT 70952-3365', '052-768-7028', 'ckunde@example.com', '1989-10-07', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(6, 'Ms. Brielle Casper Jr.', '1446 Purdy Row Suite 015\nWest Ethel, MD 51393-3953', '304-079-5554', 'patrick28@example.net', '2014-12-20', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(7, 'Mr. Daron Mann Sr.', '1335 Luigi Hills\nGloverport, WY 45831', '632-231-1213', 'nitzsche.immanuel@example.com', '1975-12-19', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(8, 'Bradley Kub', '34833 Sarai Court Apt. 810\nSouth Toby, ME 99491-1325', '019-529-8049', 'ivory08@example.org', '1984-04-15', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(9, 'Dr. Beryl Kuhlman DDS', '30361 Bergstrom Islands Suite 318\nNorth Gene, OK 77435-7565', '270-913-6977', 'scarlett78@example.org', '1991-03-10', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(10, 'Dr. Walker Trantow DDS', '5419 Antonina Parkway\nWest Ashlee, AR 96028', '149-473-1710', 'elijah.emmerich@example.net', '2013-12-22', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(11, 'Clara Dooley PhD', '47081 Kiehn Run\r\nKundeborough, LA 92412', '828-760-3137', 'zsteuber@example.com', '1963-06-28', 4, '2022-06-23 03:41:40', '2022-07-01 01:21:12'),
(12, 'Ardella Wilderman', '19490 Lolita Mission\nRafaelport, OK 41490-8173', '349-524-1599', 'wrolfson@example.org', '1930-09-10', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(13, 'Elmira Bernier', '5152 Botsford Ranch\nToyview, NY 15323', '071-150-7325', 'gwen.parisian@example.com', '1961-01-13', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(14, 'Kristopher Littel', '7452 Sigmund Lake\nWest Bereniceview, KY 89675-8451', '453-051-0064', 'nitzsche.lexi@example.net', '1986-12-18', 12, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(15, 'Sister Waters', '725 Buster Rue Apt. 932\nEast Jamelland, RI 88856-8026', '985-146-6976', 'candida63@example.com', '1926-11-16', 9, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(16, 'Mr. Max Mohr', '7727 Jenkins Parkway\nToyview, WV 43119-4246', '745-630-5078', 'naomi.shanahan@example.net', '2004-08-27', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(17, 'Leif Marvin', '7881 Dorothy Falls\nEmmerichberg, NH 12876', '889-089-0103', 'owillms@example.org', '1965-07-09', 7, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(18, 'Gage Schaden', '34587 Vincent Dale\nNorth Myrtisside, KS 31453-5151', '563-899-2783', 'evans.johns@example.net', '1932-07-21', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(19, 'Justina Hudson', '76389 Lind Trail Suite 803\nNorth April, NE 89397-9984', '796-231-8519', 'florine.senger@example.com', '2013-07-22', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(20, 'Marlon Waters Sr.', '544 Alec Port Suite 465\nLake Amara, OR 97505', '494-389-2073', 'lebsack.hilario@example.net', '2020-09-25', 9, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(21, 'Ms. Abigayle Nikolaus MD', '811 Powlowski Cape\nEast Kassandra, ME 99261-1059', '625-593-9489', 'nbuckridge@example.com', '2014-03-30', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(22, 'Prof. Ardith Donnelly I', '79695 Josie Villages Apt. 167\nCorychester, CO 70285-4583', '876-119-2436', 'florian38@example.com', '1974-09-26', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(23, 'Victoria Rath', '6525 Johnston Coves\nNorth Leolastad, PA 85960-1027', '633-617-2882', 'clyde14@example.net', '2002-05-28', 12, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(24, 'Prof. Craig Quitzon', '2816 Freeman Orchard Suite 024\nLake Taylorview, NV 84509', '431-251-5001', 'eschaefer@example.net', '2007-05-11', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(25, 'Eleonore Hessel', '68789 Monahan Extensions Apt. 333\nWest Ilene, NC 27925', '400-911-7208', 'vstreich@example.net', '1929-11-14', 12, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(26, 'Dr. Alisa Ryan V', '71032 D\'Amore Lock Suite 785\nRolfsonshire, PA 87693', '280-727-6927', 'consuelo59@example.net', '2010-12-23', 2, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(27, 'Philip Ziemann', '76609 Koss Overpass Apt. 887\nCroninmouth, NC 21974-1781', '517-310-9008', 'darren.toy@example.net', '1979-08-06', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(28, 'Eldora Waters', '39983 Nader Garden Suite 891\nWest Kaceyfurt, VA 56265', '169-879-0698', 'candace.prohaska@example.net', '1986-05-12', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(29, 'Myrtis Mueller', '93725 Crona Crest Apt. 424\nMayerchester, GA 27302', '079-947-0235', 'aubree49@example.com', '1990-05-27', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(30, 'Miss Fanny Bailey V', '979 Runolfsson Islands Suite 085\nNew Jordan, NE 75456-1872', '106-695-4859', 'beahan.emmie@example.org', '1974-05-19', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(31, 'Dr. Savion Raynor PhD', '791 Una Stream Suite 334\nOrnland, NJ 45098-2623', '885-209-0590', 'adan80@example.com', '1943-05-19', 12, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(32, 'Giles Hoppe', '1487 Kub View\nNorth Maxine, HI 28027', '029-606-5455', 'bartell.harry@example.org', '1939-06-10', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(33, 'Neva Wuckert', '20645 Kamren Isle Suite 374\nAminafort, OR 75154', '974-802-9177', 'kdoyle@example.com', '1962-08-18', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(34, 'Dr. Kaitlyn Homenick I', '36255 Wiegand Walks Apt. 325\nNew Kariside, OH 04262', '314-419-9071', 'towne.felicia@example.net', '1929-03-29', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(35, 'Ms. Emilia Lindgren DDS', '65543 Fritsch Fort Suite 889\nLake Chadrick, MD 16942', '270-836-5808', 'mcglynn.jadyn@example.com', '2009-07-07', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(36, 'Art Skiles III', '93414 Bergstrom Turnpike\nWest Fatimafort, AZ 92179', '852-082-4623', 'magnolia.hermann@example.com', '1966-08-26', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(37, 'Humberto Wyman', '8460 Nienow Pine Suite 811\nEast Prudenceton, UT 57259-2586', '093-030-6559', 'armani.trantow@example.com', '2013-07-26', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(38, 'Alfreda Breitenberg', '49799 Arely Mountain\nEast Marcosburgh, SC 46659', '172-612-1632', 'kuhlman.hugh@example.com', '1922-11-11', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(39, 'Prof. Esteban Lemke', '777 Fisher Mall\nWest Destinyhaven, KS 09393', '538-218-0661', 'dwight.armstrong@example.org', '1931-05-19', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(40, 'D\'angelo Hudson', '91409 Legros Hills Apt. 788\nNorth Ian, TN 52045-3739', '937-175-3858', 'jonathan.olson@example.org', '1963-07-09', 9, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(41, 'Shawn McLaughlin DDS', '9028 Amiya Forge Apt. 643\nRodrigoland, OH 21226-4120', '082-408-0551', 'corene61@example.org', '1926-01-05', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(42, 'Meagan Schuster MD', '5775 Adams Trafficway\nNorth Rozella, IL 76373', '819-400-1485', 'braun.destini@example.com', '1974-05-19', 7, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(43, 'Florencio Purdy', '90240 Hegmann Drive Apt. 365\nNew Carystad, MS 82975-4993', '501-769-1764', 'ruth.weber@example.com', '2021-03-15', 3, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(44, 'Carlos Tromp', '360 Stehr Shoal Apt. 088\nPort Cortneyland, WA 09695-1474', '627-968-7540', 'gjohns@example.org', '1943-10-07', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(45, 'Lavinia Braun', '83648 Katherine Lodge Apt. 432\nSouth Meghan, MT 74970', '365-891-8679', 'macie47@example.org', '1993-05-22', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(46, 'Granville Stokes', '7581 Alexandro Glen Suite 113\nNorth Elroy, CT 28783-3583', '301-039-8541', 'grau@example.com', '1988-01-24', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(47, 'Trevion Wehner', '28242 Arturo Mountains\nEunashire, IN 26247-6785', '480-067-9352', 'osinski.quinten@example.org', '1938-03-31', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(48, 'Percival Considine', '88010 Holden Ranch Suite 473\nJuliushaven, OK 81940', '157-407-9355', 'iswift@example.com', '1935-03-03', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(49, 'Jonatan Reichel', '1668 Jayce Cliffs\nWest Savannatown, AL 06277-9146', '287-773-1072', 'marques05@example.com', '1984-04-28', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(50, 'Donald Grady', '823 Lourdes Flat Apt. 244\nEast Earl, NH 52168', '719-393-9642', 'sabbott@example.net', '1987-11-26', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(51, 'Lindsey Heaney', '8639 Sage Parks Suite 088\nAbbottland, LA 85386-6721', '460-291-4494', 'kshlerin.mohammad@example.org', '1926-08-02', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(52, 'Dr. Coty Zboncak PhD', '281 Wisozk Views Suite 332\nRickeyside, DC 06898-4015', '511-150-6167', 'susie.rowe@example.net', '1940-11-01', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(53, 'Eldora Wyman', '7280 Roman Landing\nSouth Josue, WA 37192-2367', '853-532-6961', 'theodore99@example.com', '1975-08-21', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(54, 'Mr. Hilbert Schmidt', '4910 Alfonso Path\nWebermouth, PA 52238-6050', '230-498-9721', 'franecki.breanna@example.net', '1945-05-11', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(55, 'Dr. Skye Botsford', '64343 Kreiger Forks\nNorth Sammy, RI 11156', '700-869-3553', 'ryann.fisher@example.org', '1987-02-24', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(56, 'Guido Cassin', '951 Gabe Trace\nJonathonchester, PA 74140', '687-265-4784', 'brown.feest@example.net', '1951-12-21', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(57, 'Josie Blick', '1489 Robb Pass Suite 534\nWatsicaside, OR 52243', '123-744-7353', 'farrell.otto@example.com', '1958-12-11', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(58, 'Melissa Kassulke', '635 Herzog Square Apt. 452\nTillmanberg, WV 08963-3692', '029-624-7815', 'turner.sidney@example.net', '1984-09-30', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(59, 'Angelina Daugherty', '16886 Schaefer Junction Apt. 296\nWest Clairechester, ND 30300', '061-609-6647', 'zfadel@example.com', '1946-11-10', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(60, 'Nona Rippin', '97352 Mavis Walks Apt. 504\nDaytonmouth, HI 64711', '557-755-0320', 'billie.haley@example.com', '1933-01-29', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(61, 'Dr. Oscar Walter IV', '6225 Larkin Plaza Suite 267\nAsiaberg, ME 83892', '724-284-9712', 'schoen.darrell@example.com', '1937-03-09', 7, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(62, 'Maryam Berge DDS', '2284 Frami Turnpike Apt. 832\nWest Kira, OK 74967', '444-834-6814', 'winnifred96@example.org', '1940-06-21', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(63, 'Miss Naomi Ondricka', '192 Javier Overpass Suite 495\nNorth Pansystad, MN 90767-9406', '502-570-9281', 'lennie60@example.net', '1998-02-15', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(64, 'Angie Rolfson', '96220 Jessika Cliffs Suite 660\nSouth Adonisborough, WV 27518', '447-655-8398', 'althea65@example.com', '1992-12-15', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(65, 'Rachel Upton IV', '659 Germaine Gateway\nWiegandborough, TN 74206-7008', '191-773-2842', 'von.johnpaul@example.net', '2014-10-16', 10, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(66, 'Melissa Rutherford', '573 Simonis Run Apt. 388\nSouth Ahmadville, ND 18017', '889-344-9893', 'willy06@example.com', '1944-04-29', 9, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(67, 'Mohammed Waelchi', '9171 Nestor Trail Suite 757\nSouth Hortenseburgh, WI 78484', '896-716-7078', 'theron41@example.com', '2022-06-06', 7, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(68, 'Laury Fisher', '72475 Daniel Valley Suite 894\nGerardhaven, MS 56806-1362', '602-795-0164', 'jkihn@example.net', '2012-11-15', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(69, 'Dr. Fritz Gusikowski', '25436 Dock Point Apt. 102\nMaegantown, NC 11027-7432', '509-805-3629', 'bratke@example.net', '1993-05-31', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(70, 'Rupert Smith', '986 Vesta Street\nGottliebview, WA 38578', '038-419-6421', 'tharvey@example.net', '2001-03-31', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(71, 'Flavie Nader', '476 Haylie Village Apt. 554\nLake Kane, MN 99135-1402', '020-979-0233', 'akling@example.net', '1984-08-21', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(72, 'Lucile Schulist', '3649 Bernadette Courts\nKozeyborough, NM 76649', '362-716-6888', 'scarlett.strosin@example.com', '1986-01-24', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(73, 'Prof. Kevon Deckow', '913 Kenny Crest\nEast Elmo, NC 88263', '547-831-2178', 'kailee25@example.net', '1934-04-14', 3, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(74, 'Gay Tillman', '68667 Kautzer Fords\nKreigerfurt, MT 90846', '806-069-2973', 'graham.conor@example.com', '1923-11-02', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(75, 'Prof. Michaela Renner DDS', '5842 Sipes Trail Suite 519\nNew Tessiemouth, NV 31756-6437', '908-419-8822', 'morar.lyric@example.org', '1934-03-03', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(76, 'Kyra Dicki', '461 Johnson Turnpike\nYundtfurt, SD 77321', '609-201-4052', 'maurine91@example.net', '1943-11-20', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(77, 'Elisha Wolf', '25093 Harvey Port Suite 638\nNew Carmelaview, MS 96519', '182-740-8595', 'schultz.lelia@example.com', '1989-07-22', 2, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(78, 'Modesto Schulist', '15795 Gordon Mountain Apt. 656\nDeionborough, DE 45244', '780-130-6974', 'gerda31@example.org', '1955-08-25', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(79, 'Felix Turner', '2011 Adams Prairie Apt. 986\nSouth Martinaburgh, NM 13094', '736-326-0698', 'irwin.mosciski@example.com', '1972-07-30', 6, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(80, 'Luis Heidenreich', '26657 Bergstrom Valley Suite 495\nMarcusshire, PA 95964', '595-140-9884', 'zbins@example.com', '1999-03-02', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(81, 'Marjolaine Smitham', '335 Mueller Harbor Apt. 189\nKeeblerburgh, NV 38588-6438', '545-315-0099', 'legros.elda@example.org', '2005-01-11', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(82, 'Quinten Robel Jr.', '860 Nelson Well\nHarrisfurt, AL 54515', '087-812-6749', 'tessie.king@example.org', '1968-02-12', 3, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(83, 'Dr. Stephon Keebler III', '336 Marisol Branch Apt. 505\nAdolfoberg, NM 93122-0015', '489-330-3696', 'abbie.kreiger@example.org', '2000-05-26', 14, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(84, 'Alisha O\'Connell DVM', '89748 Dayton Road Apt. 306\nFramiview, GA 56726', '166-174-7350', 'rasheed52@example.net', '1998-06-14', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(85, 'Mr. Daryl Parisian', '28382 Emard Via\nEast Imani, CO 32353-6176', '801-013-3545', 'hboyle@example.net', '1950-06-20', 15, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(86, 'Mr. Kobe Howe', '1709 O\'Hara Trace\nPort Dell, SD 67432-7596', '193-595-6238', 'jackeline56@example.com', '1956-07-15', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(87, 'Neha Von', '39946 Aufderhar Avenue\nEast Sean, WI 29240-8090', '129-589-6798', 'daniel.merritt@example.com', '1924-02-12', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(88, 'Miss Marge Fisher V', '1997 Runte Knolls\nSchmelerland, AZ 82574', '855-171-2841', 'koss.hertha@example.org', '1954-05-21', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(89, 'Rafael Langworth Sr.', '87697 Ondricka Fork\nSouth Danafort, HI 88483-7522', '614-631-0372', 'ariel.baumbach@example.org', '1926-09-09', 3, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(90, 'Ms. Florence Weimann DVM', '3010 Homenick Common Apt. 156\nWillmsmouth, PA 10158-5137', '884-926-5501', 'barney68@example.net', '2005-09-09', 4, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(91, 'Mr. Fredy Wisozk', '11324 Murphy Tunnel Apt. 400\nEast Eleonore, DC 99382-1480', '619-667-8135', 'kuhlman.adaline@example.net', '2022-01-04', 11, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(92, 'Salvador Senger', '935 Ethan Neck Suite 714\nFernandoport, WI 45518-9533', '949-632-6230', 'nikko.moen@example.net', '1974-11-03', 7, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(93, 'Estell Rosenbaum', '467 Gulgowski Overpass\nPort Consuelo, DC 55625-5392', '060-098-5776', 'loy.durgan@example.net', '1976-07-09', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(94, 'Filiberto Purdy', '234 Robel Streets Suite 417\nEmilieview, MI 10241', '912-809-0076', 'haylie.towne@example.org', '2002-05-07', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(95, 'Leslie Grimes', '720 Deron Inlet Apt. 547\nNorth Hardy, MN 82775-0360', '033-884-9143', 'sadie.dibbert@example.org', '2016-12-14', 1, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(96, 'Alaina Wintheiser', '151 Lebsack Springs Suite 764\nSouth Leannahaven, FL 41288-3385', '937-866-5797', 'mclaughlin.dallas@example.net', '1973-05-09', 9, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(97, 'Emilia Konopelski PhD', '580 Lang Row Suite 400\nNew Emie, ND 73946-5699', '231-063-0495', 'labadie.olga@example.com', '1924-12-08', 8, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(98, 'Prof. Allison Gutkowski PhD', '6215 Hermiston Ridge\nEast Molliechester, MO 45568', '852-750-5837', 'zwisozk@example.net', '1996-01-28', 12, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(99, 'Maegan Yundt', '7781 Hessel Extensions Apt. 496\nWiltonville, FL 67741', '172-645-7834', 'lauretta33@example.net', '1953-01-30', 5, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(100, 'Miguel Jacobson', '6703 Pinkie Brooks\nArielleberg, AL 88154-9281', '117-148-6209', 'sfeil@example.net', '2012-09-17', 13, '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(102, 'Mounir', 'test adresse', '5149166064', 'sadad@test.com', '1990-02-12', 1, '2022-06-30 17:47:46', '2022-06-30 17:47:46');

-- --------------------------------------------------------

--
-- Structure de la table failed_jobs
--

DROP TABLE IF EXISTS failed_jobs;
CREATE TABLE failed_jobs (
  id bigint(20) UNSIGNED NOT NULL,
  uuid varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  connection text COLLATE utf8mb4_unicode_ci NOT NULL,
  queue text COLLATE utf8mb4_unicode_ci NOT NULL,
  payload longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  exception longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  failed_at timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE failed_jobs:
--

-- --------------------------------------------------------

--
-- Structure de la table migrations
--

DROP TABLE IF EXISTS migrations;
CREATE TABLE migrations (
  id int(10) UNSIGNED NOT NULL,
  migration varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  batch int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE migrations:
--

--
-- Déchargement des données de la table migrations
--

INSERT INTO migrations (id, migration, batch) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_22_034635_create_villes_table', 1),
(6, '2022_06_22_034723_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table password_resets
--

DROP TABLE IF EXISTS password_resets;
CREATE TABLE password_resets (
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  token varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE password_resets:
--

-- --------------------------------------------------------

--
-- Structure de la table personal_access_tokens
--

DROP TABLE IF EXISTS personal_access_tokens;
CREATE TABLE personal_access_tokens (
  id bigint(20) UNSIGNED NOT NULL,
  tokenable_type varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  tokenable_id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  token varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  abilities text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  last_used_at timestamp NULL DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE personal_access_tokens:
--

-- --------------------------------------------------------

--
-- Structure de la table users
--

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  remember_token varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE users:
--

--
-- Déchargement des données de la table users
--

INSERT INTO users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) VALUES
(1, 'Chloe Waelchi', 'ryann49@example.com', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6Nn97kLApH', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(2, 'Dr. Zack Bechtelar II', 'sstoltenberg@example.net', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zNPDRm8H5A', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(3, 'Alberto Kreiger', 'hayes.federico@example.net', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VhX8NKYnFk', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(4, 'Prof. Edward Sawayn', 'sschroeder@example.com', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0TLFhbKT2t', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(5, 'Carolanne Lehner', 'elza.bernhard@example.com', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AOqecIE7Lp', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(6, 'Melisa Botsford II', 'tjohnson@example.net', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2V84dYWrPP', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(7, 'Janick Franecki', 'tessie.schoen@example.net', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SndnhXbXkP', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(8, 'Mrs. Kristin Feest III', 'keenan00@example.com', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '627IldbuxX', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(9, 'Bernice Torphy', 'ole14@example.com', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '70T3uQHs4B', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(10, 'Hildegard Jerde', 'stokes.kristoffer@example.org', '2022-06-23 03:41:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fmqgYE0xJY', '2022-06-23 03:41:40', '2022-06-23 03:41:40');

-- --------------------------------------------------------

--
-- Structure de la table villes
--

DROP TABLE IF EXISTS villes;
CREATE TABLE villes (
  id bigint(20) UNSIGNED NOT NULL,
  nom varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- RELATIONS POUR LA TABLE villes:
--

--
-- Déchargement des données de la table villes
--

INSERT INTO villes (id, nom, created_at, updated_at) VALUES
(1, 'North Murl', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(2, 'North Chesley', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(3, 'Lake Danielle', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(4, 'South Katharinaberg', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(5, 'Port Chanelhaven', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(6, 'Port Daxfort', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(7, 'East Kaseyborough', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(8, 'Billyland', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(9, 'Williamsonton', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(10, 'Vivienview', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(11, 'New Elisabethtown', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(12, 'Port Walterchester', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(13, 'Baumbachton', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(14, 'Lake Guadalupeland', '2022-06-23 03:41:40', '2022-06-23 03:41:40'),
(15, 'Ryleyfurt', '2022-06-23 03:41:40', '2022-06-23 03:41:40');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table etudiants
--
ALTER TABLE etudiants
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY etudiants_phone_unique (phone),
  ADD UNIQUE KEY etudiants_email_unique (email),
  ADD KEY etudiants_villeid_foreign (villeId);

--
-- Index pour la table failed_jobs
--
ALTER TABLE failed_jobs
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY failed_jobs_uuid_unique (uuid);

--
-- Index pour la table migrations
--
ALTER TABLE migrations
  ADD PRIMARY KEY (id);

--
-- Index pour la table password_resets
--
ALTER TABLE password_resets
  ADD KEY password_resets_email_index (email);

--
-- Index pour la table personal_access_tokens
--
ALTER TABLE personal_access_tokens
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY personal_access_tokens_token_unique (token),
  ADD KEY personal_access_tokens_tokenable_type_tokenable_id_index (tokenable_type,tokenable_id);

--
-- Index pour la table users
--
ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY users_email_unique (email);

--
-- Index pour la table villes
--
ALTER TABLE villes
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table etudiants
--
ALTER TABLE etudiants
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT pour la table failed_jobs
--
ALTER TABLE failed_jobs
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table migrations
--
ALTER TABLE migrations
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table personal_access_tokens
--
ALTER TABLE personal_access_tokens
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table users
--
ALTER TABLE users
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table villes
--
ALTER TABLE villes
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table etudiants
--
ALTER TABLE etudiants
  ADD CONSTRAINT etudiants_villeid_foreign FOREIGN KEY (villeId) REFERENCES villes (id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
