-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2023 г., 14:06
-- Версия сервера: 10.1.44-MariaDB
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task2_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `pub_date` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `pub_date`, `post_id`) VALUES
(1, 'Vasya', 'comment vasya 1', '20.02.2023 - 13:39', 1),
(2, 'Vasya', 'comment vasya 2', '20.02.2023 - 13:41', 1),
(3, 'Vasya', 'comment vasya 3', '20.02.2023 - 13:41', 1),
(4, 'Vasya', 'comment vasya 4', '20.02.2023 - 13:43', 1),
(5, 'Dima', 'comment dima1', '20.02.2023 - 13:47', 1),
(6, 'Vasya', 'some comment', '20.02.2023 - 13:48', 2),
(7, 'Bob', 'comment bob1', '20.02.2023 - 14:01', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(1000) NOT NULL,
  `pub_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author`, `tags`, `pub_date`) VALUES
(1, 'post1', 'text1', 'Bob', '[\"PHP\",\"Yii2\"]', '14.02.2023 - 12:00'),
(2, 'post2', 'text2', 'Oleg', '[\"JS\",\"jQuery\"]', '14.02.2023 - 12:10'),
(3, 'post3', 'text3', 'Irina', '[\"PHP\",\"MySQL\"]', '14.02.2023 - 12:20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
