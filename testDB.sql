-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.24 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных test
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `test`;


-- Дамп структуры для таблица test.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `isAdmin` bit(1) DEFAULT b'0',
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы test.user: ~104 rows (приблизительно)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `age`, `isAdmin`, `createdDate`) VALUES
	(4, 'Paul Sidorov', 28, b'0', '2016-10-15 22:30:01'),
	(5, 'Alex Smirnov', 34, b'1', '2016-10-15 23:05:21'),
	(6, 'Petr Andreev', 45, b'1', '2011-10-15 23:05:47'),
	(8, 'Semen Altov', 56, b'0', '2016-10-16 19:27:25'),
	(13, 'Герасимов Якун', 85, b'0', '2016-10-16 20:51:29'),
	(14, 'Сидорова Кира', 98, b'1', '2016-10-16 20:51:29'),
	(15, 'Журавлёва Антонина', 56, b'0', '2016-10-16 20:51:29'),
	(16, 'Дьячкова Таисия', 98, b'1', '2016-10-16 20:51:29'),
	(17, 'Игнатьев Юрий', 70, b'0', '2016-10-16 20:51:29'),
	(18, 'Петров Глеб', 35, b'1', '2016-10-16 20:51:29'),
	(19, 'Данилова Олимпиада', 99, b'1', '2016-10-16 20:51:29'),
	(20, 'Пахомова Элеонора', 88, b'0', '2016-10-16 20:51:29'),
	(21, 'Панфилова Агафья', 31, b'0', '2016-10-16 20:51:29'),
	(22, 'Шарапова Акулина', 75, b'1', '2016-10-16 20:51:29'),
	(23, 'Кондратьева Кира', 73, b'1', '2016-10-16 20:51:29'),
	(24, 'Макаров Альберт', 84, b'1', '2016-10-16 20:51:29'),
	(25, 'Вишняков Игнатий', 18, b'1', '2016-10-16 20:51:29'),
	(26, 'Кононов Валерьян', 72, b'1', '2016-10-16 20:51:29'),
	(27, 'Петрова Евдокия', 37, b'0', '2016-10-16 20:51:29'),
	(28, 'Трофимова Иванна', 72, b'0', '2016-10-16 20:51:29'),
	(29, 'Данилова Элеонора', 92, b'1', '2016-10-16 20:51:29'),
	(30, 'Алексеева Виктория', 37, b'0', '2016-10-16 20:51:29'),
	(31, 'Васильев Германн', 39, b'1', '2016-10-16 20:51:29'),
	(32, 'Гурьев Алексей', 95, b'0', '2016-10-16 20:51:29'),
	(33, 'Фадеев Павел', 22, b'1', '2016-10-16 20:51:29'),
	(34, 'Шаров Валерьян', 29, b'0', '2016-10-16 20:51:29'),
	(35, 'Лебедева Регина', 46, b'0', '2016-10-16 20:51:29'),
	(36, 'Коновалова Виктория', 80, b'0', '2016-10-16 20:51:29'),
	(37, 'Соловьёва Елена', 28, b'0', '2016-10-16 20:51:29'),
	(38, 'Артемьев Григорий', 89, b'1', '2016-10-16 20:51:29'),
	(39, 'Семёнов Святослав', 99, b'1', '2016-10-16 20:51:29'),
	(40, 'Молчанова Алина', 32, b'1', '2016-10-16 20:51:29'),
	(41, 'Константинова Варвара', 36, b'1', '2016-10-16 20:51:29'),
	(42, 'Сысоев Олег', 38, b'1', '2016-10-16 20:51:29'),
	(43, 'Зайцев Геласий', 98, b'1', '2016-10-16 20:51:29'),
	(44, 'Тихонова Фаина', 95, b'1', '2016-10-16 20:51:29'),
	(45, 'Николаева Юлия', 60, b'1', '2016-10-16 20:51:29'),
	(46, 'Устинов Максим', 99, b'1', '2016-10-16 20:51:29'),
	(47, 'Мясников Олег', 69, b'1', '2016-10-16 20:51:29'),
	(48, 'Захаров Виктор', 65, b'0', '2016-10-16 20:51:29'),
	(49, 'Ефремов Глеб', 36, b'0', '2016-10-16 20:51:29'),
	(50, 'Селезнёва Синклитикия', 72, b'0', '2016-10-16 20:51:29'),
	(51, 'Селезнёва Зоя', 32, b'0', '2016-10-16 20:51:29'),
	(52, 'Баранова Вероника', 32, b'1', '2016-10-16 20:51:29'),
	(53, 'Осипова Жанна', 99, b'0', '2016-10-16 20:51:29'),
	(54, 'Константинов Владислав', 24, b'0', '2016-10-16 20:51:29'),
	(55, 'Гущин Олег', 31, b'1', '2016-10-16 20:51:29'),
	(56, 'Родионов Германн', 66, b'1', '2016-10-16 20:51:29'),
	(57, 'Новиков Валентин', 25, b'0', '2016-10-16 20:51:29'),
	(58, 'Константинов Илья', 80, b'1', '2016-10-16 20:51:29'),
	(59, 'Николаева Раиса', 62, b'0', '2016-10-16 20:51:29'),
	(60, 'Шилов Протасий', 55, b'1', '2016-10-16 20:51:29'),
	(61, 'Русакова София', 75, b'1', '2016-10-16 20:51:29'),
	(62, 'Колесников Богдан', 67, b'0', '2016-10-16 20:51:29'),
	(63, 'Пахомов Мартын', 64, b'1', '2016-10-16 20:51:29'),
	(64, 'Костин Вячеслав', 27, b'1', '2016-10-16 20:51:29'),
	(65, 'Тетерин Вадим', 80, b'1', '2016-10-16 20:51:29'),
	(66, 'Филатов Юрий', 90, b'0', '2016-10-16 20:51:29'),
	(67, 'Осипова Мария', 36, b'1', '2016-10-16 20:51:29'),
	(68, 'Кулагин Никита', 65, b'0', '2016-10-16 20:51:29'),
	(69, 'Ефремова Анна', 92, b'0', '2016-10-16 20:51:29'),
	(70, 'Крылов Глеб', 18, b'0', '2016-10-16 20:51:29'),
	(71, 'Николаев Василий', 85, b'1', '2016-10-16 20:51:29'),
	(72, 'Котов Эдуард', 60, b'1', '2016-10-16 20:51:29'),
	(73, 'Владимиров Дамир', 27, b'1', '2016-10-16 20:51:29'),
	(74, 'Никитина Марфа', 32, b'1', '2016-10-16 20:51:29'),
	(75, 'Матвеева Клавдия', 46, b'0', '2016-10-16 20:51:29'),
	(76, 'Григорьев Фёдор', 23, b'0', '2016-10-16 20:51:29'),
	(77, 'Кононова Иванна', 23, b'1', '2016-10-16 20:51:29'),
	(78, 'Якушев Пантелеймон', 52, b'1', '2016-10-16 20:51:29'),
	(79, 'Пахомов Альвиан', 38, b'0', '2016-10-16 20:51:29'),
	(80, 'Бобылёв Ириней', 32, b'1', '2016-10-16 20:51:29'),
	(81, 'Блохин Яков', 63, b'0', '2016-10-16 20:51:29'),
	(82, 'Маслова Фаина', 33, b'0', '2016-10-16 20:51:29'),
	(83, 'Колесникова Евгения', 27, b'1', '2016-10-16 20:51:29'),
	(84, 'Захарова Полина', 56, b'0', '2016-10-16 20:51:29'),
	(85, 'Наумов Герман', 87, b'0', '2016-10-16 20:51:29'),
	(86, 'Овчинников Никита', 26, b'0', '2016-10-16 20:51:29'),
	(87, 'Гаврилов Виталий', 82, b'1', '2016-10-16 20:51:29'),
	(88, 'Казаков Павел', 34, b'0', '2016-10-16 20:51:29'),
	(89, 'Макарова Евгения', 74, b'0', '2016-10-16 20:51:29'),
	(90, 'Блохина Алевтина', 21, b'1', '2016-10-16 20:51:29'),
	(91, 'Кудряшов Ярослав', 48, b'0', '2016-10-16 20:51:29'),
	(92, 'Емельянова Ульяна', 93, b'1', '2016-10-16 20:51:29'),
	(93, 'Панфилов Матвей', 56, b'0', '2016-10-16 20:51:29'),
	(94, 'Лазарев Юрий', 20, b'1', '2016-10-16 20:51:29'),
	(95, 'Яковлев Борис', 28, b'0', '2016-10-16 20:51:29'),
	(96, 'Коновалова Алина', 96, b'0', '2016-10-16 20:51:29'),
	(97, 'Абрамов Александр', 26, b'1', '2016-10-16 20:51:29'),
	(98, 'Гуляев Мэлс', 34, b'1', '2016-10-16 20:51:29'),
	(99, 'Блохин Федот', 93, b'0', '2016-10-16 20:51:29'),
	(100, 'Кошелев Созон', 79, b'1', '2016-10-16 20:51:29'),
	(101, 'Сергеева Пелагея', 53, b'1', '2016-10-16 20:51:29'),
	(102, 'Фомин Олег', 66, b'0', '2016-10-16 20:51:29'),
	(103, 'Баранова Раиса', 82, b'0', '2016-10-16 20:51:29'),
	(104, 'Семёнов Валерьян', 20, b'1', '2016-10-16 20:51:29'),
	(105, 'Александров Игорь', 80, b'0', '2016-10-16 20:51:29'),
	(106, 'Максимова Анна', 32, b'1', '2016-10-16 20:51:29'),
	(107, 'Медведьев Вадим', 70, b'1', '2016-10-16 20:51:29'),
	(108, 'Филиппова Ольга', 33, b'1', '2016-10-16 20:51:29'),
	(109, 'Михайлова Наина', 87, b'0', '2016-10-16 20:51:29'),
	(110, 'Кузьмин Станислав', 32, b'0', '2016-10-16 20:51:29'),
	(111, 'Фокин Степан', 33, b'1', '2016-10-16 20:51:29'),
	(112, 'Доронина Надежда', 61, b'0', '2016-10-16 20:51:29');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
