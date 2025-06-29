-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Июн 29 2025 г., 19:18
-- Версия сервера: 5.7.44
-- Версия PHP: 8.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answer`
--

CREATE TABLE `answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `img_path`) VALUES
(2, 1, 'Aerg erg aerg tyn', NULL),
(3, 1, 'Uymrytf thsrg', NULL),
(4, 1, 'Yujrthsfb yty jty', NULL),
(5, 2, 'Asdferagh erg', NULL),
(6, 2, 'Aerg erg aerg tyn', NULL),
(7, 2, 'Uymrytf thsrg', NULL),
(8, 2, 'Yujrthsfb yty jty', NULL),
(9, 3, 'Asdferagh erg', NULL),
(10, 3, 'Aerg erg aerg tyn', NULL),
(11, 3, 'Uymrytf thsrg', NULL),
(12, 3, 'Yujrthsfb yty jty', NULL),
(13, 4, 'Asdferagh erg', NULL),
(14, 4, 'Aerg erg aerg tyn', NULL),
(15, 4, 'Uymrytf thsrg', NULL),
(16, 4, 'Yujrthsfb yty jty', NULL),
(17, 5, 'Asdferagh erg', NULL),
(18, 5, 'Aerg erg aerg tyn', NULL),
(19, 5, 'Uymrytf thsrg', NULL),
(20, 5, 'Yujrthsfb yty jty', NULL),
(21, 6, 'Фвцвцд вбвцв', NULL),
(22, 6, 'Лаьуцда', NULL),
(23, 6, 'Купкуплкп', NULL),
(24, 6, 'квпкулпкудп', NULL),
(25, 7, 'Фвцвцд вбвцв', NULL),
(26, 7, 'Лаьуцда', NULL),
(27, 7, 'Купкуплкп', NULL),
(28, 7, 'квпкулпкудп', NULL),
(29, 8, 'Фвцвцд вбвцв', NULL),
(30, 8, 'Лаьуцда', NULL),
(31, 8, 'Купкуплкп', NULL),
(32, 8, 'Квпкулпкудп', NULL),
(33, 9, 'Фвцвцд вбвцв', NULL),
(34, 9, 'Лаьуцда', NULL),
(35, 9, 'Купкуплкп', NULL),
(36, 9, 'квпкулпкудп', NULL),
(37, 10, 'Фвцвцд вбвцв', NULL),
(38, 10, 'Лаьуцда', NULL),
(39, 10, 'Купкуплкп', NULL),
(40, 10, 'Квпкулпкудп', NULL),
(41, 11, 'Фвцвцд вбвцв', NULL),
(42, 11, 'Лаьуцда', NULL),
(43, 11, 'Купкуплкп', NULL),
(44, 11, 'квпкулпкудп', NULL),
(45, 12, 'Фвцвцд вбвцв', NULL),
(46, 12, 'Лаьуцда', NULL),
(47, 12, 'Купкуплкп', NULL),
(48, 12, 'квпкулпкудп', NULL),
(49, 13, 'Фвцвцд вбвцв', NULL),
(50, 13, 'Лаьуцда', NULL),
(51, 13, 'Купкуплкп', NULL),
(52, 13, 'Квпкулпкудп', NULL),
(53, 14, 'Фвцвцд вбвцв', NULL),
(54, 14, 'Лаьуцда', NULL),
(55, 14, 'Купкуплкп', NULL),
(56, 14, 'квпкулпкудп', NULL),
(57, 15, 'Фвцвцд вбвцв', NULL),
(58, 15, 'Лаьуцда', NULL),
(59, 15, 'Купкуплкп', NULL),
(60, 15, 'Квпкулпкудп', NULL),
(61, 16, 'Фвцвцд вбвцв', NULL),
(62, 16, 'Лаьуцда', NULL),
(63, 16, 'Купкуплкп', NULL),
(64, 16, 'квпкулпкудп', NULL),
(65, 17, 'Фвцвцд вбвцв', NULL),
(66, 17, 'Лаьуцда', NULL),
(67, 17, 'Купкуплкп', NULL),
(68, 17, 'квпкулпкудп', NULL),
(69, 18, 'Фвцвцд вбвцв', NULL),
(70, 18, 'Лаьуцда', NULL),
(71, 18, 'Купкуплкп', NULL),
(72, 18, 'Квпкулпкудп', NULL),
(73, 19, 'Фвцвцд вбвцв', NULL),
(74, 19, 'Лаьуцда', NULL),
(75, 19, 'Купкуплкп', NULL),
(76, 19, 'квпкулпкудп', NULL),
(77, 20, 'Фвцвцд вбвцв', NULL),
(78, 20, 'Лаьуцда', NULL),
(79, 20, 'Купкуплкп', NULL),
(80, 20, 'Квпкулпкудп', NULL),
(81, 21, 'Фвцвцд вбвцв', NULL),
(82, 21, 'Лаьуцда', NULL),
(83, 21, 'Купкуплкп', NULL),
(84, 21, 'квпкулпкудп', NULL),
(85, 22, 'Фвцвцд вбвцв', NULL),
(86, 22, 'Лаьуцда', NULL),
(87, 22, 'Купкуплкп', NULL),
(88, 22, 'квпкулпкудп', NULL),
(89, 23, 'Фвцвцд вбвцв', NULL),
(90, 23, 'Лаьуцда', NULL),
(91, 23, 'Купкуплкп', NULL),
(92, 23, 'Квпкулпкудп', NULL),
(93, 24, 'Фвцвцд вбвцв', NULL),
(94, 24, 'Лаьуцда', NULL),
(95, 24, 'Купкуплкп', NULL),
(96, 24, 'квпкулпкудп', NULL),
(97, 25, 'Фвцвцд вбвцв', NULL),
(98, 25, 'Лаьуцда', NULL),
(99, 25, 'Купкуплкп', NULL),
(100, 25, 'Квпкулпкудп', NULL),
(101, 26, 'Фвцвцд вбвцв', NULL),
(102, 26, 'Лаьуцда', NULL),
(103, 26, 'Купкуплкп', NULL),
(104, 26, 'квпкулпкудп', NULL),
(105, 27, 'Фвцвцд вбвцв', NULL),
(106, 27, 'Лаьуцда', NULL),
(107, 27, 'Купкуплкп', NULL),
(108, 27, 'квпкулпкудп', NULL),
(109, 28, 'Фвцвцд вбвцв', NULL),
(110, 28, 'Лаьуцда', NULL),
(111, 28, 'Купкуплкп', NULL),
(112, 28, 'Квпкулпкудп', NULL),
(113, 29, 'Фвцвцд вбвцв', NULL),
(114, 29, 'Лаьуцда', NULL),
(115, 29, 'Купкуплкп', NULL),
(116, 29, 'квпкулпкудп', NULL),
(117, 30, 'Фвцвцд вбвцв', NULL),
(118, 30, 'Лаьуцда', NULL),
(119, 30, 'Купкуплкп', NULL),
(120, 30, 'Квпкулпкудп', NULL),
(121, 31, 'Фвцвцд вбвцв', NULL),
(122, 31, 'Лаьуцда', NULL),
(123, 31, 'Купкуплкп', NULL),
(124, 31, 'квпкулпкудп', NULL),
(125, 32, 'Фвцвцд вбвцв', NULL),
(126, 32, 'Лаьуцда', NULL),
(127, 32, 'Купкуплкп', NULL),
(128, 32, 'квпкулпкудп', NULL),
(129, 33, 'Фвцвцд вбвцв', NULL),
(130, 33, 'Лаьуцда', NULL),
(131, 33, 'Купкуплкп', NULL),
(132, 33, 'Квпкулпкудп', NULL),
(133, 34, 'Фвцвцд вбвцв', NULL),
(134, 34, 'Лаьуцда', NULL),
(135, 34, 'Купкуплкп', NULL),
(136, 34, 'квпкулпкудп', NULL),
(137, 35, 'Фвцвцд вбвцв', NULL),
(138, 35, 'Лаьуцда', NULL),
(139, 35, 'Купкуплкп', NULL),
(140, 35, 'Квпкулпкудп', NULL),
(141, 36, 'Фвцвцд вбвцв', NULL),
(142, 36, 'Лаьуцда', NULL),
(143, 36, 'Купкуплкп', NULL),
(144, 36, 'квпкулпкудп', NULL),
(145, 37, 'Фвцвцд вбвцв', NULL),
(146, 37, 'Лаьуцда', NULL),
(147, 37, 'Купкуплкп', NULL),
(148, 37, 'квпкулпкудп', NULL),
(149, 38, 'Фвцвцд вбвцв', NULL),
(150, 38, 'Лаьуцда', NULL),
(151, 38, 'Купкуплкп', NULL),
(152, 38, 'Квпкулпкудп', NULL),
(153, 39, 'Фвцвцд вбвцв', NULL),
(154, 39, 'Лаьуцда', NULL),
(155, 39, 'Купкуплкп', NULL),
(156, 39, 'квпкулпкудп', NULL),
(157, 40, 'Фвцвцд вбвцв', NULL),
(158, 40, 'Лаьуцда', NULL),
(159, 40, 'Купкуплкп', NULL),
(160, 40, 'Квпкулпкудп', NULL),
(161, 41, 'Фвцвцд вбвцв', NULL),
(162, 41, 'Лаьуцда', NULL),
(163, 41, 'Купкуплкп', NULL),
(164, 41, 'квпкулпкудп', NULL),
(165, 42, 'Фвцвцд вбвцв', NULL),
(166, 42, 'Лаьуцда', NULL),
(167, 42, 'Купкуплкп', NULL),
(168, 42, 'квпкулпкудп', NULL),
(169, 43, 'Фвцвцд вбвцв', NULL),
(170, 43, 'Лаьуцда', NULL),
(171, 43, 'Купкуплкп', NULL),
(172, 43, 'Квпкулпкудп', NULL),
(173, 44, 'Фвцвцд вбвцв', NULL),
(174, 44, 'Лаьуцда', NULL),
(175, 44, 'Купкуплкп', NULL),
(176, 44, 'квпкулпкудп', NULL),
(177, 45, 'Фвцвцд вбвцв', NULL),
(178, 45, 'Лаьуцда', NULL),
(179, 45, 'Купкуплкп', NULL),
(180, 45, 'Квпкулпкудп', NULL),
(181, 46, 'Фвцвцд вбвцв', NULL),
(182, 46, 'Лаьуцда', NULL),
(183, 46, 'Купкуплкп', NULL),
(184, 46, 'квпкулпкудп', NULL),
(185, 47, 'Фвцвцд вбвцв', NULL),
(186, 47, 'Лаьуцда', NULL),
(187, 47, 'Купкуплкп', NULL),
(188, 47, 'квпкулпкудп', NULL),
(189, 48, 'Фвцвцд вбвцв', NULL),
(190, 48, 'Лаьуцда', NULL),
(191, 48, 'Купкуплкп', NULL),
(192, 48, 'Квпкулпкудп', NULL),
(193, 49, 'Фвцвцд вбвцв', NULL),
(194, 49, 'Лаьуцда', NULL),
(195, 49, 'Купкуплкп', NULL),
(196, 49, 'квпкулпкудп', NULL),
(197, 50, 'Фвцвцд вбвцв', NULL),
(198, 50, 'Лаьуцда', NULL),
(199, 50, 'Купкуплкп', NULL),
(200, 50, 'Квпкулпкудп', NULL),
(201, 51, 'Фвцвцд вбвцв', NULL),
(202, 51, 'Лаьуцда', NULL),
(203, 51, 'Купкуплкп', NULL),
(204, 51, 'квпкулпкудп', NULL),
(205, 52, 'Фвцвцд вбвцв', NULL),
(206, 52, 'Лаьуцда', NULL),
(207, 52, 'Купкуплкп', NULL),
(208, 52, 'квпкулпкудп', NULL),
(209, 53, 'Фвцвцд вбвцв', NULL),
(210, 53, 'Лаьуцда', NULL),
(211, 53, 'Купкуплкп', NULL),
(212, 53, 'Квпкулпкудп', NULL),
(213, 54, 'Фвцвцд вбвцв', NULL),
(214, 54, 'Лаьуцда', NULL),
(215, 54, 'Купкуплкп', NULL),
(216, 54, 'квпкулпкудп', NULL),
(217, 55, 'Фвцвцд вбвцв', NULL),
(218, 55, 'Лаьуцда', NULL),
(219, 55, 'Купкуплкп', NULL),
(220, 55, 'Квпкулпкудп', NULL),
(221, 56, 'Фвцвцд вбвцв', NULL),
(222, 56, 'Лаьуцда', NULL),
(223, 56, 'Купкуплкп', NULL),
(224, 56, 'квпкулпкудп', NULL),
(225, 57, 'Фвцвцд вбвцв', NULL),
(226, 57, 'Лаьуцда', NULL),
(227, 57, 'Купкуплкп', NULL),
(228, 57, 'квпкулпкудп', NULL),
(229, 58, 'Фвцвцд вбвцв', NULL),
(230, 58, 'Лаьуцда', NULL),
(231, 58, 'Купкуплкп', NULL),
(232, 58, 'Квпкулпкудп', NULL),
(233, 59, 'Фвцвцд вбвцв', NULL),
(234, 59, 'Лаьуцда', NULL),
(235, 59, 'Купкуплкп', NULL),
(236, 59, 'квпкулпкудп', NULL),
(237, 60, 'Фвцвцд вбвцв', NULL),
(238, 60, 'Лаьуцда', NULL),
(239, 60, 'Купкуплкп', NULL),
(240, 60, 'Квпкулпкудп', NULL),
(241, 61, 'Фвцвцд вбвцв', NULL),
(242, 61, 'Лаьуцда', NULL),
(243, 61, 'Купкуплкп', NULL),
(244, 61, 'квпкулпкудп', NULL),
(245, 62, 'Фвцвцд вбвцв', NULL),
(246, 62, 'Лаьуцда', NULL),
(247, 62, 'Купкуплкп', NULL),
(248, 62, 'квпкулпкудп', NULL),
(249, 63, 'Фвцвцд вбвцв', NULL),
(250, 63, 'Лаьуцда', NULL),
(251, 63, 'Купкуплкп', NULL),
(252, 63, 'Квпкулпкудп', NULL),
(253, 64, 'Фвцвцд вбвцв', NULL),
(254, 64, 'Лаьуцда', NULL),
(255, 64, 'Купкуплкп', NULL),
(256, 64, 'квпкулпкудп', NULL),
(257, 65, 'Фвцвцд вбвцв', NULL),
(258, 65, 'Лаьуцда', NULL),
(259, 65, 'Купкуплкп', NULL),
(260, 65, 'Квпкулпкудп', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_kz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title_kz`, `title_ru`) VALUES
(1, 'Білім жетілдіру', 'Повышение квалификации'),
(2, 'Сертификаттау курсы', 'Сертификационный курс'),
(3, 'Семинар, тренинг, шебер-класс', 'Семинар, тренинг, мастер-класс'),
(4, 'Съезд, конгресс, конференциялар', 'Съезд, конгресс, конференции'),
(5, 'Медициналық білімі жоқ адамдар \n(парамедик)', 'Лица без медицинского образование (парамедик)'),
(6, 'Білім жетілдіру', 'Повышение квалификации'),
(7, 'Сертификаттау курсы', 'Сертификационный курс'),
(8, 'Семинар, тренинг, шебер-класс', 'Семинар, тренинг, мастер-класс'),
(9, 'Съезд, конгресс, конференциялар', 'Съезд, конгресс, конференции'),
(10, 'Медициналық білімі жоқ адамдар \n(парамедик)', 'Лица без медицинского образование (парамедик)');

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title_kz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `category_id`, `title_kz`, `title_ru`) VALUES
(1, 1, 'Мейіргер ісі', 'Сестринское дело'),
(2, 1, 'Акушерлік іс', 'Акушерское дело'),
(3, 1, 'Емдеу ісі', 'Лечебное дело'),
(4, 1, 'Зертханалық диагностика', 'Лабораторная диагностика'),
(5, 1, 'Фармация ', 'Фармация '),
(6, 1, 'Стоматология ', 'Стоматология '),
(7, 1, 'Эпидемиология және гигиена ', 'Эпидемиология и гигиена'),
(8, 1, 'Әлеуметтік жұмысшы', 'Соц работник'),
(9, 2, 'Жалпы тәжірибелік мейіргер', 'Медсестра общей практики'),
(10, 2, 'Рентгенологиядағы мейіргер ісі', 'Сестринское дело в рентгенологии'),
(11, 2, 'Классикалық және емдік массаж ', 'Классический и лечебный массаж'),
(12, 2, 'Мектеп медицинасындағы мейіргер ісі ', 'Сестринское дело в школьной медицине'),
(13, 3, 'Семинар, тренинг, шебер-класс', 'Семинар, тренинг, мастер-класс'),
(14, 4, 'Съезд, конгресс, конференциялар', '	Съезд, конгресс, конференции'),
(15, 5, 'Медициналық білімі жоқ адамдар (парамедик)', 'Лица без медицинского образование (парамедик)');

-- --------------------------------------------------------

--
-- Структура таблицы `cycle`
--

CREATE TABLE `cycle` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `title_kz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cycle`
--

INSERT INTO `cycle` (`id`, `course_id`, `title_kz`, `title_ru`, `month`, `duration`) VALUES
(1, 1, 'Цикл жарату тексеру', 'Создание цикла проверка', 'Қаңтар', '1 апта'),
(2, 13, 'Семинар циклін жарату тексеру', 'Создание цикла семинар проверка', '', ''),
(3, 2, 'акушерлікке цикл косу тексеру', 'создать цикл акушерству проверка', 'Қаңтар', '2 апта'),
(4, 2, 'акушерлікке цикл косу тексеру 2', 'создать цикл акушерству проверка 2', 'Ақпан', '3 апта');

-- --------------------------------------------------------

--
-- Структура таблицы `file`
--

CREATE TABLE `file` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cycle_id` int(10) UNSIGNED NOT NULL,
  `file_type_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `file`
--

INSERT INTO `file` (`id`, `user_id`, `cycle_id`, `file_type_id`, `path`) VALUES
(6, 6, 4, 1, 'uploads/68611d247e84e.pdf'),
(7, 6, 4, 1, 'uploads/68611d6e2c0bc.pdf'),
(8, 6, 4, 2, 'uploads/68611e6a968bc.pdf'),
(9, 6, 4, 3, 'uploads/68611e814fd53.pdf'),
(14, 6, 4, 4, 'uploads/686128e9419b6.pdf'),
(15, 6, 4, 6, 'uploads/686133c274a3e.pdf');

-- --------------------------------------------------------

--
-- Структура таблицы `file_type`
--

CREATE TABLE `file_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `file_type`
--

INSERT INTO `file_type` (`id`, `file`, `type`) VALUES
(1, 'Жеке куәлік ', 'required'),
(2, 'Білім туралы диплом ', 'required'),
(3, 'Денсаулық сақтау маманының сертификаты ', 'required'),
(4, 'Біліктілікті арттыру туралы куәлігі ', 'required'),
(5, 'Неке туралы куәлік (тегін өзгерткен жағдайда)', 'optional'),
(6, 'Мекеме ұйымынан  бұйрық (бюджеттік негізде тыңдаушылар үшін)', 'budget'),
(7, 'Төлем туралы түбіртек (келісім шарт бойынша тыңдаушылар үшін)', 'contract');

-- --------------------------------------------------------

--
-- Структура таблицы `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` int(11) DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `question`
--

INSERT INTO `question` (`id`, `test_id`, `question`, `answer`, `img_path`) VALUES
(1, 1, 'beibarys qoooo', 2, ''),
(2, 1, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 5, ''),
(3, 1, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme  glkmeragm alkremgk rm', 9, 'uploads/1750998277.png'),
(4, 1, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 13, NULL),
(5, 1, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 17, NULL),
(6, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 21, NULL),
(7, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 25, NULL),
(8, 2, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 29, NULL),
(9, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 33, NULL),
(10, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 37, NULL),
(11, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 41, NULL),
(12, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 45, NULL),
(13, 2, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 49, NULL),
(14, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 53, NULL),
(15, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 57, NULL),
(16, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 61, NULL),
(17, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 65, NULL),
(18, 2, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 69, NULL),
(19, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 73, NULL),
(20, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 77, NULL),
(21, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 81, NULL),
(22, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 85, NULL),
(23, 2, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 89, NULL),
(24, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 93, NULL),
(25, 2, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 97, NULL),
(26, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\r\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\r\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 101, 'uploads/1751211355.jpg'),
(27, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 105, NULL),
(28, 3, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 109, NULL),
(29, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 113, NULL),
(30, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 117, NULL),
(31, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 121, NULL),
(32, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 125, NULL),
(33, 3, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 129, NULL),
(34, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 133, NULL),
(35, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 137, NULL),
(36, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 141, NULL),
(37, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 145, NULL),
(38, 3, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 149, NULL),
(39, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 153, NULL),
(40, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 157, NULL),
(41, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 161, NULL),
(42, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 165, NULL),
(43, 3, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 169, NULL),
(44, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 173, NULL),
(45, 3, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 177, NULL),
(46, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 181, NULL),
(47, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 185, NULL),
(48, 4, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 189, NULL),
(49, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 193, NULL),
(50, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 197, NULL),
(51, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 201, NULL),
(52, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 205, NULL),
(53, 4, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 209, NULL),
(54, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 213, NULL),
(55, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 217, NULL),
(56, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 221, NULL),
(57, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 225, NULL),
(58, 4, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 229, NULL),
(59, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 233, NULL),
(60, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 237, NULL),
(61, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.\nУцлдьа дцудль адцлуьа дцлуьа длуцьа.', 241, NULL),
(62, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 245, NULL),
(63, 4, 'Уцлдьа дцудль  адцлуьа дцлуьа длуцьа.', 249, NULL),
(64, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 253, NULL),
(65, 4, 'Уцлдьа дцудль адцлуьа дцлуьа длуцьа.', 257, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(10) UNSIGNED NOT NULL,
  `cycle_id` int(10) UNSIGNED NOT NULL,
  `title_kz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `cycle_id`, `title_kz`, `title_ru`, `status`, `duration`) VALUES
(1, 1, 'Тест салу тексеру', 'Загрузка теста проверка', 'ready', '01:00:30'),
(2, 4, 'акушерлік тест тексеру', 'акушерслік тес проверка', 'public', '01:00:00'),
(3, 4, 'акушерлік тест 2 ', 'акушерлік тест 2', 'public', '00:00:10'),
(4, 4, 'акушерлік тест 3', 'акушерлік тест 3', 'public', '00:00:10');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `organization`, `password_hash`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', '$2y$13$UEA9i7uVx20A/qnXGQ/D6uQiDjZrdPH84aup561RFH0.HmP3A2Wa2', 1750917648, 1750917648),
(2, '87478725287', 'Мухаммедьяров Бейбарыс', 'ктл', NULL, 1750920601, 1750920601),
(3, '87478725288', 'Муха Бейба', 'ктл', NULL, 1750920816, 1750920816),
(4, '87478725289', 'Бекжанов Шынгыс', 'ктл', NULL, 1750920872, 1750920872),
(6, '87478725290', 'Мерей Бекжанова', 'ктл', NULL, 1751008816, 1751202233);

-- --------------------------------------------------------

--
-- Структура таблицы `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user_answer`
--

INSERT INTO `user_answer` (`id`, `user_id`, `question_id`, `answer_id`) VALUES
(1, 1, 6, 24),
(2, 1, 7, 25),
(3, 1, 8, 29),
(4, 1, 9, 34),
(5, 1, 10, 37),
(6, 1, 11, 44),
(7, 1, 12, 47),
(8, 1, 13, 49),
(9, 1, 14, 53),
(10, 1, 15, 60),
(11, 1, 16, 61),
(12, 1, 17, 65),
(13, 1, 18, 69),
(14, 1, 19, 73),
(15, 1, 20, 77),
(16, 1, 21, 81),
(17, 1, 22, 85),
(18, 1, 23, 92),
(19, 1, 24, 93),
(20, 1, 25, 97),
(21, 1, 26, 101);

-- --------------------------------------------------------

--
-- Структура таблицы `user_cycle`
--

CREATE TABLE `user_cycle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `cycle_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_cycle`
--

INSERT INTO `user_cycle` (`id`, `user_id`, `course_id`, `cycle_id`, `type`, `status`) VALUES
(2, 6, 2, 4, 'budget', 'enrolled');

-- --------------------------------------------------------

--
-- Структура таблицы `user_test`
--

CREATE TABLE `user_test` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_test`
--

INSERT INTO `user_test` (`id`, `user_id`, `test_id`, `start_time`, `end_time`, `result`) VALUES
(1, 6, 2, '2025-06-29 20:05:15', '2025-06-29 20:42:11', 1),
(2, 6, 3, '2025-06-29 20:40:59', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_answer_question` (`question_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course_category` (`category_id`);

--
-- Индексы таблицы `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cycle_course` (`course_id`);

--
-- Индексы таблицы `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_ibfk_1` (`user_id`),
  ADD KEY `file_ibfk_2` (`cycle_id`),
  ADD KEY `file_ibfk_3` (`file_type_id`);

--
-- Индексы таблицы `file_type`
--
ALTER TABLE `file_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_question_test` (`test_id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_test_cycle` (`cycle_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_answer_user` (`user_id`),
  ADD KEY `fk_user_answer_question` (`question_id`),
  ADD KEY `fk_user_answer_answer` (`answer_id`);

--
-- Индексы таблицы `user_cycle`
--
ALTER TABLE `user_cycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_cycle_ibfk_2` (`cycle_id`),
  ADD KEY `fk_user_cycle_course` (`course_id`);

--
-- Индексы таблицы `user_test`
--
ALTER TABLE `user_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `cycle`
--
ALTER TABLE `cycle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `file`
--
ALTER TABLE `file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `file_type`
--
ALTER TABLE `file_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `user_cycle`
--
ALTER TABLE `user_cycle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_test`
--
ALTER TABLE `user_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_answer_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_course_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `cycle`
--
ALTER TABLE `cycle`
  ADD CONSTRAINT `fk_cycle_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_ibfk_2` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `file_ibfk_3` FOREIGN KEY (`file_type_id`) REFERENCES `file_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_question_test` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `fk_test_cycle` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_answer`
--
ALTER TABLE `user_answer`
  ADD CONSTRAINT `fk_user_answer_answer` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_answer_question` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_answer_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_cycle`
--
ALTER TABLE `user_cycle`
  ADD CONSTRAINT `fk_user_cycle_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cycle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cycle_ibfk_2` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_test`
--
ALTER TABLE `user_test`
  ADD CONSTRAINT `user_test_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_test_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
