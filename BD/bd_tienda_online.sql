-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2024 a las 06:32:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotoproducts`
--

CREATE TABLE `fotoproducts` (
  `id` int(11) NOT NULL,
  `products_id` int(11) DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fotoproducts`
--

INSERT INTO `fotoproducts` (`id`, `products_id`, `foto1`, `foto2`, `foto3`) VALUES
(1, 1, 'fotosProductos/1/1.jpg', 'fotosProductos/1/2.jpg', 'fotosProductos/1/3.jpg'),
(2, 2, 'fotosProductos/2/1.jpg', 'fotosProductos/2/2.jpg', 'fotosProductos/2/3.jpg'),
(3, 3, 'fotosProductos/3/1.jpg', 'fotosProductos/3/2.jpg', 'fotosProductos/3/3.jpg'),
(4, 4, 'fotosProductos/4/1.webp', 'fotosProductos/4/2.jpg', 'fotosProductos/4/3.webp'),
(5, 5, 'fotosProductos/5/1.webp', 'fotosProductos/5/2.jpg', 'fotosProductos/5/3.webp'),
(6, 6, 'fotosProductos/6/1.webp', 'fotosProductos/6/2.jpg', 'fotosProductos/6/3.webp'),
(7, 7, 'fotosProductos/7/1.webp', 'fotosProductos/7/2.jpeg', 'fotosProductos/7/3.jpg'),
(8, 8, 'fotosProductos/8/1.png', 'fotosProductos/8/2.jpeg', 'fotosProductos/8/3.jpg'),
(9, 9, 'fotosProductos/9/1.jpg', 'fotosProductos/9/2.jpeg', ''),
(10, 10, 'fotosProductos/10/1.webp', 'fotosProductos/10/2.webp', 'fotosProductos/10/3.jpg'),
(11, 11, 'fotosProductos/11/1.png', 'fotosProductos/11/2.webp', 'fotosProductos/11/3.webp'),
(12, 12, 'fotosProductos/12/1.jpeg', 'fotosProductos/12/2.jpg', 'fotosProductos/12/3.webp'),
(13, 13, 'fotosProductos/13/1.jpg', 'fotosProductos/13/2.webp', 'fotosProductos/13/3.webp'),
(14, 14, 'fotosProductos/14/1.jpg', 'fotosProductos/14/2.webp', 'fotosProductos/14/3.webp'),
(15, 15, 'fotosProductos/15/1.jpg', 'fotosProductos/15/2.webp', 'fotosProductos/15/3.webp'),
(16, 16, 'fotosProductos/16/1.webp', 'fotosProductos/16/2.webp', 'fotosProductos/16/3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidostemporales`
--

CREATE TABLE `pedidostemporales` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `tokenCliente` varchar(100) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidostemporales`
--

INSERT INTO `pedidostemporales` (`id`, `producto_id`, `cantidad`, `tokenCliente`, `fecha`) VALUES
(2, 2, 1, 'KNtyv7nNpxmChftyWgmprPCHw36RRDpN', '2023-08-21 03:31:24'),
(4, 14, 1, 'KNtyv7nNpxmChftyWgmprPCHw36RRDpN', '2023-08-21 03:55:00'),
(9, 7, 3, 'izYmjf3jT9XP984DveGtQGFM2FtF9Pn7', '2023-08-21 04:00:50'),
(10, 5, 2, 'izYmjf3jT9XP984DveGtQGFM2FtF9Pn7', '2023-08-21 04:01:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nameProd` varchar(250) DEFAULT NULL,
  `precio` varchar(250) DEFAULT NULL,
  `description_Prod` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nameProd`, `precio`, `description_Prod`) VALUES
(1, 'CARTUCHOS QUELLE ', '18', 'Los Cartuchos Quelle tienen una combinación de precisión y filo para el mejor desempeño e inyección, para los trabajos más exigentes. Son compatibles con todas nuestras máquinas del catálogo y máquinas americanas de las marcas grandes. Este listado es para cartuchos de Calibre 10 o 30mm y 8 o 25mm\r\n\r\n'),
(2, 'CARTUCHOS MAST ', '18', 'Agujas de cartuchos MAST Pro. Personalizadas y probadas por numerosos artistas del tatuaje en seres humanos. Las agujas están hechas de acero inoxidable 304L y pulidas por una máquina automática para un funcionamiento más suave. Su textura de color consumada brinda una sensación de escultura alegre. Se someten a una completa desinfección con óxido de etileno y son de un solo uso, lo que garantiza una estricta calidad y consistencia, siendo su superficie lisa y libre de impurezas. Cada detalle de la carcasa proporciona un confort extremo. Se ajusta perfectamente a las agujas y la carcasa, ofreciendo alta estabilidad y un flujo de tinta suave y sin obstáculos. '),
(3, 'CARTUCHOS POR UNIDAD ', '1', 'Cartuchos por unidad '),
(4, 'CUBRE GRIP', '2', 'Cubregrip, overgrip o tape es una banda o tira delgada que se aplcia sobre el grip con la intención , en general, de preservarlo. A diferencia del grip-que es autoadhesivo en todo su largo-, el cubregrip solo contiene autoadhesivo en su inicio.'),
(5, 'CUBRE CABLE ', '10', 'Cubre cable en plástico para evitar contaminacion en el cable de tu máquina y para forrar máquinas tipo pen, medidas 5cms de ancho x 60cms de largo, color azul, paquete de 100 unidades\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(6, 'TINTA DYNAMIC NEGRA 8OZ', '35', 'La tinta Dynamic se conoce por su buena reputación ya que el negro intenso perdura después de la cicatrización del tatuaje. Se inyecta fácilmente en la piel. Negro más intenso y duradero en el tiempo.'),
(7, 'TINTA DYNAMIC NEGRA 1OZ', '12', 'La tinta Dynamic se conoce por su buena reputación ya que el negro intenso perdura después de la cicatrización del tatuaje. Se inyecta fácilmente en la piel. Negro más intenso y duradero en el tiempo.'),
(8, 'TOALLIN MULTIUSOS SCOTT ', '8', 'Rollo de 55 hojas color azul.\r\nResistente y super absorvente.\r\nIdeal para limpiar los tatuajes.\r\nFuncionan de manera óptima, incluso cuando están mojados.'),
(9, 'STENCIL STUFF PROTON ', '12', 'Este producto es un gel de transferencia de plantillas de tatuajes que hace que sea fácil transferir diseños de tatuajes a la piel. Ya no tendrás que preocuparte por la precisión o la calidad de tus diseños.'),
(10, 'SPRAY BACTINE MAX', '12', 'Bactine MAX Spray antiséptico para aliviar el dolor con lidocaína, mata el 99% de los gérmenes*, dolor de primeros auxilios + alivio de la picazón sin picaduras, 5 onzas, 2 unidades'),
(11, 'PERLAS ABSORBENTES ROYAL THREE', '15', 'Solidificador en polvo para solidificar desechos infecciosos potencialmente graves dentro del recipiente de succión de manera rápida y efectiva.\r\nPenetra rápidamente en todo el recipiente para solidificar la sangre y los fluidos.\r\nDiez veces más rápido que otros solidificadores, transforma en gel en segundos.\r\nNo requiere sacudidas.\r\nMantiene la solidez para evitar derrames y fugas para un ensacado seguro y fácil transporte para su eliminación.'),
(12, 'JABON QUIRURGICO ROYAL THREE', '10', 'Orange Soap Royal Three Element Orange Soap Jabón antibacterial neutro¡Perfecto para refrescar la piel en el proceso del tatuaje!Presentación de 320 ml y 70 ml Con agentes humectantes que ayudan a acondicionar la piel, Antibacterial, Rinde hasta la última gota'),
(13, 'TINTA BLANCA STAR BRITE ', '18', 'El Brite White de Starbrite es considerado el mejor de los blancos para tatuar por artistas en todo el mundo por su resistencia a la oxidación que hace que su color permanezca siempre blanco.'),
(14, 'CAMPOS QUIRURGICOS ', '35', 'Los campos quirúrgicos están diseñados para establecer un área estéril. Para lograr los mejores resultados quirúrgicos'),
(15, 'PIEL SINTETICA XUND', '3', 'La piel sintética para tatuar es un material artificial diseñado para imitar las características físicas de la piel humana.'),
(16, 'PISETAS', '5', 'La piseta, también llamada frasco lavador o matraz de lavado, es un frasco cilíndrico de plástico con una abertura parecida a la de una pajita, que se utiliza en el laboratorio de química o biología, para contener algún solvente'),
(28, 'CONTENEDOR DE DESECHOS BIOLOGICOS ', '10', '\r\nResistente a la perforación\r\nIndicación del nivel máximo de relleno\r\nTapas con cierre provisional y definitivo\r\nMuescas para el desprendimiento de todo tipo de agujas\r\nAutoclavables, incineración sin emanaciones\r\nEn conformidad con las normas NF302, NFX 30-500 y ADR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fotoproducts`
--
ALTER TABLE `fotoproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `pedidostemporales`
--
ALTER TABLE `pedidostemporales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
