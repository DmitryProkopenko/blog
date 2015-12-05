-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2015 г., 20:57
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `cookie` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`, `cookie`) VALUES
(5, 'dima', '827ccb0eea8a706c4c34a16891f84e7b', '7a189ef8091e95a9620a6a085f9d4f02');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `post` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `postid`, `name`, `post`) VALUES
(1, 1, 'я', 'я написал бложек'),
(2, 1, 'нанан', 'авввввввввввввввввв'),
(3, 1, 'Димон!', 'вот так вот'),
(4, 1, '', ''),
(5, 1, 'x', 'x'),
(6, 1, 'gsdg', ''),
(7, 1, 'gsdg', 'hfhfh'),
(8, 1, 'Витя', 'вппвп'),
(9, 1, 'Витя', 'gus'),
(18, 3, 'Дима', 'Отличная компания!!!'),
(19, 3, 'Катя', 'Хорошее обслуживание.');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(60) NOT NULL,
  `ctime` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `post` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `author`, `ctime`, `title`, `post`) VALUES
(3, '', 1446390143, 'Clickky Family', 'Clickky Family – уникальная, не имеющая аналогов, рекламная платформа, которая дает комплексное решение по рекламе и продвижению приложений для iPhone и Android.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
