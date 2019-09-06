-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2019 a las 02:14:59
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facilito_form110`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contribuyente`
--

CREATE TABLE `contribuyente` (
  `ID_CONTRIBUYENTE` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO_PAT` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO_MAT` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDO_CASADA` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DOMICILIO` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NIT` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contribuyente`
--

INSERT INTO `contribuyente` (`ID_CONTRIBUYENTE`, `NOMBRE`, `APELLIDO_PAT`, `APELLIDO_MAT`, `APELLIDO_CASADA`, `DOMICILIO`, `NIT`, `PASSWORD`) VALUES
(1, 'Natalia', 'Medrano', 'Cambará', NULL, 'Av.Beijing', '7896242', NULL),
(2, 'Carmen', 'Cambará', 'Bude', '', 'C. Angelica Ascui', '6254789', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `ID_DOCUMENTO` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`ID_DOCUMENTO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'CI', 'Carnet de Identidad'),
(2, 'CDE', 'Carnet de extranjero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_contribuyente`
--

CREATE TABLE `documento_contribuyente` (
  `ID_DOCUMENTO` int(11) DEFAULT NULL,
  `ID_LUGAR` int(11) DEFAULT NULL,
  `ID_CONTRIBUYENTE` int(11) DEFAULT NULL,
  `NUMERO` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documento_contribuyente`
--

INSERT INTO `documento_contribuyente` (`ID_DOCUMENTO`, `ID_LUGAR`, `ID_CONTRIBUYENTE`, `NUMERO`) VALUES
(1, 1, 1, '6435279'),
(1, 2, 2, '789456411');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleador`
--

CREATE TABLE `empleador` (
  `ID_EMPLEADOR` int(11) NOT NULL,
  `NIT` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RAZON_SOCIAL_NOMBRE` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DOMICILIO` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ORDEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleador`
--

INSERT INTO `empleador` (`ID_EMPLEADOR`, `NIT`, `RAZON_SOCIAL_NOMBRE`, `DOMICILIO`, `ORDEN`) VALUES
(1, '1234567890', 'ALSIE CONSULTORES', 'BEIJING CASI TADEO HAENKE #123', 1),
(2, '4561287', 'ELFEC', 'AV. HEROINAS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_FACTURA` int(11) NOT NULL,
  `ID_FORMULARIO` int(11) NOT NULL,
  `NIT` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NRO_FACTURA` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NRO_AUTORIZACION` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `IMPORTE` decimal(18,6) DEFAULT NULL,
  `CODIGO_CONTROL` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FAC_ELECTRONICA` text COLLATE utf8_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_FACTURA`, `ID_FORMULARIO`, `NIT`, `NRO_FACTURA`, `NRO_AUTORIZACION`, `FECHA`, `IMPORTE`, `CODIGO_CONTROL`, `FAC_ELECTRONICA`) VALUES
(1, 1, '1655020318999', '3522', '62767', '2019-09-04', '355.000000', '09567', '1'),
(2, 1, '1629032538099', '8319', '23974', '2019-09-04', '781.000000', '97480', '1'),
(3, 1, '1642061042199', '6517', '96525', '2019-09-04', '955.000000', '01162', '1'),
(4, 2, '1638071918899', '3638', '50774', '2019-09-02', '132.000000', '60957', '1'),
(5, 2, '1609101326099', '4436', '73361', '2019-09-03', '469.000000', '72775', '1'),
(6, 2, '1627081509499', '7515', '61310', '2019-09-02', '373.000000', '82094', '1'),
(7, 3, '1626050973499', '9209', '10640', '2019-09-02', '387.000000', '72143', '1'),
(8, 3, '1675011528299', '7237', '66813', '2019-09-02', '786.000000', '99142', '1'),
(9, 3, '1643020577799', '1516', '16094', '2019-09-02', '61.000000', '55341', '1'),
(10, 1, '1605070319999', '5628', '07349', '2019-09-03', '20.000000', '95541', '1'),
(11, 1, '1643010669899', '9651', '04938', '2019-09-04', '193.000000', '98756', '1'),
(12, 1, '1648090886699', '1746', '09409', '2019-09-02', '377.000000', '40387', '1'),
(13, 2, '1661101806299', '8561', '55444', '2019-09-02', '200.000000', '11407', '1'),
(14, 2, '1671062414999', '9888', '74427', '2019-09-06', '103.000000', '60083', '1'),
(15, 2, '1629072152299', '6406', '43362', '2019-09-02', '850.000000', '93499', '1'),
(16, 3, '1651062339199', '1467', '14302', '2019-09-04', '926.000000', '28945', '1'),
(17, 3, '1627080241399', '4909', '07668', '2019-09-01', '572.000000', '05129', '1'),
(18, 3, '1645112077399', '8413', '19077', '2019-09-04', '534.000000', '20062', '1'),
(19, 1, '1643081747599', '5698', '40022', '2019-09-06', '761.000000', '00917', '1'),
(20, 1, '1678022835199', '1592', '86828', '2019-09-06', '110.000000', '22628', '1'),
(21, 1, '1637092471299', '8159', '83298', '2019-09-05', '795.000000', '42684', '1'),
(22, 2, '1660022217999', '9273', '50102', '2019-09-01', '100.000000', '24993', '1'),
(23, 2, '1617083088999', '3341', '37616', '2019-09-03', '514.000000', '60585', '1'),
(24, 2, '1643061395999', '1186', '76824', '2019-09-03', '394.000000', '55817', '1'),
(25, 3, '1616120233199', '9799', '20374', '2019-09-02', '404.000000', '54422', '1'),
(26, 3, '1667040685399', '8270', '63523', '2019-09-02', '751.000000', '69426', '1'),
(27, 3, '1602090217799', '9657', '52957', '2019-09-03', '606.000000', '27183', '1'),
(28, 1, '1664022164399', '9839', '11112', '2019-09-05', '385.000000', '31381', '1'),
(29, 1, '1616061528099', '8835', '08696', '2019-09-01', '706.000000', '68001', '1'),
(30, 1, '1647120540399', '7980', '14368', '2019-09-07', '636.000000', '11642', '1'),
(31, 2, '1636010973199', '2995', '90031', '2019-09-07', '85.000000', '79883', '1'),
(32, 2, '1644122998499', '4069', '47690', '2019-09-06', '920.000000', '08507', '1'),
(33, 2, '1682091720199', '5341', '83627', '2019-09-04', '880.000000', '78470', '1'),
(34, 3, '1642122917999', '5068', '95525', '2019-09-03', '165.000000', '88471', '1'),
(35, 3, '1655050676599', '1737', '01121', '2019-09-01', '15.000000', '07714', '1'),
(36, 3, '1697023026199', '8777', '37266', '2019-09-04', '416.000000', '04377', '1'),
(37, 1, '1638011947999', '7212', '72908', '2019-09-04', '161.000000', '23376', '1'),
(38, 1, '1632081514799', '3599', '60610', '2019-09-04', '725.000000', '42682', '1'),
(39, 1, '1627031367599', '2083', '24368', '2019-09-06', '931.000000', '86761', '1'),
(40, 2, '1676111544299', '5427', '59387', '2019-09-01', '661.000000', '79542', '1'),
(41, 2, '1660051464699', '8359', '72003', '2019-09-06', '690.000000', '13820', '1'),
(42, 2, '1665111532999', '1287', '95326', '2019-09-02', '998.000000', '64003', '1'),
(43, 3, '1621012023899', '8117', '82027', '2019-09-04', '540.000000', '24385', '1'),
(44, 3, '1645051421299', '2732', '90064', '2019-09-07', '81.000000', '61299', '1'),
(45, 3, '1693012529399', '5120', '92038', '2019-09-07', '322.000000', '95526', '1'),
(46, 1, '1668050599399', '4057', '98008', '2019-09-07', '772.000000', '75495', '1'),
(47, 1, '1649090712599', '1559', '90220', '2019-09-07', '584.000000', '09604', '1'),
(48, 1, '1611030914899', '9125', '80548', '2019-09-04', '859.000000', '33472', '1'),
(49, 2, '1618121449099', '4520', '50665', '2019-09-04', '435.000000', '72396', '1'),
(50, 2, '1643100743799', '1911', '32069', '2019-09-05', '650.000000', '52535', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `ID_FORMULARIO` int(11) NOT NULL,
  `ID_CONTRIBUYENTE` int(11) DEFAULT NULL,
  `ID_TIPO_FORMULARIO` int(11) NOT NULL,
  `ID_LUGAR` int(11) NOT NULL,
  `ID_EMPLEADOR` int(11) NOT NULL,
  `NUMERO_ORDEN` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PERIODO_MES` int(11) DEFAULT NULL,
  `PERIODO_ANIO` int(11) DEFAULT NULL,
  `FECHA_PRESENTACION` date DEFAULT NULL,
  `IMPORTE_TOTAL` decimal(18,6) NOT NULL,
  `PAGO_TOTAL` decimal(18,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`ID_FORMULARIO`, `ID_CONTRIBUYENTE`, `ID_TIPO_FORMULARIO`, `ID_LUGAR`, `ID_EMPLEADOR`, `NUMERO_ORDEN`, `PERIODO_MES`, `PERIODO_ANIO`, `FECHA_PRESENTACION`, `IMPORTE_TOTAL`, `PAGO_TOTAL`) VALUES
(1, 1, 1, 1, 1, NULL, 9, 2019, '2019-09-05', '10106.000000', '1313.780000'),
(2, 1, 1, 1, 1, NULL, 8, 2019, '2019-09-02', '8454.000000', '109.902000'),
(3, 1, 1, 1, 1, NULL, 7, 2019, '2019-09-01', '6566.000000', '85.358000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `ID_LUGAR` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`ID_LUGAR`, `NOMBRE`) VALUES
(1, 'Cochabamba'),
(2, 'La Paz'),
(3, 'Santa Cruz'),
(4, 'Beni'),
(5, 'Pando'),
(6, 'Oruro'),
(7, 'Tarija'),
(8, 'Sucre'),
(9, 'Potosi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_formulario`
--

CREATE TABLE `tipo_formulario` (
  `ID_TIPO_FORMULARIO` int(11) NOT NULL,
  `NOMBRE` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CODIGO` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `COD_IMPORTE` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `COD_PAGO` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_formulario`
--

INSERT INTO `tipo_formulario` (`ID_TIPO_FORMULARIO`, `NOMBRE`, `DESCRIPCION`, `CODIGO`, `COD_IMPORTE`, `COD_PAGO`) VALUES
(1, 'Formulario Dependiente', 'Formulario Dependiente', '110', '026', '693'),
(2, 'Sistema Tributario Integrado', 'Sistema Tributario Integrado', 'F.702', '017', '874'),
(3, 'RC-IVA Contribuyente Directo', 'RC-IVA Contribuyente Directo', 'F.610', '010', '985'),
(4, 'Profesiones Liberales u Oficios', 'Profesiones Liberales u Oficios', 'F.510', '036', '246');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contribuyente`
--
ALTER TABLE `contribuyente`
  ADD PRIMARY KEY (`ID_CONTRIBUYENTE`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`ID_DOCUMENTO`);

--
-- Indices de la tabla `documento_contribuyente`
--
ALTER TABLE `documento_contribuyente`
  ADD KEY `FK_R1` (`ID_DOCUMENTO`),
  ADD KEY `FK_R2` (`ID_CONTRIBUYENTE`),
  ADD KEY `FK_R3` (`ID_LUGAR`);

--
-- Indices de la tabla `empleador`
--
ALTER TABLE `empleador`
  ADD PRIMARY KEY (`ID_EMPLEADOR`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `FK_TIENE` (`ID_FORMULARIO`);

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`ID_FORMULARIO`),
  ADD KEY `FK_EMITIDO_EN` (`ID_LUGAR`),
  ADD KEY `FK_LLENA` (`ID_CONTRIBUYENTE`),
  ADD KEY `FK_R6` (`ID_TIPO_FORMULARIO`),
  ADD KEY `FK_R8` (`ID_EMPLEADOR`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`ID_LUGAR`);

--
-- Indices de la tabla `tipo_formulario`
--
ALTER TABLE `tipo_formulario`
  ADD PRIMARY KEY (`ID_TIPO_FORMULARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contribuyente`
--
ALTER TABLE `contribuyente`
  MODIFY `ID_CONTRIBUYENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `ID_DOCUMENTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleador`
--
ALTER TABLE `empleador`
  MODIFY `ID_EMPLEADOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `ID_FORMULARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `ID_LUGAR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipo_formulario`
--
ALTER TABLE `tipo_formulario`
  MODIFY `ID_TIPO_FORMULARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documento_contribuyente`
--
ALTER TABLE `documento_contribuyente`
  ADD CONSTRAINT `FK_R1` FOREIGN KEY (`ID_DOCUMENTO`) REFERENCES `documento` (`ID_DOCUMENTO`),
  ADD CONSTRAINT `FK_R2` FOREIGN KEY (`ID_CONTRIBUYENTE`) REFERENCES `contribuyente` (`ID_CONTRIBUYENTE`),
  ADD CONSTRAINT `FK_R3` FOREIGN KEY (`ID_LUGAR`) REFERENCES `lugar` (`ID_LUGAR`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_TIENE` FOREIGN KEY (`ID_FORMULARIO`) REFERENCES `formulario` (`ID_FORMULARIO`);

--
-- Filtros para la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD CONSTRAINT `FK_EMITIDO_EN` FOREIGN KEY (`ID_LUGAR`) REFERENCES `lugar` (`ID_LUGAR`),
  ADD CONSTRAINT `FK_LLENA` FOREIGN KEY (`ID_CONTRIBUYENTE`) REFERENCES `contribuyente` (`ID_CONTRIBUYENTE`),
  ADD CONSTRAINT `FK_R6` FOREIGN KEY (`ID_TIPO_FORMULARIO`) REFERENCES `tipo_formulario` (`ID_TIPO_FORMULARIO`),
  ADD CONSTRAINT `FK_R8` FOREIGN KEY (`ID_EMPLEADOR`) REFERENCES `empleador` (`ID_EMPLEADOR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
