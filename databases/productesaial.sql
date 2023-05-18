-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 16:36:36
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
-- Estructura de tabla para la tabla `productesaial`
--

CREATE TABLE `productesaial` (
  `idProducte` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `preu` double NOT NULL,
  `descripcio` varchar(200) NOT NULL,
  `imatge` varchar(200) NOT NULL,
  `idCategoria` varchar(25) NOT NULL,
  `destacat` tinyint(1) NOT NULL,
  `joc` tinyint(1) NOT NULL,
  `download` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productesaial`
--

INSERT INTO `productesaial` (`idProducte`, `nom`, `preu`, `descripcio`, `imatge`, `idCategoria`, `destacat`, `joc`, `download`) VALUES
('1', 'Samarreta Blanca', 15, 'Samarreta blanca basica: COTO 100%', 'samarretablanca.png', '1', 1, 0, ''),
('2', 'Samarreta Negra', 15, 'Samarreta negra: COTO 100%', 'samarretanegra.jpg', '1', 1, 0, ''),
('3', 'Samarreta B.TRRGN', 20, 'SAMARRETA BLANCA AMB EL LOGO DE TRRGNEWS: COTO 100%', 'SBL.png', '1', 1, 0, ''),
('4', 'Samarreta N.TRRGN', 20, 'SAMARRETA NEGRA BASICA LOGO TRRGNEWS: COTO 100%', 'SNL.png', '1', 0, 0, ''),
('5', 'Tasa', 15, 'TASSA BLANCA BASICA', 'taza.png', '2', 0, 0, ''),
('6', 'Tassa TRRGNEWS', 20, 'TASSA BLANCA AMB EL LOGO TRRGNEWS', 'TL.png', '2', 0, 0, ''),
('7', 'SUB - MENSUAL', 10, 'SUBSCRIPCIÓ MENSUAL A TRRGTODAYNEWS', 'logo.png', '3', 1, 0, ''),
('8', 'SUB - ANUAL', 60, 'SUBSCRIPCIÓ ANUAL A TRRGTODAYNEWS', 'logo.png', '3', 1, 0, ''),
('9', '3 EN RALLA', 0, 'EL CLASSIC VIDEOJOC DEL TRES EN RATLLA', '3ralla.png', '4', 1, 1, '3EnRatlla.apk');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productesaial`
--
ALTER TABLE `productesaial`
  ADD PRIMARY KEY (`idProducte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
