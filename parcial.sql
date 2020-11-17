-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2020 a las 01:00:38
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcions`
--

CREATE TABLE `inscripcions` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `inscripcions`
--

INSERT INTO `inscripcions` (`id`, `id_alumno`, `id_materia`, `nota`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 8, NULL, NULL),
(4, 1, 2, 5, '2020-11-17 02:28:30', '2020-11-17 02:28:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `cuatrimestre` int(11) NOT NULL,
  `cupos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `cuatrimestre`, `cupos`, `created_at`, `updated_at`) VALUES
(1, 'Programacion 3', 3, 30, NULL, NULL),
(2, 'Programacion 2', 2, 30, NULL, NULL),
(3, 'Programacion 1', 1, 30, NULL, NULL),
(4, 'Ingles 1', 1, 25, NULL, NULL),
(8, 'Ingles 2', 2, 30, '2020-11-14 23:40:24', '2020-11-14 23:40:24'),
(10, 'Matematica', 1, 30, '2020-11-15 01:39:45', '2020-11-15 01:39:45'),
(12, 'P3', 3, 20, '2020-11-17 02:20:39', '2020-11-17 02:20:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'luis', 'luisprado@gmail.com', '123', 'alumno', NULL, NULL),
(2, 'Ramiro', 'ramiro@gmail.com', '123', 'profesor', NULL, NULL),
(4, 'admin', 'admin@gmail.com', '123', 'admin', NULL, NULL),
(8, 'pepe', 'pepe@mail.com', '123456', 'alumno', '2020-11-17 02:03:01', '2020-11-17 02:03:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
