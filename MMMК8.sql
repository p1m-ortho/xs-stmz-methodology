SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `mmmk8`;
CREATE TABLE `mmmk8` (
  `ID` int(11) NOT NULL,
  `TP_NTM` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TP_SAS` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `P` int(11) NOT NULL,
  `DIAG_NAPR` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `PRNG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
