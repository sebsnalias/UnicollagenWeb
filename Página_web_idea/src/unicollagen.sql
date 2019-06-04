-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2019 a las 18:13:12
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `unicollagen`
--
CREATE DATABASE IF NOT EXISTS `unicollagen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `unicollagen`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_espanol`
--

CREATE TABLE `productos_espanol` (
  `id_producto` int(255) NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `precio_producto` float(255,0) NOT NULL,
  `marca_producto` varchar(255) NOT NULL,
  `presentacion_producto` varchar(255) NOT NULL,
  `tipo_producto` varchar(255) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `recomendacion_producto` text NOT NULL,
  `beneficios_producto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_existencias`
--

CREATE TABLE `productos_existencias` (
  `id_existencias` int(255) NOT NULL,
  `id_productos` int(255) NOT NULL,
  `existencias_existencias` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_frances`
--

CREATE TABLE `productos_frances` (
  `id_producto_frances` int(255) NOT NULL,
  `id_producto` int(255) NOT NULL,
  `nombre_producto_frances` varchar(255) NOT NULL,
  `precio_producto_frances` varchar(255) NOT NULL,
  `marca_producto_frances` varchar(255) NOT NULL,
  `presentacion_producto_frances` varchar(255) NOT NULL,
  `tipo_producto_frances` varchar(255) NOT NULL,
  `descripcion_producto_frances` text NOT NULL,
  `recomendacion_producto_frances` text NOT NULL,
  `beneficios_producto_frances` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_ingles`
--

CREATE TABLE `productos_ingles` (
  `id_producto_ingles` int(255) NOT NULL,
  `id_producto` int(255) NOT NULL,
  `nombre_producto_ingles` varchar(255) NOT NULL,
  `precio_producto_ingles` varchar(255) NOT NULL,
  `marca_producto_ingles` varchar(255) NOT NULL,
  `presentacion_producto_ingles` varchar(255) NOT NULL,
  `tipo_producto_ingles` varchar(255) NOT NULL,
  `descripcion_producto_ingles` text NOT NULL,
  `recomendacion_producto_ingles` text,
  `beneficios_producto_ingles` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id_suscriptor` int(255) NOT NULL,
  `nombre_suscriptor` varchar(255) NOT NULL,
  `apellido_paterno_suscriptor` varchar(255) NOT NULL,
  `apellido_materno_suscriptor` varchar(255) NOT NULL,
  `correo_suscriptor` varchar(255) NOT NULL,
  `pais_origen_suscriptor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `apellido_peterno_usuario` varchar(255) NOT NULL,
  `apellido_materno_usuario` varchar(255) NOT NULL,
  `correo_usuario` varchar(255) NOT NULL,
  `contrasena_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos_espanol`
--
ALTER TABLE `productos_espanol`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos_existencias`
--
ALTER TABLE `productos_existencias`
  ADD PRIMARY KEY (`id_existencias`),
  ADD KEY `productos_existencias_ibfk_1` (`id_productos`);

--
-- Indices de la tabla `productos_frances`
--
ALTER TABLE `productos_frances`
  ADD PRIMARY KEY (`id_producto_frances`) USING BTREE,
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos_ingles`
--
ALTER TABLE `productos_ingles`
  ADD PRIMARY KEY (`id_producto_ingles`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id_suscriptor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos_existencias`
--
ALTER TABLE `productos_existencias`
  MODIFY `id_existencias` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos_frances`
--
ALTER TABLE `productos_frances`
  MODIFY `id_producto_frances` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos_ingles`
--
ALTER TABLE `productos_ingles`
  MODIFY `id_producto_ingles` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id_suscriptor` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos_existencias`
--
ALTER TABLE `productos_existencias`
  ADD CONSTRAINT `productos_existencias_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos_espanol` (`id_producto`);

--
-- Filtros para la tabla `productos_frances`
--
ALTER TABLE `productos_frances`
  ADD CONSTRAINT `productos_frances_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos_espanol` (`id_producto`);

--
-- Filtros para la tabla `productos_ingles`
--
ALTER TABLE `productos_ingles`
  ADD CONSTRAINT `productos_ingles_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos_espanol` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
