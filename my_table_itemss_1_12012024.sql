-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 12 2024 г., 08:08
-- Версия сервера: 5.7.24
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `website_shop_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` bigint(20) NOT NULL,
  `description` text,
  `description_ukr` text,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL,
  `image8` varchar(255) DEFAULT NULL,
  `is_now` bit(1) NOT NULL,
  `price` double DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_ukr` varchar(255) DEFAULT NULL,
  `section` bigint(20) DEFAULT NULL,
  `on_order` tinyint(1) DEFAULT '0',
  `chapter` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKb10ef23jrl9p51esq7244v4yp` (`section`),
  ADD KEY `FK1i7yb5w75uy0fa4i2pugmixwh` (`chapter`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `FK1i7yb5w75uy0fa4i2pugmixwh` FOREIGN KEY (`chapter`) REFERENCES `chapter` (`id`),
  ADD CONSTRAINT `FKb10ef23jrl9p51esq7244v4yp` FOREIGN KEY (`section`) REFERENCES `sections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
