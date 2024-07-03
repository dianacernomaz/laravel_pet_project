-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 01 2024 г., 23:35
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinematografe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `ID_actorii` bigint(20) UNSIGNED NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `Prenume` varchar(255) NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Tara_origine` varchar(255) NOT NULL,
  `ID_film` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`ID_actorii`, `Nume`, `Prenume`, `Data_nasterii`, `Tara_origine`, `ID_film`, `created_at`, `updated_at`) VALUES
(2, 'Andrei', 'Petrov', '1989-02-05', 'Rusia', 13, '2024-02-21 08:05:13', '2024-02-21 08:05:13'),
(3, 'Emma', 'Roberts', '1987-09-12', 'SUA', 2, '2024-03-01 19:51:32', '2024-03-01 19:51:32'),
(4, 'Tom', 'Holland', '1988-03-31', 'SUA', 12, '2024-03-01 19:52:38', '2024-03-01 19:52:38'),
(5, 'Andrew', 'Garfild', '1991-12-13', 'SUA', 13, '2024-03-01 19:53:00', '2024-03-01 19:53:00'),
(6, 'Tobey', 'Maguire', '1978-12-12', 'SUA', 12, '2024-03-01 19:53:33', '2024-03-01 19:53:33');

-- --------------------------------------------------------

--
-- Структура таблицы `cinematografs`
--

CREATE TABLE `cinematografs` (
  `ID_cinematografe` bigint(20) UNSIGNED NOT NULL,
  `Denumirea` varchar(255) NOT NULL,
  `Adresa` varchar(255) NOT NULL,
  `Oras` varchar(255) NOT NULL,
  `Stat` varchar(255) NOT NULL,
  `Capacitatea` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cinematografs`
--

INSERT INTO `cinematografs` (`ID_cinematografe`, `Denumirea`, `Adresa`, `Oras`, `Stat`, `Capacitatea`, `created_at`, `updated_at`) VALUES
(1, 'Patria Loteanu', 'bd Stefan cel Mare', 'Chisinau', 'Moldova', 123, '2024-02-20 06:50:11', '2024-02-20 06:50:11'),
(2, 'Patria MALL', 'bd Dacia', 'Chisinau', 'R Moldova', 120, '2024-03-01 19:57:38', '2024-03-01 19:57:38'),
(3, 'Happy Cinema', 'str Independentei', 'Iasi', 'Romania', 95, '2024-03-01 19:58:12', '2024-03-01 19:58:12');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `ID_filme` bigint(20) UNSIGNED NOT NULL,
  `Titlu` varchar(255) NOT NULL,
  `Regizor` varchar(255) NOT NULL,
  `An_lansare` date NOT NULL,
  `Gen` varchar(255) NOT NULL,
  `Durata` int(11) NOT NULL,
  `Limba` varchar(255) NOT NULL,
  `ID_cinematograf` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`ID_filme`, `Titlu`, `Regizor`, `An_lansare`, `Gen`, `Durata`, `Limba`, `ID_cinematograf`, `created_at`, `updated_at`) VALUES
(1, 'Home Alone', 'Chris Columbus', '1996-02-07', 'comedie', 148, 'engleza', 12, '2024-02-20 07:06:44', '2024-02-20 07:06:44'),
(2, 'The Amazing Spider Man', 'Mark Web', '2012-07-03', 'fantesie', 134, 'engleza', 12, '2024-03-01 20:03:01', '2024-03-01 20:03:01'),
(3, 'Harry Potter and the Philosopher\'s Stone', 'Chris Columbus', '2001-11-16', 'fantesie', 201, 'engleza', 3, '2024-03-01 20:04:34', '2024-03-01 20:04:34'),
(4, 'Fire', 'Alexei Nujnai', '2020-12-24', 'drama', 156, 'rusa', 3, '2024-03-01 20:05:44', '2024-03-01 20:05:44');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_07_102113_create_actorii_table', 1),
(6, '2024_02_07_102246_create_cinematografe_table', 1),
(7, '2024_02_07_102303_create_filme_table', 1),
(8, '2024_02_07_102329_create_recenzii_table', 1),
(9, '2024_02_07_102346_create_spectatori_table', 1),
(10, '2024_02_07_102403_create_utilizatori_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `recenzies`
--

CREATE TABLE `recenzies` (
  `ID_recenzii` bigint(20) UNSIGNED NOT NULL,
  `ID_film` int(11) NOT NULL,
  `Data_recenziei` date NOT NULL,
  `Scor` int(11) NOT NULL,
  `Text_recenzie` varchar(255) NOT NULL,
  `ID_spectator` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recenzies`
--

INSERT INTO `recenzies` (`ID_recenzii`, `ID_film`, `Data_recenziei`, `Scor`, `Text_recenzie`, `ID_spectator`, `created_at`, `updated_at`) VALUES
(1, 12, '2024-02-21', 9, 'Foarte interesant', 1, '2024-02-21 08:08:51', '2024-02-21 08:08:51'),
(2, 12, '2024-03-02', 2, 'Film pentru copii, nu mia placut grafica', 2, '2024-03-01 20:08:41', '2024-03-01 20:08:41'),
(3, 3, '2020-03-01', 9, 'Mi-a placut filmul, insa sfarsitul putea sa fie mai bun', 4, '2024-03-01 20:09:40', '2024-03-01 20:09:40'),
(5, 6, '2023-03-12', 10, 'Mi-a placut enorm de mult, o sa-l mai reprivesc de multe ori', 6, '2024-03-01 20:11:28', '2024-03-01 20:11:28');

-- --------------------------------------------------------

--
-- Структура таблицы `spectators`
--

CREATE TABLE `spectators` (
  `ID_spectator` bigint(20) UNSIGNED NOT NULL,
  `Nume` varchar(255) NOT NULL,
  `Prenume` varchar(255) NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Adresa` varchar(255) NOT NULL,
  `Nr_telefon` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `spectators`
--

INSERT INTO `spectators` (`ID_spectator`, `Nume`, `Prenume`, `Data_nasterii`, `Adresa`, `Nr_telefon`, `created_at`, `updated_at`) VALUES
(1, 'Schepu', 'Daniel', '2004-09-18', 'Chisinau', 78123456, '2024-02-21 08:09:41', '2024-02-21 08:09:41'),
(2, 'Ababii', 'Valeria', '2004-10-03', 'str Miorita', 69162778, '2024-03-01 20:13:06', '2024-03-01 20:13:06'),
(3, 'Chisca', 'Dragos', '2004-12-31', 'o Soroca', 78123098, '2024-03-01 20:13:47', '2024-03-01 20:13:47'),
(4, 'Drangoi', 'Karina', '2004-03-04', 'Norvegia', 69123678, '2024-03-01 20:14:38', '2024-03-01 20:14:38');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `utilizators`
--

CREATE TABLE `utilizators` (
  `ID_utilizator` bigint(20) UNSIGNED NOT NULL,
  `ID_spectator` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Parola` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `utilizators`
--

INSERT INTO `utilizators` (`ID_utilizator`, `ID_spectator`, `Username`, `Parola`, `created_at`, `updated_at`) VALUES
(1, 2, 'dragon123', 'kjsndkjnw', '2024-02-21 08:10:18', '2024-02-21 08:10:18'),
(2, 1, 'diana_jpeg', '1234fg56', '2024-03-01 20:15:37', '2024-03-01 20:15:37'),
(3, 4, 'i_love_programming', 'ora_00_16', '2024-03-01 20:16:15', '2024-03-01 20:16:15'),
(4, 6, 'liio_22', '3ghj2kknk', '2024-03-01 20:17:49', '2024-03-01 20:17:49');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ID_actorii`);

--
-- Индексы таблицы `cinematografs`
--
ALTER TABLE `cinematografs`
  ADD PRIMARY KEY (`ID_cinematografe`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`ID_filme`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `recenzies`
--
ALTER TABLE `recenzies`
  ADD PRIMARY KEY (`ID_recenzii`);

--
-- Индексы таблицы `spectators`
--
ALTER TABLE `spectators`
  ADD PRIMARY KEY (`ID_spectator`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `utilizators`
--
ALTER TABLE `utilizators`
  ADD PRIMARY KEY (`ID_utilizator`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `ID_actorii` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `cinematografs`
--
ALTER TABLE `cinematografs`
  MODIFY `ID_cinematografe` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `ID_filme` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `recenzies`
--
ALTER TABLE `recenzies`
  MODIFY `ID_recenzii` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `spectators`
--
ALTER TABLE `spectators`
  MODIFY `ID_spectator` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `utilizators`
--
ALTER TABLE `utilizators`
  MODIFY `ID_utilizator` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
