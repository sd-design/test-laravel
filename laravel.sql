-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 29 2021 г., 15:45
-- Версия сервера: 5.7.26
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `ID` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`ID`, `title`, `description`) VALUES
(1, 'CRM - cистема управления взаимоотношениями с клиентами', 'CRM — модель взаимодействия, основанная на теории, что центром всей философии бизнеса является клиент, а главными направлениями деятельности компании являются меры по обеспечению эффективного маркетинга, продаж и обслуживания клиентов.'),
(2, 'Редакторы кода', 'редакторы кода для разработки лучших приложений');

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`ID`, `title`, `description`, `project_id`) VALUES
(1, 'Visual Studio Code', 'Visual Studio Code - это легкий, но мощный редактор исходного кода, который работает на вашем рабочем столе и доступен для Windows, macOS и Linux. Он поставляется со встроенной поддержкой JavaScript, TypeScript и Node.js и имеет богатую экосистему расширений для других языков (таких как C ++, C #, Java, Python, PHP, Go) и среды выполнения (например, .NET и Unity). ', 2),
(2, 'Битрикс24', 'Управление проектами в разных режимах\r\nИспользуйте списки, чек-листы, диаграмму Ганта или канбан-доску для контроля сроков и исполнителей.\r\nРоли и права доступа\r\nРаспределите роли в задаче: ответственный, постановщик и наблюдатели. Вы можете настроить права на постановку задач, перенос крайнего срока и делегирование.\r\nШаблоны задач и роботы\r\nСоздавайте шаблоны для регулярных задач, настраивайте автоматическую отправку писем, смену ответственного и статуса задачи.', 1),
(3, 'Sublime Text', 'Наконец-то прибыла первая стабильная версия Sublime Text 4! Мы много работали над улучшением, не теряя при этом внимания к тому, что делает Sublime Text отличным. Есть несколько новых основных функций, которые, как мы надеемся, значительно улучшат ваш рабочий процесс, и множество мелких улучшений по всем направлениям.\r\nОгромное спасибо всем бета-тестерам на Discord и всем участникам наших пакетов.', 2),
(4, 'AmoCRM', 'В amoCRM автоматически попадают все запросы по E-mail, Телефону, c Форм на сайте, через Чаты и Мессенджеры.\r\nМинимум кнопок, лишних страниц или действий - минимум кликов и максимальная скорость работы. Интерфейс полностью оптимизирован под использование на планшетах.', 1),
(5, 'WebStorm', 'WebStorm is an integrated development environment for JavaScript and related technologies. Like other JetBrains IDEs, it makes your development experience more enjoyable, automating routine work and helping you handle complex tasks with ease.', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `project_id` (`project_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
