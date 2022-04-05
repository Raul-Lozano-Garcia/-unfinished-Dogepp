-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2022 a las 19:02:53
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dogepp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigo`
--

CREATE TABLE `amigo` (
  `id_usuario` char(9) NOT NULL,
  `id_usuario_amigo` char(9) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `estado` set('0','1') NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `id_usuario` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apunta`
--

CREATE TABLE `apunta` (
  `id_ruta` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `contenido` varchar(5000) NOT NULL,
  `id_usuario` char(9) NOT NULL,
  `id_parque` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `cif` char(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contraseña` char(32) NOT NULL,
  `telefono` char(9) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `activo` set('0','1') NOT NULL,
  `localizacion` varchar(1000) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `localizacion` varchar(1000) NOT NULL,
  `fecha` date NOT NULL,
  `id_empresa` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `contenido` varchar(5000) NOT NULL,
  `id_usuario_envia` char(9) NOT NULL,
  `id_usuario_recibe` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parque`
--

CREATE TABLE `parque` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `localizacion` varchar(1000) NOT NULL,
  `reglas` varchar(5000) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_usuario` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporta`
--

CREATE TABLE `reporta` (
  `id_usuario` char(9) NOT NULL,
  `id_usuario_reportado` char(9) NOT NULL,
  `fecha` date NOT NULL,
  `comentario` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inicio` varchar(50) NOT NULL,
  `fin` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `reglas` varchar(5000) NOT NULL,
  `mapa` varchar(1000) NOT NULL,
  `id_usuario` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `dni` char(9) NOT NULL,
  `tipo` set('b','a') NOT NULL,
  `nick` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `contraseña` char(32) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `teléfono` char(9) NOT NULL,
  `activo` set('0','1') NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`dni`, `tipo`, `nick`, `imagen`, `contraseña`, `nombre`, `teléfono`, `activo`, `estado`) VALUES
('', '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigo`
--
ALTER TABLE `amigo`
  ADD PRIMARY KEY (`id_usuario`,`id_usuario_amigo`),
  ADD KEY `amigo_usuario_amigo` (`id_usuario_amigo`);

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `anuncio_usuario` (`id_usuario`);

--
-- Indices de la tabla `apunta`
--
ALTER TABLE `apunta`
  ADD PRIMARY KEY (`id_ruta`,`id_usuario`),
  ADD KEY `apunta_usuario` (`id_usuario`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `comentario_usuario` (`id_usuario`),
  ADD KEY `comentario_parque` (`id_parque`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cif`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `evento_empresa` (`id_empresa`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `mensaje_usuario_envia` (`id_usuario_envia`),
  ADD KEY `mensaje_usuario_recibe` (`id_usuario_recibe`);

--
-- Indices de la tabla `parque`
--
ALTER TABLE `parque`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `parque_usuario` (`id_usuario`);

--
-- Indices de la tabla `reporta`
--
ALTER TABLE `reporta`
  ADD PRIMARY KEY (`id_usuario`,`id_usuario_reportado`),
  ADD KEY `reporta_usuario_reportado` (`id_usuario_reportado`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `ruta_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `nick` (`nick`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parque`
--
ALTER TABLE `parque`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `amigo`
--
ALTER TABLE `amigo`
  ADD CONSTRAINT `amigo_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `amigo_usuario_amigo` FOREIGN KEY (`id_usuario_amigo`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `anuncio_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `apunta`
--
ALTER TABLE `apunta`
  ADD CONSTRAINT `apunta_ruta` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apunta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_parque` FOREIGN KEY (`id_parque`) REFERENCES `parque` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`cif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `mensaje_usuario_envia` FOREIGN KEY (`id_usuario_envia`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mensaje_usuario_recibe` FOREIGN KEY (`id_usuario_recibe`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `parque`
--
ALTER TABLE `parque`
  ADD CONSTRAINT `parque_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporta`
--
ALTER TABLE `reporta`
  ADD CONSTRAINT `reporta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reporta_usuario_reportado` FOREIGN KEY (`id_usuario_reportado`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
