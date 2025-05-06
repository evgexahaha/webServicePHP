-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Май 06 2025 г., 10:48
-- Версия сервера: 8.0.35
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php_service`
--

-- --------------------------------------------------------

--
-- Структура таблицы `any_documents`
--

CREATE TABLE `any_documents` (
  `id` int NOT NULL,
  `name_Any` varchar(255) NOT NULL,
  `series_Any` varchar(255) NOT NULL,
  `date_Any` date NOT NULL,
  `whoIssued_Any` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `any_documents`
--

INSERT INTO `any_documents` (`id`, `name_Any`, `series_Any`, `date_Any`, `whoIssued_Any`) VALUES
(1, 'Паспорт на холодильник', '321123', '2025-05-02', 'При покупке');

-- --------------------------------------------------------

--
-- Структура таблицы `car_certificate`
--

CREATE TABLE `car_certificate` (
  `id` int NOT NULL,
  `series_Car` varchar(255) NOT NULL,
  `date_Car` date NOT NULL,
  `region_Car` varchar(255) NOT NULL,
  `whoIssued_Car` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `car_certificate`
--

INSERT INTO `car_certificate` (`id`, `series_Car`, `date_Car`, `region_Car`, `whoIssued_Car`) VALUES
(1, '234234', '2025-03-06', 'Мордовия', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `passport_documents`
--

CREATE TABLE `passport_documents` (
  `id` int NOT NULL,
  `series_Passport` varchar(255) NOT NULL,
  `phone_Passport` varchar(255) NOT NULL,
  `date_Passport` date NOT NULL,
  `whoIssued_Passport` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `passport_documents`
--

INSERT INTO `passport_documents` (`id`, `series_Passport`, `phone_Passport`, `date_Passport`, `whoIssued_Passport`, `code`) VALUES
(1, '123', '123', '2333-03-12', '123123', '123123'),
(2, '123', '123', '2025-05-01', 'МВД', '123123');

-- --------------------------------------------------------

--
-- Структура таблицы `records`
--

CREATE TABLE `records` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` enum('Не выбрано','Коммерчиский отдел','Монтажный отдел','Руководящий состав') NOT NULL,
  `dateOfBirth` date NOT NULL,
  `post` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `document_id` int NOT NULL,
  `timeStart` date NOT NULL,
  `timeEnd` date NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `records`
--

INSERT INTO `records` (`id`, `name`, `department`, `dateOfBirth`, `post`, `phone`, `document_type`, `document_id`, `timeStart`, `timeEnd`, `comment`) VALUES
(1, 'Евгений', 'Руководящий состав', '2007-02-27', 'admin', '123123', 'passport', 2, '2025-05-06', '2025-05-06', 'Нету'),
(2, 'Иван', 'Коммерчиский отдел', '2005-05-25', 'user', '321', 'carCertificate', 1, '2025-05-09', '2025-05-09', 'Нормально'),
(3, 'Сергей', 'Монтажный отдел', '2005-05-25', 'user', '321321', 'any', 1, '2025-05-09', '2025-05-09', 'Нормально');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `any_documents`
--
ALTER TABLE `any_documents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `car_certificate`
--
ALTER TABLE `car_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `passport_documents`
--
ALTER TABLE `passport_documents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `any_documents`
--
ALTER TABLE `any_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `car_certificate`
--
ALTER TABLE `car_certificate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `passport_documents`
--
ALTER TABLE `passport_documents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `records`
--
ALTER TABLE `records`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
