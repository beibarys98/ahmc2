-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Июн 28 2025 г., 10:53
-- Версия сервера: 5.7.44
-- Версия PHP: 8.2.24

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
(20, 5, 'Yujrthsfb yty jty', NULL);

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
(5, 1, 'Lkmrelgvk emrlkgm eklrmglkem rlkgmklrme glkmeragm alkremgk rm', 17, NULL);

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
(1, 1, 'Тест салу тексеру', 'Загрузка теста проверка', 'ready', '01:00:30');

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
(6, '87478725290', 'Мерей Бекжанова', 'ктл', NULL, 1751008816, 1751018424);

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
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_cycle`
--

INSERT INTO `user_cycle` (`id`, `user_id`, `course_id`, `cycle_id`, `type`, `status`) VALUES
(2, 6, 2, 4, 'paid', 'registered');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT для таблицы `file_type`
--
ALTER TABLE `file_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `user_cycle`
--
ALTER TABLE `user_cycle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_test`
--
ALTER TABLE `user_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
