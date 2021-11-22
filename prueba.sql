-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-10-2020 a las 23:57:37
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Artciles`
--

CREATE TABLE `Artciles` (
  `articleId` int(11) NOT NULL,
  `articleTitle` varchar(60) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `datePublished` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Artciles`
--

INSERT INTO `Artciles` (`articleId`, `articleTitle`, `dateCreated`, `datePublished`) VALUES
(1, 'How to Use MySQL Insert Statement', '2019-07-21 04:00:01', '2020-10-17 03:56:18'),
(2, 'How to Use MySQL Select Statement', '2019-07-14 04:00:01', '2020-10-17 03:56:18'),
(3, 'How to Use MySQL Update Statement', '2019-07-07 04:00:01', '2020-10-17 03:56:18'),
(4, 'How to Use MySQL Delete Statement', '2019-07-01 04:00:01', '2020-10-17 03:56:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombredelatabla`
--

CREATE TABLE `nombredelatabla` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombretabla`
--

CREATE TABLE `nombretabla` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nombretabla`
--

INSERT INTO `nombretabla` (`id`, `nombre`, `fecha`) VALUES
(5, 'Pedro', '2019-07-14 04:00:00'),
(10, 'Nombre de la persona', '2020-02-14 04:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Sample`
--

CREATE TABLE `Sample` (
  `sample_id` int(11) NOT NULL,
  `sample_name` varchar(20) DEFAULT NULL,
  `sample_ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Artciles`
--
ALTER TABLE `Artciles`
  ADD PRIMARY KEY (`articleId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Artciles`
--
ALTER TABLE `Artciles`
  MODIFY `articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
