-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 31 2021 г., 12:22
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `petrenko`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE `customers` (
  `cnum` int(10) NOT NULL,
  `cname` char(20) NOT NULL,
  `city` char(20) NOT NULL,
  `rating` int(10) NOT NULL,
  `snum` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES
(2001, 'Hoffman', 'Paris', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clements', 'Paris', 100, 1001),
(2007, 'Pereira', 'Rome', 100, 1004),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2001, 'Hoffman', 'Paris', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clements', 'Paris', 100, 1001),
(2007, 'Pereira', 'Rome', 100, 1004),
(2008, 'Cisneros', 'San Jose', 300, 1007);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `onum` int(10) NOT NULL,
  `amt` float NOT NULL,
  `dostavka` int(10) NOT NULL,
  `oplata` char(10) NOT NULL,
  `odate` date NOT NULL,
  `cnum` int(10) NOT NULL,
  `snum` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`onum`, `amt`, `dostavka`, `oplata`, `odate`, `cnum`, `snum`) VALUES
(3001, 18.69, 100, 'nal', '1990-03-10', 2008, 1007),
(3002, 1900.1, 200, 'beznal', '1990-03-10', 2007, 1004),
(3003, 767.19, 300, 'perev', '1990-03-10', 2001, 1001),
(3005, 5160.45, 123, 'nal', '1990-03-10', 2003, 1002),
(3006, 1098.16, 443, 'beznal', '1990-03-10', 2008, 1007),
(3007, 75.75, 756, 'nal', '1990-04-10', 2004, 1002),
(3008, 4723, 431, 'beznal', '1990-05-10', 2006, 1001),
(3009, 1713.23, 677, 'perev', '1990-04-10', 2002, 1003),
(3010, 1309.95, 544, 'beznal', '1990-06-10', 2004, 1002),
(3001, 18.69, 100, 'nal', '1990-03-10', 2008, 1007),
(3002, 1900.1, 200, 'beznal', '1990-03-10', 2007, 1004),
(3003, 767.19, 300, 'perev', '1990-03-10', 2001, 1001),
(3005, 5160.45, 123, 'nal', '1990-03-10', 2003, 1002),
(3006, 1098.16, 443, 'beznal', '1990-03-10', 2008, 1007),
(3007, 75.75, 756, 'nal', '1990-04-10', 2004, 1002),
(3008, 4723, 431, 'beznal', '1990-05-10', 2006, 1001),
(3009, 1713.23, 677, 'perev', '1990-04-10', 2002, 1003),
(3010, 1309.95, 544, 'beznal', '1990-06-10', 2004, 1002);

-- --------------------------------------------------------

--
-- Структура таблицы `salespeople`
--

CREATE TABLE `salespeople` (
  `snum` int(10) NOT NULL,
  `sname` char(20) NOT NULL,
  `naprav` char(40) NOT NULL,
  `city` char(20) NOT NULL,
  `comm` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `salespeople`
--

INSERT INTO `salespeople` (`snum`, `sname`, `naprav`, `city`, `comm`) VALUES
(1001, 'Peel', 'prod', 'London', 0.12),
(1002, 'Serres', 'soki', 'San Jose', 0.16),
(1003, 'Axelrod', 'water', 'New York', 0.1),
(1004, 'Motika', 'moloko', 'London', 0.11),
(1007, 'Rifkin', 'myaso', 'Barselona', 0.16),
(1001, 'Peel', 'prod', 'London', 0.12),
(1002, 'Serres', 'soki', 'San Jose', 0.16),
(1003, 'Axelrod', 'water', 'New York', 0.1),
(1004, 'Motika', 'moloko', 'London', 0.11),
(1007, 'Rifkin', 'myaso', 'Barselona', 0.16);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.1` (
`city` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.2` (
`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.3` (
`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.4` (
`snum` int(10)
,`sname` char(20)
,`naprav` char(40)
,`city` char(20)
,`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.5` (
`snum` int(10)
,`sname` char(20)
,`naprav` char(40)
,`city` char(20)
,`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.6` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.7` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.8` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.9`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.9` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6 4.10`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6 4.10` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.1` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.2` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.3` (
`snum` int(10)
,`sname` char(20)
,`naprav` char(40)
,`city` char(20)
,`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.4` (
`snum` int(10)
,`sname` char(20)
,`naprav` char(40)
,`city` char(20)
,`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.7` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.8` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.9`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.9` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 6.1 2.10`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 6.1 2.10` (
`cnum` int(10)
,`cname` char(20)
,`city` char(20)
,`rating` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 1` (
`Количество продавцов` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 2` (
`Города продавцов` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 3` (
`Количество строк` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 4` (
`Общий рейтинг заказчиков` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 5` (
`Сумма заказов` double
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 6` (
`Средний рейтинг заказчиков` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 7` (
`Средняя стоимость заказов` double
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 8` (
`Минимальный рейтинг заказчика` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 9`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 9` (
`Максимальныая комиссия продавца` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 10`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 10` (
`Общая стоимость заказа` double
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 11`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 11` (
`cname` char(20)
,`city` char(20)
,`rating / 50` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 7 12`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 7 12` (
`sname` char(20)
,`city` char(20)
,`sin(comm)*10` double
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 1` (
`SUM(amt)` double
,`odate` date
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 3` (
`MIN(amt)` float
,`cnum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 4` (
`MIN(amt)` float
,`odate` date
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 5` (
`MIN(amt)` float
,`cnum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 6` (
`cname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 7` (
`city` char(20)
,`MAX(rating)` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8 8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8 8` (
`COUNT(snum)` bigint(21)
,`odate` date
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 1` (
`cname` char(20)
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 2` (
`snum` int(10)
,`cname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 3` (
`snum` int(10)
,`sname` char(20)
,`city` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 4` (
`cname` char(20)
,`city` char(20)
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 5` (
`snum` int(10)
,`sname` char(20)
,`city` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 6` (
`cname` char(20)
,`city` char(20)
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 8.1 7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 8.1 7` (
`city` char(20)
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 1` (
`sname` char(20)
,`cname` char(20)
,`amt` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 2` (
`sname` char(20)
,`amt` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 3` (
`sname` char(20)
,`cname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 4` (
`sname` char(20)
,`cname` char(20)
,`city` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 5` (
`odate` date
,`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 6`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 6` (
`amt` float
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 7`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 7` (
`sname` char(20)
,`odate` date
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 8`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 8` (
`cname` char(20)
,`amt` float
,`comm` float
,`odate` date
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 9`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 9` (
`cname` char(20)
,`rating` int(10)
,`amt` float
,`odate` date
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 9 10`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 9 10` (
`onum` int(10)
,`cname` char(20)
,`sname` char(20)
,`city` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 11 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 11 1` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 11 2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 11 2` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 11 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 11 3` (
`cname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 11 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 11 4` (
`sname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 11 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 11 5` (
`onum` int(10)
,`amt` float
,`dostavka` int(10)
,`oplata` char(10)
,`odate` date
,`cnum` int(10)
,`snum` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 12 2`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 12 2` (
`cname` char(20)
,`rating` int(10)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 12 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 12 3` (
`comm` float
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 12 4`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 12 4` (
`COUNT(amt)` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 12 5`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 12 5` (
`sname` char(20)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 13 1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 13 1` (
`cname` char(20)
,`city` char(20)
,`rating` int(11)
,`Высокий рейтинг` varchar(15)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `практическая 13 3`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `практическая 13 3` (
`snum` int(11)
);

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.1`
--
DROP TABLE IF EXISTS `практическая 6 4.1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.1`  AS  select distinct `customers`.`city` AS `city` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.2`
--
DROP TABLE IF EXISTS `практическая 6 4.2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.2`  AS  select distinct `customers`.`rating` AS `rating` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.3`
--
DROP TABLE IF EXISTS `практическая 6 4.3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.3`  AS  select distinct `salespeople`.`comm` AS `comm` from `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.4`
--
DROP TABLE IF EXISTS `практическая 6 4.4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.4`  AS  select `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`naprav` AS `naprav`,`salespeople`.`city` AS `city`,`salespeople`.`comm` AS `comm` from `salespeople` where `salespeople`.`city` = 'London' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.5`
--
DROP TABLE IF EXISTS `практическая 6 4.5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.5`  AS  select `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`naprav` AS `naprav`,`salespeople`.`city` AS `city`,`salespeople`.`comm` AS `comm` from `salespeople` where `salespeople`.`comm` > '0.12' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.6`
--
DROP TABLE IF EXISTS `практическая 6 4.6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.6`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`city` = 'Rome' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.7`
--
DROP TABLE IF EXISTS `практическая 6 4.7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.7`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`rating` = '100' and '300' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.8`
--
DROP TABLE IF EXISTS `практическая 6 4.8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.8`  AS  select `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`amt` < '1000' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.9`
--
DROP TABLE IF EXISTS `практическая 6 4.9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.9`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`city` = 'Rome' and `customers`.`rating` = '200' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6 4.10`
--
DROP TABLE IF EXISTS `практическая 6 4.10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6 4.10`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`city` = 'Berlin' or `customers`.`rating` = '300' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.1`
--
DROP TABLE IF EXISTS `практическая 6.1 2.1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.1`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`snum` = '1001' or `customers`.`snum` = '1002' or `customers`.`snum` = '1007' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.2`
--
DROP TABLE IF EXISTS `практическая 6.1 2.2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.2`  AS  select `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`cnum` = '2001' or `orders`.`cnum` = '2004' or `orders`.`cnum` = '2008' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.3`
--
DROP TABLE IF EXISTS `практическая 6.1 2.3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.3`  AS  select `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`naprav` AS `naprav`,`salespeople`.`city` AS `city`,`salespeople`.`comm` AS `comm` from `salespeople` where `salespeople`.`snum` between '1001' and '1005' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.4`
--
DROP TABLE IF EXISTS `практическая 6.1 2.4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.4`  AS  select `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`naprav` AS `naprav`,`salespeople`.`city` AS `city`,`salespeople`.`comm` AS `comm` from `salespeople` where `salespeople`.`comm` between '0.10' and '0.13' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.7`
--
DROP TABLE IF EXISTS `практическая 6.1 2.7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.7`  AS  select `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`odate` between '1990-03-10' and '1990-05-10' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.8`
--
DROP TABLE IF EXISTS `практическая 6.1 2.8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.8`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`cname` like 'G%' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.9`
--
DROP TABLE IF EXISTS `практическая 6.1 2.9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.9`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`cname` like 'C%' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 6.1 2.10`
--
DROP TABLE IF EXISTS `практическая 6.1 2.10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 6.1 2.10`  AS  select `customers`.`cnum` AS `cnum`,`customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,`customers`.`snum` AS `snum` from `customers` where `customers`.`cname` like 'G%s' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 1`
--
DROP TABLE IF EXISTS `практическая 7 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 1`  AS  select count(0) AS `Количество продавцов` from `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 2`
--
DROP TABLE IF EXISTS `практическая 7 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 2`  AS  select count(`salespeople`.`city`) AS `Города продавцов` from `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 3`
--
DROP TABLE IF EXISTS `практическая 7 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 3`  AS  select count(0) AS `Количество строк` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 4`
--
DROP TABLE IF EXISTS `практическая 7 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 4`  AS  select sum(`customers`.`rating`) AS `Общий рейтинг заказчиков` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 5`
--
DROP TABLE IF EXISTS `практическая 7 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 5`  AS  select sum(`orders`.`amt`) AS `Сумма заказов` from `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 6`
--
DROP TABLE IF EXISTS `практическая 7 6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 6`  AS  select avg(`customers`.`rating`) AS `Средний рейтинг заказчиков` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 7`
--
DROP TABLE IF EXISTS `практическая 7 7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 7`  AS  select avg(`orders`.`amt`) AS `Средняя стоимость заказов` from `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 8`
--
DROP TABLE IF EXISTS `практическая 7 8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 8`  AS  select min(`customers`.`rating`) AS `Минимальный рейтинг заказчика` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 9`
--
DROP TABLE IF EXISTS `практическая 7 9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 9`  AS  select max(`salespeople`.`comm`) AS `Максимальныая комиссия продавца` from `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 10`
--
DROP TABLE IF EXISTS `практическая 7 10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 10`  AS  select sum(`orders`.`amt` + `orders`.`dostavka`) AS `Общая стоимость заказа` from `orders` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 11`
--
DROP TABLE IF EXISTS `практическая 7 11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 11`  AS  select `customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` / 50 AS `rating / 50` from `customers` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 7 12`
--
DROP TABLE IF EXISTS `практическая 7 12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 7 12`  AS  select `salespeople`.`sname` AS `sname`,`salespeople`.`city` AS `city`,sin(`salespeople`.`comm`) * 10 AS `sin(comm)*10` from `salespeople` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 1`
--
DROP TABLE IF EXISTS `практическая 8 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 1`  AS  select sum(`orders`.`amt`) AS `SUM(amt)`,`orders`.`odate` AS `odate` from `orders` where `orders`.`odate` = '1990-03-10' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 3`
--
DROP TABLE IF EXISTS `практическая 8 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 3`  AS  select min(`orders`.`amt`) AS `MIN(amt)`,`orders`.`cnum` AS `cnum` from `orders` group by `orders`.`cnum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 4`
--
DROP TABLE IF EXISTS `практическая 8 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 4`  AS  select min(`orders`.`amt`) AS `MIN(amt)`,`orders`.`odate` AS `odate`,`orders`.`snum` AS `snum` from `orders` group by `orders`.`cnum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 5`
--
DROP TABLE IF EXISTS `практическая 8 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 5`  AS  select min(`orders`.`amt`) AS `MIN(amt)`,`orders`.`cnum` AS `cnum` from `orders` where `orders`.`cnum` = '2004' or `orders`.`cnum` = '2006' or `orders`.`cnum` = '2008' group by `orders`.`cnum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 6`
--
DROP TABLE IF EXISTS `практическая 8 6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 6`  AS  select `customers`.`cname` AS `cname` from `customers` where `customers`.`cname` like 'G%' order by `customers`.`cname` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 7`
--
DROP TABLE IF EXISTS `практическая 8 7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 7`  AS  select `customers`.`city` AS `city`,max(`customers`.`rating`) AS `MAX(rating)` from `customers` group by `customers`.`city` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8 8`
--
DROP TABLE IF EXISTS `практическая 8 8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8 8`  AS  select count(`orders`.`snum`) AS `COUNT(snum)`,`orders`.`odate` AS `odate` from `orders` group by `orders`.`odate` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 1`
--
DROP TABLE IF EXISTS `практическая 8.1 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 1`  AS  select distinct `customers`.`cname` AS `cname`,`customers`.`rating` AS `rating` from `customers` order by `customers`.`rating` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 2`
--
DROP TABLE IF EXISTS `практическая 8.1 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 2`  AS  select distinct `customers`.`snum` AS `snum`,`customers`.`cname` AS `cname` from `customers` order by `customers`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 3`
--
DROP TABLE IF EXISTS `практическая 8.1 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 3`  AS  select `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`city` AS `city` from `salespeople` order by `salespeople`.`sname` desc ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 4`
--
DROP TABLE IF EXISTS `практическая 8.1 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 4`  AS  select distinct `customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating` from `customers` order by `customers`.`rating`,`customers`.`cname` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 5`
--
DROP TABLE IF EXISTS `практическая 8.1 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 5`  AS  select distinct `salespeople`.`snum` AS `snum`,`salespeople`.`sname` AS `sname`,`salespeople`.`city` AS `city` from `salespeople` group by `salespeople`.`city` order by `salespeople`.`sname` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 6`
--
DROP TABLE IF EXISTS `практическая 8.1 6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 6`  AS  select distinct `customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating` from `customers` group by `customers`.`cname` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 8.1 7`
--
DROP TABLE IF EXISTS `практическая 8.1 7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 8.1 7`  AS  select distinct `customers`.`city` AS `city`,`customers`.`rating` AS `rating` from `customers` order by `customers`.`rating` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 1`
--
DROP TABLE IF EXISTS `практическая 9 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 1`  AS  select distinct `salespeople`.`sname` AS `sname`,`customers`.`cname` AS `cname`,`orders`.`amt` AS `amt` from ((`salespeople` join `customers`) join `orders`) where `salespeople`.`snum` = `customers`.`snum` and `salespeople`.`snum` = `orders`.`snum` and `orders`.`amt` between 700 and 2000 ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 2`
--
DROP TABLE IF EXISTS `практическая 9 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 2`  AS  select distinct `salespeople`.`sname` AS `sname`,`orders`.`amt` AS `amt` from (`salespeople` join `orders`) where `salespeople`.`snum` = `orders`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 3`
--
DROP TABLE IF EXISTS `практическая 9 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 3`  AS  select distinct `salespeople`.`sname` AS `sname`,`customers`.`cname` AS `cname` from (`salespeople` join `customers`) where `salespeople`.`snum` = `customers`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 4`
--
DROP TABLE IF EXISTS `практическая 9 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 4`  AS  select distinct `salespeople`.`sname` AS `sname`,`customers`.`cname` AS `cname`,`salespeople`.`city` AS `city` from (`salespeople` join `customers`) where `salespeople`.`snum` = `customers`.`snum` and `salespeople`.`city` = `customers`.`city` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 5`
--
DROP TABLE IF EXISTS `практическая 9 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 5`  AS  select distinct `orders`.`odate` AS `odate`,`salespeople`.`comm` AS `comm` from (`orders` join `salespeople`) where `salespeople`.`comm` <= 0.11 and `orders`.`snum` = `salespeople`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 6`
--
DROP TABLE IF EXISTS `практическая 9 6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 6`  AS  select distinct `orders`.`amt` AS `amt`,`customers`.`rating` AS `rating` from (`orders` join `customers`) where `customers`.`rating` > 100 and `orders`.`cnum` = `customers`.`cnum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 7`
--
DROP TABLE IF EXISTS `практическая 9 7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 7`  AS  select distinct `salespeople`.`sname` AS `sname`,`orders`.`odate` AS `odate` from (`salespeople` join `orders`) where `orders`.`odate` = '1990-03-10' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 8`
--
DROP TABLE IF EXISTS `практическая 9 8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 8`  AS  select distinct `customers`.`cname` AS `cname`,`orders`.`amt` AS `amt`,`salespeople`.`comm` AS `comm`,`orders`.`odate` AS `odate` from ((`customers` join `orders`) join `salespeople`) where `orders`.`odate` = '1990-04-10' and `customers`.`snum` = `salespeople`.`snum` and `customers`.`snum` = `orders`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 9`
--
DROP TABLE IF EXISTS `практическая 9 9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 9`  AS  select distinct `customers`.`cname` AS `cname`,`customers`.`rating` AS `rating`,`orders`.`amt` AS `amt`,`orders`.`odate` AS `odate` from (`customers` join `orders`) where `orders`.`amt` > 3000 and `orders`.`odate` = '1990-03-10' and `customers`.`cnum` = `orders`.`cnum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 9 10`
--
DROP TABLE IF EXISTS `практическая 9 10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 9 10`  AS  select distinct `orders`.`onum` AS `onum`,`customers`.`cname` AS `cname`,`salespeople`.`sname` AS `sname`,`customers`.`city` AS `city` from ((`orders` join `customers`) join `salespeople`) where `customers`.`city` = 'San Jose' and `salespeople`.`city` = 'San Jose' and `customers`.`snum` = `salespeople`.`snum` and `customers`.`snum` = `orders`.`snum` ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 11 1`
--
DROP TABLE IF EXISTS `практическая 11 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 11 1`  AS  select distinct `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`cnum` = (select distinct `customers`.`cnum` from `customers` where `customers`.`cname` = 'Hoffman') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 11 2`
--
DROP TABLE IF EXISTS `практическая 11 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 11 2`  AS  select distinct `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`snum` = (select distinct `salespeople`.`snum` from `salespeople` where `salespeople`.`city` = 'New York') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 11 3`
--
DROP TABLE IF EXISTS `практическая 11 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 11 3`  AS  select distinct `customers`.`cname` AS `cname` from `customers` where `customers`.`snum` = (select distinct `salespeople`.`snum` from `salespeople` where `salespeople`.`sname` = 'Motika') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 11 4`
--
DROP TABLE IF EXISTS `практическая 11 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 11 4`  AS  select distinct `salespeople`.`sname` AS `sname` from `salespeople` where `salespeople`.`snum` = (select distinct `customers`.`snum` from `customers` where `customers`.`cname` = 'Liu') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 11 5`
--
DROP TABLE IF EXISTS `практическая 11 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 11 5`  AS  select distinct `orders`.`onum` AS `onum`,`orders`.`amt` AS `amt`,`orders`.`dostavka` AS `dostavka`,`orders`.`oplata` AS `oplata`,`orders`.`odate` AS `odate`,`orders`.`cnum` AS `cnum`,`orders`.`snum` AS `snum` from `orders` where `orders`.`cnum` = (select distinct `customers`.`cnum` from `customers` where `customers`.`rating` = '100' and `customers`.`city` = 'Rome') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 12 2`
--
DROP TABLE IF EXISTS `практическая 12 2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 12 2`  AS  select `customers`.`cname` AS `cname`,`customers`.`rating` AS `rating` from `customers` group by `customers`.`rating` having `customers`.`rating` < (select avg(`customers`.`rating`) from `customers` where `customers`.`city` = 'Rome') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 12 3`
--
DROP TABLE IF EXISTS `практическая 12 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 12 3`  AS  select distinct `salespeople`.`comm` AS `comm` from `salespeople` group by `salespeople`.`comm` having `salespeople`.`comm` = (select distinct `salespeople`.`comm` from `customers` where `customers`.`city` = 'Paris') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 12 4`
--
DROP TABLE IF EXISTS `практическая 12 4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 12 4`  AS  select count(`orders`.`amt`) AS `COUNT(amt)` from `orders` where `orders`.`amt` < (select avg(`orders`.`amt`) from `orders` where `orders`.`odate` = '1990-03-10') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 12 5`
--
DROP TABLE IF EXISTS `практическая 12 5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 12 5`  AS  select distinct `salespeople`.`sname` AS `sname` from `salespeople` where `salespeople`.`snum` = (select distinct `customers`.`cnum` - 1000 from `customers` where `customers`.`city` = 'Berlin') ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 13 1`
--
DROP TABLE IF EXISTS `практическая 13 1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 13 1`  AS  select `customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,'Высокий рейтинг' AS `Высокий рейтинг` from `customers` where `customers`.`rating` >= '200' union select `customers`.`cname` AS `cname`,`customers`.`city` AS `city`,`customers`.`rating` AS `rating`,'Низкий рейтинг' AS `Низкий рейтинг` from `customers` where `customers`.`rating` < '200' ;

-- --------------------------------------------------------

--
-- Структура для представления `практическая 13 3`
--
DROP TABLE IF EXISTS `практическая 13 3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`mysql`@`%` SQL SECURITY DEFINER VIEW `практическая 13 3`  AS  select `salespeople`.`snum` AS `snum` from `salespeople` where `salespeople`.`city` = 'San Jose' union select `customers`.`cnum` AS `cnum` from `customers` where `customers`.`city` = 'San Jose' union select `orders`.`onum` AS `onum` from `orders` where `orders`.`odate` = '1990-03-10' ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
