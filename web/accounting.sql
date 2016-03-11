-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-03-2016 a las 06:05:10
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accounting`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `number` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `handler` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`number`, `name`, `handler`) VALUES
(1, 'Activo', NULL),
(2, 'Pasivo', NULL),
(3, 'Patrimonio', NULL),
(4, 'Ingresos', NULL),
(5, 'Gastos', NULL),
(6, 'Costos', NULL),
(11, 'Disponibe', 1),
(14, 'Inventarios', 1),
(22, 'Proveedores', 2),
(23, 'Cuentas por pagar', 2),
(31, 'Capital Social', 3),
(32, 'Superavit de capital', 3),
(41, 'Operacionales', 4),
(42, 'No operacionales', 4),
(51, 'Operacionales de Administracion', 5),
(52, 'Gastos Operacionales', 5),
(53, 'No operacionales', 5),
(61, 'Costo de ventas y de prestación de servicios', 6),
(62, 'Compras', 6),
(1105, 'Caja', 11),
(1110, 'Bancos', 11),
(1405, 'Materias primas', 14),
(1410, 'Productos en proceso', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entries`
--

CREATE TABLE `entries` (
  `number` int(11) NOT NULL,
  `accounts` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`number`);

--
-- Indices de la tabla `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
