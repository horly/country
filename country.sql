-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 07 fév. 2021 à 13:18
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony_kedisonline_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `alpha2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alpha3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_gb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_fr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_rat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `code`, `alpha2`, `alpha3`, `name_gb`, `name_fr`, `telephone_code`, `vat_rat`) VALUES
(1, 4, 'AF', 'AFG', 'Afghanistan', 'Afghanistan', '93', 0),
(2, 8, 'AL', 'ALB', 'Albania', 'Albanie', '355', 20),
(4, 12, 'DZ', 'DZA', 'Algeria', 'Algérie', '213', 19),
(5, 16, 'AS', 'ASM', 'American Samoa', 'Samoa Américaines', '1', 0),
(6, 20, 'AD', 'AND', 'Andorra', 'Andorre', '376', 4.5),
(7, 24, 'AO', 'AGO', 'Angola', 'Angola', '244', 0),
(8, 28, 'AG', 'ATG', 'Antigua and Barbuda', 'Antigua-et-Barbuda', '1268', 0),
(9, 31, 'AZ', 'AZE', 'Azerbaijan', 'Azerbaïdjan', '994', 0),
(10, 32, 'AR', 'ARG', 'Argentina', 'Argentine', '54', 21),
(11, 36, 'AU', 'AUS', 'Australia', 'Australie', '61', 10),
(12, 40, 'AT', 'AUT', 'Austria', 'Autriche', '43', 20),
(13, 44, 'BS', 'BHS', 'Bahamas', 'Bahamas', '1242', 0),
(14, 48, 'BH', 'BHR', 'Bahrain', 'Bahreïn', '973', 0),
(15, 50, 'BD', 'BGD', 'Bangladesh', 'Bangladesh', '880', 0),
(16, 51, 'AM', 'ARM', 'Armenia', 'Arménie', '374', 0),
(17, 52, 'BB', 'BRB', 'Barbados', 'Barbade', '1246', 0),
(18, 56, 'BE', 'BEL', 'Belgium', 'Belgique', '32', 21),
(19, 60, 'BM', 'BMU', 'Bermuda', 'Bermudes', '1441', 0),
(20, 64, 'BT', 'BTN', 'Bhutan', 'Bhoutan', '975', 0),
(21, 68, 'BO', 'BOL', 'Bolivia', 'Bolivie', '591', 0),
(22, 70, 'BA', 'BIH', 'Bosnia and Herzegovina', 'Bosnie-Herzégovine', '387', 17),
(23, 72, 'BW', 'BWA', 'Botswana', 'Botswana', '267', 0),
(24, 74, 'BV', 'BVT', 'Bouvet Island', 'Île Bouvet', '47', 0),
(25, 76, 'BR', 'BRA', 'Brazil', 'Brésil', '55', 0),
(26, 84, 'BZ', 'BLZ', 'Belize', 'Belize', '501', 0),
(27, 86, 'IO', 'IOT', 'British Indian Ocean Territory', 'Territoire Britannique de l\'Océan Indien', '246', 0),
(28, 90, 'SB', 'SLB', 'Solomon Islands', 'Îles Salomon', '677', 0),
(29, 92, 'VG', 'VGB', 'British Virgin Islands', 'Îles Vierges Britanniques', '1284', 0),
(30, 96, 'BN', 'BRN', 'Brunei Darussalam', 'Brunéi Darussalam', '673', 0),
(31, 100, 'BG', 'BGR', 'Bulgaria', 'Bulgarie', '359', 20),
(32, 104, 'MM', 'MMR', 'Myanmar', 'Myanmar', '95', 0),
(33, 108, 'BI', 'BDI', 'Burundi', 'Burundi', '257', 0),
(34, 112, 'BY', 'BLR', 'Belarus', 'Bélarus', '375', 18),
(35, 116, 'KH', 'KHM', 'Cambodia', 'Cambodge', '855', 0),
(36, 120, 'CM', 'CMR', 'Cameroon', 'Cameroun', '237', 19.25),
(37, 124, 'CA', 'CAN', 'Canada', 'Canada', '1', 5),
(38, 132, 'CV', 'CPV', 'Cape Verde', 'Cap-vert', '238', 0),
(39, 136, 'KY', 'CYM', 'Cayman Islands', 'Îles Caïmanes', '1345', 0),
(40, 140, 'CF', 'CAF', 'Central African', 'République Centrafricaine', '236', 0),
(41, 144, 'LK', 'LKA', 'Sri Lanka', 'Sri Lanka', '94', 0),
(42, 148, 'TD', 'TCD', 'Chad', 'Tchad', '235', 0),
(43, 152, 'CL', 'CHL', 'Chile', 'Chili', '56', 0),
(44, 156, 'CN', 'CHN', 'China', 'Chine', '86', 17),
(45, 158, 'TW', 'TWN', 'Taiwan', 'Taïwan', '886', 0),
(46, 162, 'CX', 'CXR', 'Christmas Island', 'Île Christmas', '61', 0),
(47, 166, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Îles Cocos (Keeling)', '891', 0),
(48, 170, 'CO', 'COL', 'Colombia', 'Colombie', '57', 16),
(49, 174, 'KM', 'COM', 'Comoros', 'Comores', '269', 0),
(50, 175, 'YT', 'MYT', 'Mayotte', 'Mayotte', '262', 0),
(51, 178, 'CG', 'COG', 'Republic of the Congo', 'République du Congo', '242', 16),
(52, 180, 'CD', 'COD', 'Democratic Republic Of The Congo', 'République Démocratique du Congo', '243', 0),
(53, 184, 'CK', 'COK', 'Cook Islands', 'Îles Cook', '682', 0),
(54, 188, 'CR', 'CRI', 'Costa Rica', 'Costa Rica', '506', 0),
(55, 191, 'HR', 'HRV', 'Croatia', 'Croatie', '385', 25),
(56, 192, 'CU', 'CUB', 'Cuba', 'Cuba', '53', 0),
(57, 196, 'CY', 'CYP', 'Cyprus', 'Chypre', '357', 19),
(58, 203, 'CZ', 'CZE', 'Czech Republic', 'République Tchèque', '420', 21),
(59, 204, 'BJ', 'BEN', 'Benin', 'Bénin', '229', 18),
(60, 208, 'DK', 'DNK', 'Denmark', 'Danemark', '45', 25),
(61, 212, 'DM', 'DMA', 'Dominica', 'Dominique', '1767', 0),
(62, 214, 'DO', 'DOM', 'Dominican Republic', 'République Dominicaine', '1849', 0),
(63, 218, 'EC', 'ECU', 'Ecuador', 'Équateur', '593', 12),
(64, 222, 'SV', 'SLV', 'El Salvador', 'El Salvador', '503', 0),
(65, 226, 'GQ', 'GNQ', 'Equatorial Guinea', 'Guinée Équatoriale', '240', 0),
(66, 231, 'ET', 'ETH', 'Ethiopia', 'Éthiopie', '251', 0),
(67, 232, 'ER', 'ERI', 'Eritrea', 'Érythrée', '291', 0),
(68, 233, 'EE', 'EST', 'Estonia', 'Estonie', '372', 20),
(69, 234, 'FO', 'FRO', 'Faroe Islands', 'Îles Féroé', '298', 0),
(70, 238, 'FK', 'FLK', 'Falkland Islands', 'Îles (malvinas) Falkland', '00', 0),
(71, 239, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'Géorgie du Sud et les Îles Sandwich du Sud', '500', 0),
(72, 242, 'FJ', 'FJI', 'Fiji', 'Fidji', '679', 0),
(73, 246, 'FI', 'FIN', 'Finland', 'Finlande', '358', 24),
(74, 248, 'AX', 'ALA', 'Åland Islands', 'Îles Åland', '358', 0),
(75, 250, 'FR', 'FRA', 'France', 'France', '33', 20),
(76, 254, 'GF', 'GUF', 'French Guiana', 'Guyane Française', '594', 0),
(77, 258, 'PF', 'PYF', 'French Polynesia', 'Polynésie Française', '689', 0),
(78, 260, 'TF', 'ATF', 'French Southern Territories', 'Terres Australes Françaises', '262', 0),
(79, 262, 'DJ', 'DJI', 'Djibouti', 'Djibouti', '253', 0),
(80, 266, 'GA', 'GAB', 'Gabon', 'Gabon', '241', 0),
(81, 268, 'GE', 'GEO', 'Georgia', 'Géorgie', '995', 0),
(82, 270, 'GM', 'GMB', 'Gambia', 'Gambie', '220', 0),
(83, 275, 'PS', 'PSE', 'Occupied Palestinian Territory', 'Territoire Palestinien Occupé', '970', 0),
(84, 276, 'DE', 'DEU', 'Germany', 'Allemagne', '49', 19),
(85, 288, 'GH', 'GHA', 'Ghana', 'Ghana', '233', 0),
(86, 292, 'GI', 'GIB', 'Gibraltar', 'Gibraltar', '350', 0),
(87, 296, 'KI', 'KIR', 'Kiribati', 'Kiribati', '686', 0),
(88, 300, 'GR', 'GRC', 'Greece', 'Grèce', '30', 24),
(89, 304, 'GL', 'GRL', 'Greenland', 'Groenland', '299', 0),
(90, 308, 'GD', 'GRD', 'Grenada', 'Grenade', '1473', 0),
(91, 312, 'GP', 'GLP', 'Guadeloupe', 'Guadeloupe', '590', 0),
(92, 316, 'GU', 'GUM', 'Guam', 'Guam', '1671', 0),
(93, 320, 'GT', 'GTM', 'Guatemala', 'Guatemala', '502', 0),
(94, 324, 'GN', 'GIN', 'Guinea', 'Guinée', '224', 0),
(95, 328, 'GY', 'GUY', 'Guyana', 'Guyana', '592', 0),
(96, 332, 'HT', 'HTI', 'Haiti', 'Haïti', '509', 0),
(97, 334, 'HM', 'HMD', 'Heard Island and McDonald Islands', 'Îles Heard et Mcdonald', '00', 0),
(98, 336, 'VA', 'VAT', 'Vatican City State', 'Saint-Siège (état de la Cité du Vatican)', '379', 0),
(99, 340, 'HN', 'HND', 'Honduras', 'Honduras', '504', 0),
(100, 344, 'HK', 'HKG', 'Hong Kong', 'Hong-Kong', '852', 0),
(101, 348, 'HU', 'HUN', 'Hungary', 'Hongrie', '36', 27),
(102, 352, 'IS', 'ISL', 'Iceland', 'Islande', '354', 0),
(103, 356, 'IN', 'IND', 'India', 'Inde', '91', 0),
(104, 360, 'ID', 'IDN', 'Indonesia', 'Indonésie', '62', 0),
(105, 364, 'IR', 'IRN', 'Islamic Republic of Iran', 'République Islamique d\'Iran', '98', 0),
(106, 368, 'IQ', 'IRQ', 'Iraq', 'Iraq', '964', 0),
(107, 372, 'IE', 'IRL', 'Ireland', 'Irlande', '353', 23),
(108, 376, 'IL', 'ISR', 'Israel', 'Israël', '972', 18),
(109, 380, 'IT', 'ITA', 'Italy', 'Italie', '39', 22),
(110, 384, 'CI', 'CIV', 'Côte d\'Ivoire', 'Côte d\'Ivoire', '225', 18),
(111, 388, 'JM', 'JAM', 'Jamaica', 'Jamaïque', '1876', 0),
(112, 392, 'JP', 'JPN', 'Japan', 'Japon', '81', 8),
(113, 398, 'KZ', 'KAZ', 'Kazakhstan', 'Kazakhstan', '7', 0),
(114, 400, 'JO', 'JOR', 'Jordan', 'Jordanie', '962', 0),
(115, 404, 'KE', 'KEN', 'Kenya', 'Kenya', '254', 0),
(116, 408, 'KP', 'PRK', 'Democratic People\'s Republic of Korea', 'République Populaire Démocratique de Corée\r\n', '850', 0),
(117, 410, 'KR', 'KOR', 'Republic of Korea', 'République de Corée', '82', 0),
(118, 414, 'KW', 'KWT', 'Kuwait', 'Koweït', '965', 0),
(119, 417, 'KG', 'KGZ', 'Kyrgyzstan', 'Kirghizistan', '996', 0),
(120, 418, 'LA', 'LAO', 'Lao People\'s Democratic Republic', 'République Démocratique Populaire Laos', '856', 0),
(121, 422, 'LB', 'LBN', 'Lebanon', 'Liban', '961', 10),
(122, 426, 'LS', 'LSO', 'Lesotho', 'Lesotho', '266', 0),
(123, 428, 'LV', 'LVA', 'Latvia', 'Lettonie', '371', 22),
(124, 430, 'LR', 'LBR', 'Liberia', 'Libéria', '231', 0),
(125, 434, 'LY', 'LBY', 'Libyan Arab Jamahiriya', 'Jamahiriya Arabe Libyenne', '218', 0),
(126, 438, 'LI', 'LIE', 'Liechtenstein', 'Liechtenstein', '423', 7.6),
(127, 440, 'LT', 'LTU', 'Lithuania', 'Lituanie', '370', 21),
(128, 442, 'LU', 'LUX', 'Luxembourg', 'Luxembourg', '352', 17),
(129, 446, 'MO', 'MAC', 'Macao', 'Macao', '853', 0),
(130, 450, 'MG', 'MDG', 'Madagascar', 'Madagascar', '261', 0),
(131, 454, 'MW', 'MWI', 'Malawi', 'Malawi', '265', 0),
(132, 458, 'MY', 'MYS', 'Malaysia', 'Malaisie', '60', 0),
(133, 462, 'MV', 'MDV', 'Maldives', 'Maldives', '960', 0),
(134, 466, 'ML', 'MLI', 'Mali', 'Mali', '223', 18),
(135, 470, 'MT', 'MLT', 'Malta', 'Malte', '356', 18),
(136, 474, 'MQ', 'MTQ', 'Martinique', 'Martinique', '596', 0),
(137, 478, 'MR', 'MRT', 'Mauritania', 'Mauritanie', '222', 0),
(138, 480, 'MU', 'MUS', 'Mauritius', 'Maurice', '230', 0),
(139, 484, 'MX', 'MEX', 'Mexico', 'Mexique', '52', 16),
(140, 492, 'MC', 'MCO', 'Monaco', 'Monaco', '377', 0),
(141, 496, 'MN', 'MNG', 'Mongolia', 'Mongolie', '976', 0),
(142, 498, 'MD', 'MDA', 'Republic of Moldova', 'République de Moldavie', '373', 20),
(143, 500, 'MS', 'MSR', 'Montserrat', 'Montserrat', '1664', 0),
(144, 504, 'MA', 'MAR', 'Morocco', 'Maroc', '212', 20),
(145, 508, 'MZ', 'MOZ', 'Mozambique', 'Mozambique', '258', 0),
(146, 512, 'OM', 'OMN', 'Oman', 'Oman', '968', 0),
(147, 516, 'NA', 'NAM', 'Namibia', 'Namibie', '264', 0),
(148, 520, 'NR', 'NRU', 'Nauru', 'Nauru', '674', 0),
(149, 524, 'NP', 'NPL', 'Nepal', 'Népal', '977', 0),
(150, 528, 'NL', 'NLD', 'Netherlands', 'Pays-Bas', '31', 21),
(151, 530, 'AN', 'ANT', 'Netherlands Antilles', 'Antilles Néerlandaises', '599', 0),
(152, 533, 'AW', 'ABW', 'Aruba', 'Aruba', '297', 0),
(153, 540, 'NC', 'NCL', 'New Caledonia', 'Nouvelle-Calédonie', '687', 0),
(154, 548, 'VU', 'VUT', 'Vanuatu', 'Vanuatu', '678', 0),
(155, 554, 'NZ', 'NZL', 'New Zealand', 'Nouvelle-Zélande', '64', 12.5),
(156, 558, 'NI', 'NIC', 'Nicaragua', 'Nicaragua', '505', 0),
(157, 562, 'NE', 'NER', 'Niger', 'Niger', '227', 0),
(158, 566, 'NG', 'NGA', 'Nigeria', 'Nigéria', '234', 0),
(159, 570, 'NU', 'NIU', 'Niue', 'Niué', '683', 0),
(160, 574, 'NF', 'NFK', 'Norfolk Island', 'Île Norfolk', '6723', 0),
(161, 578, 'NO', 'NOR', 'Norway', 'Norvège', '47', 25),
(162, 580, 'MP', 'MNP', 'Northern Mariana Islands', 'Îles Mariannes du Nord', '1670', 0),
(163, 581, 'UM', 'UMI', 'United States Minor Outlying Islands', 'Îles Mineures Éloignées des États-Unis', '1', 0),
(164, 583, 'FM', 'FSM', 'Federated States of Micronesia', 'États Fédérés de Micronésie', '691', 0),
(165, 584, 'MH', 'MHL', 'Marshall Islands', 'Îles Marshall', '692', 0),
(166, 585, 'PW', 'PLW', 'Palau', 'Palaos', '680', 0),
(167, 586, 'PK', 'PAK', 'Pakistan', 'Pakistan', '92', 0),
(168, 591, 'PA', 'PAN', 'Panama', 'Panama', '507', 0),
(169, 598, 'PG', 'PNG', 'Papua New Guinea', 'Papouasie-Nouvelle-Guinée', '675', 0),
(170, 600, 'PY', 'PRY', 'Paraguay', 'Paraguay', '595', 0),
(171, 604, 'PE', 'PER', 'Peru', 'Pérou', '51', 0),
(172, 608, 'PH', 'PHL', 'Philippines', 'Philippines', '63', 12),
(173, 612, 'PN', 'PCN', 'Pitcairn', 'Pitcairn', '64', 0),
(174, 616, 'PL', 'POL', 'Poland', 'Pologne', '48', 23),
(175, 620, 'PT', 'PRT', 'Portugal', 'Portugal', '351', 23),
(176, 624, 'GW', 'GNB', 'Guinea-Bissau', 'Guinée-Bissau', '245', 0),
(177, 626, 'TL', 'TLS', 'Timor-Leste', 'Timor-Leste', '670', 0),
(178, 630, 'PR', 'PRI', 'Puerto Rico', 'Porto Rico', '1939', 0),
(179, 634, 'QA', 'QAT', 'Qatar', 'Qatar', '974', 0),
(180, 638, 'RE', 'REU', 'Réunion', 'Réunion', '262', 0),
(181, 642, 'RO', 'ROU', 'Romania', 'Roumanie', '40', 19),
(182, 643, 'RU', 'RUS', 'Russian Federation', 'Fédération de Russie', '7', 18),
(183, 646, 'RW', 'RWA', 'Rwanda', 'Rwanda', '250', 0),
(184, 654, 'SH', 'SHN', 'Saint Helena', 'Sainte-Hélène', '290', 0),
(185, 659, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Saint-Kitts-et-Nevis', '1', 0),
(186, 660, 'AI', 'AIA', 'Anguilla', 'Anguilla', '1264', 0),
(187, 662, 'LC', 'LCA', 'Saint Lucia', 'Sainte-Lucie', '1758', 0),
(188, 666, 'PM', 'SPM', 'Saint-Pierre and Miquelon', 'Saint-Pierre-et-Miquelon', '508', 0),
(189, 670, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Saint-Vincent-et-les Grenadines', '1784', 0),
(190, 674, 'SM', 'SMR', 'San Marino', 'Saint-Marin', '590', 0),
(191, 678, 'ST', 'STP', 'Sao Tome and Principe', 'Sao Tomé-et-Principe', '239', 0),
(192, 682, 'SA', 'SAU', 'Saudi Arabia', 'Arabie Saoudite', '966', 0),
(193, 686, 'SN', 'SEN', 'Senegal', 'Sénégal', '221', 18),
(194, 690, 'SC', 'SYC', 'Seychelles', 'Seychelles', '248', 0),
(195, 694, 'SL', 'SLE', 'Sierra Leone', 'Sierra Leone', '232', 0),
(196, 702, 'SG', 'SGP', 'Singapore', 'Singapour', '65', 7),
(197, 703, 'SK', 'SVK', 'Slovakia', 'Slovaquie', '421', 20),
(198, 704, 'VN', 'VNM', 'Vietnam', 'Viet Nam', '84', 10),
(199, 705, 'SI', 'SVN', 'Slovenia', 'Slovénie', '386', 20),
(200, 706, 'SO', 'SOM', 'Somalia', 'Somalie', '252', 0),
(201, 710, 'ZA', 'ZAF', 'South Africa', 'Afrique du Sud', '27', 0),
(202, 716, 'ZW', 'ZWE', 'Zimbabwe', 'Zimbabwe', '263', 0),
(203, 724, 'ES', 'ESP', 'Spain', 'Espagne', '34', 20),
(204, 732, 'EH', 'ESH', 'Western Sahara', 'Sahara Occidental', '212', 0),
(205, 736, 'SD', 'SDN', 'North Sudan', 'Soudan du nord', '249', 0),
(206, 740, 'SR', 'SUR', 'Suriname', 'Suriname', '597', 0),
(207, 744, 'SJ', 'SJM', 'Svalbard and Jan Mayen', 'Svalbard etÎle Jan Mayen', '47', 0),
(208, 748, 'SZ', 'SWZ', 'Swaziland', 'Swaziland', '268', 0),
(209, 752, 'SE', 'SWE', 'Sweden', 'Suède', '46', 25),
(210, 756, 'CH', 'CHE', 'Switzerland', 'Suisse', '41', 7.7),
(211, 760, 'SY', 'SYR', 'Syrian Arab Republic', 'République Arabe Syrienne', '963', 0),
(212, 762, 'TJ', 'TJK', 'Tajikistan', 'Tadjikistan', '992', 0),
(213, 764, 'TH', 'THA', 'Thailand', 'Thaïlande', '66', 0),
(214, 768, 'TG', 'TGO', 'Togo', 'Togo', '228', 18),
(215, 772, 'TK', 'TKL', 'Tokelau', 'Tokelau', '690', 0),
(216, 776, 'TO', 'TON', 'Tonga', 'Tonga', '676', 0),
(217, 780, 'TT', 'TTO', 'Trinidad and Tobago', 'Trinité-et-Tobago', '1868', 0),
(218, 784, 'AE', 'ARE', 'United Arab Emirates', 'Émirats Arabes Unis', '971', 0),
(219, 788, 'TN', 'TUN', 'Tunisia', 'Tunisie', '216', 19),
(220, 792, 'TR', 'TUR', 'Turkey', 'Turquie', '90', 18),
(221, 795, 'TM', 'TKM', 'Turkmenistan', 'Turkménistan', '993', 0),
(222, 796, 'TC', 'TCA', 'Turks and Caicos Islands', 'Îles Turks et Caïques', '1', 0),
(223, 798, 'TV', 'TUV', 'Tuvalu', 'Tuvalu', '688', 0),
(224, 800, 'UG', 'UGA', 'Uganda', 'Ouganda', '256', 0),
(225, 804, 'UA', 'UKR', 'Ukraine', 'Ukraine', '380', 20),
(226, 807, 'MK', 'MKD', 'The Former Yugoslav Republic of Macedonia', 'Macédoine', '389', 18),
(227, 818, 'EG', 'EGY', 'Egypt', 'Égypte', '20', 0),
(228, 826, 'GB', 'GBR', 'United Kingdom', 'Royaume-Uni', '44', 20),
(229, 833, 'IM', 'IMN', 'Isle of Man', 'Île de Man', '441624', 0),
(230, 834, 'TZ', 'TZA', 'United Republic Of Tanzania', 'République-Unie de Tanzanie', '255', 0),
(231, 840, 'US', 'USA', 'United States', 'États-Unis', '1', 0),
(232, 850, 'VI', 'VIR', 'U.S. Virgin Islands', 'Îles Vierges des États-Unis', '1340', 0),
(233, 854, 'BF', 'BFA', 'Burkina Faso', 'Burkina Faso', '226', 0),
(234, 858, 'UY', 'URY', 'Uruguay', 'Uruguay', '598', 0),
(235, 860, 'UZ', 'UZB', 'Uzbekistan', 'Ouzbékistan', '998', 0),
(236, 862, 'VE', 'VEN', 'Venezuela', 'Venezuela', '58', 15),
(237, 876, 'WF', 'WLF', 'Wallis and Futuna', 'Wallis et Futuna', '681', 0),
(238, 882, 'WS', 'WSM', 'Samoa', 'Samoa', '685', 0),
(239, 887, 'YE', 'YEM', 'Yemen', 'Yémen', '967', 0),
(240, 891, 'CS', 'SCG', 'Serbia and Montenegro', 'Serbie-et-Monténégro', '381', 17),
(241, 894, 'ZM', 'ZMB', 'Zambia', 'Zambie', '260', 0),
(242, 1000, 'SS', 'SSD', 'South Sudan', 'Soudan du sud', '211', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
