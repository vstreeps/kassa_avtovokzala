-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.1.33-community - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных kassaavtovokzala
CREATE DATABASE IF NOT EXISTS `kassaavtovokzala` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kassaavtovokzala`;

-- Дамп структуры для таблица kassaavtovokzala.informationbiletov
CREATE TABLE IF NOT EXISTS `informationbiletov` (
  `Nomer reisa` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(50) NOT NULL,
  `Time otpravleniya` datetime NOT NULL,
  `Time bribitiya` datetime NOT NULL,
  `Mesto` int(11) NOT NULL,
  `Nachalniy punkt` varchar(50) NOT NULL,
  `Konechniy punkt` varchar(50) NOT NULL,
  `Cena bileta` int(11) NOT NULL,
  `Vozvrat` int(11) DEFAULT NULL,
  PRIMARY KEY (`Nomer reisa`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы kassaavtovokzala.informationbiletov: 5 rows
/*!40000 ALTER TABLE `informationbiletov` DISABLE KEYS */;
INSERT INTO `informationbiletov` (`Nomer reisa`, `FIO`, `Time otpravleniya`, `Time bribitiya`, `Mesto`, `Nachalniy punkt`, `Konechniy punkt`, `Cena bileta`, `Vozvrat`) VALUES
	(1, 'Ivanov I.I.', '2018-05-17 09:00:00', '2018-05-17 10:30:00', 10, 'Glazov', 'Ijevsk', 400, NULL),
	(2, 'Sidorov N.A.', '2018-05-17 06:00:00', '2018-05-17 10:30:00', 1, 'Glazov', 'Mojga', 850, NULL),
	(3, 'Petrov D.E.', '2018-05-17 12:30:00', '2018-05-17 15:00:00', 3, 'Ijevsk', 'Votkinsk', 500, NULL),
	(4, 'Konchalovskiy A.A.', '2018-05-17 14:00:00', '2018-05-17 15:30:00', 5, 'Ijevsk', 'Igra', 250, NULL),
	(5, 'Ivshin A.S.', '2018-05-17 18:30:00', '2018-05-17 21:30:00', 9, 'Mojga', 'Votkinsk', 700, NULL);
/*!40000 ALTER TABLE `informationbiletov` ENABLE KEYS */;

-- Дамп структуры для таблица kassaavtovokzala.raspisanieavtobusov
CREATE TABLE IF NOT EXISTS `raspisanieavtobusov` (
  `Nomer reisa` int(11) NOT NULL AUTO_INCREMENT,
  `Mesto otpravleniya` varchar(50) NOT NULL,
  `Promejitochniy punkt` varchar(50) DEFAULT NULL,
  `Konechniy punkt` varchar(50) NOT NULL,
  `Time otpravleniya` datetime NOT NULL,
  `Time pribitiya` datetime NOT NULL,
  `Kolichestvo mest` int(11) DEFAULT NULL,
  PRIMARY KEY (`Nomer reisa`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы kassaavtovokzala.raspisanieavtobusov: 5 rows
/*!40000 ALTER TABLE `raspisanieavtobusov` DISABLE KEYS */;
INSERT INTO `raspisanieavtobusov` (`Nomer reisa`, `Mesto otpravleniya`, `Promejitochniy punkt`, `Konechniy punkt`, `Time otpravleniya`, `Time pribitiya`, `Kolichestvo mest`) VALUES
	(1, 'Glazov', 'Igra', 'Ijevsk', '2018-05-17 09:00:00', '2018-05-17 10:30:00', 10),
	(2, 'Glazov', 'Ijevsk', 'Mojga', '2018-05-17 06:00:00', '2018-05-17 10:30:00', 15),
	(3, 'Ijevsk', '', 'Votkinsk', '2018-05-17 12:30:00', '2018-05-17 15:00:00', 10),
	(4, 'Ijevsk', '', 'Igra', '2018-05-17 14:00:00', '2018-05-17 15:30:00', 10),
	(5, 'Mojga', 'Ijevsk', 'Votkinsk', '2018-05-17 18:30:00', '2018-05-17 21:30:00', 10);
/*!40000 ALTER TABLE `raspisanieavtobusov` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
