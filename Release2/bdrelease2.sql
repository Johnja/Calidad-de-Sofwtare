-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-12-2016 a las 09:50:51
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdrelease2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `apellido`, `pass`) VALUES
(1, 'John', 'Macias', '123'),
(2, 'Miguel', 'Macias', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cli_correo`
--

CREATE TABLE IF NOT EXISTS `cli_correo` (
  `cliente_idCliente` int(11) NOT NULL,
  `correo` varchar(11) NOT NULL,
  KEY `fk_cli_correo_cliente_idx` (`cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cli_correo`
--

INSERT INTO `cli_correo` (`cliente_idCliente`, `correo`) VALUES
(1, 'johnjairo.m'),
(2, 'luismigue12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cli_telefono`
--

CREATE TABLE IF NOT EXISTS `cli_telefono` (
  `telefono` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  PRIMARY KEY (`cliente_idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cli_telefono`
--

INSERT INTO `cli_telefono` (`telefono`, `cliente_idCliente`) VALUES
(2116771, 1),
(2335660, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE IF NOT EXISTS `domicilios` (
  `idDomicilio` int(11) NOT NULL,
  `dom_telefono` varchar(45) NOT NULL,
  `platos` varchar(45) NOT NULL,
  `dom_cantidad` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `identificacion_rest_idRestaurante` int(11) NOT NULL,
  PRIMARY KEY (`idDomicilio`),
  KEY `fk_domicilios_cliente1_idx` (`cliente_idCliente`),
  KEY `fk_domicilios_identificacion_rest1_idx` (`identificacion_rest_idRestaurante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `domicilios`
--

INSERT INTO `domicilios` (`idDomicilio`, `dom_telefono`, `platos`, `dom_cantidad`, `cliente_idCliente`, `identificacion_rest_idRestaurante`) VALUES
(1, '2131313', 'alitas', 2, 1, 1),
(2, '5606060', 'Costillas', 4, 2, 2),
(3, '3545678', 'pollo', 5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificacion_rest`
--

CREATE TABLE IF NOT EXISTS `identificacion_rest` (
  `Sede` varchar(50) NOT NULL,
  `idRestaurante` int(11) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  `rest_direccion` varchar(45) NOT NULL,
  `barrio` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `restaurante_nit` varchar(45) NOT NULL,
  PRIMARY KEY (`idRestaurante`),
  KEY `fk_identificacion_rest_restaurante1_idx` (`restaurante_nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `identificacion_rest`
--

INSERT INTO `identificacion_rest` (`Sede`, `idRestaurante`, `contacto`, `rest_direccion`, `barrio`, `ciudad`, `pais`, `restaurante_nit`) VALUES
('Laureles', 1, 'Juan morales', 'Calle 33 # 76-45', 'Laureles', 'Medellin', 'Colombia', '800100100'),
('Poblado', 2, 'Claudia Lopez', 'Calle 10 # 35-33', 'Poblado', 'Medellin', 'Colombia', '900100100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE IF NOT EXISTS `reserva` (
  `idReservas` int(11) NOT NULL,
  `fechaCreacion` varchar(8) NOT NULL,
  `fechaReserva` varchar(8) NOT NULL,
  `hora` varchar(4) NOT NULL,
  `numeroPersonas` int(11) NOT NULL,
  `cliente_idCliente` int(11) NOT NULL,
  `identificacion_rest_idRestaurante` int(11) NOT NULL,
  PRIMARY KEY (`idReservas`),
  KEY `fk_reservas_cliente1_idx` (`cliente_idCliente`),
  KEY `fk_reservas_identificacion_rest1_idx` (`identificacion_rest_idRestaurante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReservas`, `fechaCreacion`, `fechaReserva`, `hora`, `numeroPersonas`, `cliente_idCliente`, `identificacion_rest_idRestaurante`) VALUES
(1, '20161129', '20161130', '2000', 3, 1, 1),
(2, '20161130', '20161202', '2100', 4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE IF NOT EXISTS `restaurante` (
  `nit` varchar(45) NOT NULL,
  `razon_social` varchar(45) NOT NULL,
  `contacto_ppal` varchar(45) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`nit`, `razon_social`, `contacto_ppal`) VALUES
('800100100', 'Mexican Burger', 'Carlos Lopez'),
('900100100', 'Milagros', 'Luis perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_telefono`
--

CREATE TABLE IF NOT EXISTS `res_telefono` (
  `res_telefono` varchar(45) NOT NULL,
  `identificacion_rest_idRestaurante` int(11) NOT NULL,
  KEY `fk_res_telefono_identificacion_rest1_idx` (`identificacion_rest_idRestaurante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `res_telefono`
--

INSERT INTO `res_telefono` (`res_telefono`, `identificacion_rest_idRestaurante`) VALUES
('2339090', 1),
('2609090', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cli_correo`
--
ALTER TABLE `cli_correo`
  ADD CONSTRAINT `fk_cli_correo_cliente` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cli_telefono`
--
ALTER TABLE `cli_telefono`
  ADD CONSTRAINT `fk_cli_telefono_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `domicilios`
--
ALTER TABLE `domicilios`
  ADD CONSTRAINT `fk_domicilios_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_domicilios_identificacion_rest1` FOREIGN KEY (`identificacion_rest_idRestaurante`) REFERENCES `identificacion_rest` (`idRestaurante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `identificacion_rest`
--
ALTER TABLE `identificacion_rest`
  ADD CONSTRAINT `fk_identificacion_rest_restaurante1` FOREIGN KEY (`restaurante_nit`) REFERENCES `restaurante` (`nit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_reservas_cliente1` FOREIGN KEY (`cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reservas_identificacion_rest1` FOREIGN KEY (`identificacion_rest_idRestaurante`) REFERENCES `identificacion_rest` (`idRestaurante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `res_telefono`
--
ALTER TABLE `res_telefono`
  ADD CONSTRAINT `fk_res_telefono_identificacion_rest1` FOREIGN KEY (`identificacion_rest_idRestaurante`) REFERENCES `identificacion_rest` (`idRestaurante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
