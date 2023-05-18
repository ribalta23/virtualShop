-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 16:37:04
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trrgtodaynews`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriesaial`
--

CREATE TABLE `categoriesaial` (
  `idCategoria` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `descripcio` int(200) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoriesaial`
--

INSERT INTO `categoriesaial` (`idCategoria`, `nom`, `descripcio`, `link`) VALUES
('0', 'TOT PRODUCTES', 0, 'productes.php?idCategoria=0'),
('1', 'ROBA', 0, 'productes.php?idCategoria=1'),
('2', 'OBJECTES', 0, 'productes.php?idCategoria=2'),
('3', 'DIARI DIGITAL', 0, 'productes.php?idCategoria=3'),
('4', 'JOCS', 0, 'productes.php?idCategoria=4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriesaial`
--
ALTER TABLE `categoriesaial`
  ADD PRIMARY KEY (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
