-- MySQL dump 10.13 Distrib 8.0.19, for osx10.14 (x86_64) -- -- Host: 127.0.0.1 Database: world -- -----------------
------------------------------------- -- Server version 8.0.19-debug /*!40101 SET
@OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT * /;
/*!40101 SET
 @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET
 @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET
 @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET
 @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101
 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET
 @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
SET @old_autocommit = @@autocommit;
-- --
Current Database: `world` -- /*!40000 DROP DATABASE IF EXISTS `world-db`*/; CREATE DATABASE `worlddb` DEFAULT CHARACTER SET utf8mb4; USE `world-db`; -- -- Table structure for table `country` -- DROP
TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client = @@character_set_client */
;
/*!50503 SET
 character_set_client = utf8mb4 */
;
CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum(
    'Asia',
    'Europe',
    'North
America',
    'Africa',
    'Oceania',
    'Antarctica',
    'South America'
  ) NOT NULL DEFAULT 'Asia',
  `Region` char(26) NOT NULL DEFAULT '',
  `SurfaceArea` decimal(10, 2) NOT NULL DEFAULT '0.00',
  `IndepYear` smallint DEFAULT NULL,
  `Population` int NOT NULL DEFAULT '0',
  `LifeExpectancy` decimal(3, 1) DEFAULT NULL,
  `GNP` decimal(10, 2) DEFAULT NULL,
  `GNPOld` decimal(10, 2) DEFAULT NULL,
  `LocalName` char(45) NOT NULL DEFAULT '',
  `GovernmentForm` char(45) NOT NULL DEFAULT '',
  `HeadOfState` char(60) DEFAULT NULL,
  `Capital` int DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */
;
-- --
Dumping data for table `country` -- -- ORDER BY: `Code` set autocommit=0; INSERT INTO `country` VALUES
(
  'ABW',
  'Aruba',
  'North America',
  'Caribbean',
  193.00,
  NULL,
  103000,
  78.4,
  828.00,
  793.00,
  'Aruba',
  'Nonmetropolitan
Territory of The Netherlands',
  'Beatrix',
  129,
  'AW'
);
INSERT INTO `country`
VALUES (
    'AFG',
    'Afghanistan',
    'Asia',
    'Southern and Central
Asia',
    652090.00,
    1919,
    22720000,
    45.9,
    5976.00,
    NULL,
    'Afganistan/Afqanestan',
    'Islamic Emirate',
    'Mohammad
Omar',
    1,
    'AF'
  );
INSERT INTO `country`
VALUES (
    'AGO',
    'Angola',
    'Africa',
    'Central
Africa',
    1246700.00,
    1975,
    12878000,
    38.3,
    6648.00,
    7984.00,
    'Angola',
    'Republic',
    'José Eduardo dos
Santos',
    56,
    'AO'
  );
INSERT INTO `country`
VALUES (
    'AIA',
    'Anguilla',
    'North
America',
    'Caribbean',
    96.00,
    NULL,
    8000,
    76.1,
    63.20,
    NULL,
    'Anguilla',
    'Dependent Territory of the UK',
    'Elisabeth
II',
    62,
    'AI'
  );
INSERT INTO `country`
VALUES (
    'ALB',
    'Albania',
    'Europe',
    'Southern
Europe',
    28748.00,
    1912,
    3401200,
    71.6,
    3205.00,
    2500.00,
    'Shqipëria',
    'Republic',
    'Rexhep Mejdani',
    34,
    'AL'
  );
INSERT INTO `country`
VALUES (
    'AND',
    'Andorra',
    'Europe',
    'Southern
Europe',
    468.00,
    1278,
    78000,
    83.5,
    1630.00,
    NULL,
    'Andorra',
    'Parliamentary Coprincipality',
    '',
    55,
    'AD'
  );
INSERT INTO `country`
VALUES (
    'ANT',
    'Netherlands Antilles',
    'North
America',
    'Caribbean',
    800.00,
    NULL,
    217000,
    74.7,
    1941.00,
    NULL,
    'Nederlandse Antillen',
    'Nonmetropolitan Territory
of The Netherlands',
    'Beatrix',
    33,
    'AN'
  );
INSERT INTO `country`
VALUES (
    'ARE',
    'United Arab
Emirates',
    'Asia',
    'Middle East',
    83600.00,
    1971,
    2441000,
    74.1,
    37966.00,
    36846.00,
    'Al-Imarat al-´Arabiya alMuttahida',
    'Emirate Federation',
    'Zayid bin Sultan al-Nahayan',
    65,
    'AE'
  );
INSERT INTO `country`
VALUES (
    'ARG',
    'Argentina',
    'South America',
    'South
America',
    2780400.00,
    1816,
    37032000,
    75.1,
    340238.00,
    323310.00,
    'Argentina',
    'Federal Republic',
    'Fernando de la
Rúa',
    69,
    'AR'
  );
INSERT INTO `country`
VALUES (
    'ARM',
    'Armenia',
    'Asia',
    'Middle
East',
    29800.00,
    1991,
    3520000,
    66.4,
    1813.00,
    1627.00,
    'Hajastan',
    'Republic',
    'Robert Kotšarjan',
    126,
    'AM'
  );
INSERT INTO `country`
VALUES (
    'ASM',
    'American
Samoa',
    'Oceania',
    'Polynesia',
    199.00,
    NULL,
    68000,
    75.1,
    334.00,
    NULL,
    'Amerika Samoa',
    'US Territory',
    'George W.
Bush',
    54,
    'AS'
  );
INSERT INTO `country`
VALUES (
    'ATA',
    'Antarctica',
    'Antarctica',
    'Antarctica',
    13120000.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    '–',
    'Coadministrated',
    '',
    NULL,
    'AQ'
  );
INSERT INTO `country`
VALUES (
    'ATF',
    'French Southern
territories',
    'Antarctica',
    'Antarctica',
    7780.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Terres australes
françaises',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    NULL,
    'TF'
  );
INSERT INTO `country`
VALUES (
    'ATG',
    'Antigua and Barbuda',
    'North America',
    'Caribbean',
    442.00,
    1981,
    68000,
    70.5,
    612.00,
    584.00,
    'Antigua and
Barbuda',
    'Constitutional Monarchy',
    'Elisabeth II',
    63,
    'AG'
  );
INSERT INTO `country`
VALUES (
    'AUS',
    'Australia',
    'Oceania',
    'Australia and New
Zealand',
    7741220.00,
    1901,
    18886000,
    79.8,
    351182.00,
    392911.00,
    'Australia',
    'Constitutional Monarchy,
Federation',
    'Elisabeth II',
    135,
    'AU'
  );
INSERT INTO `country`
VALUES (
    'AUT',
    'Austria',
    'Europe',
    'Western
Europe',
    83859.00,
    1918,
    8091800,
    77.7,
    211860.00,
    206025.00,
    'Österreich',
    'Federal Republic',
    'Thomas
Klestil',
    1523,
    'AT'
  );
INSERT INTO `country`
VALUES (
    'AZE',
    'Azerbaijan',
    'Asia',
    'Middle
East',
    86600.00,
    1991,
    7734000,
    62.9,
    4127.00,
    4100.00,
    'Azärbaycan',
    'Federal Republic',
    'Heydär Äliyev',
    144,
    'AZ'
  );
INSERT INTO `country`
VALUES (
    'BDI',
    'Burundi',
    'Africa',
    'Eastern
Africa',
    27834.00,
    1962,
    6695000,
    46.2,
    903.00,
    982.00,
    'Burundi/Uburundi',
    'Republic',
    'Pierre Buyoya',
    552,
    'BI'
  );
INSERT INTO `country`
VALUES (
    'BEL',
    'Belgium',
    'Europe',
    'Western
Europe',
    30518.00,
    1830,
    10239000,
    77.8,
    249704.00,
    243948.00,
    'België/Belgique',
    'Constitutional Monarchy,
Federation',
    'Albert II',
    179,
    'BE'
  );
INSERT INTO `country`
VALUES (
    'BEN',
    'Benin',
    'Africa',
    'Western
Africa',
    112622.00,
    1960,
    6097000,
    50.2,
    2357.00,
    2141.00,
    'Bénin',
    'Republic',
    'Mathieu Kérékou',
    187,
    'BJ'
  );
INSERT INTO `country`
VALUES (
    'BFA',
    'Burkina Faso',
    'Africa',
    'Western
Africa',
    274000.00,
    1960,
    11937000,
    46.7,
    2425.00,
    2201.00,
    'Burkina Faso',
    'Republic',
    'Blaise Compaoré',
    549,
    'BF'
  );
INSERT INTO `country`
VALUES (
    'BGD',
    'Bangladesh',
    'Asia',
    'Southern and Central
Asia',
    143998.00,
    1971,
    129155000,
    60.2,
    32852.00,
    31966.00,
    'Bangladesh',
    'Republic',
    'Shahabuddin
Ahmad',
    150,
    'BD'
  );
INSERT INTO `country`
VALUES (
    'BGR',
    'Bulgaria',
    'Europe',
    'Eastern
Europe',
    110994.00,
    1908,
    8190900,
    70.9,
    12178.00,
    10169.00,
    'Balgarija',
    'Republic',
    'Petar Stojanov',
    539,
    'BG'
  );
INSERT INTO `country`
VALUES (
    'BHR',
    'Bahrain',
    'Asia',
    'Middle
East',
    694.00,
    1971,
    617000,
    73.0,
    6366.00,
    6097.00,
    'Al-Bahrayn',
    'Monarchy (Emirate)',
    'Hamad ibn Isa alKhalifa',
    149,
    'BH'
  );
INSERT INTO `country`
VALUES (
    'BHS',
    'Bahamas',
    'North
America',
    'Caribbean',
    13878.00,
    1973,
    307000,
    71.1,
    3527.00,
    3347.00,
    'The Bahamas',
    'Constitutional
Monarchy',
    'Elisabeth II',
    148,
    'BS'
  );
INSERT INTO `country`
VALUES (
    'BIH',
    'Bosnia and
Herzegovina',
    'Europe',
    'Southern Europe',
    51197.00,
    1992,
    3972000,
    71.5,
    2841.00,
    NULL,
    'Bosna i
Hercegovina',
    'Federal Republic',
    'Ante Jelavic',
    201,
    'BA'
  );
INSERT INTO `country`
VALUES (
    'BLR',
    'Belarus',
    'Europe',
    'Eastern
Europe',
    207600.00,
    1991,
    10236000,
    68.0,
    13714.00,
    NULL,
    'Belarus',
    'Republic',
    'Aljaksandr Lukašenka',
    3520,
    'BY'
  );
INSERT INTO `country`
VALUES (
    'BLZ',
    'Belize',
    'North America',
    'Central
America',
    22696.00,
    1981,
    241000,
    70.9,
    630.00,
    616.00,
    'Belize',
    'Constitutional Monarchy',
    'Elisabeth II',
    185,
    'BZ'
  );
INSERT INTO `country`
VALUES (
    'BMU',
    'Bermuda',
    'North America',
    'North
America',
    53.00,
    NULL,
    65000,
    76.9,
    2328.00,
    2190.00,
    'Bermuda',
    'Dependent Territory of the UK',
    'Elisabeth
II',
    191,
    'BM'
  );
INSERT INTO `country`
VALUES (
    'BOL',
    'Bolivia',
    'South America',
    'South
America',
    1098581.00,
    1825,
    8329000,
    63.7,
    8571.00,
    7967.00,
    'Bolivia',
    'Republic',
    'Hugo Bánzer Suárez',
    194,
    'BO'
  );
INSERT INTO `country`
VALUES (
    'BRA',
    'Brazil',
    'South America',
    'South
America',
    8547403.00,
    1822,
    170115000,
    62.9,
    776739.00,
    804108.00,
    'Brasil',
    'Federal Republic',
    'Fernando
Henrique Cardoso',
    211,
    'BR'
  );
INSERT INTO `country`
VALUES (
    'BRB',
    'Barbados',
    'North
America',
    'Caribbean',
    430.00,
    1966,
    270000,
    73.0,
    2223.00,
    2186.00,
    'Barbados',
    'Constitutional Monarchy',
    'Elisabeth
II',
    174,
    'BB'
  );
INSERT INTO `country`
VALUES (
    'BRN',
    'Brunei',
    'Asia',
    'Southeast
Asia',
    5765.00,
    1984,
    328000,
    73.6,
    11705.00,
    12460.00,
    'Brunei Darussalam',
    'Monarchy (Sultanate)',
    'Haji Hassan
al-Bolkiah',
    538,
    'BN'
  );
INSERT INTO `country`
VALUES (
    'BTN',
    'Bhutan',
    'Asia',
    'Southern and Central
Asia',
    47000.00,
    1910,
    2124000,
    52.4,
    372.00,
    383.00,
    'Druk-Yul',
    'Monarchy',
    'Jigme Singye Wangchuk',
    192,
    'BT'
  );
INSERT INTO `country`
VALUES (
    'BVT',
    'Bouvet
Island',
    'Antarctica',
    'Antarctica',
    59.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Bouvetøya',
    'Dependent Territory of
Norway',
    'Harald V',
    NULL,
    'BV'
  );
INSERT INTO `country`
VALUES (
    'BWA',
    'Botswana',
    'Africa',
    'Southern
Africa',
    581730.00,
    1966,
    1622000,
    39.3,
    4834.00,
    4935.00,
    'Botswana',
    'Republic',
    'Festus G. Mogae',
    204,
    'BW'
  );
INSERT INTO `country`
VALUES (
    'CAF',
    'Central African Republic',
    'Africa',
    'Central
Africa',
    622984.00,
    1960,
    3615000,
    44.0,
    1054.00,
    993.00,
    'Centrafrique/Bê-Afrîka',
    'Republic',
    'Ange-Félix
Patassé',
    1889,
    'CF'
  );
INSERT INTO `country`
VALUES (
    'CAN',
    'Canada',
    'North America',
    'North
America',
    9970610.00,
    1867,
    31147000,
    79.4,
    598862.00,
    625626.00,
    'Canada',
    'Constitutional Monarchy,
Federation',
    'Elisabeth II',
    1822,
    'CA'
  );
INSERT INTO `country`
VALUES (
    'CCK',
    'Cocos (Keeling)
Islands',
    'Oceania',
    'Australia and New Zealand',
    14.00,
    NULL,
    600,
    NULL,
    0.00,
    NULL,
    'Cocos (Keeling)
Islands',
    'Territory of Australia',
    'Elisabeth II',
    2317,
    'CC'
  );
INSERT INTO `country`
VALUES (
    'CHE',
    'Switzerland',
    'Europe',
    'Western
Europe',
    41284.00,
    1499,
    7160400,
    79.6,
    264478.00,
    256092.00,
    'Schweiz/Suisse/Svizzera/Svizra',
    'Federation',
    'Adolf
Ogi',
    3248,
    'CH'
  );
INSERT INTO `country`
VALUES (
    'CHL',
    'Chile',
    'South America',
    'South
America',
    756626.00,
    1810,
    15211000,
    75.7,
    72949.00,
    75780.00,
    'Chile',
    'Republic',
    'Ricardo Lagos
Escobar',
    554,
    'CL'
  );
INSERT INTO `country`
VALUES (
    'CHN',
    'China',
    'Asia',
    'Eastern
Asia',
    9572900.00,
    -1523,
    1277558000,
    71.4,
    982268.00,
    917719.00,
    'Zhongquo',
    'People\'sRepublic',
    'Jiang
Zemin',
    1891,
    'CN'
  );
INSERT INTO `country`
VALUES (
    'CIV',
    'Côte d’Ivoire',
    'Africa',
    'Western
Africa',
    322463.00,
    1960,
    14786000,
    45.2,
    11345.00,
    10285.00,
    'Côte d’Ivoire',
    'Republic',
    'Laurent Gbagbo',
    2814,
    'CI'
  );
INSERT INTO `country`
VALUES (
    'CMR',
    'Cameroon',
    'Africa',
    'Central
Africa',
    475442.00,
    1960,
    15085000,
    54.8,
    9174.00,
    8596.00,
    'Cameroun/Cameroon',
    'Republic',
    'Paul
Biya',
    1804,
    'CM'
  );
INSERT INTO `country`
VALUES (
    'COD',
    'Congo, The Democratic Republic of
the',
    'Africa',
    'Central Africa',
    2344858.00,
    1960,
    51654000,
    48.8,
    6964.00,
    2474.00,
    'République Démocratique du
Congo',
    'Republic',
    'Joseph Kabila',
    2298,
    'CD'
  );
INSERT INTO `country`
VALUES (
    'COG',
    'Congo',
    'Africa',
    'Central
Africa',
    342000.00,
    1960,
    2943000,
    47.4,
    2108.00,
    2287.00,
    'Congo',
    'Republic',
    'Denis Sassou-Nguesso',
    2296,
    'CG'
  );
INSERT INTO `country`
VALUES (
    'COK',
    'Cook
Islands',
    'Oceania',
    'Polynesia',
    236.00,
    NULL,
    20000,
    71.1,
    100.00,
    NULL,
    'The Cook Islands',
    'Nonmetropolitan
Territory of New Zealand',
    'Elisabeth II',
    583,
    'CK'
  );
INSERT INTO `country`
VALUES (
    'COL',
    'Colombia',
    'South
America',
    'South America',
    1138914.00,
    1810,
    42321000,
    70.3,
    102896.00,
    105116.00,
    'Colombia',
    'Republic',
    'Andrés
Pastrana Arango',
    2257,
    'CO'
  );
INSERT INTO `country`
VALUES (
    'COM',
    'Comoros',
    'Africa',
    'Eastern
Africa',
    1862.00,
    1975,
    578000,
    60.0,
    4401.00,
    4361.00,
    'Komori/Comores',
    'Republic',
    'Azali Assoumani',
    2295,
    'KM'
  );
INSERT INTO `country`
VALUES (
    'CPV',
    'Cape Verde',
    'Africa',
    'Western
Africa',
    4033.00,
    1975,
    428000,
    68.9,
    435.00,
    420.00,
    'Cabo Verde',
    'Republic',
    'António Mascarenhas
Monteiro',
    1859,
    'CV'
  );
INSERT INTO `country`
VALUES (
    'CRI',
    'Costa Rica',
    'North America',
    'Central
America',
    51100.00,
    1821,
    4023000,
    75.8,
    10226.00,
    9757.00,
    'Costa Rica',
    'Republic',
    'Miguel Ángel Rodríguez
Echeverría',
    584,
    'CR'
  );
INSERT INTO `country`
VALUES (
    'CUB',
    'Cuba',
    'North
America',
    'Caribbean',
    110861.00,
    1902,
    11201000,
    76.2,
    17843.00,
    18862.00,
    'Cuba',
    'Socialistic Republic',
    'Fidel
Castro Ruz',
    2413,
    'CU'
  );
INSERT INTO `country`
VALUES (
    'CXR',
    'Christmas Island',
    'Oceania',
    'Australia and New
Zealand',
    135.00,
    NULL,
    2500,
    NULL,
    0.00,
    NULL,
    'Christmas Island',
    'Territory of Australia',
    'Elisabeth II',
    1791,
    'CX'
  );
INSERT INTO `country`
VALUES (
    'CYM',
    'Cayman Islands',
    'North
America',
    'Caribbean',
    264.00,
    NULL,
    38000,
    78.9,
    1263.00,
    1186.00,
    'Cayman Islands',
    'Dependent Territory of the
UK',
    'Elisabeth II',
    553,
    'KY'
  );
INSERT INTO `country`
VALUES (
    'CYP',
    'Cyprus',
    'Asia',
    'Middle
East',
    9251.00,
    1960,
    754700,
    76.7,
    9333.00,
    8246.00,
    'Kýpros/Kibris',
    'Republic',
    'Glafkos Klerides',
    2430,
    'CY'
  );
INSERT INTO `country`
VALUES (
    'CZE',
    'Czech Republic',
    'Europe',
    'Eastern
Europe',
    78866.00,
    1993,
    10278100,
    74.5,
    55017.00,
    52037.00,
    '¸esko',
    'Republic',
    'Václav Havel',
    3339,
    'CZ'
  );
INSERT INTO `country`
VALUES (
    'DEU',
    'Germany',
    'Europe',
    'Western
Europe',
    357022.00,
    1955,
    82164700,
    77.4,
    2133367.00,
    2102826.00,
    'Deutschland',
    'Federal Republic',
    'Johannes
Rau',
    3068,
    'DE'
  );
INSERT INTO `country`
VALUES (
    'DJI',
    'Djibouti',
    'Africa',
    'Eastern
Africa',
    23200.00,
    1977,
    638000,
    50.8,
    382.00,
    373.00,
    'Djibouti/Jibuti',
    'Republic',
    'Ismail Omar Guelleh',
    585,
    'DJ'
  );
INSERT INTO `country`
VALUES (
    'DMA',
    'Dominica',
    'North
America',
    'Caribbean',
    751.00,
    1978,
    71000,
    73.4,
    256.00,
    243.00,
    'Dominica',
    'Republic',
    'Vernon Shaw',
    586,
    'DM'
  );
INSERT INTO `country`
VALUES (
    'DNK',
    'Denmark',
    'Europe',
    'Nordic
Countries',
    43094.00,
    800,
    5330000,
    76.5,
    174099.00,
    169264.00,
    'Danmark',
    'Constitutional Monarchy',
    'Margrethe
II',
    3315,
    'DK'
  );
INSERT INTO `country`
VALUES (
    'DOM',
    'Dominican Republic',
    'North
America',
    'Caribbean',
    48511.00,
    1844,
    8495000,
    73.2,
    15846.00,
    15076.00,
    'República
Dominicana',
    'Republic',
    'Hipólito Mejía Domínguez',
    587,
    'DO'
  );
INSERT INTO `country`
VALUES (
    'DZA',
    'Algeria',
    'Africa',
    'Northern Africa',
    2381741.00,
    1962,
    31471000,
    69.7,
    49982.00,
    46966.00,
    'AlJaza’ir/Algérie',
    'Republic',
    'Abdelaziz Bouteflika',
    35,
    'DZ'
  );
INSERT INTO `country`
VALUES (
    'ECU',
    'Ecuador',
    'South America',
    'South
America',
    283561.00,
    1822,
    12646000,
    71.1,
    19770.00,
    19769.00,
    'Ecuador',
    'Republic',
    'Gustavo Noboa
Bejarano',
    594,
    'EC'
  );
INSERT INTO `country`
VALUES (
    'EGY',
    'Egypt',
    'Africa',
    'Northern
Africa',
    1001449.00,
    1922,
    68470000,
    63.3,
    82710.00,
    75617.00,
    'Misr',
    'Republic',
    'Hosni Mubarak',
    608,
    'EG'
  );
INSERT INTO `country`
VALUES (
    'ERI',
    'Eritrea',
    'Africa',
    'Eastern
Africa',
    117600.00,
    1993,
    3850000,
    55.8,
    650.00,
    755.00,
    'Ertra',
    'Republic',
    'Isayas Afewerki [Isaias Afwerki]',
    652,
    'ER'
  );
INSERT INTO `country`
VALUES (
    'ESH',
    'Western Sahara',
    'Africa',
    'Northern
Africa',
    266000.00,
    NULL,
    293000,
    49.8,
    60.00,
    NULL,
    'As-Sahrawiya',
    'Occupied by Marocco',
    'Mohammed Abdel
Aziz',
    2453,
    'EH'
  );
INSERT INTO `country`
VALUES (
    'ESP',
    'Spain',
    'Europe',
    'Southern
Europe',
    505992.00,
    1492,
    39441700,
    78.8,
    553233.00,
    532031.00,
    'España',
    'Constitutional Monarchy',
    'Juan Carlos
I',
    653,
    'ES'
  );
INSERT INTO `country`
VALUES (
    'EST',
    'Estonia',
    'Europe',
    'Baltic
Countries',
    45227.00,
    1991,
    1439200,
    69.5,
    5328.00,
    3371.00,
    'Eesti',
    'Republic',
    'Lennart Meri',
    3791,
    'EE'
  );
INSERT INTO `country`
VALUES (
    'ETH',
    'Ethiopia',
    'Africa',
    'Eastern
Africa',
    1104300.00,
    -1000,
    62565000,
    45.2,
    6353.00,
    6180.00,
    'YeItyop´iya',
    'Republic',
    'Negasso Gidada',
    756,
    'ET'
  );
INSERT INTO `country`
VALUES (
    'FIN',
    'Finland',
    'Europe',
    'Nordic
Countries',
    338145.00,
    1917,
    5171300,
    77.4,
    121914.00,
    119833.00,
    'Suomi',
    'Republic',
    'Tarja Halonen',
    3236,
    'FI'
  );
INSERT INTO `country`
VALUES (
    'FJI',
    'Fiji
Islands',
    'Oceania',
    'Melanesia',
    18274.00,
    1970,
    817000,
    67.9,
    1536.00,
    2149.00,
    'Fiji Islands',
    'Republic',
    'Josefa
Iloilo',
    764,
    'FJ'
  );
INSERT INTO `country`
VALUES (
    'FLK',
    'Falkland Islands',
    'South America',
    'South
America',
    12173.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Falkland Islands',
    'Dependent Territory of the UK',
    'Elisabeth
II',
    763,
    'FK'
  );
INSERT INTO `country`
VALUES (
    'FRA',
    'France',
    'Europe',
    'Western
Europe',
    551500.00,
    843,
    59225700,
    78.8,
    1424285.00,
    1392448.00,
    'France',
    'Republic',
    'Jacques Chirac',
    2974,
    'FR'
  );
INSERT INTO `country`
VALUES (
    'FRO',
    'Faroe Islands',
    'Europe',
    'Nordic
Countries',
    1399.00,
    NULL,
    43000,
    78.4,
    0.00,
    NULL,
    'Føroyar',
    'Part of Denmark',
    'Margrethe II',
    901,
    'FO'
  );
INSERT INTO `country`
VALUES (
    'FSM',
    'Micronesia, Federated States
of',
    'Oceania',
    'Micronesia',
    702.00,
    1990,
    119000,
    68.6,
    212.00,
    NULL,
    'Micronesia',
    'Federal Republic',
    'Leo A.
Falcam',
    2689,
    'FM'
  );
INSERT INTO `country`
VALUES (
    'GAB',
    'Gabon',
    'Africa',
    'Central
Africa',
    267668.00,
    1960,
    1226000,
    50.1,
    5493.00,
    5279.00,
    'Le Gabon',
    'Republic',
    'Omar Bongo',
    902,
    'GA'
  );
INSERT INTO `country`
VALUES (
    'GBR',
    'United Kingdom',
    'Europe',
    'British
Islands',
    242900.00,
    1066,
    59623400,
    77.7,
    1378330.00,
    1296830.00,
    'United Kingdom',
    'Constitutional
Monarchy',
    'Elisabeth II',
    456,
    'GB'
  );
INSERT INTO `country`
VALUES (
    'GEO',
    'Georgia',
    'Asia',
    'Middle
East',
    69700.00,
    1991,
    4968000,
    64.5,
    6064.00,
    5924.00,
    'Sakartvelo',
    'Republic',
    'Eduard Ševardnadze',
    905,
    'GE'
  );
INSERT INTO `country`
VALUES (
    'GHA',
    'Ghana',
    'Africa',
    'Western
Africa',
    238533.00,
    1957,
    20212000,
    57.4,
    7137.00,
    6884.00,
    'Ghana',
    'Republic',
    'John Kufuor',
    910,
    'GH'
  );
INSERT INTO `country`
VALUES (
    'GIB',
    'Gibraltar',
    'Europe',
    'Southern
Europe',
    6.00,
    NULL,
    25000,
    79.0,
    258.00,
    NULL,
    'Gibraltar',
    'Dependent Territory of the UK',
    'Elisabeth II',
    915,
    'GI'
  );
INSERT INTO `country`
VALUES (
    'GIN',
    'Guinea',
    'Africa',
    'Western
Africa',
    245857.00,
    1958,
    7430000,
    45.6,
    2352.00,
    2383.00,
    'Guinée',
    'Republic',
    'Lansana Conté',
    926,
    'GN'
  );
INSERT INTO `country`
VALUES (
    'GLP',
    'Guadeloupe',
    'North
America',
    'Caribbean',
    1705.00,
    NULL,
    456000,
    77.0,
    3501.00,
    NULL,
    'Guadeloupe',
    'Overseas Department of
France',
    'Jacques Chirac',
    919,
    'GP'
  );
INSERT INTO `country`
VALUES (
    'GMB',
    'Gambia',
    'Africa',
    'Western
Africa',
    11295.00,
    1965,
    1305000,
    53.2,
    320.00,
    325.00,
    'The Gambia',
    'Republic',
    'Yahya Jammeh',
    904,
    'GM'
  );
INSERT INTO `country`
VALUES (
    'GNB',
    'Guinea-Bissau',
    'Africa',
    'Western
Africa',
    36125.00,
    1974,
    1213000,
    49.0,
    293.00,
    272.00,
    'Guiné-Bissau',
    'Republic',
    'Kumba Ialá',
    927,
    'GW'
  );
INSERT INTO `country`
VALUES (
    'GNQ',
    'Equatorial Guinea',
    'Africa',
    'Central
Africa',
    28051.00,
    1968,
    453000,
    53.6,
    283.00,
    542.00,
    'Guinea Ecuatorial',
    'Republic',
    'Teodoro Obiang Nguema
Mbasogo',
    2972,
    'GQ'
  );
INSERT INTO `country`
VALUES (
    'GRC',
    'Greece',
    'Europe',
    'Southern
Europe',
    131626.00,
    1830,
    10545700,
    78.4,
    120724.00,
    119946.00,
    'Elláda',
    'Republic',
    'Kostis
Stefanopoulos',
    2401,
    'GR'
  );
INSERT INTO `country`
VALUES (
    'GRD',
    'Grenada',
    'North
America',
    'Caribbean',
    344.00,
    1974,
    94000,
    64.5,
    318.00,
    NULL,
    'Grenada',
    'Constitutional Monarchy',
    'Elisabeth
II',
    916,
    'GD'
  );
INSERT INTO `country`
VALUES (
    'GRL',
    'Greenland',
    'North America',
    'North
America',
    2166090.00,
    NULL,
    56000,
    68.1,
    0.00,
    NULL,
    'Kalaallit Nunaat/Grønland',
    'Part of Denmark',
    'Margrethe
II',
    917,
    'GL'
  );
INSERT INTO `country`
VALUES (
    'GTM',
    'Guatemala',
    'North America',
    'Central
America',
    108889.00,
    1821,
    11385000,
    66.2,
    19008.00,
    17797.00,
    'Guatemala',
    'Republic',
    'Alfonso Portillo
Cabrera',
    922,
    'GT'
  );
INSERT INTO `country`
VALUES (
    'GUF',
    'French Guiana',
    'South America',
    'South
America',
    90000.00,
    NULL,
    181000,
    76.1,
    681.00,
    NULL,
    'Guyane française',
    'Overseas Department of
France',
    'Jacques Chirac',
    3014,
    'GF'
  );
INSERT INTO `country`
VALUES (
    'GUM',
    'Guam',
    'Oceania',
    'Micronesia',
    549.00,
    NULL,
    168000,
    77.8,
    1197.00,
    1136.00,
    'Guam',
    'US Territory',
    'George
W. Bush',
    921,
    'GU'
  );
INSERT INTO `country`
VALUES (
    'GUY',
    'Guyana',
    'South America',
    'South
America',
    214969.00,
    1966,
    861000,
    64.0,
    722.00,
    743.00,
    'Guyana',
    'Republic',
    'Bharrat Jagdeo',
    928,
    'GY'
  );
INSERT INTO `country`
VALUES (
    'HKG',
    'Hong Kong',
    'Asia',
    'Eastern
Asia',
    1075.00,
    NULL,
    6782000,
    79.5,
    166448.00,
    173610.00,
    'Xianggang/Hong Kong',
    'Special Administrative Region
of China',
    'Jiang Zemin',
    937,
    'HK'
  );
INSERT INTO `country`
VALUES (
    'HMD',
    'Heard Island and McDonald
Islands',
    'Antarctica',
    'Antarctica',
    359.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'Heard and McDonald Islands',
    'Territory of
Australia',
    'Elisabeth II',
    NULL,
    'HM'
  );
INSERT INTO `country`
VALUES (
    'HND',
    'Honduras',
    'North America',
    'Central
America',
    112088.00,
    1838,
    6485000,
    69.9,
    5333.00,
    4697.00,
    'Honduras',
    'Republic',
    'Carlos Roberto Flores
Facussé',
    933,
    'HN'
  );
INSERT INTO `country`
VALUES (
    'HRV',
    'Croatia',
    'Europe',
    'Southern
Europe',
    56538.00,
    1991,
    4473000,
    73.7,
    20208.00,
    19300.00,
    'Hrvatska',
    'Republic',
    'Štipe Mesic',
    2409,
    'HR'
  );
INSERT INTO `country`
VALUES (
    'HTI',
    'Haiti',
    'North
America',
    'Caribbean',
    27750.00,
    1804,
    8222000,
    49.2,
    3459.00,
    3107.00,
    'Haïti/Dayti',
    'Republic',
    'Jean-Bertrand
Aristide',
    929,
    'HT'
  );
INSERT INTO `country`
VALUES (
    'HUN',
    'Hungary',
    'Europe',
    'Eastern
Europe',
    93030.00,
    1918,
    10043200,
    71.4,
    48267.00,
    45914.00,
    'Magyarország',
    'Republic',
    'Ferenc Mádl',
    3483,
    'HU'
  );
INSERT INTO `country`
VALUES (
    'IDN',
    'Indonesia',
    'Asia',
    'Southeast
Asia',
    1904569.00,
    1945,
    212107000,
    68.0,
    84982.00,
    215002.00,
    'Indonesia',
    'Republic',
    'Abdurrahman
Wahid',
    939,
    'ID'
  );
INSERT INTO `country`
VALUES (
    'IND',
    'India',
    'Asia',
    'Southern and Central
Asia',
    3287263.00,
    1947,
    1013662000,
    62.5,
    447114.00,
    430572.00,
    'Bharat/India',
    'Federal Republic',
    'Kocheril
Raman Narayanan',
    1109,
    'IN'
  );
INSERT INTO `country`
VALUES (
    'IOT',
    'British Indian Ocean
Territory',
    'Africa',
    'Eastern Africa',
    78.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'British Indian Ocean Territory',
    'Dependent
Territory of the UK',
    'Elisabeth II',
    NULL,
    'IO'
  );
INSERT INTO `country`
VALUES (
    'IRL',
    'Ireland',
    'Europe',
    'British
Islands',
    70273.00,
    1921,
    3775100,
    76.8,
    75921.00,
    73132.00,
    'Ireland/Éire',
    'Republic',
    'Mary McAleese',
    1447,
    'IE'
  );
INSERT INTO `country`
VALUES (
    'IRN',
    'Iran',
    'Asia',
    'Southern and Central
Asia',
    1648195.00,
    1906,
    67702000,
    69.7,
    195746.00,
    160151.00,
    'Iran',
    'Islamic Republic',
    'Ali Mohammad KhatamiArdakani',
    1380,
    'IR'
  );
INSERT INTO `country`
VALUES (
    'IRQ',
    'Iraq',
    'Asia',
    'Middle
East',
    438317.00,
    1932,
    23115000,
    66.5,
    11500.00,
    NULL,
    'Al-´Iraq',
    'Republic',
    'Saddam Hussein al-Takriti',
    1365,
    'IQ'
  );
INSERT INTO `country`
VALUES (
    'ISL',
    'Iceland',
    'Europe',
    'Nordic
Countries',
    103000.00,
    1944,
    279000,
    79.4,
    8255.00,
    7474.00,
    'Ísland',
    'Republic',
    'Ólafur Ragnar Grímsson',
    1449,
    'IS'
  );
INSERT INTO `country`
VALUES (
    'ISR',
    'Israel',
    'Asia',
    'Middle
East',
    21056.00,
    1948,
    6217000,
    78.6,
    97477.00,
    98577.00,
    'Yisra’el/Isra’il',
    'Republic',
    'Moshe Katzav',
    1450,
    'IL'
  );
INSERT INTO `country`
VALUES (
    'ITA',
    'Italy',
    'Europe',
    'Southern
Europe',
    301316.00,
    1861,
    57680000,
    79.0,
    1161755.00,
    1145372.00,
    'Italia',
    'Republic',
    'Carlo Azeglio
Ciampi',
    1464,
    'IT'
  );
INSERT INTO `country`
VALUES (
    'JAM',
    'Jamaica',
    'North
America',
    'Caribbean',
    10990.00,
    1962,
    2583000,
    75.2,
    6871.00,
    6722.00,
    'Jamaica',
    'Constitutional
Monarchy',
    'Elisabeth II',
    1530,
    'JM'
  );
INSERT INTO `country`
VALUES (
    'JOR',
    'Jordan',
    'Asia',
    'Middle
East',
    88946.00,
    1946,
    5083000,
    77.4,
    7526.00,
    7051.00,
    'Al-Urdunn',
    'Constitutional Monarchy',
    'Abdullah
II',
    1786,
    'JO'
  );
INSERT INTO `country`
VALUES (
    'JPN',
    'Japan',
    'Asia',
    'Eastern
Asia',
    377829.00,
    -660,
    126714000,
    80.7,
    3787042.00,
    4192638.00,
    'Nihon/Nippon',
    'Constitutional
Monarchy',
    'Akihito',
    1532,
    'JP'
  );
INSERT INTO `country`
VALUES (
    'KAZ',
    'Kazakstan',
    'Asia',
    'Southern and Central
Asia',
    2724900.00,
    1991,
    16223000,
    63.2,
    24375.00,
    23383.00,
    'Qazaqstan',
    'Republic',
    'Nursultan
Nazarbajev',
    1864,
    'KZ'
  );
INSERT INTO `country`
VALUES (
    'KEN',
    'Kenya',
    'Africa',
    'Eastern
Africa',
    580367.00,
    1963,
    30080000,
    48.0,
    9217.00,
    10241.00,
    'Kenya',
    'Republic',
    'Daniel arap Moi',
    1881,
    'KE'
  );
INSERT INTO `country`
VALUES (
    'KGZ',
    'Kyrgyzstan',
    'Asia',
    'Southern and Central
Asia',
    199900.00,
    1991,
    4699000,
    63.4,
    1626.00,
    1767.00,
    'Kyrgyzstan',
    'Republic',
    'Askar Akajev',
    2253,
    'KG'
  );
INSERT INTO `country`
VALUES (
    'KHM',
    'Cambodia',
    'Asia',
    'Southeast
Asia',
    181035.00,
    1953,
    11168000,
    56.5,
    5121.00,
    5670.00,
    'Kâmpuchéa',
    'Constitutional Monarchy',
    'Norodom
Sihanouk',
    1800,
    'KH'
  );
INSERT INTO `country`
VALUES (
    'KIR',
    'Kiribati',
    'Oceania',
    'Micronesia',
    726.00,
    1979,
    83000,
    59.8,
    40.70,
    NULL,
    'Kiribati',
    'Republic',
    'Teburoro
Tito',
    2256,
    'KI'
  );
INSERT INTO `country`
VALUES (
    'KNA',
    'Saint Kitts and Nevis',
    'North
America',
    'Caribbean',
    261.00,
    1983,
    38000,
    70.7,
    299.00,
    NULL,
    'Saint Kitts and Nevis',
    'Constitutional
Monarchy',
    'Elisabeth II',
    3064,
    'KN'
  );
INSERT INTO `country`
VALUES (
    'KOR',
    'South Korea',
    'Asia',
    'Eastern
Asia',
    99434.00,
    1948,
    46844000,
    74.4,
    320749.00,
    442544.00,
    'Taehan Min’guk (Namhan)',
    'Republic',
    'Kim Daejung',
    2331,
    'KR'
  );
INSERT INTO `country`
VALUES (
    'KWT',
    'Kuwait',
    'Asia',
    'Middle
East',
    17818.00,
    1961,
    1972000,
    76.1,
    27037.00,
    30373.00,
    'Al-Kuwayt',
    'Constitutional Monarchy (Emirate)',
    'Jabir al-
Ahmad al-Jabir al-Sabah',
    2429,
    'KW'
  );
INSERT INTO `country`
VALUES (
    'LAO',
    'Laos',
    'Asia',
    'Southeast
Asia',
    236800.00,
    1953,
    5433000,
    53.1,
    1292.00,
    1746.00,
    'Lao',
    'Republic',
    'Khamtay Siphandone',
    2432,
    'LA'
  );
INSERT INTO `country`
VALUES (
    'LBN',
    'Lebanon',
    'Asia',
    'Middle
East',
    10400.00,
    1941,
    3282000,
    71.3,
    17121.00,
    15129.00,
    'Lubnan',
    'Republic',
    'Émile Lahoud',
    2438,
    'LB'
  );
INSERT INTO `country`
VALUES (
    'LBR',
    'Liberia',
    'Africa',
    'Western
Africa',
    111369.00,
    1847,
    3154000,
    51.0,
    2012.00,
    NULL,
    'Liberia',
    'Republic',
    'Charles Taylor',
    2440,
    'LR'
  );
INSERT INTO `country`
VALUES (
    'LBY',
    'Libyan Arab Jamahiriya',
    'Africa',
    'Northern
Africa',
    1759540.00,
    1951,
    5605000,
    75.5,
    44806.00,
    40562.00,
    'Libiya',
    'Socialistic State',
    'Muammar alQadhafi',
    2441,
    'LY'
  );
INSERT INTO `country`
VALUES (
    'LCA',
    'Saint Lucia',
    'North
America',
    'Caribbean',
    622.00,
    1979,
    154000,
    72.3,
    571.00,
    NULL,
    'Saint Lucia',
    'Constitutional Monarchy',
    'Elisabeth
II',
    3065,
    'LC'
  );
INSERT INTO `country`
VALUES (
    'LIE',
    'Liechtenstein',
    'Europe',
    'Western
Europe',
    160.00,
    1806,
    32300,
    78.8,
    1119.00,
    1084.00,
    'Liechtenstein',
    'Constitutional Monarchy',
    'Hans-Adam
II',
    2446,
    'LI'
  );
INSERT INTO `country`
VALUES (
    'LKA',
    'Sri Lanka',
    'Asia',
    'Southern and Central
Asia',
    65610.00,
    1948,
    18827000,
    71.8,
    15706.00,
    15091.00,
    'Sri Lanka/Ilankai',
    'Republic',
    'Chandrika
Kumaratunga',
    3217,
    'LK'
  );
INSERT INTO `country`
VALUES (
    'LSO',
    'Lesotho',
    'Africa',
    'Southern
Africa',
    30355.00,
    1966,
    2153000,
    50.8,
    1061.00,
    1161.00,
    'Lesotho',
    'Constitutional Monarchy',
    'Letsie III',
    2437,
    'LS'
  );
INSERT INTO `country`
VALUES (
    'LTU',
    'Lithuania',
    'Europe',
    'Baltic
Countries',
    65301.00,
    1991,
    3698500,
    69.1,
    10692.00,
    9585.00,
    'Lietuva',
    'Republic',
    'Valdas Adamkus',
    2447,
    'LT'
  );
INSERT INTO `country`
VALUES (
    'LUX',
    'Luxembourg',
    'Europe',
    'Western
Europe',
    2586.00,
    1867,
    435700,
    77.1,
    16321.00,
    15519.00,
    'Luxembourg/Lëtzebuerg',
    'Constitutional
Monarchy',
    'Henri',
    2452,
    'LU'
  );
INSERT INTO `country`
VALUES (
    'LVA',
    'Latvia',
    'Europe',
    'Baltic
Countries',
    64589.00,
    1991,
    2424200,
    68.4,
    6398.00,
    5639.00,
    'Latvija',
    'Republic',
    'Vaira Vike-Freiberga',
    2434,
    'LV'
  );
INSERT INTO `country`
VALUES (
    'MAC',
    'Macao',
    'Asia',
    'Eastern
Asia',
    18.00,
    NULL,
    473000,
    81.6,
    5749.00,
    5940.00,
    'Macau/Aomen',
    'Special Administrative Region of China',
    'Jiang
Zemin',
    2454,
    'MO'
  );
INSERT INTO `country`
VALUES (
    'MAR',
    'Morocco',
    'Africa',
    'Northern
Africa',
    446550.00,
    1956,
    28351000,
    69.1,
    36124.00,
    33514.00,
    'Al-Maghrib',
    'Constitutional Monarchy',
    'Mohammed
VI',
    2486,
    'MA'
  );
INSERT INTO `country`
VALUES (
    'MCO',
    'Monaco',
    'Europe',
    'Western
Europe',
    1.50,
    1861,
    34000,
    78.8,
    776.00,
    NULL,
    'Monaco',
    'Constitutional Monarchy',
    'Rainier III',
    2695,
    'MC'
  );
INSERT INTO `country`
VALUES (
    'MDA',
    'Moldova',
    'Europe',
    'Eastern
Europe',
    33851.00,
    1991,
    4380000,
    64.5,
    1579.00,
    1872.00,
    'Moldova',
    'Republic',
    'Vladimir Voronin',
    2690,
    'MD'
  );
INSERT INTO `country`
VALUES (
    'MDG',
    'Madagascar',
    'Africa',
    'Eastern
Africa',
    587041.00,
    1960,
    15942000,
    55.0,
    3750.00,
    3545.00,
    'Madagasikara/Madagascar',
    'Federal Republic',
    'Didier
Ratsiraka',
    2455,
    'MG'
  );
INSERT INTO `country`
VALUES (
    'MDV',
    'Maldives',
    'Asia',
    'Southern and Central
Asia',
    298.00,
    1965,
    286000,
    62.2,
    199.00,
    NULL,
    'Dhivehi Raajje/Maldives',
    'Republic',
    'Maumoon Abdul
Gayoom',
    2463,
    'MV'
  );
INSERT INTO `country`
VALUES (
    'MEX',
    'Mexico',
    'North America',
    'Central
America',
    1958201.00,
    1810,
    98881000,
    71.5,
    414972.00,
    401461.00,
    'México',
    'Federal Republic',
    'Vicente Fox
Quesada',
    2515,
    'MX'
  );
INSERT INTO `country`
VALUES (
    'MHL',
    'Marshall
Islands',
    'Oceania',
    'Micronesia',
    181.00,
    1990,
    64000,
    65.5,
    97.00,
    NULL,
    'Marshall Islands/Majol',
    'Republic',
    'Kessai
Note',
    2507,
    'MH'
  );
INSERT INTO `country`
VALUES (
    'MKD',
    'Macedonia',
    'Europe',
    'Southern
Europe',
    25713.00,
    1991,
    2024000,
    73.8,
    1694.00,
    1915.00,
    'Makedonija',
    'Republic',
    'Boris Trajkovski',
    2460,
    'MK'
  );
INSERT INTO `country`
VALUES (
    'MLI',
    'Mali',
    'Africa',
    'Western
Africa',
    1240192.00,
    1960,
    11234000,
    46.7,
    2642.00,
    2453.00,
    'Mali',
    'Republic',
    'Alpha Oumar Konaré',
    2482,
    'ML'
  );
INSERT INTO `country`
VALUES (
    'MLT',
    'Malta',
    'Europe',
    'Southern
Europe',
    316.00,
    1964,
    380200,
    77.9,
    3512.00,
    3338.00,
    'Malta',
    'Republic',
    'Guido de Marco',
    2484,
    'MT'
  );
INSERT INTO `country`
VALUES (
    'MMR',
    'Myanmar',
    'Asia',
    'Southeast
Asia',
    676578.00,
    1948,
    45611000,
    54.9,
    180375.00,
    171028.00,
    'Myanma Pye',
    'Republic',
    'kenraali Than
Shwe',
    2710,
    'MM'
  );
INSERT INTO `country`
VALUES (
    'MNG',
    'Mongolia',
    'Asia',
    'Eastern
Asia',
    1566500.00,
    1921,
    2662000,
    67.3,
    1043.00,
    933.00,
    'Mongol Uls',
    'Republic',
    'Natsagiin Bagabandi',
    2696,
    'MN'
  );
INSERT INTO `country`
VALUES (
    'MNP',
    'Northern Mariana
Islands',
    'Oceania',
    'Micronesia',
    464.00,
    NULL,
    78000,
    75.5,
    0.00,
    NULL,
    'Northern Mariana Islands',
    'Commonwealth
of the US',
    'George W. Bush',
    2913,
    'MP'
  );
INSERT INTO `country`
VALUES (
    'MOZ',
    'Mozambique',
    'Africa',
    'Eastern
Africa',
    801590.00,
    1975,
    19680000,
    37.5,
    2891.00,
    2711.00,
    'Moçambique',
    'Republic',
    'Joaquím A.
Chissano',
    2698,
    'MZ'
  );
INSERT INTO `country`
VALUES (
    'MRT',
    'Mauritania',
    'Africa',
    'Western
Africa',
    1025520.00,
    1960,
    2670000,
    50.8,
    998.00,
    1081.00,
    'Muritaniya/Mauritanie',
    'Republic',
    'Maaouiya Ould Sid
´Ahmad Taya',
    2509,
    'MR'
  );
INSERT INTO `country`
VALUES (
    'MSR',
    'Montserrat',
    'North
America',
    'Caribbean',
    102.00,
    NULL,
    11000,
    78.0,
    109.00,
    NULL,
    'Montserrat',
    'Dependent Territory of the
UK',
    'Elisabeth II',
    2697,
    'MS'
  );
INSERT INTO `country`
VALUES (
    'MTQ',
    'Martinique',
    'North
America',
    'Caribbean',
    1102.00,
    NULL,
    395000,
    78.3,
    2731.00,
    2559.00,
    'Martinique',
    'Overseas Department of
France',
    'Jacques Chirac',
    2508,
    'MQ'
  );
INSERT INTO `country`
VALUES (
    'MUS',
    'Mauritius',
    'Africa',
    'Eastern
Africa',
    2040.00,
    1968,
    1158000,
    71.0,
    4251.00,
    4186.00,
    'Mauritius',
    'Republic',
    'Cassam Uteem',
    2511,
    'MU'
  );
INSERT INTO `country`
VALUES (
    'MWI',
    'Malawi',
    'Africa',
    'Eastern
Africa',
    118484.00,
    1964,
    10925000,
    37.6,
    1687.00,
    2527.00,
    'Malawi',
    'Republic',
    'Bakili Muluzi',
    2462,
    'MW'
  );
INSERT INTO `country`
VALUES (
    'MYS',
    'Malaysia',
    'Asia',
    'Southeast
Asia',
    329758.00,
    1957,
    22244000,
    70.8,
    69213.00,
    97884.00,
    'Malaysia',
    'Constitutional Monarchy,
Federation',
    'Salahuddin Abdul Aziz Shah Alhaj',
    2464,
    'MY'
  );
INSERT INTO `country`
VALUES (
    'MYT',
    'Mayotte',
    'Africa',
    'Eastern Africa',
    373.00,
    NULL,
    149000,
    59.5,
    0.00,
    NULL,
    'Mayotte',
    'Territorial Collectivity of
France',
    'Jacques Chirac',
    2514,
    'YT'
  );
INSERT INTO `country`
VALUES (
    'NAM',
    'Namibia',
    'Africa',
    'Southern
Africa',
    824292.00,
    1990,
    1726000,
    42.5,
    3101.00,
    3384.00,
    'Namibia',
    'Republic',
    'Sam Nujoma',
    2726,
    'NA'
  );
INSERT INTO `country`
VALUES (
    'NCL',
    'New
Caledonia',
    'Oceania',
    'Melanesia',
    18575.00,
    NULL,
    214000,
    72.8,
    3563.00,
    NULL,
    'NouvelleCalédonie',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    3493,
    'NC'
  );
INSERT INTO `country`
VALUES (
    'NER',
    'Niger',
    'Africa',
    'Western
Africa',
    1267000.00,
    1960,
    10730000,
    41.3,
    1706.00,
    1580.00,
    'Niger',
    'Republic',
    'Mamadou Tandja',
    2738,
    'NE'
  );
INSERT INTO `country`
VALUES (
    'NFK',
    'Norfolk Island',
    'Oceania',
    'Australia and New
Zealand',
    36.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Norfolk Island',
    'Territory of Australia',
    'Elisabeth II',
    2806,
    'NF'
  );
INSERT INTO `country`
VALUES (
    'NGA',
    'Nigeria',
    'Africa',
    'Western
Africa',
    923768.00,
    1960,
    111506000,
    51.6,
    65707.00,
    58623.00,
    'Nigeria',
    'Federal Republic',
    'Olusegun
Obasanjo',
    2754,
    'NG'
  );
INSERT INTO `country`
VALUES (
    'NIC',
    'Nicaragua',
    'North America',
    'Central
America',
    130000.00,
    1838,
    5074000,
    68.7,
    1988.00,
    2023.00,
    'Nicaragua',
    'Republic',
    'Arnoldo Alemán
Lacayo',
    2734,
    'NI'
  );
INSERT INTO `country`
VALUES (
    'NIU',
    'Niue',
    'Oceania',
    'Polynesia',
    260.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Niue',
    'Nonmetropolitan Territory of New
Zealand',
    'Elisabeth II',
    2805,
    'NU'
  );
INSERT INTO `country`
VALUES (
    'NLD',
    'Netherlands',
    'Europe',
    'Western
Europe',
    41526.00,
    1581,
    15864000,
    78.3,
    371362.00,
    360478.00,
    'Nederland',
    'Constitutional
Monarchy',
    'Beatrix',
    5,
    'NL'
  );
INSERT INTO `country`
VALUES (
    'NOR',
    'Norway',
    'Europe',
    'Nordic
Countries',
    323877.00,
    1905,
    4478500,
    78.7,
    145895.00,
    153370.00,
    'Norge',
    'Constitutional Monarchy',
    'Harald
V',
    2807,
    'NO'
  );
INSERT INTO `country`
VALUES (
    'NPL',
    'Nepal',
    'Asia',
    'Southern and Central
Asia',
    147181.00,
    1769,
    23930000,
    57.8,
    4768.00,
    4837.00,
    'Nepal',
    'Constitutional Monarchy',
    'Gyanendra Bir
Bikram',
    2729,
    'NP'
  );
INSERT INTO `country`
VALUES (
    'NRU',
    'Nauru',
    'Oceania',
    'Micronesia',
    21.00,
    1968,
    12000,
    60.8,
    197.00,
    NULL,
    'Naoero/Nauru',
    'Republic',
    'Bernard
Dowiyogo',
    2728,
    'NR'
  );
INSERT INTO `country`
VALUES (
    'NZL',
    'New Zealand',
    'Oceania',
    'Australia and New
Zealand',
    270534.00,
    1907,
    3862000,
    77.8,
    54669.00,
    64960.00,
    'New Zealand/Aotearoa',
    'Constitutional
Monarchy',
    'Elisabeth II',
    3499,
    'NZ'
  );
INSERT INTO `country`
VALUES (
    'OMN',
    'Oman',
    'Asia',
    'Middle
East',
    309500.00,
    1951,
    2542000,
    71.8,
    16904.00,
    16153.00,
    '´Uman',
    'Monarchy (Sultanate)',
    'Qabus ibn Sa
´id',
    2821,
    'OM'
  );
INSERT INTO `country`
VALUES (
    'PAK',
    'Pakistan',
    'Asia',
    'Southern and Central
Asia',
    796095.00,
    1947,
    156483000,
    61.1,
    61289.00,
    58549.00,
    'Pakistan',
    'Republic',
    'Mohammad Rafiq
Tarar',
    2831,
    'PK'
  );
INSERT INTO `country`
VALUES (
    'PAN',
    'Panama',
    'North America',
    'Central
America',
    75517.00,
    1903,
    2856000,
    75.5,
    9131.00,
    8700.00,
    'Panamá',
    'Republic',
    'Mireya Elisa Moscoso
Rodríguez',
    2882,
    'PA'
  );
INSERT INTO `country`
VALUES (
    'PCN',
    'Pitcairn',
    'Oceania',
    'Polynesia',
    49.00,
    NULL,
    50,
    NULL,
    0.00,
    NULL,
    'Pitcairn',
    'Dependent Territory of the
UK',
    'Elisabeth II',
    2912,
    'PN'
  );
INSERT INTO `country`
VALUES (
    'PER',
    'Peru',
    'South America',
    'South
America',
    1285216.00,
    1821,
    25662000,
    70.0,
    64140.00,
    65186.00,
    'Perú/Piruw',
    'Republic',
    'Valentin Paniagua
Corazao',
    2890,
    'PE'
  );
INSERT INTO `country`
VALUES (
    'PHL',
    'Philippines',
    'Asia',
    'Southeast
Asia',
    300000.00,
    1946,
    75967000,
    67.5,
    65107.00,
    82239.00,
    'Pilipinas',
    'Republic',
    'Gloria MacapagalArroyo',
    766,
    'PH'
  );
INSERT INTO `country`
VALUES (
    'PLW',
    'Palau',
    'Oceania',
    'Micronesia',
    459.00,
    1994,
    19000,
    68.6,
    105.00,
    NULL,
    'Belau/Palau',
    'Republic',
    'Kuniwo
Nakamura',
    2881,
    'PW'
  );
INSERT INTO `country`
VALUES (
    'PNG',
    'Papua New
Guinea',
    'Oceania',
    'Melanesia',
    462840.00,
    1975,
    4807000,
    63.1,
    4988.00,
    6328.00,
    'Papua New Guinea/Papua
Niugini',
    'Constitutional Monarchy',
    'Elisabeth II',
    2884,
    'PG'
  );
INSERT INTO `country`
VALUES (
    'POL',
    'Poland',
    'Europe',
    'Eastern
Europe',
    323250.00,
    1918,
    38653600,
    73.2,
    151697.00,
    135636.00,
    'Polska',
    'Republic',
    'Aleksander
Kwasniewski',
    2928,
    'PL'
  );
INSERT INTO `country`
VALUES (
    'PRI',
    'Puerto Rico',
    'North
America',
    'Caribbean',
    8875.00,
    NULL,
    3869000,
    75.6,
    34100.00,
    32100.00,
    'Puerto Rico',
    'Commonwealth of the
US',
    'George W. Bush',
    2919,
    'PR'
  );
INSERT INTO `country`
VALUES (
    'PRK',
    'North Korea',
    'Asia',
    'Eastern
Asia',
    120538.00,
    1948,
    24039000,
    70.7,
    5332.00,
    NULL,
    'Choson Minjujuui In´min Konghwaguk
(Bukhan)',
    'Socialistic Republic',
    'Kim Jong-il',
    2318,
    'KP'
  );
INSERT INTO `country`
VALUES (
    'PRT',
    'Portugal',
    'Europe',
    'Southern
Europe',
    91982.00,
    1143,
    9997600,
    75.8,
    105954.00,
    102133.00,
    'Portugal',
    'Republic',
    'Jorge Sampãio',
    2914,
    'PT'
  );
INSERT INTO `country`
VALUES (
    'PRY',
    'Paraguay',
    'South America',
    'South
America',
    406752.00,
    1811,
    5496000,
    73.7,
    8444.00,
    9555.00,
    'Paraguay',
    'Republic',
    'Luis Ángel González
Macchi',
    2885,
    'PY'
  );
INSERT INTO `country`
VALUES (
    'PSE',
    'Palestine',
    'Asia',
    'Middle
East',
    6257.00,
    NULL,
    3101000,
    71.4,
    4173.00,
    NULL,
    'Filastin',
    'Autonomous Area',
    'Yasser (Yasir) Arafat',
    4074,
    'PS'
  );
INSERT INTO `country`
VALUES (
    'PYF',
    'French
Polynesia',
    'Oceania',
    'Polynesia',
    4000.00,
    NULL,
    235000,
    74.8,
    818.00,
    781.00,
    'Polynésie
française',
    'Nonmetropolitan Territory of France',
    'Jacques Chirac',
    3016,
    'PF'
  );
INSERT INTO `country`
VALUES (
    'QAT',
    'Qatar',
    'Asia',
    'Middle East',
    11000.00,
    1971,
    599000,
    72.4,
    9472.00,
    8920.00,
    'Qatar',
    'Monarchy',
    'Hamad ibn
Khalifa al-Thani',
    2973,
    'QA'
  );
INSERT INTO `country`
VALUES (
    'REU',
    'Réunion',
    'Africa',
    'Eastern
Africa',
    2510.00,
    NULL,
    699000,
    72.7,
    8287.00,
    7988.00,
    'Réunion',
    'Overseas Department of France',
    'Jacques
Chirac',
    3017,
    'RE'
  );
INSERT INTO `country`
VALUES (
    'ROM',
    'Romania',
    'Europe',
    'Eastern
Europe',
    238391.00,
    1878,
    22455500,
    69.9,
    38158.00,
    34843.00,
    'România',
    'Republic',
    'Ion Iliescu',
    3018,
    'RO'
  );
INSERT INTO `country`
VALUES (
    'RUS',
    'Russian Federation',
    'Europe',
    'Eastern
Europe',
    17075400.00,
    1991,
    146934000,
    67.2,
    276608.00,
    442989.00,
    'Rossija',
    'Federal Republic',
    'Vladimir
Putin',
    3580,
    'RU'
  );
INSERT INTO `country`
VALUES (
    'RWA',
    'Rwanda',
    'Africa',
    'Eastern
Africa',
    26338.00,
    1962,
    7733000,
    39.3,
    2036.00,
    1863.00,
    'Rwanda/Urwanda',
    'Republic',
    'Paul Kagame',
    3047,
    'RW'
  );
INSERT INTO `country`
VALUES (
    'SAU',
    'Saudi Arabia',
    'Asia',
    'Middle
East',
    2149690.00,
    1932,
    21607000,
    67.8,
    137635.00,
    146171.00,
    'Al-´Arabiya as-Sa´udiya',
    'Monarchy',
    'Fahd ibn
Abdul-Aziz al-Sa´ud',
    3173,
    'SA'
  );
INSERT INTO `country`
VALUES (
    'SDN',
    'Sudan',
    'Africa',
    'Northern
Africa',
    2505813.00,
    1956,
    29490000,
    56.6,
    10162.00,
    NULL,
    'As-Sudan',
    'Islamic Republic',
    'Omar Hassan Ahmad alBashir',
    3225,
    'SD'
  );
INSERT INTO `country`
VALUES (
    'SEN',
    'Senegal',
    'Africa',
    'Western
Africa',
    196722.00,
    1960,
    9481000,
    62.2,
    4787.00,
    4542.00,
    'Sénégal/Sounougal',
    'Republic',
    'Abdoulaye
Wade',
    3198,
    'SN'
  );
INSERT INTO `country`
VALUES (
    'SGP',
    'Singapore',
    'Asia',
    'Southeast
Asia',
    618.00,
    1965,
    3567000,
    80.1,
    86503.00,
    96318.00,
    'Singapore/Singapura/Xinjiapo/Singapur',
    'Republic',
    'Sellapan
Rama Nathan',
    3208,
    'SG'
  );
INSERT INTO `country`
VALUES (
    'SGS',
    'South Georgia and the South Sandwich
Islands',
    'Antarctica',
    'Antarctica',
    3903.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'South Georgia and the South Sandwich
Islands',
    'Dependent Territory of the UK',
    'Elisabeth II',
    NULL,
    'GS'
  );
INSERT INTO `country`
VALUES (
    'SHN',
    'Saint
Helena',
    'Africa',
    'Western Africa',
    314.00,
    NULL,
    6000,
    76.8,
    0.00,
    NULL,
    'Saint Helena',
    'Dependent Territory of the
UK',
    'Elisabeth II',
    3063,
    'SH'
  );
INSERT INTO `country`
VALUES (
    'SJM',
    'Svalbard and Jan Mayen',
    'Europe',
    'Nordic
Countries',
    62422.00,
    NULL,
    3200,
    NULL,
    0.00,
    NULL,
    'Svalbard og Jan Mayen',
    'Dependent Territory of
Norway',
    'Harald V',
    938,
    'SJ'
  );
INSERT INTO `country`
VALUES (
    'SLB',
    'Solomon
Islands',
    'Oceania',
    'Melanesia',
    28896.00,
    1978,
    444000,
    71.3,
    182.00,
    220.00,
    'Solomon Islands',
    'Constitutional
Monarchy',
    'Elisabeth II',
    3161,
    'SB'
  );
INSERT INTO `country`
VALUES (
    'SLE',
    'Sierra Leone',
    'Africa',
    'Western
Africa',
    71740.00,
    1961,
    4854000,
    45.3,
    746.00,
    858.00,
    'Sierra Leone',
    'Republic',
    'Ahmed Tejan Kabbah',
    3207,
    'SL'
  );
INSERT INTO `country`
VALUES (
    'SLV',
    'El Salvador',
    'North America',
    'Central
America',
    21041.00,
    1841,
    6276000,
    69.7,
    11863.00,
    11203.00,
    'El Salvador',
    'Republic',
    'Francisco Guillermo Flores
Pérez',
    645,
    'SV'
  );
INSERT INTO `country`
VALUES (
    'SMR',
    'San Marino',
    'Europe',
    'Southern
Europe',
    61.00,
    885,
    27000,
    81.1,
    510.00,
    NULL,
    'San Marino',
    'Republic',
    NULL,
    3171,
    'SM'
  );
INSERT INTO `country`
VALUES (
    'SOM',
    'Somalia',
    'Africa',
    'Eastern
Africa',
    637657.00,
    1960,
    10097000,
    46.2,
    935.00,
    NULL,
    'Soomaaliya',
    'Republic',
    'Abdiqassim Salad
Hassan',
    3214,
    'SO'
  );
INSERT INTO `country`
VALUES (
    'SPM',
    'Saint Pierre and Miquelon',
    'North America',
    'North
America',
    242.00,
    NULL,
    7000,
    77.6,
    0.00,
    NULL,
    'Saint-Pierre-et-Miquelon',
    'Territorial Collectivity of
France',
    'Jacques Chirac',
    3067,
    'PM'
  );
INSERT INTO `country`
VALUES (
    'STP',
    'Sao Tome and
Principe',
    'Africa',
    'Central Africa',
    964.00,
    1975,
    147000,
    65.3,
    6.00,
    NULL,
    'São Tomé e Príncipe',
    'Republic',
    'Miguel
Trovoada',
    3172,
    'ST'
  );
INSERT INTO `country`
VALUES (
    'SUR',
    'Suriname',
    'South America',
    'South
America',
    163265.00,
    1975,
    417000,
    71.4,
    870.00,
    706.00,
    'Suriname',
    'Republic',
    'Ronald Venetiaan',
    3243,
    'SR'
  );
INSERT INTO `country`
VALUES (
    'SVK',
    'Slovakia',
    'Europe',
    'Eastern
Europe',
    49012.00,
    1993,
    5398700,
    73.7,
    20594.00,
    19452.00,
    'Slovensko',
    'Republic',
    'Rudolf Schuster',
    3209,
    'SK'
  );
INSERT INTO `country`
VALUES (
    'SVN',
    'Slovenia',
    'Europe',
    'Southern
Europe',
    20256.00,
    1991,
    1987800,
    74.9,
    19756.00,
    18202.00,
    'Slovenija',
    'Republic',
    'Milan Kucan',
    3212,
    'SI'
  );
INSERT INTO `country`
VALUES (
    'SWE',
    'Sweden',
    'Europe',
    'Nordic
Countries',
    449964.00,
    836,
    8861400,
    79.6,
    226492.00,
    227757.00,
    'Sverige',
    'Constitutional Monarchy',
    'Carl XVI
Gustaf',
    3048,
    'SE'
  );
INSERT INTO `country`
VALUES (
    'SWZ',
    'Swaziland',
    'Africa',
    'Southern
Africa',
    17364.00,
    1968,
    1008000,
    40.4,
    1206.00,
    1312.00,
    'kaNgwane',
    'Monarchy',
    'Mswati III',
    3244,
    'SZ'
  );
INSERT INTO `country`
VALUES (
    'SYC',
    'Seychelles',
    'Africa',
    'Eastern
Africa',
    455.00,
    1976,
    77000,
    70.4,
    536.00,
    539.00,
    'Sesel/Seychelles',
    'Republic',
    'France-Albert René',
    3206,
    'SC'
  );
INSERT INTO `country`
VALUES (
    'SYR',
    'Syria',
    'Asia',
    'Middle
East',
    185180.00,
    1941,
    16125000,
    68.5,
    65984.00,
    64926.00,
    'Suriya',
    'Republic',
    'Bashar al-Assad',
    3250,
    'SY'
  );
INSERT INTO `country`
VALUES (
    'TCA',
    'Turks and Caicos Islands',
    'North
America',
    'Caribbean',
    430.00,
    NULL,
    17000,
    73.3,
    96.00,
    NULL,
    'The Turks and Caicos Islands',
    'Dependent Territory
of the UK',
    'Elisabeth II',
    3423,
    'TC'
  );
INSERT INTO `country`
VALUES (
    'TCD',
    'Chad',
    'Africa',
    'Central
Africa',
    1284000.00,
    1960,
    7651000,
    50.5,
    1208.00,
    1102.00,
    'Tchad/Tshad',
    'Republic',
    'Idriss Déby',
    3337,
    'TD'
  );
INSERT INTO `country`
VALUES (
    'TGO',
    'Togo',
    'Africa',
    'Western
Africa',
    56785.00,
    1960,
    4629000,
    54.7,
    1449.00,
    1400.00,
    'Togo',
    'Republic',
    'Gnassingbé Eyadéma',
    3332,
    'TG'
  );
INSERT INTO `country`
VALUES (
    'THA',
    'Thailand',
    'Asia',
    'Southeast
Asia',
    513115.00,
    1350,
    61399000,
    68.6,
    116416.00,
    153907.00,
    'Prathet Thai',
    'Constitutional Monarchy',
    'Bhumibol
Adulyadej',
    3320,
    'TH'
  );
INSERT INTO `country`
VALUES (
    'TJK',
    'Tajikistan',
    'Asia',
    'Southern and Central
Asia',
    143100.00,
    1991,
    6188000,
    64.1,
    1990.00,
    1056.00,
    'Toçikiston',
    'Republic',
    'Emomali Rahmonov',
    3261,
    'TJ'
  );
INSERT INTO `country`
VALUES (
    'TKL',
    'Tokelau',
    'Oceania',
    'Polynesia',
    12.00,
    NULL,
    2000,
    NULL,
    0.00,
    NULL,
    'Tokelau',
    'Nonmetropolitan Territory of
New Zealand',
    'Elisabeth II',
    3333,
    'TK'
  );
INSERT INTO `country`
VALUES (
    'TKM',
    'Turkmenistan',
    'Asia',
    'Southern
and Central Asia',
    488100.00,
    1991,
    4459000,
    60.9,
    4397.00,
    2000.00,
    'Türkmenostan',
    'Republic',
    'Saparmurad
Nijazov',
    3419,
    'TM'
  );
INSERT INTO `country`
VALUES (
    'TMP',
    'East Timor',
    'Asia',
    'Southeast
Asia',
    14874.00,
    NULL,
    885000,
    46.0,
    0.00,
    NULL,
    'Timor Timur',
    'Administrated by the UN',
    'José Alexandre
Gusmão',
    1522,
    'TP'
  );
INSERT INTO `country`
VALUES (
    'TON',
    'Tonga',
    'Oceania',
    'Polynesia',
    650.00,
    1970,
    99000,
    67.9,
    146.00,
    170.00,
    'Tonga',
    'Monarchy',
    'Taufa\'ahau
Tupou IV',
    3334,
    'TO'
  );
INSERT INTO `country`
VALUES (
    'TTO',
    'Trinidad and Tobago',
    'North
America',
    'Caribbean',
    5130.00,
    1962,
    1295000,
    68.0,
    6232.00,
    5867.00,
    'Trinidad and Tobago',
    'Republic',
    'Arthur N. R.
Robinson',
    3336,
    'TT'
  );
INSERT INTO `country`
VALUES (
    'TUN',
    'Tunisia',
    'Africa',
    'Northern
Africa',
    163610.00,
    1956,
    9586000,
    73.7,
    20026.00,
    18898.00,
    'Tunis/Tunisie',
    'Republic',
    'Zine al-Abidine Ben
Ali',
    3349,
    'TN'
  );
INSERT INTO `country`
VALUES (
    'TUR',
    'Turkey',
    'Asia',
    'Middle
East',
    774815.00,
    1923,
    66591000,
    71.0,
    210721.00,
    189122.00,
    'Türkiye',
    'Republic',
    'Ahmet Necdet
Sezer',
    3358,
    'TR'
  );
INSERT INTO `country`
VALUES (
    'TUV',
    'Tuvalu',
    'Oceania',
    'Polynesia',
    26.00,
    1978,
    12000,
    66.3,
    6.00,
    NULL,
    'Tuvalu',
    'Constitutional
Monarchy',
    'Elisabeth II',
    3424,
    'TV'
  );
INSERT INTO `country`
VALUES (
    'TWN',
    'Taiwan',
    'Asia',
    'Eastern
Asia',
    36188.00,
    1945,
    22256000,
    76.4,
    256254.00,
    263451.00,
    'T’ai-wan',
    'Republic',
    'Chen Shui-bian',
    3263,
    'TW'
  );
INSERT INTO `country`
VALUES (
    'TZA',
    'Tanzania',
    'Africa',
    'Eastern
Africa',
    883749.00,
    1961,
    33517000,
    52.3,
    8005.00,
    7388.00,
    'Tanzania',
    'Republic',
    'Benjamin William
Mkapa',
    3306,
    'TZ'
  );
INSERT INTO `country`
VALUES (
    'UGA',
    'Uganda',
    'Africa',
    'Eastern
Africa',
    241038.00,
    1962,
    21778000,
    42.9,
    6313.00,
    6887.00,
    'Uganda',
    'Republic',
    'Yoweri Museveni',
    3425,
    'UG'
  );
INSERT INTO `country`
VALUES (
    'UKR',
    'Ukraine',
    'Europe',
    'Eastern
Europe',
    603700.00,
    1991,
    50456000,
    66.0,
    42168.00,
    49677.00,
    'Ukrajina',
    'Republic',
    'Leonid Kutšma',
    3426,
    'UA'
  );
INSERT INTO `country`
VALUES (
    'UMI',
    'United States Minor Outlying
Islands',
    'Oceania',
    'Micronesia/Caribbean',
    16.00,
    NULL,
    0,
    NULL,
    0.00,
    NULL,
    'United States Minor Outlying
Islands',
    'Dependent Territory of the US',
    'George W. Bush',
    NULL,
    'UM'
  );
INSERT INTO `country`
VALUES (
    'URY',
    'Uruguay',
    'South America',
    'South
America',
    175016.00,
    1828,
    3337000,
    75.2,
    20831.00,
    19967.00,
    'Uruguay',
    'Republic',
    'Jorge Batlle
Ibáñez',
    3492,
    'UY'
  );
INSERT INTO `country`
VALUES (
    'USA',
    'United States',
    'North America',
    'North
America',
    9363520.00,
    1776,
    278357000,
    77.1,
    8510700.00,
    8110900.00,
    'United States',
    'Federal Republic',
    'George
W. Bush',
    3813,
    'US'
  );
INSERT INTO `country`
VALUES (
    'UZB',
    'Uzbekistan',
    'Asia',
    'Southern and Central
Asia',
    447400.00,
    1991,
    24318000,
    63.7,
    14194.00,
    21300.00,
    'Uzbekiston',
    'Republic',
    'Islam Karimov',
    3503,
    'UZ'
  );
INSERT INTO `country`
VALUES (
    'VAT',
    'Holy See (Vatican City State)',
    'Europe',
    'Southern
Europe',
    0.40,
    1929,
    1000,
    NULL,
    9.00,
    NULL,
    'Santa Sede/Città del Vaticano',
    'Independent Church State',
    'Johannes
Paavali II',
    3538,
    'VA'
  );
INSERT INTO `country`
VALUES (
    'VCT',
    'Saint Vincent and the Grenadines',
    'North
America',
    'Caribbean',
    388.00,
    1979,
    114000,
    72.3,
    285.00,
    NULL,
    'Saint Vincent and the Grenadines',
    'Constitutional
Monarchy',
    'Elisabeth II',
    3066,
    'VC'
  );
INSERT INTO `country`
VALUES (
    'VEN',
    'Venezuela',
    'South America',
    'South
America',
    912050.00,
    1811,
    24170000,
    73.1,
    95023.00,
    88434.00,
    'Venezuela',
    'Federal Republic',
    'Hugo Chávez
Frías',
    3539,
    'VE'
  );
INSERT INTO `country`
VALUES (
    'VGB',
    'Virgin Islands, British',
    'North
America',
    'Caribbean',
    151.00,
    NULL,
    21000,
    75.4,
    612.00,
    573.00,
    'British Virgin Islands',
    'Dependent Territory of the
UK',
    'Elisabeth II',
    537,
    'VG'
  );
INSERT INTO `country`
VALUES (
    'VIR',
    'Virgin Islands, U.S.',
    'North
America',
    'Caribbean',
    347.00,
    NULL,
    93000,
    78.1,
    0.00,
    NULL,
    'Virgin Islands of the United States',
    'US
Territory',
    'George W. Bush',
    4067,
    'VI'
  );
INSERT INTO `country`
VALUES (
    'VNM',
    'Vietnam',
    'Asia',
    'Southeast
Asia',
    331689.00,
    1945,
    79832000,
    69.3,
    21929.00,
    22834.00,
    'Viêt Nam',
    'Socialistic Republic',
    'Trân Duc
Luong',
    3770,
    'VN'
  );
INSERT INTO `country`
VALUES (
    'VUT',
    'Vanuatu',
    'Oceania',
    'Melanesia',
    12189.00,
    1980,
    190000,
    60.6,
    261.00,
    246.00,
    'Vanuatu',
    'Republic',
    'John
Bani',
    3537,
    'VU'
  );
INSERT INTO `country`
VALUES (
    'WLF',
    'Wallis and
Futuna',
    'Oceania',
    'Polynesia',
    200.00,
    NULL,
    15000,
    NULL,
    0.00,
    NULL,
    'Wallis-et-Futuna',
    'Nonmetropolitan Territory
of France',
    'Jacques Chirac',
    3536,
    'WF'
  );
INSERT INTO `country`
VALUES (
    'WSM',
    'Samoa',
    'Oceania',
    'Polynesia',
    2831.00,
    1962,
    180000,
    69.2,
    141.00,
    157.00,
    'Samoa',
    'Parlementary
Monarchy',
    'Malietoa Tanumafili II',
    3169,
    'WS'
  );
INSERT INTO `country`
VALUES (
    'YEM',
    'Yemen',
    'Asia',
    'Middle
East',
    527968.00,
    1918,
    18112000,
    59.8,
    6041.00,
    5729.00,
    'Al-Yaman',
    'Republic',
    'Ali Abdallah Salih',
    1780,
    'YE'
  );
INSERT INTO `country`
VALUES (
    'YUG',
    'Yugoslavia',
    'Europe',
    'Southern
Europe',
    102173.00,
    1918,
    10640000,
    72.4,
    17000.00,
    NULL,
    'Jugoslavija',
    'Federal Republic',
    'Vojislav
Koštunica',
    1792,
    'YU'
  );
INSERT INTO `country`
VALUES (
    'ZAF',
    'South Africa',
    'Africa',
    'Southern
Africa',
    1221037.00,
    1910,
    40377000,
    51.1,
    116729.00,
    129092.00,
    'South Africa',
    'Republic',
    'Thabo Mbeki',
    716,
    'ZA'
  );
INSERT INTO `country`
VALUES (
    'ZMB',
    'Zambia',
    'Africa',
    'Eastern
Africa',
    752618.00,
    1964,
    9169000,
    37.2,
    3377.00,
    3922.00,
    'Zambia',
    'Republic',
    'Frederick Chiluba',
    3162,
    'ZM'
  );
INSERT INTO `country`
VALUES (
    'ZWE',
    'Zimbabwe',
    'Africa',
    'Eastern
Africa',
    390757.00,
    1980,
    11669000,
    37.8,
    5951.00,
    8670.00,
    'Zimbabwe',
    'Republic',
    'Robert G. Mugabe',
    4068,
    'ZW'
  );
commit;
-- -- Table structure for table `countrylanguage` -- DROP TABLE IF EXISTS `countrylanguage`; /*!40101
SET @saved_cs_client = @@character_set_client * /;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `Language` char(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T', 'F') NOT NULL DEFAULT 'F',
  `Percentage` decimal(4, 1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`, `Language`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryLanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */
;
-- --
Dumping data for table `countrylanguage` -- -- ORDER BY: `CountryCode`,`Language` set autocommit=0;
INSERT INTO `countrylanguage`
VALUES ('ABW', 'Dutch', 'T', 5.3);
INSERT INTO `countrylanguage`
VALUES ('ABW', 'English', 'F', 9.5);
INSERT INTO `countrylanguage`
VALUES ('ABW', 'Papiamento', 'F', 76.7);
INSERT INTO `countrylanguage`
VALUES ('ABW', 'Spanish', 'F', 7.4);
INSERT INTO `countrylanguage`
VALUES ('AFG', 'Balochi', 'F', 0.9);
INSERT INTO `countrylanguage`
VALUES ('AFG', 'Dari', 'T', 32.1);
INSERT INTO `countrylanguage`
VALUES ('AFG', 'Pashto', 'T', 52.4);
INSERT INTO `countrylanguage`
VALUES ('AFG', 'Turkmenian', 'F', 1.9);
INSERT INTO `countrylanguage`
VALUES ('AFG', 'Uzbek', 'F', 8.8);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Ambo', 'F', 2.4);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Chokwe', 'F', 4.2);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Kongo', 'F', 13.2);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Luchazi', 'F', 2.4);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Luimbenganguela', 'F', 5.4);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Luvale', 'F', 3.6);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Mbundu', 'F', 21.6);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Nyaneka-nkhumbi', 'F', 5.4);
INSERT INTO `countrylanguage`
VALUES ('AGO', 'Ovimbundu', 'F', 37.2);
INSERT INTO `countrylanguage`
VALUES ('AIA', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('ALB', 'Albaniana', 'T', 97.9);
INSERT INTO `countrylanguage`
VALUES ('ALB', 'Greek', 'F', 1.8);
INSERT INTO `countrylanguage`
VALUES ('ALB', 'Macedonian', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('AND', 'Catalan', 'T', 32.3);
INSERT INTO `countrylanguage`
VALUES ('AND', 'French', 'F', 6.2);
INSERT INTO `countrylanguage`
VALUES ('AND', 'Portuguese', 'F', 10.8);
INSERT INTO `countrylanguage`
VALUES ('AND', 'Spanish', 'F', 44.6);
INSERT INTO `countrylanguage`
VALUES ('ANT', 'Dutch', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('ANT', 'English', 'F', 7.8);
INSERT INTO `countrylanguage`
VALUES ('ANT', 'Papiamento', 'T', 86.2);
INSERT INTO `countrylanguage`
VALUES ('ARE', 'Arabic', 'T', 42.0);
INSERT INTO `countrylanguage`
VALUES ('ARE', 'Hindi', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('ARG', 'Indian
Languages', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('ARG', 'Italian', 'F', 1.7);
INSERT INTO `countrylanguage`
VALUES ('ARG', 'Spanish', 'T', 96.8);
INSERT INTO `countrylanguage`
VALUES ('ARM', 'Armenian', 'T', 93.4);
INSERT INTO `countrylanguage`
VALUES ('ARM', 'Azerbaijani', 'F', 2.6);
INSERT INTO `countrylanguage`
VALUES ('ASM', 'English', 'T', 3.1);
INSERT INTO `countrylanguage`
VALUES ('ASM', 'Samoan', 'T', 90.6);
INSERT INTO `countrylanguage`
VALUES ('ASM', 'Tongan', 'F', 3.1);
INSERT INTO `countrylanguage`
VALUES ('ATG', 'Creole English', 'F', 95.7);
INSERT INTO `countrylanguage`
VALUES ('ATG', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Arabic', 'F', 1.0);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Canton Chinese', 'F', 1.1);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'English', 'T', 81.2);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'German', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Greek', 'F', 1.6);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Italian', 'F', 2.2);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Serbo-Croatian', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('AUS', 'Vietnamese', 'F', 0.8);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Czech', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'German', 'T', 92.0);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Hungarian', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Polish', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Romanian', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Serbo-Croatian', 'F', 2.2);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Slovene', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('AUT', 'Turkish', 'F', 1.5);
INSERT INTO `countrylanguage`
VALUES ('AZE', 'Armenian', 'F', 2.0);
INSERT INTO `countrylanguage`
VALUES ('AZE', 'Azerbaijani', 'T', 89.0);
INSERT INTO `countrylanguage`
VALUES ('AZE', 'Lezgian', 'F', 2.3);
INSERT INTO `countrylanguage`
VALUES ('AZE', 'Russian', 'F', 3.0);
INSERT INTO `countrylanguage`
VALUES ('BDI', 'French', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('BDI', 'Kirundi', 'T', 98.1);
INSERT INTO `countrylanguage`
VALUES ('BDI', 'Swahili', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'Arabic', 'F', 1.6);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'Dutch', 'T', 59.2);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'French', 'T', 32.6);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'German', 'T', 1.0);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'Italian', 'F', 2.4);
INSERT INTO `countrylanguage`
VALUES ('BEL', 'Turkish', 'F', 0.9);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Adja', 'F', 11.1);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Aizo', 'F', 8.7);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Bariba', 'F', 8.7);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Fon', 'F', 39.8);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Ful', 'F', 5.6);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Joruba', 'F', 12.2);
INSERT INTO `countrylanguage`
VALUES ('BEN', 'Somba', 'F', 6.7);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Busansi', 'F', 3.5);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Dagara', 'F', 3.1);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Dyula', 'F', 2.6);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Ful', 'F', 9.7);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Gurma', 'F', 5.7);
INSERT INTO `countrylanguage`
VALUES ('BFA', 'Mossi', 'F', 50.2);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Bengali', 'T', 97.7);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Chakma', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Garo', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Khasi', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Marma', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Santhali', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('BGD', 'Tripuri', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('BGR', 'Bulgariana', 'T', 83.2);
INSERT INTO `countrylanguage`
VALUES ('BGR', 'Macedonian', 'F', 2.6);
INSERT INTO `countrylanguage`
VALUES ('BGR', 'Romani', 'F', 3.7);
INSERT INTO `countrylanguage`
VALUES ('BGR', 'Turkish', 'F', 9.4);
INSERT INTO `countrylanguage`
VALUES ('BHR', 'Arabic', 'T', 67.7);
INSERT INTO `countrylanguage`
VALUES ('BHR', 'English', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('BHS', 'Creole English', 'F', 89.7);
INSERT INTO `countrylanguage`
VALUES ('BHS', 'Creole French', 'F', 10.3);
INSERT INTO `countrylanguage`
VALUES ('BIH', 'Serbo-Croatian', 'T', 99.2);
INSERT INTO `countrylanguage`
VALUES ('BLR', 'Belorussian', 'T', 65.6);
INSERT INTO `countrylanguage`
VALUES ('BLR', 'Polish', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('BLR', 'Russian', 'T', 32.0);
INSERT INTO `countrylanguage`
VALUES ('BLR', 'Ukrainian', 'F', 1.3);
INSERT INTO `countrylanguage`
VALUES ('BLZ', 'English', 'T', 50.8);
INSERT INTO `countrylanguage`
VALUES ('BLZ', 'Garifuna', 'F', 6.8);
INSERT INTO `countrylanguage`
VALUES ('BLZ', 'Maya Languages', 'F', 9.6);
INSERT INTO `countrylanguage`
VALUES ('BLZ', 'Spanish', 'F', 31.6);
INSERT INTO `countrylanguage`
VALUES ('BMU', 'English', 'T', 100.0);
INSERT INTO `countrylanguage`
VALUES ('BOL', 'Aimará', 'T', 3.2);
INSERT INTO `countrylanguage`
VALUES ('BOL', 'Guaraní', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('BOL', 'Ketšua', 'T', 8.1);
INSERT INTO `countrylanguage`
VALUES ('BOL', 'Spanish', 'T', 87.7);
INSERT INTO `countrylanguage`
VALUES ('BRA', 'German', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('BRA', 'Indian Languages', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('BRA', 'Italian', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('BRA', 'Japanese', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('BRA', 'Portuguese', 'T', 97.5);
INSERT INTO `countrylanguage`
VALUES ('BRB', 'Bajan', 'F', 95.1);
INSERT INTO `countrylanguage`
VALUES ('BRB', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('BRN', 'Chinese', 'F', 9.3);
INSERT INTO `countrylanguage`
VALUES ('BRN', 'English', 'F', 3.1);
INSERT INTO `countrylanguage`
VALUES ('BRN', 'Malay', 'T', 45.5);
INSERT INTO `countrylanguage`
VALUES ('BRN', 'Malay-English', 'F', 28.8);
INSERT INTO `countrylanguage`
VALUES ('BTN', 'Asami', 'F', 15.2);
INSERT INTO `countrylanguage`
VALUES ('BTN', 'Dzongkha', 'T', 50.0);
INSERT INTO `countrylanguage`
VALUES ('BTN', 'Nepali', 'F', 34.8);
INSERT INTO `countrylanguage`
VALUES ('BWA', 'Khoekhoe', 'F', 2.5);
INSERT INTO `countrylanguage`
VALUES ('BWA', 'Ndebele', 'F', 1.3);
INSERT INTO `countrylanguage`
VALUES ('BWA', 'San', 'F', 3.5);
INSERT INTO `countrylanguage`
VALUES ('BWA', 'Shona', 'F', 12.3);
INSERT INTO `countrylanguage`
VALUES ('BWA', 'Tswana', 'F', 75.5);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Banda', 'F', 23.5);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Gbaya', 'F', 23.8);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Mandjia', 'F', 14.8);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Mbum', 'F', 6.4);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Ngbaka', 'F', 7.5);
INSERT INTO `countrylanguage`
VALUES ('CAF', 'Sara', 'F', 6.4);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Chinese', 'F', 2.5);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Dutch', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'English', 'T', 60.4);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Eskimo Languages', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'French', 'T', 23.4);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'German', 'F', 1.6);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Italian', 'F', 1.7);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Polish', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Portuguese', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Punjabi', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Spanish', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('CAN', 'Ukrainian', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('CCK', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CCK', 'Malay', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CHE', 'French', 'T', 19.2);
INSERT INTO `countrylanguage`
VALUES ('CHE', 'German', 'T', 63.6);
INSERT INTO `countrylanguage`
VALUES ('CHE', 'Italian', 'T', 7.7);
INSERT INTO `countrylanguage`
VALUES ('CHE', 'Romansh', 'T', 0.6);
INSERT INTO `countrylanguage`
VALUES ('CHL', 'Aimará', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('CHL', 'Araucan', 'F', 9.6);
INSERT INTO `countrylanguage`
VALUES ('CHL', 'Rapa
nui', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('CHL', 'Spanish', 'T', 89.7);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Chinese', 'T', 92.0);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Dong', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Hui', 'F', 0.8);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Mantšu', 'F', 0.9);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Miao', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Mongolian', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Puyi', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Tibetan', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Tujia', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Uighur', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Yi', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('CHN', 'Zhuang', 'F', 1.4);
INSERT INTO `countrylanguage`
VALUES ('CIV', '[South]Mande', 'F', 7.7);
INSERT INTO `countrylanguage`
VALUES ('CIV', 'Akan', 'F', 30.0);
INSERT INTO `countrylanguage`
VALUES ('CIV', 'Gur', 'F', 11.7);
INSERT INTO `countrylanguage`
VALUES ('CIV', 'Kru', 'F', 10.5);
INSERT INTO `countrylanguage`
VALUES ('CIV', 'Malinke', 'F', 11.4);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Bamileke-bamum', 'F', 18.6);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Duala', 'F', 10.9);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Fang', 'F', 19.7);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Ful', 'F', 9.6);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Maka', 'F', 4.9);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Mandara', 'F', 5.7);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Masana', 'F', 3.9);
INSERT INTO `countrylanguage`
VALUES ('CMR', 'Tikar', 'F', 7.4);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Boa', 'F', 2.3);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Chokwe', 'F', 1.8);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Kongo', 'F', 16.0);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Luba', 'F', 18.0);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Mongo', 'F', 13.5);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Ngala and Bangi', 'F', 5.8);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Rundi', 'F', 3.8);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Rwanda', 'F', 10.3);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Teke', 'F', 2.7);
INSERT INTO `countrylanguage`
VALUES ('COD', 'Zande', 'F', 6.1);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Kongo', 'F', 51.5);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Mbete', 'F', 4.8);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Mboshi', 'F', 11.4);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Punu', 'F', 2.9);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Sango', 'F', 2.6);
INSERT INTO `countrylanguage`
VALUES ('COG', 'Teke', 'F', 17.3);
INSERT INTO `countrylanguage`
VALUES ('COK', 'English', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('COK', 'Maori', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('COL', 'Arawakan', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('COL', 'Caribbean', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('COL', 'Chibcha', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('COL', 'Creole English', 'F', 0.1);
INSERT INTO `countrylanguage`
VALUES ('COL', 'Spanish', 'T', 99.0);
INSERT INTO `countrylanguage`
VALUES ('COM', 'Comorian', 'T', 75.0);
INSERT INTO `countrylanguage`
VALUES ('COM', 'Comorian-Arabic', 'F', 1.6);
INSERT INTO `countrylanguage`
VALUES ('COM', 'Comorian-French', 'F', 12.9);
INSERT INTO `countrylanguage`
VALUES ('COM', 'Comorianmadagassi', 'F', 5.5);
INSERT INTO `countrylanguage`
VALUES ('COM', 'Comorian-Swahili', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('CPV', 'Crioulo', 'F', 100.0);
INSERT INTO `countrylanguage`
VALUES ('CPV', 'Portuguese', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CRI', 'Chibcha', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('CRI', 'Chinese', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('CRI', 'Creole
English', 'F', 2.0);
INSERT INTO `countrylanguage`
VALUES ('CRI', 'Spanish', 'T', 97.5);
INSERT INTO `countrylanguage`
VALUES ('CUB', 'Spanish', 'T', 100.0);
INSERT INTO `countrylanguage`
VALUES ('CXR', 'Chinese', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CXR', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CYM', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('CYP', 'Greek', 'T', 74.1);
INSERT INTO `countrylanguage`
VALUES ('CYP', 'Turkish', 'T', 22.4);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Czech', 'T', 81.2);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'German', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Hungarian', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Moravian', 'F', 12.9);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Polish', 'F', 0.6);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Romani', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Silesiana', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('CZE', 'Slovak', 'F', 3.1);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'German', 'T', 91.3);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'Greek', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'Italian', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'Polish', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'Southern Slavic Languages', 'F', 1.4);
INSERT INTO `countrylanguage`
VALUES ('DEU', 'Turkish', 'F', 2.6);
INSERT INTO `countrylanguage`
VALUES ('DJI', 'Afar', 'F', 34.8);
INSERT INTO `countrylanguage`
VALUES ('DJI', 'Arabic', 'T', 10.6);
INSERT INTO `countrylanguage`
VALUES ('DJI', 'Somali', 'F', 43.9);
INSERT INTO `countrylanguage`
VALUES ('DMA', 'Creole English', 'F', 100.0);
INSERT INTO `countrylanguage`
VALUES ('DMA', 'Creole French', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'Arabic', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'Danish', 'T', 93.5);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'English', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'German', 'F', 0.5);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'Norwegian', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'Swedish', 'F', 0.3);
INSERT INTO `countrylanguage`
VALUES ('DNK', 'Turkish', 'F', 0.8);
INSERT INTO `countrylanguage`
VALUES ('DOM', 'Creole French', 'F', 2.0);
INSERT INTO `countrylanguage`
VALUES ('DOM', 'Spanish', 'T', 98.0);
INSERT INTO `countrylanguage`
VALUES ('DZA', 'Arabic', 'T', 86.0);
INSERT INTO `countrylanguage`
VALUES ('DZA', 'Berberi', 'F', 14.0);
INSERT INTO `countrylanguage`
VALUES ('ECU', 'Ketšua', 'F', 7.0);
INSERT INTO `countrylanguage`
VALUES ('ECU', 'Spanish', 'T', 93.0);
INSERT INTO `countrylanguage`
VALUES ('EGY', 'Arabic', 'T', 98.8);
INSERT INTO `countrylanguage`
VALUES ('EGY', 'Sinaberberi', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Afar', 'F', 4.3);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Bilin', 'F', 3.0);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Hadareb', 'F', 3.8);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Saho', 'F', 3.0);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Tigre', 'F', 31.7);
INSERT INTO `countrylanguage`
VALUES ('ERI', 'Tigrinja', 'T', 49.1);
INSERT INTO `countrylanguage`
VALUES ('ESH', 'Arabic', 'T', 100.0);
INSERT INTO `countrylanguage`
VALUES ('ESP', 'Basque', 'F', 1.6);
INSERT INTO `countrylanguage`
VALUES ('ESP', 'Catalan', 'F', 16.9);
INSERT INTO `countrylanguage`
VALUES ('ESP', 'Galecian', 'F', 6.4);
INSERT INTO `countrylanguage`
VALUES ('ESP', 'Spanish', 'T', 74.4);
INSERT INTO `countrylanguage`
VALUES ('EST', 'Belorussian', 'F', 1.4);
INSERT INTO `countrylanguage`
VALUES ('EST', 'Estonian', 'T', 65.3);
INSERT INTO `countrylanguage`
VALUES ('EST', 'Finnish', 'F', 0.7);
INSERT INTO `countrylanguage`
VALUES ('EST', 'Russian', 'F', 27.8);
INSERT INTO `countrylanguage`
VALUES ('EST', 'Ukrainian', 'F', 2.8);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Amhara', 'F', 30.0);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Gurage', 'F', 4.7);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Oromo', 'F', 31.0);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Sidamo', 'F', 3.2);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Somali', 'F', 4.1);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Tigrinja', 'F', 7.2);
INSERT INTO `countrylanguage`
VALUES ('ETH', 'Walaita', 'F', 2.8);
INSERT INTO `countrylanguage`
VALUES ('FIN', 'Estonian', 'F', 0.2);
INSERT INTO `countrylanguage`
VALUES ('FIN', 'Finnish', 'T', 92.7);
INSERT INTO `countrylanguage`
VALUES ('FIN', 'Russian', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('FIN', 'Saame', 'F', 0.0);
INSERT INTO `countrylanguage`
VALUES ('FIN', 'Swedish', 'T', 5.7);
INSERT INTO `countrylanguage`
VALUES ('FJI', 'Fijian', 'T', 50.8);
INSERT INTO `countrylanguage`
VALUES ('FJI', 'Hindi', 'F', 43.7);
INSERT INTO `countrylanguage`
VALUES ('FLK', 'English', 'T', 0.0);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'Arabic', 'F', 2.5);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'French', 'T', 93.6);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'Italian', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'Portuguese', 'F', 1.2);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'Spanish', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('FRA', 'Turkish', 'F', 0.4);
INSERT INTO `countrylanguage`
VALUES ('FRO', 'Danish', 'T', 0.0);
INSERT INTO `countryl
VALUES ('FRO','Faroese','T',100.0); INSERT INTO ` countrylanguage ` VALUES ('FSM','Kosrean','F',7.3);
INSERT INTO ` countrylanguage ` VALUES ('FSM','Mortlock','F',7.6); INSERT INTO ` countrylanguage ` VALUES
('FSM','Pohnpei','F',23.8); INSERT INTO ` countrylanguage ` VALUES ('FSM','Trukese','F',41.6); INSERT INTO
` countrylanguage ` VALUES ('FSM','Wolea','F',3.7); INSERT INTO ` countrylanguage ` VALUES
('FSM','Yap','F',5.8); INSERT INTO ` countrylanguage ` VALUES ('GAB','Fang','F',35.8); INSERT INTO
` countrylanguage ` VALUES ('GAB','Mbete','F',13.8); INSERT INTO ` countrylanguage ` VALUES
('GAB','Mpongwe','F',14.6); INSERT INTO ` countrylanguage ` VALUES ('GAB','Punu-sira-nzebi','F',17.1); INSERT
INTO ` countrylanguage ` VALUES ('GBR','English','T',97.3); INSERT INTO ` countrylanguage ` VALUES
('GBR','Gaeli','F',0.1); INSERT INTO ` countrylanguage ` VALUES ('GBR','Kymri','F',0.9); INSERT INTO
` countrylanguage ` VALUES ('GEO','Abhyasi','F',1.7); INSERT INTO ` countrylanguage ` VALUES
('GEO','Armenian','F',6.8); INSERT INTO ` countrylanguage ` VALUES ('GEO','Azerbaijani','F',5.5); INSERT INTO
` countrylanguage ` VALUES ('GEO','Georgiana','T',71.7); INSERT INTO ` countrylanguage ` VALUES
('GEO','Osseetti','F',2.4); INSERT INTO ` countrylanguage ` VALUES ('GEO','Russian','F',8.8); INSERT INTO
` countrylanguage ` VALUES ('GHA','Akan','F',52.4); INSERT INTO ` countrylanguage ` VALUES
('GHA','Ewe','F',11.9); INSERT INTO ` countrylanguage ` VALUES ('GHA','Ga-adangme','F',7.8); INSERT INTO
` countrylanguage ` VALUES ('GHA','Gurma','F',3.3); INSERT INTO ` countrylanguage ` VALUES
('GHA','Joruba','F',1.3); INSERT INTO ` countrylanguage ` VALUES ('GHA','Mossi','F',15.8); INSERT INTO
` countrylanguage ` VALUES ('GIB','Arabic','F',7.4); INSERT INTO ` countrylanguage ` VALUES
('GIB','English','T',88.9); INSERT INTO ` countrylanguage ` VALUES ('GIN','Ful','F',38.6); INSERT INTO
` countrylanguage ` VALUES ('GIN','Kissi','F',6.0); INSERT INTO ` countrylanguage ` VALUES
('GIN','Kpelle','F',4.6); INSERT INTO ` countrylanguage ` VALUES ('GIN','Loma','F',2.3); INSERT INTO
` countrylanguage ` VALUES ('GIN','Malinke','F',23.2); INSERT INTO ` countrylanguage ` VALUES
('GIN','Susu','F',11.0); INSERT INTO ` countrylanguage ` VALUES ('GIN','Yalunka','F',2.9); INSERT INTO
` countrylanguage ` VALUES ('GLP','Creole French','F',95.0); INSERT INTO ` countrylanguage ` VALUES
('GLP','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('GMB','Diola','F',9.2); INSERT INTO
` countrylanguage ` VALUES ('GMB','Ful','F',16.2); INSERT INTO ` countrylanguage ` VALUES
('GMB','Malinke','F',34.1); INSERT INTO ` countrylanguage ` VALUES ('GMB','Soninke','F',7.6); INSERT INTO
` countrylanguage ` VALUES ('GMB','Wolof','F',12.6); INSERT INTO ` countrylanguage ` VALUES
('GNB','Balante','F',14.6); INSERT INTO ` countrylanguage ` VALUES ('GNB','Crioulo','F',36.4); INSERT INTO
` countrylanguage ` VALUES ('GNB','Ful','F',16.6); INSERT INTO ` countrylanguage ` VALUES
('GNB','Malinke','F',6.9); INSERT INTO ` countrylanguage ` VALUES ('GNB','Mandyako','F',4.9); INSERT INTO
` countrylanguage ` VALUES ('GNB','Portuguese','T',8.1); INSERT INTO ` countrylanguage ` VALUES
('GNQ','Bubi','F',8.7); INSERT INTO ` countrylanguage ` VALUES ('GNQ','Fang','F',84.8); INSERT INTO
` countrylanguage ` VALUES ('GRC','Greek','T',98.5); INSERT INTO ` countrylanguage ` VALUES
('GRC','Turkish','F',0.9); INSERT INTO ` countrylanguage ` VALUES ('GRD','Creole English','F',100.0); INSERT
INTO ` countrylanguage ` VALUES ('GRL','Danish','T',12.5); INSERT INTO ` countrylanguage ` VALUES
('GRL','Greenlandic','T',87.5); INSERT INTO ` countrylanguage ` VALUES ('GTM','Cakchiquel','F',8.9); INSERT
INTO ` countrylanguage ` VALUES ('GTM','Kekchí','F',4.9); INSERT INTO ` countrylanguage ` VALUES
('GTM','Mam','F',2.7); INSERT INTO ` countrylanguage ` VALUES ('GTM','Quiché','F',10.1); INSERT INTO
` countrylanguage ` VALUES ('GTM','Spanish','T',64.7); INSERT INTO ` countrylanguage ` VALUES ('GUF','Creole
French','F',94.3); INSERT INTO ` countrylanguage ` VALUES ('GUF','Indian Languages','F',1.9); INSERT INTO
` countrylanguage ` VALUES ('GUM','Chamorro','T',29.6); INSERT INTO ` countrylanguage ` VALUES
('GUM','English','T',37.5); INSERT INTO ` countrylanguage ` VALUES ('GUM','Japanese','F',2.0); INSERT INTO
` countrylanguage ` VALUES ('GUM','Korean','F',3.3); INSERT INTO ` countrylanguage ` VALUES
('GUM','Philippene Languages','F',19.7); INSERT INTO ` countrylanguage ` VALUES ('GUY','Arawakan','F',1.4);
INSERT INTO ` countrylanguage ` VALUES ('GUY','Caribbean','F',2.2); INSERT INTO ` countrylanguage ` VALUES
('GUY','Creole English','F',96.4); INSERT INTO ` countrylanguage ` VALUES ('HKG','Canton Chinese','F',88.7);
INSERT INTO ` countrylanguage ` VALUES ('HKG','Chiu chau','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('HKG','English','T',2.2); INSERT INTO ` countrylanguage ` VALUES ('HKG','Fukien','F',1.9); INSERT INTO
` countrylanguage ` VALUES ('HKG','Hakka','F',1.6); INSERT INTO ` countrylanguage ` VALUES ('HND','Creole
English','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('HND','Garifuna','F',1.3); INSERT INTO
` countrylanguage ` VALUES ('HND','Miskito','F',0.2); INSERT INTO ` countrylanguage ` VALUES
('HND','Spanish','T',97.2); INSERT INTO ` countrylanguage ` VALUES ('HRV','Serbo-Croatian','T',95.9); INSERT
INTO ` countrylanguage ` VALUES ('HRV','Slovene','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('HTI','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('HTI','Haiti Creole','F',100.0); INSERT INTO
` countrylanguage ` VALUES ('HUN','German','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('HUN','Hungarian','T',98.5); INSERT INTO ` countrylanguage ` VALUES ('HUN','Romani','F',0.5); INSERT INTO
` countrylanguage ` VALUES ('HUN','Romanian','F',0.1); INSERT INTO ` countrylanguage ` VALUES ('HUN','SerboCroatian','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('HUN','Slovak','F',0.1); INSERT INTO
` countrylanguage ` VALUES ('IDN','Bali','F',1.7); INSERT INTO ` countrylanguage ` VALUES ('IDN','Banja','F',1.8);
INSERT INTO ` countrylanguage ` VALUES ('IDN','Batakki','F',2.2); INSERT INTO ` countrylanguage ` VALUES
('IDN','Bugi','F',2.2); INSERT INTO ` countrylanguage ` VALUES ('IDN','Javanese','F',39.4); INSERT INTO
` countrylanguage ` VALUES ('IDN','Madura','F',4.3); INSERT INTO ` countrylanguage ` VALUES
('IDN','Malay','T',12.1); INSERT INTO ` countrylanguage ` VALUES ('IDN','Minangkabau','F',2.4); INSERT INTO
` countrylanguage ` VALUES ('IDN','Sunda','F',15.8); INSERT INTO ` countrylanguage ` VALUES
('IND','Asami','F',1.5); INSERT INTO ` countrylanguage ` VALUES ('IND','Bengali','F',8.2); INSERT INTO
` countrylanguage ` VALUES ('IND','Gujarati','F',4.8); INSERT INTO ` countrylanguage ` VALUES
('IND','Hindi','T',39.9); INSERT INTO ` countrylanguage ` VALUES ('IND','Kannada','F',3.9); INSERT INTO
` countrylanguage ` VALUES ('IND','Malajalam','F',3.6); INSERT INTO ` countrylanguage ` VALUES
('IND','Marathi','F',7.4); INSERT INTO ` countrylanguage ` VALUES ('IND','Orija','F',3.3); INSERT INTO
` countrylanguage ` VALUES ('IND','Punjabi','F',2.8); INSERT INTO ` countrylanguage ` VALUES
('IND','Tamil','F',6.3); INSERT INTO ` countrylanguage ` VALUES ('IND','Telugu','F',7.8); INSERT INTO
` countrylanguage ` VALUES ('IND','Urdu','F',5.1); INSERT INTO ` countrylanguage ` VALUES
('IRL','English','T',98.4); INSERT INTO ` countrylanguage ` VALUES ('IRL','Irish','T',1.6); INSERT INTO
` countrylanguage ` VALUES ('IRN','Arabic','F',2.2); INSERT INTO ` countrylanguage ` VALUES
('IRN','Azerbaijani','F',16.8); INSERT INTO ` countrylanguage ` VALUES ('IRN','Bakhtyari','F',1.7); INSERT INTO
` countrylanguage ` VALUES ('IRN','Balochi','F',2.3); INSERT INTO ` countrylanguage ` VALUES
('IRN','Gilaki','F',5.3); INSERT INTO ` countrylanguage ` VALUES ('IRN','Kurdish','F',9.1); INSERT INTO
` countrylanguage ` VALUES ('IRN','Luri','F',4.3); INSERT INTO ` countrylanguage ` VALUES
('IRN','Mazandarani','F',3.6); INSERT INTO ` countrylanguage ` VALUES ('IRN','Persian','T',45.7); INSERT INTO
` countrylanguage ` VALUES ('IRN','Turkmenian','F',1.6); INSERT INTO ` countrylanguage ` VALUES
('IRQ','Arabic','T',77.2); INSERT INTO ` countrylanguage ` VALUES ('IRQ','Assyrian','F',0.8); INSERT INTO
` countrylanguage ` VALUES ('IRQ','Azerbaijani','F',1.7); INSERT INTO ` countrylanguage ` VALUES
('IRQ','Kurdish','F',19.0); INSERT INTO ` countrylanguage ` VALUES ('IRQ','Persian','F',0.8); INSERT INTO
` countrylanguage ` VALUES ('ISL','English','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('ISL','Icelandic','T',95.7); INSERT INTO ` countrylanguage ` VALUES ('ISR','Arabic','T',18.0); INSERT INTO
` countrylanguage ` VALUES ('ISR','Hebrew','T',63.1); INSERT INTO ` countrylanguage ` VALUES
('ISR','Russian','F',8.9); INSERT INTO ` countrylanguage ` VALUES ('ITA','Albaniana','F',0.2); INSERT INTO
` countrylanguage ` VALUES ('ITA','French','F',0.5); INSERT INTO ` countrylanguage ` VALUES
('ITA','Friuli','F',1.2); INSERT INTO ` countrylanguage ` VALUES ('ITA','German','F',0.5); INSERT INTO
` countrylanguage ` VALUES ('ITA','Italian','T',94.1); INSERT INTO ` countrylanguage ` VALUES
('ITA','Romani','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('ITA','Sardinian','F',2.7); INSERT INTO
` countrylanguage ` VALUES ('ITA','Slovene','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('JAM','Creole
English','F',94.2); INSERT INTO ` countrylanguage ` VALUES ('JAM','Hindi','F',1.9); INSERT INTO
` countrylanguage ` VALUES ('JOR','Arabic','T',97.9); INSERT INTO ` countrylanguage ` VALUES
('JOR','Armenian','F',1.0); INSERT INTO ` countrylanguage ` VALUES ('JOR','Circassian','F',1.0); INSERT INTO
` countrylanguage ` VALUES ('JPN','Ainu','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('JPN','Chinese','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('JPN','English','F',0.1); INSERT INTO
` countrylanguage ` VALUES ('JPN','Japanese','T',99.1); INSERT INTO ` countrylanguage ` VALUES
('JPN','Korean','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('JPN','Philippene Languages','F',0.1);
INSERT INTO ` countrylanguage ` VALUES ('KAZ','German','F',3.1); INSERT INTO ` countrylanguage ` VALUES
('KAZ','Kazakh','T',46.0); INSERT INTO ` countrylanguage ` VALUES ('KAZ','Russian','F',34.7); INSERT INTO
` countrylanguage ` VALUES ('KAZ','Tatar','F',2.0); INSERT INTO ` countrylanguage ` VALUES
('KAZ','Ukrainian','F',5.0); INSERT INTO ` countrylanguage ` VALUES ('KAZ','Uzbek','F',2.3); INSERT INTO
` countrylanguage ` VALUES ('KEN','Gusii','F',6.1); INSERT INTO ` countrylanguage ` VALUES
('KEN','Kalenjin','F',10.8); INSERT INTO ` countrylanguage ` VALUES ('KEN','Kamba','F',11.2); INSERT INTO
` countrylanguage ` VALUES ('KEN','Kikuyu','F',20.9); INSERT INTO ` countrylanguage ` VALUES
('KEN','Luhya','F',13.8); INSERT INTO ` countrylanguage ` VALUES ('KEN','Luo','F',12.8); INSERT INTO
` countrylanguage ` VALUES ('KEN','Masai','F',1.6); INSERT INTO ` countrylanguage ` VALUES
('KEN','Meru','F',5.5); INSERT INTO ` countrylanguage ` VALUES ('KEN','Nyika','F',4.8); INSERT INTO
` countrylanguage ` VALUES ('KEN','Turkana','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('KGZ','Kazakh','F',0.8); INSERT INTO ` countrylanguage ` VALUES ('KGZ','Kirgiz','T',59.7); INSERT INTO
` countrylanguage ` VALUES ('KGZ','Russian','T',16.2); INSERT INTO ` countrylanguage ` VALUES
('KGZ','Tadzhik','F',0.8); INSERT INTO ` countrylanguage ` VALUES ('KGZ','Tatar','F',1.3); INSERT INTO
` countrylanguage ` VALUES ('KGZ','Ukrainian','F',1.7); INSERT INTO ` countrylanguage ` VALUES
('KGZ','Uzbek','F',14.1); INSERT INTO ` countrylanguage ` VALUES ('KHM','Chinese','F',3.1); INSERT INTO
` countrylanguage ` VALUES ('KHM','Khmer','T',88.6); INSERT INTO ` countrylanguage ` VALUES
('KHM','Tšam','F',2.4); INSERT INTO ` countrylanguage ` VALUES ('KHM','Vietnamese','F',5.5); INSERT INTO
` countrylanguage ` VALUES ('KIR','Kiribati','T',98.9); INSERT INTO ` countrylanguage ` VALUES
('KIR','Tuvalu','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('KNA','Creole English','F',100.0); INSERT
INTO ` countrylanguage ` VALUES ('KNA','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES
('KOR','Chinese','F',0.1); INSERT INTO ` countrylanguage ` VALUES ('KOR','Korean','T',99.9); INSERT INTO
` countrylanguage ` VALUES ('KWT','Arabic','T',78.1); INSERT INTO ` countrylanguage ` VALUES
('KWT','English','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('LAO','Lao','T',67.2); INSERT INTO
` countrylanguage ` VALUES ('LAO','Lao-Soung','F',5.2); INSERT INTO ` countrylanguage ` VALUES ('LAO','Monkhmer','F',16.5); INSERT INTO ` countrylanguage ` VALUES ('LAO','Thai','F',7.8); INSERT INTO
` countrylanguage ` VALUES ('LBN','Arabic','T',93.0); INSERT INTO ` countrylanguage ` VALUES
('LBN','Armenian','F',5.9); INSERT INTO ` countrylanguage ` VALUES ('LBN','French','F',0.0); INSERT INTO
` countrylanguage ` VALUES ('LBR','Bassa','F',13.7); INSERT INTO ` countrylanguage ` VALUES
('LBR','Gio','F',7.9); INSERT INTO ` countrylanguage ` VALUES ('LBR','Grebo','F',8.9); INSERT INTO
` countrylanguage ` VALUES ('LBR','Kpelle','F',19.5); INSERT INTO ` countrylanguage ` VALUES
('LBR','Kru','F',7.2); INSERT INTO ` countrylanguage ` VALUES ('LBR','Loma','F',5.8); INSERT INTO
` countrylanguage ` VALUES ('LBR','Malinke','F',5.1); INSERT INTO ` countrylanguage ` VALUES
('LBR','Mano','F',7.2); INSERT INTO ` countrylanguage ` VALUES ('LBY','Arabic','T',96.0); INSERT INTO
` countrylanguage ` VALUES ('LBY','Berberi','F',1.0); INSERT INTO ` countrylanguage ` VALUES ('LCA','Creole
French','F',80.0); INSERT INTO ` countrylanguage ` VALUES ('LCA','English','T',20.0); INSERT INTO
` countrylanguage ` VALUES ('LIE','German','T',89.0); INSERT INTO ` countrylanguage ` VALUES
('LIE','Italian','F',2.5); INSERT INTO ` countrylanguage ` VALUES ('LIE','Turkish','F',2.5); INSERT INTO
` countrylanguage ` VALUES ('LKA','Mixed Languages','F',19.6); INSERT INTO ` countrylanguage ` VALUES
('LKA','Singali','T',60.3); INSERT INTO ` countrylanguage ` VALUES ('LKA','Tamil','T',19.6); INSERT INTO
` countrylanguage ` VALUES ('LSO','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES
('LSO','Sotho','T',85.0); INSERT INTO ` countrylanguage ` VALUES ('LSO','Zulu','F',15.0); INSERT INTO
` countrylanguage ` VALUES ('LTU','Belorussian','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('LTU','Lithuanian','T',81.6); INSERT INTO ` countrylanguage ` VALUES ('LTU','Polish','F',7.0); INSERT INTO
` countrylanguage ` VALUES ('LTU','Russian','F',8.1); INSERT INTO ` countrylanguage ` VALUES
('LTU','Ukrainian','F',1.1); INSERT INTO ` countrylanguage ` VALUES ('LUX','French','T',4.2); INSERT INTO
` countrylanguage ` VALUES ('LUX','German','T',2.3); INSERT INTO ` countrylanguage ` VALUES
('LUX','Italian','F',4.6); INSERT INTO ` countrylanguage ` VALUES ('LUX','Luxembourgish','T',64.4); INSERT INTO
` countrylanguage ` VALUES ('LUX','Portuguese','F',13.0); INSERT INTO ` countrylanguage ` VALUES
('LVA','Belorussian','F',4.1); INSERT INTO ` countrylanguage ` VALUES ('LVA','Latvian','T',55.1); INSERT INTO
` countrylanguage ` VALUES ('LVA','Lithuanian','F',1.2); INSERT INTO ` countrylanguage ` VALUES
('LVA','Polish','F',2.1); INSERT INTO ` countrylanguage ` VALUES ('LVA','Russian','F',32.5); INSERT INTO
` countrylanguage ` VALUES ('LVA','Ukrainian','F',2.9); INSERT INTO ` countrylanguage ` VALUES ('MAC','Canton
Chinese','F',85.6); INSERT INTO ` countrylanguage ` VALUES ('MAC','English','F',0.5); INSERT INTO
` countrylanguage ` VALUES ('MAC','Mandarin Chinese','F',1.2); INSERT INTO ` countrylanguage ` VALUES
('MAC','Portuguese','T',2.3); INSERT INTO ` countrylanguage ` VALUES ('MAR','Arabic','T',65.0); INSERT INTO
` countrylanguage ` VALUES ('MAR','Berberi','F',33.0); INSERT INTO ` countrylanguage ` VALUES
('MCO','English','F',6.5); INSERT INTO ` countrylanguage ` VALUES ('MCO','French','T',41.9); INSERT INTO
` countrylanguage ` VALUES ('MCO','Italian','F',16.1); INSERT INTO ` countrylanguage ` VALUES
('MCO','Monegasque','F',16.1); INSERT INTO ` countrylanguage ` VALUES ('MDA','Bulgariana','F',1.6); INSERT
INTO ` countrylanguage ` VALUES ('MDA','Gagauzi','F',3.2); INSERT INTO ` countrylanguage ` VALUES
('MDA','Romanian','T',61.9); INSERT INTO ` countrylanguage ` VALUES ('MDA','Russian','F',23.2); INSERT INTO
` countrylanguage ` VALUES ('MDA','Ukrainian','F',8.6); INSERT INTO ` countrylanguage ` VALUES
('MDG','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('MDG','Malagasy','T',98.9); INSERT INTO
` countrylanguage ` VALUES ('MDV','Dhivehi','T',100.0); INSERT INTO ` countrylanguage ` VALUES
('MDV','English','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('MEX','Mixtec','F',0.6); INSERT INTO
` countrylanguage ` VALUES ('MEX','Náhuatl','F',1.8); INSERT INTO ` countrylanguage ` VALUES
('MEX','Otomí','F',0.4); INSERT INTO ` countrylanguage ` VALUES ('MEX','Spanish','T',92.1); INSERT INTO
` countrylanguage ` VALUES ('MEX','Yucatec','F',1.1); INSERT INTO ` countrylanguage ` VALUES
('MEX','Zapotec','F',0.6); INSERT INTO ` countrylanguage ` VALUES ('MHL','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('MHL','Marshallese','T',96.8); INSERT INTO ` countrylanguage ` VALUES
('MKD','Albaniana','F',22.9); INSERT INTO ` countrylanguage ` VALUES ('MKD','Macedonian','T',66.5); INSERT
INTO ` countrylanguage ` VALUES ('MKD','Romani','F',2.3); INSERT INTO ` countrylanguage ` VALUES
('MKD','Serbo-Croatian','F',2.0); INSERT INTO ` countrylanguage ` VALUES ('MKD','Turkish','F',4.0); INSERT
INTO ` countrylanguage ` VALUES ('MLI','Bambara','F',31.8); INSERT INTO ` countrylanguage ` VALUES
('MLI','Ful','F',13.9); INSERT INTO ` countrylanguage ` VALUES ('MLI','Senufo and Minianka','F',12.0); INSERT
INTO ` countrylanguage ` VALUES ('MLI','Songhai','F',6.9); INSERT INTO ` countrylanguage ` VALUES
('MLI','Soninke','F',8.7); INSERT INTO ` countrylanguage ` VALUES ('MLI','Tamashek','F',7.3); INSERT INTO
` countrylanguage ` VALUES ('MLT','English','T',2.1); INSERT INTO ` countrylanguage ` VALUES
('MLT','Maltese','T',95.8); INSERT INTO ` countrylanguage ` VALUES ('MMR','Burmese','T',69.0); INSERT INTO
` countrylanguage ` VALUES ('MMR','Chin','F',2.2); INSERT INTO ` countrylanguage ` VALUES
('MMR','Kachin','F',1.4); INSERT INTO ` countrylanguage ` VALUES ('MMR','Karen','F',6.2); INSERT INTO
` countrylanguage ` VALUES ('MMR','Kayah','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('MMR','Mon','F',2.4); INSERT INTO ` countrylanguage ` VALUES ('MMR','Rakhine','F',4.5); INSERT INTO
` countrylanguage ` VALUES ('MMR','Shan','F',8.5); INSERT INTO ` countrylanguage ` VALUES
('MNG','Bajad','F',1.9); INSERT INTO ` countrylanguage ` VALUES ('MNG','Buryat','F',1.7); INSERT INTO
` countrylanguage ` VALUES ('MNG','Dariganga','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('MNG','Dorbet','F',2.7); INSERT INTO ` countrylanguage ` VALUES ('MNG','Kazakh','F',5.9); INSERT INTO
` countrylanguage ` VALUES ('MNG','Mongolian','T',78.8); INSERT INTO ` countrylanguage ` VALUES
('MNP','Carolinian','F',4.8); INSERT INTO ` countrylanguage ` VALUES ('MNP','Chamorro','F',30.0); INSERT INTO
` countrylanguage ` VALUES ('MNP','Chinese','F',7.1); INSERT INTO ` countrylanguage ` VALUES
('MNP','English','T',4.8); INSERT INTO ` countrylanguage ` VALUES ('MNP','Korean','F',6.5); INSERT INTO
` countrylanguage ` VALUES ('MNP','Philippene Languages','F',34.1); INSERT INTO ` countrylanguage ` VALUES
('MOZ','Chuabo','F',5.7); INSERT INTO ` countrylanguage ` VALUES ('MOZ','Lomwe','F',7.8); INSERT INTO
` countrylanguage ` VALUES ('MOZ','Makua','F',27.8); INSERT INTO ` countrylanguage ` VALUES
('MOZ','Marendje','F',3.5); INSERT INTO ` countrylanguage ` VALUES ('MOZ','Nyanja','F',3.3); INSERT INTO
` countrylanguage ` VALUES ('MOZ','Ronga','F',3.7); INSERT INTO ` countrylanguage ` VALUES
('MOZ','Sena','F',9.4); INSERT INTO ` countrylanguage ` VALUES ('MOZ','Shona','F',6.5); INSERT INTO
` countrylanguage ` VALUES ('MOZ','Tsonga','F',12.4); INSERT INTO ` countrylanguage ` VALUES
('MOZ','Tswa','F',6.0); INSERT INTO ` countrylanguage ` VALUES ('MRT','Ful','F',1.2); INSERT INTO
` countrylanguage ` VALUES ('MRT','Hassaniya','F',81.7); INSERT INTO ` countrylanguage ` VALUES
('MRT','Soninke','F',2.7); INSERT INTO ` countrylanguage ` VALUES ('MRT','Tukulor','F',5.4); INSERT INTO
` countrylanguage ` VALUES ('MRT','Wolof','F',6.6); INSERT INTO ` countrylanguage ` VALUES
('MRT','Zenaga','F',1.2); INSERT INTO ` countrylanguage ` VALUES ('MSR','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('MTQ','Creole French','F',96.6); INSERT INTO ` countrylanguage ` VALUES
('MTQ','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('MUS','Bhojpuri','F',21.1); INSERT INTO
` countrylanguage ` VALUES ('MUS','Creole French','F',70.6); INSERT INTO ` countrylanguage ` VALUES
('MUS','French','F',3.4); INSERT INTO ` countrylanguage ` VALUES ('MUS','Hindi','F',1.2); INSERT INTO
` countrylanguage ` VALUES ('MUS','Marathi','F',0.7); INSERT INTO ` countrylanguage ` VALUES
('MUS','Tamil','F',0.8); INSERT INTO ` countrylanguage ` VALUES ('MWI','Chichewa','T',58.3); INSERT INTO
` countrylanguage ` VALUES ('MWI','Lomwe','F',18.4); INSERT INTO ` countrylanguage ` VALUES
('MWI','Ngoni','F',6.7); INSERT INTO ` countrylanguage ` VALUES ('MWI','Yao','F',13.2); INSERT INTO
` countrylanguage ` VALUES ('MYS','Chinese','F',9.0); INSERT INTO ` countrylanguage ` VALUES
('MYS','Dusun','F',1.1); INSERT INTO ` countrylanguage ` VALUES ('MYS','English','F',1.6); INSERT INTO
` countrylanguage ` VALUES ('MYS','Iban','F',2.8); INSERT INTO ` countrylanguage ` VALUES
('MYS','Malay','T',58.4); INSERT INTO ` countrylanguage ` VALUES ('MYS','Tamil','F',3.9); INSERT INTO
` countrylanguage ` VALUES ('MYT','French','T',20.3); INSERT INTO ` countrylanguage ` VALUES
('MYT','Mahoré','F',41.9); INSERT INTO ` countrylanguage ` VALUES ('MYT','Malagasy','F',16.1); INSERT INTO
` countrylanguage ` VALUES ('NAM','Afrikaans','F',9.5); INSERT INTO ` countrylanguage ` VALUES
('NAM','Caprivi','F',4.7); INSERT INTO ` countrylanguage ` VALUES ('NAM','German','F',0.9); INSERT INTO
` countrylanguage ` VALUES ('NAM','Herero','F',8.0); INSERT INTO ` countrylanguage ` VALUES
('NAM','Kavango','F',9.7); INSERT INTO ` countrylanguage ` VALUES ('NAM','Nama','F',12.4); INSERT INTO
` countrylanguage ` VALUES ('NAM','Ovambo','F',50.7); INSERT INTO ` countrylanguage ` VALUES
('NAM','San','F',1.9); INSERT INTO ` countrylanguage ` VALUES ('NCL','French','T',34.3); INSERT INTO
` countrylanguage ` VALUES ('NCL','Malenasian Languages','F',45.4); INSERT INTO ` countrylanguage ` VALUES
('NCL','Polynesian Languages','F',11.6); INSERT INTO ` countrylanguage ` VALUES ('NER','Ful','F',9.7); INSERT
INTO ` countrylanguage ` VALUES ('NER','Hausa','F',53.1); INSERT INTO ` countrylanguage ` VALUES
('NER','Kanuri','F',4.4); INSERT INTO ` countrylanguage ` VALUES ('NER','Songhai-zerma','F',21.2); INSERT
INTO ` countrylanguage ` VALUES ('NER','Tamashek','F',10.4); INSERT INTO ` countrylanguage ` VALUES
('NFK','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('NGA','Bura','F',1.6); INSERT INTO
` countrylanguage ` VALUES ('NGA','Edo','F',3.3); INSERT INTO ` countrylanguage ` VALUES ('NGA','Ful','F',11.3);
INSERT INTO ` countrylanguage ` VALUES ('NGA','Hausa','F',21.1); INSERT INTO ` countrylanguage ` VALUES
('NGA','Ibibio','F',5.6); INSERT INTO ` countrylanguage ` VALUES ('NGA','Ibo','F',18.1); INSERT INTO
` countrylanguage ` VALUES ('NGA','Ijo','F',1.8); INSERT INTO ` countrylanguage ` VALUES
('NGA','Joruba','F',21.4); INSERT INTO ` countrylanguage ` VALUES ('NGA','Kanuri','F',4.1); INSERT INTO
` countrylanguage ` VALUES ('NGA','Tiv','F',2.3); INSERT INTO ` countrylanguage ` VALUES ('NIC','Creole
English','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('NIC','Miskito','F',1.6); INSERT INTO
` countrylanguage ` VALUES ('NIC','Spanish','T',97.6); INSERT INTO ` countrylanguage ` VALUES
('NIC','Sumo','F',0.2); INSERT INTO ` countrylanguage ` VALUES ('NIU','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('NIU','Niue','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('NLD','Arabic','F',0.9); INSERT INTO ` countrylanguage ` VALUES ('NLD','Dutch','T',95.6); INSERT INTO
` countrylanguage ` VALUES ('NLD','Fries','F',3.7); INSERT INTO ` countrylanguage ` VALUES
('NLD','Turkish','F',0.8); INSERT INTO ` countrylanguage ` VALUES ('NOR','Danish','F',0.4); INSERT INTO
` countrylanguage ` VALUES ('NOR','English','F',0.5); INSERT INTO ` countrylanguage ` VALUES
('NOR','Norwegian','T',96.6); INSERT INTO ` countrylanguage ` VALUES ('NOR','Saame','F',0.0); INSERT INTO
` countrylanguage ` VALUES ('NOR','Swedish','F',0.3); INSERT INTO ` countrylanguage ` VALUES
('NPL','Bhojpuri','F',7.5); INSERT INTO ` countrylanguage ` VALUES ('NPL','Hindi','F',3.0); INSERT INTO
` countrylanguage ` VALUES ('NPL','Maithili','F',11.9); INSERT INTO ` countrylanguage ` VALUES
('NPL','Nepali','T',50.4); INSERT INTO ` countrylanguage ` VALUES ('NPL','Newari','F',3.7); INSERT INTO
` countrylanguage ` VALUES ('NPL','Tamang','F',4.9); INSERT INTO ` countrylanguage ` VALUES
('NPL','Tharu','F',5.4); INSERT INTO ` countrylanguage ` VALUES ('NRU','Chinese','F',8.5); INSERT INTO
` countrylanguage ` VALUES ('NRU','English','T',7.5); INSERT INTO ` countrylanguage ` VALUES
('NRU','Kiribati','F',17.9); INSERT INTO ` countrylanguage ` VALUES ('NRU','Nauru','T',57.5); INSERT INTO
` countrylanguage ` VALUES ('NRU','Tuvalu','F',8.5); INSERT INTO ` countrylanguage ` VALUES
('NZL','English','T',87.0); INSERT INTO ` countrylanguage ` VALUES ('NZL','Maori','F',4.3); INSERT INTO
` countrylanguage ` VALUES ('OMN','Arabic','T',76.7); INSERT INTO ` countrylanguage ` VALUES
('OMN','Balochi','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('PAK','Balochi','F',3.0); INSERT INTO
` countrylanguage ` VALUES ('PAK','Brahui','F',1.2); INSERT INTO ` countrylanguage ` VALUES
('PAK','Hindko','F',2.4); INSERT INTO ` countrylanguage ` VALUES ('PAK','Pashto','F',13.1); INSERT INTO
` countrylanguage ` VALUES ('PAK','Punjabi','F',48.2); INSERT INTO ` countrylanguage ` VALUES
('PAK','Saraiki','F',9.8); INSERT INTO ` countrylanguage ` VALUES ('PAK','Sindhi','F',11.8); INSERT INTO
` countrylanguage ` VALUES ('PAK','Urdu','T',7.6); INSERT INTO ` countrylanguage ` VALUES
('PAN','Arabic','F',0.6); INSERT INTO ` countrylanguage ` VALUES ('PAN','Creole English','F',14.0); INSERT INTO
` countrylanguage ` VALUES ('PAN','Cuna','F',2.0); INSERT INTO ` countrylanguage ` VALUES
('PAN','Embera','F',0.6); INSERT INTO ` countrylanguage ` VALUES ('PAN','Guaymí','F',5.3); INSERT INTO
` countrylanguage ` VALUES ('PAN','Spanish','T',76.8); INSERT INTO ` countrylanguage ` VALUES
('PCN','Pitcairnese','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('PER','Aimará','T',2.3); INSERT INTO
` countrylanguage ` VALUES ('PER','Ketšua','T',16.4); INSERT INTO ` countrylanguage ` VALUES
('PER','Spanish','T',79.8); INSERT INTO ` countrylanguage ` VALUES ('PHL','Bicol','F',5.7); INSERT INTO
` countrylanguage ` VALUES ('PHL','Cebuano','F',23.3); INSERT INTO ` countrylanguage ` VALUES
('PHL','Hiligaynon','F',9.1); INSERT INTO ` countrylanguage ` VALUES ('PHL','Ilocano','F',9.3); INSERT INTO
` countrylanguage ` VALUES ('PHL','Maguindanao','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('PHL','Maranao','F',1.3); INSERT INTO ` countrylanguage ` VALUES ('PHL','Pampango','F',3.0); INSERT INTO
` countrylanguage ` VALUES ('PHL','Pangasinan','F',1.8); INSERT INTO ` countrylanguage ` VALUES
('PHL','Pilipino','T',29.3); INSERT INTO ` countrylanguage ` VALUES ('PHL','Waray-waray','F',3.8); INSERT INTO
` countrylanguage ` VALUES ('PLW','Chinese','F',1.6); INSERT INTO ` countrylanguage ` VALUES
('PLW','English','T',3.2); INSERT INTO ` countrylanguage ` VALUES ('PLW','Palau','T',82.2); INSERT INTO
` countrylanguage ` VALUES ('PLW','Philippene Languages','F',9.2); INSERT INTO ` countrylanguage ` VALUES
('PNG','Malenasian Languages','F',20.0); INSERT INTO ` countrylanguage ` VALUES ('PNG','Papuan
Languages','F',78.1); INSERT INTO ` countrylanguage ` VALUES ('POL','Belorussian','F',0.5); INSERT INTO
` countrylanguage ` VALUES ('POL','German','F',1.3); INSERT INTO ` countrylanguage ` VALUES
('POL','Polish','T',97.6); INSERT INTO ` countrylanguage ` VALUES ('POL','Ukrainian','F',0.6); INSERT INTO
` countrylanguage ` VALUES ('PRI','English','F',47.4); INSERT INTO ` countrylanguage ` VALUES
('PRI','Spanish','T',51.3); INSERT INTO ` countrylanguage ` VALUES ('PRK','Chinese','F',0.1); INSERT INTO
` countrylanguage ` VALUES ('PRK','Korean','T',99.9); INSERT INTO ` countrylanguage ` VALUES
('PRT','Portuguese','T',99.0); INSERT INTO ` countrylanguage ` VALUES ('PRY','German','F',0.9); INSERT INTO
` countrylanguage ` VALUES ('PRY','Guaraní','T',40.1); INSERT INTO ` countrylanguage ` VALUES
('PRY','Portuguese','F',3.2); INSERT INTO ` countrylanguage ` VALUES ('PRY','Spanish','T',55.1); INSERT INTO
` countrylanguage ` VALUES ('PSE','Arabic','F',95.9); INSERT INTO ` countrylanguage ` VALUES
('PSE','Hebrew','F',4.1); INSERT INTO ` countrylanguage ` VALUES ('PYF','Chinese','F',2.9); INSERT INTO
` countrylanguage ` VALUES ('PYF','French','T',40.8); INSERT INTO ` countrylanguage ` VALUES
('PYF','Tahitian','F',46.4); INSERT INTO ` countrylanguage ` VALUES ('QAT','Arabic','T',40.7); INSERT INTO
` countrylanguage ` VALUES ('QAT','Urdu','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('REU','Chinese','F',2.8); INSERT INTO ` countrylanguage ` VALUES ('REU','Comorian','F',2.8); INSERT INTO
` countrylanguage ` VALUES ('REU','Creole French','F',91.5); INSERT INTO ` countrylanguage ` VALUES
('REU','Malagasy','F',1.4); INSERT INTO ` countrylanguage ` VALUES ('REU','Tamil','F',0.0); INSERT INTO
` countrylanguage ` VALUES ('ROM','German','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('ROM','Hungarian','F',7.2); INSERT INTO ` countrylanguage ` VALUES ('ROM','Romani','T',0.7); INSERT INTO
` countrylanguage ` VALUES ('ROM','Romanian','T',90.7); INSERT INTO ` countrylanguage ` VALUES
('ROM','Serbo-Croatian','F',0.1); INSERT INTO ` countrylanguage ` VALUES ('ROM','Ukrainian','F',0.3); INSERT
INTO ` countrylanguage ` VALUES ('RUS','Avarian','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('RUS','Bashkir','F',0.7); INSERT INTO ` countrylanguage ` VALUES ('RUS','Belorussian','F',0.3); INSERT INTO
` countrylanguage ` VALUES ('RUS','Chechen','F',0.6); INSERT INTO ` countrylanguage ` VALUES
('RUS','Chuvash','F',0.9); INSERT INTO ` countrylanguage ` VALUES ('RUS','Kazakh','F',0.4); INSERT INTO
` countrylanguage ` VALUES ('RUS','Mari','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('RUS','Mordva','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('RUS','Russian','T',86.6); INSERT INTO
` countrylanguage ` VALUES ('RUS','Tatar','F',3.2); INSERT INTO ` countrylanguage ` VALUES
('RUS','Udmur','F',0.3); INSERT INTO ` countrylanguage ` VALUES ('RUS','Ukrainian','F',1.3); INSERT INTO
` countrylanguage ` VALUES ('RWA','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES
('RWA','Rwanda','T',100.0); INSERT INTO ` countrylanguage ` VALUES ('SAU','Arabic','T',95.0); INSERT INTO
` countrylanguage ` VALUES ('SDN','Arabic','T',49.4); INSERT INTO ` countrylanguage ` VALUES
('SDN','Bari','F',2.5); INSERT INTO ` countrylanguage ` VALUES ('SDN','Beja','F',6.4); INSERT INTO
` countrylanguage ` VALUES ('SDN','Chilluk','F',1.7); INSERT INTO ` countrylanguage ` VALUES
('SDN','Dinka','F',11.5); INSERT INTO ` countrylanguage ` VALUES ('SDN','Fur','F',2.1); INSERT INTO
` countrylanguage ` VALUES ('SDN','Lotuko','F',1.5); INSERT INTO ` countrylanguage ` VALUES ('SDN','Nubian
Languages','F',8.1); INSERT INTO ` countrylanguage ` VALUES ('SDN','Nuer','F',4.9); INSERT INTO
` countrylanguage ` VALUES ('SDN','Zande','F',2.7); INSERT INTO ` countrylanguage ` VALUES
('SEN','Diola','F',5.0); INSERT INTO ` countrylanguage ` VALUES ('SEN','Ful','F',21.7); INSERT INTO
` countrylanguage ` VALUES ('SEN','Malinke','F',3.8); INSERT INTO ` countrylanguage ` VALUES
('SEN','Serer','F',12.5); INSERT INTO ` countrylanguage ` VALUES ('SEN','Soninke','F',1.3); INSERT INTO
` countrylanguage ` VALUES ('SEN','Wolof','T',48.1); INSERT INTO ` countrylanguage ` VALUES
('SGP','Chinese','T',77.1); INSERT INTO ` countrylanguage ` VALUES ('SGP','Malay','T',14.1); INSERT INTO
` countrylanguage ` VALUES ('SGP','Tamil','T',7.4); INSERT INTO ` countrylanguage ` VALUES
('SHN','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('SJM','Norwegian','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('SJM','Russian','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('SLB','Malenasian Languages','F',85.6); INSERT INTO ` countrylanguage ` VALUES ('SLB','Papuan
Languages','F',8.6); INSERT INTO ` countrylanguage ` VALUES ('SLB','Polynesian Languages','F',3.8); INSERT
INTO ` countrylanguage ` VALUES ('SLE','Bullom-sherbro','F',3.8); INSERT INTO ` countrylanguage ` VALUES
('SLE','Ful','F',3.8); INSERT INTO ` countrylanguage ` VALUES ('SLE','Kono-vai','F',5.1); INSERT INTO
` countrylanguage ` VALUES ('SLE','Kuranko','F',3.4); INSERT INTO ` countrylanguage ` VALUES
('SLE','Limba','F',8.3); INSERT INTO ` countrylanguage ` VALUES ('SLE','Mende','F',34.8); INSERT INTO
` countrylanguage ` VALUES ('SLE','Temne','F',31.8); INSERT INTO ` countrylanguage ` VALUES
('SLE','Yalunka','F',3.4); INSERT INTO ` countrylanguage ` VALUES ('SLV','Nahua','F',0.0); INSERT INTO
` countrylanguage ` VALUES ('SLV','Spanish','T',100.0); INSERT INTO ` countrylanguage ` VALUES
('SMR','Italian','T',100.0); INSERT INTO ` countrylanguage ` VALUES ('SOM','Arabic','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('SOM','Somali','T',98.3); INSERT INTO ` countrylanguage ` VALUES
('SPM','French','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('STP','Crioulo','F',86.3); INSERT INTO
` countrylanguage ` VALUES ('STP','French','F',0.7); INSERT INTO ` countrylanguage ` VALUES
('SUR','Hindi','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('SUR','Sranantonga','F',81.0); INSERT INTO
` countrylanguage ` VALUES ('SVK','Czech and Moravian','F',1.1); INSERT INTO ` countrylanguage ` VALUES
('SVK','Hungarian','F',10.5); INSERT INTO ` countrylanguage ` VALUES ('SVK','Romani','F',1.7); INSERT INTO
` countrylanguage ` VALUES ('SVK','Slovak','T',85.6); INSERT INTO ` countrylanguage ` VALUES ('SVK','Ukrainian
and Russian','F',0.6); INSERT INTO ` countrylanguage ` VALUES ('SVN','Hungarian','F',0.5); INSERT INTO
` countrylanguage ` VALUES ('SVN','Serbo-Croatian','F',7.9); INSERT INTO ` countrylanguage ` VALUES
('SVN','Slovene','T',87.9); INSERT INTO ` countrylanguage ` VALUES ('SWE','Arabic','F',0.8); INSERT INTO
` countrylanguage ` VALUES ('SWE','Finnish','F',2.4); INSERT INTO ` countrylanguage ` VALUES
('SWE','Norwegian','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('SWE','Southern Slavic
Languages','F',1.3); INSERT INTO ` countrylanguage ` VALUES ('SWE','Spanish','F',0.6); INSERT INTO
` countrylanguage ` VALUES ('SWE','Swedish','T',89.5); INSERT INTO ` countrylanguage ` VALUES
('SWZ','Swazi','T',89.9); INSERT INTO ` countrylanguage ` VALUES ('SWZ','Zulu','F',2.0); INSERT INTO
` countrylanguage ` VALUES ('SYC','English','T',3.8); INSERT INTO ` countrylanguage ` VALUES
('SYC','French','T',1.3); INSERT INTO ` countrylanguage ` VALUES ('SYC','Seselwa','F',91.3); INSERT INTO
` countrylanguage ` VALUES ('SYR','Arabic','T',90.0); INSERT INTO ` countrylanguage ` VALUES
('SYR','Kurdish','F',9.0); INSERT INTO ` countrylanguage ` VALUES ('TCA','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('TCD','Arabic','T',12.3); INSERT INTO ` countrylanguage ` VALUES
('TCD','Gorane','F',6.2); INSERT INTO ` countrylanguage ` VALUES ('TCD','Hadjarai','F',6.7); INSERT INTO
` countrylanguage ` VALUES ('TCD','Kanem-bornu','F',9.0); INSERT INTO ` countrylanguage ` VALUES
('TCD','Mayo-kebbi','F',11.5); INSERT INTO ` countrylanguage ` VALUES ('TCD','Ouaddai','F',8.7); INSERT INTO
` countrylanguage ` VALUES ('TCD','Sara','F',27.7); INSERT INTO ` countrylanguage ` VALUES
('TCD','Tandjile','F',6.5); INSERT INTO ` countrylanguage ` VALUES ('TGO','Ane','F',5.7); INSERT INTO
` countrylanguage ` VALUES ('TGO','Ewe','T',23.2); INSERT INTO ` countrylanguage ` VALUES
('TGO','Gurma','F',3.4); INSERT INTO ` countrylanguage ` VALUES ('TGO','Kabyé','T',13.8); INSERT INTO
` countrylanguage ` VALUES ('TGO','Kotokoli','F',5.7); INSERT INTO ` countrylanguage ` VALUES
('TGO','Moba','F',5.4); INSERT INTO ` countrylanguage ` VALUES ('TGO','Naudemba','F',4.1); INSERT INTO
` countrylanguage ` VALUES ('TGO','Watyi','F',10.3); INSERT INTO ` countrylanguage ` VALUES
('THA','Chinese','F',12.1); INSERT INTO ` countrylanguage ` VALUES ('THA','Khmer','F',1.3); INSERT INTO
` countrylanguage ` VALUES ('THA','Kuy','F',1.1); INSERT INTO ` countrylanguage ` VALUES ('THA','Lao','F',26.9);
INSERT INTO ` countrylanguage ` VALUES ('THA','Malay','F',3.6); INSERT INTO ` countrylanguage ` VALUES
('THA','Thai','T',52.6); INSERT INTO ` countrylanguage ` VALUES ('TJK','Russian','F',9.7); INSERT INTO
` countrylanguage ` VALUES ('TJK','Tadzhik','T',62.2); INSERT INTO ` countrylanguage ` VALUES
('TJK','Uzbek','F',23.2); INSERT INTO ` countrylanguage ` VALUES ('TKL','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('TKL','Tokelau','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('TKM','Kazakh','F',2.0); INSERT INTO ` countrylanguage ` VALUES ('TKM','Russian','F',6.7); INSERT INTO
` countrylanguage ` VALUES ('TKM','Turkmenian','T',76.7); INSERT INTO ` countrylanguage ` VALUES
('TKM','Uzbek','F',9.2); INSERT INTO ` countrylanguage ` VALUES ('TMP','Portuguese','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('TMP','Sunda','F',0.0); INSERT INTO ` countrylanguage ` VALUES
('TON','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('TON','Tongan','T',98.3); INSERT INTO
` countrylanguage ` VALUES ('TTO','Creole English','F',2.9); INSERT INTO ` countrylanguage ` VALUES
('TTO','English','F',93.5); INSERT INTO ` countrylanguage ` VALUES ('TTO','Hindi','F',3.4); INSERT INTO
` countrylanguage ` VALUES ('TUN','Arabic','T',69.9); INSERT INTO ` countrylanguage ` VALUES ('TUN','ArabicFrench','F',26.3); INSERT INTO ` countrylanguage ` VALUES ('TUN','Arabic-French-English','F',3.2); INSERT
INTO ` countrylanguage ` VALUES ('TUR','Arabic','F',1.4); INSERT INTO ` countrylanguage ` VALUES
('TUR','Kurdish','F',10.6); INSERT INTO ` countrylanguage ` VALUES ('TUR','Turkish','T',87.6); INSERT INTO
` countrylanguage ` VALUES ('TUV','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES
('TUV','Kiribati','F',7.5); INSERT INTO ` countrylanguage ` VALUES ('TUV','Tuvalu','T',92.5); INSERT INTO
` countrylanguage ` VALUES ('TWN','Ami','F',0.6); INSERT INTO ` countrylanguage ` VALUES
('TWN','Atayal','F',0.4); INSERT INTO ` countrylanguage ` VALUES ('TWN','Hakka','F',11.0); INSERT INTO
` countrylanguage ` VALUES ('TWN','Mandarin Chinese','T',20.1); INSERT INTO ` countrylanguage ` VALUES
('TWN','Min','F',66.7); INSERT INTO ` countrylanguage ` VALUES ('TWN','Paiwan','F',0.3); INSERT INTO
` countrylanguage ` VALUES ('TZA','Chaga and Pare','F',4.9); INSERT INTO ` countrylanguage ` VALUES
('TZA','Gogo','F',3.9); INSERT INTO ` countrylanguage ` VALUES ('TZA','Ha','F',3.5); INSERT INTO
` countrylanguage ` VALUES ('TZA','Haya','F',5.9); INSERT INTO ` countrylanguage ` VALUES
('TZA','Hehet','F',6.9); INSERT INTO ` countrylanguage ` VALUES ('TZA','Luguru','F',4.9); INSERT INTO
` countrylanguage ` VALUES ('TZA','Makonde','F',5.9); INSERT INTO ` countrylanguage ` VALUES
('TZA','Nyakusa','F',5.4); INSERT INTO ` countrylanguage ` VALUES ('TZA','Nyamwesi','F',21.1); INSERT INTO
` countrylanguage ` VALUES ('TZA','Shambala','F',4.3); INSERT INTO ` countrylanguage ` VALUES
('TZA','Swahili','T',8.8); INSERT INTO ` countrylanguage ` VALUES ('UGA','Acholi','F',4.4); INSERT INTO
` countrylanguage ` VALUES ('UGA','Ganda','F',18.1); INSERT INTO ` countrylanguage ` VALUES
('UGA','Gisu','F',4.5); INSERT INTO ` countrylanguage ` VALUES ('UGA','Kiga','F',8.3); INSERT INTO
` countrylanguage ` VALUES ('UGA','Lango','F',5.9); INSERT INTO ` countrylanguage ` VALUES
('UGA','Lugbara','F',4.7); INSERT INTO ` countrylanguage ` VALUES ('UGA','Nkole','F',10.7); INSERT INTO
` countrylanguage ` VALUES ('UGA','Rwanda','F',3.2); INSERT INTO ` countrylanguage ` VALUES
('UGA','Soga','F',8.2); INSERT INTO ` countrylanguage ` VALUES ('UGA','Teso','F',6.0); INSERT INTO
` countrylanguage ` VALUES ('UKR','Belorussian','F',0.3); INSERT INTO ` countrylanguage ` VALUES
('UKR','Bulgariana','F',0.3); INSERT INTO ` countrylanguage ` VALUES ('UKR','Hungarian','F',0.3); INSERT INTO
` countrylanguage ` VALUES ('UKR','Polish','F',0.1); INSERT INTO ` countrylanguage ` VALUES
('UKR','Romanian','F',0.7); INSERT INTO ` countrylanguage ` VALUES ('UKR','Russian','F',32.9); INSERT INTO
` countrylanguage ` VALUES ('UKR','Ukrainian','T',64.7); INSERT INTO ` countrylanguage ` VALUES
('UMI','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('URY','Spanish','T',95.7); INSERT INTO
` countrylanguage ` VALUES ('USA','Chinese','F',0.6); INSERT INTO ` countrylanguage ` VALUES
('USA','English','T',86.2); INSERT INTO ` countrylanguage ` VALUES ('USA','French','F',0.7); INSERT INTO
` countrylanguage ` VALUES ('USA','German','F',0.7); INSERT INTO ` countrylanguage ` VALUES
('USA','Italian','F',0.6); INSERT INTO ` countrylanguage ` VALUES ('USA','Japanese','F',0.2); INSERT INTO
` countrylanguage ` VALUES ('USA','Korean','F',0.3); INSERT INTO ` countrylanguage ` VALUES
('USA','Polish','F',0.3); INSERT INTO ` countrylanguage ` VALUES ('USA','Portuguese','F',0.2); INSERT INTO
` countrylanguage ` VALUES ('USA','Spanish','F',7.5); INSERT INTO ` countrylanguage ` VALUES
('USA','Tagalog','F',0.4); INSERT INTO ` countrylanguage ` VALUES ('USA','Vietnamese','F',0.2); INSERT INTO
` countrylanguage ` VALUES ('UZB','Karakalpak','F',2.0); INSERT INTO ` countrylanguage ` VALUES
('UZB','Kazakh','F',3.8); INSERT INTO ` countrylanguage ` VALUES ('UZB','Russian','F',10.9); INSERT INTO
` countrylanguage ` VALUES ('UZB','Tadzhik','F',4.4); INSERT INTO ` countrylanguage ` VALUES
('UZB','Tatar','F',1.8); INSERT INTO ` countrylanguage ` VALUES ('UZB','Uzbek','T',72.6); INSERT INTO
` countrylanguage ` VALUES ('VAT','Italian','T',0.0); INSERT INTO ` countrylanguage ` VALUES ('VCT','Creole
English','F',99.1); INSERT INTO ` countrylanguage ` VALUES ('VCT','English','T',0.0); INSERT INTO
` countrylanguage ` VALUES ('VEN','Goajiro','F',0.4); INSERT INTO ` countrylanguage ` VALUES
('VEN','Spanish','T',96.9); INSERT INTO ` countrylanguage ` VALUES ('VEN','Warrau','F',0.1); INSERT INTO
` countrylanguage ` VALUES ('VGB','English','T',0.0); INSERT INTO ` countrylanguage ` VALUES
('VIR','English','T',81.7); INSERT INTO ` countrylanguage ` VALUES ('VIR','French','F',2.5); INSERT INTO
` countrylanguage ` VALUES ('VIR','Spanish','F',13.3); INSERT INTO ` countrylanguage ` VALUES
('VNM','Chinese','F',1.4); INSERT INTO ` countrylanguage ` VALUES ('VNM','Khmer','F',1.4); INSERT INTO
` countrylanguage ` VALUES ('VNM','Man','F',0.7); INSERT INTO ` countrylanguage ` VALUES
('VNM','Miao','F',0.9); INSERT INTO ` countrylanguage ` VALUES ('VNM','Muong','F',1.5); INSERT INTO
` countrylanguage ` VALUES ('VNM','Nung','F',1.1); INSERT INTO ` countrylanguage ` VALUES
('VNM','Thai','F',1.6); INSERT INTO ` countrylanguage ` VALUES ('VNM','Tho','F',1.8); INSERT INTO
` countrylanguage ` VALUES ('VNM','Vietnamese','T',86.8); INSERT INTO ` countrylanguage ` VALUES
('VUT','Bislama','T',56.6); INSERT INTO ` countrylanguage ` VALUES ('VUT','English','T',28.3); INSERT INTO
` countrylanguage ` VALUES ('VUT','French','T',14.2); INSERT INTO ` countrylanguage ` VALUES
('WLF','Futuna','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('WLF','Wallis','F',0.0); INSERT INTO
` countrylanguage ` VALUES ('WSM','English','T',0.6); INSERT INTO ` countrylanguage ` VALUES
('WSM','Samoan','T',47.5); INSERT INTO ` countrylanguage ` VALUES ('WSM','Samoan-English','F',52.0);
INSERT INTO ` countrylanguage ` VALUES ('YEM','Arabic','T',99.6); INSERT INTO ` countrylanguage ` VALUES
('YEM','Soqutri','F',0.0); INSERT INTO ` countrylanguage ` VALUES ('YUG','Albaniana','F',16.5); INSERT INTO
` countrylanguage ` VALUES ('YUG','Hungarian','F',3.4); INSERT INTO ` countrylanguage ` VALUES
('YUG','Macedonian','F',0.5); INSERT INTO ` countrylanguage ` VALUES ('YUG','Romani','F',1.4); INSERT INTO
` countrylanguage ` VALUES ('YUG','Serbo-Croatian','T',75.2); INSERT INTO ` countrylanguage ` VALUES
('YUG','Slovak','F',0.7); INSERT INTO ` countrylanguage ` VALUES ('ZAF','Afrikaans','T',14.3); INSERT INTO
` countrylanguage ` VALUES ('ZAF','English','T',8.5); INSERT INTO ` countrylanguage ` VALUES
('ZAF','Ndebele','F',1.5); INSERT INTO ` countrylanguage ` VALUES ('ZAF','Northsotho','F',9.1); INSERT INTO
` countrylanguage ` VALUES ('ZAF','Southsotho','F',7.6); INSERT INTO ` countrylanguage ` VALUES
('ZAF','Swazi','F',2.5); INSERT INTO ` countrylanguage ` VALUES ('ZAF','Tsonga','F',4.3); INSERT INTO
` countrylanguage ` VALUES ('ZAF','Tswana','F',8.1); INSERT INTO ` countrylanguage ` VALUES
('ZAF','Venda','F',2.2); INSERT INTO ` countrylanguage ` VALUES ('ZAF','Xhosa','T',17.7); INSERT INTO
` countrylanguage ` VALUES ('ZAF','Zulu','T',22.7); INSERT INTO ` countrylanguage ` VALUES
('ZMB','Bemba','F',29.7); INSERT INTO ` countrylanguage ` VALUES ('ZMB','Chewa','F',5.7); INSERT INTO
` countrylanguage ` VALUES ('ZMB','Lozi','F',6.4); INSERT INTO ` countrylanguage ` VALUES
('ZMB','Nsenga','F',4.3); INSERT INTO ` countrylanguage ` VALUES ('ZMB','Nyanja','F',7.8); INSERT INTO
` countrylanguage ` VALUES ('ZMB','Tongan','F',11.0); INSERT INTO ` countrylanguage ` VALUES
('ZWE','English','T',2.2); INSERT INTO ` countrylanguage ` VALUES ('ZWE','Ndebele','F',16.2); INSERT INTO
` countrylanguage ` VALUES ('ZWE','Nyanja','F',2.2); INSERT INTO ` countrylanguage ` VALUES
('ZWE','Shona','F',72.1); commit; -- -- Dumping events for database 'world' -- -- -- Dumping routines for database
'world' -- /*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */; /*!40101 SET SQL_MODE=@OLD_SQL_MODE
*/; /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */; /*!40014 SET
UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */; /*!40101 SET
CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; /*!40101 SET
CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; /*!40101 SET
COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; /*!40111 SET
SQL_NOTES=@OLD_SQL_NOTES */; SET autocommit=@old_autocommit; -- Dump completed on 2020-01-22
9:56:18