-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2018 a las 14:46:26
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `IDcategoria` int(11) NOT NULL,
  `descripcion` varchar(240) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`IDcategoria`, `descripcion`) VALUES
(1, 'tecnologia'),
(2, 'videojuegos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `IDnoticia` int(11) NOT NULL,
  `IDcategoria` int(11) NOT NULL,
  `mail` varchar(240) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(240) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contenido` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`IDnoticia`, `IDcategoria`, `mail`, `titulo`, `fecha`, `contenido`) VALUES
(1, 1, 'luis@gmail.com', 'desarrollo web', '2018-01-19 08:41:15', 'pues tal cual y tal...'),
(2, 1, 'antonio@gmail.com', 'css', '2018-01-19 08:41:57', 'y esto es otra noticia'),
(3, 1, 'ana@gmail.com', 'telefonos', '2018-01-19 08:53:09', 'el iphone tal el android cual'),
(4, 2, 'claudia@gmail.com', 'nintendo labo', '2018-01-19 08:55:15', 'nintenddo saca juguetes de carton'),
(5, 1, 'm@gmail.com', 'bla', '2018-01-19 13:25:00', 'blbla'),
(6, 1, 'm@gmail.com', 'h', '2018-01-19 13:25:32', 'dsdsdsd'),
(7, 1, 'df@gmail', 'dfsdf', '2018-01-19 13:41:00', 'fdfdfdfdf'),
(8, 1, 'j@gmail.com', 'hhhhhhhhhhh', '2018-01-19 13:42:47', 'hhhhhhhhhhhhhhh');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`IDcategoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`IDnoticia`),
  ADD KEY `IDcategoria` (`IDcategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `IDcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `IDnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`IDcategoria`) REFERENCES `categorias` (`IDcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
