-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2022 a las 00:51:20
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombreCliente` varchar(50) NOT NULL,
  `cedulaCliente` int(10) NOT NULL,
  `emailCliente` varchar(30) NOT NULL,
  `telefonoCliente` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `cedulaCliente`, `emailCliente`, `telefonoCliente`) VALUES
(1, 'jesus', 28243491, 'jesusg.1301.jg@gmail.com', '414617201'),
(2, 'diana', 28243491, 'diana@gmail.com', '04146172019'),
(3, 'compra', 28243491, 'jesusg.1301.jg', '04146172019'),
(4, 'compra', 28243491, 'jesusg.1301.jg', '04146172019'),
(5, 'nena', 8282344, 'nena_guevara@gmail.com', '04246030159'),
(6, 'diana', 26791319, 'diana@gmail.com', '04246740617'),
(7, 'yisus', 28243491, 'jesusgmail.com', '04146172019'),
(8, 'jesus', 22222, 'jesusgmail', '04456464'),
(9, 'jesus', 28243491, 'jesusg@gmail.com', '04146172019'),
(10, 'asdasd', 2222222, 'asdasd@gmail.com', '1111111'),
(11, 'jesus', 2222222, 'jesus@gmail.com', '1111111111'),
(12, 'jesus', 1234565, 'jesus@gmail.com', '04146172019'),
(13, 'jesus', 1111, 'jesus', '1231564'),
(14, 'ewrwer', 123456, 'werwer', '4545'),
(15, 'jesus', 222, 'jesus', '2222'),
(16, 'jsadjhd', 123456, 'asddsad', '123456'),
(17, 'jesus', 123456, 'jesus@gmail.com', '132456'),
(18, 'jesus', 123456, 'jesus@gmail.com', '1235465'),
(19, 'jesus', 456456, 'ghjghj@gmail.comn', '123456'),
(20, 'kjgnhjn', 45456, 'jfnnhgn', '45646'),
(21, 'sdfsdf', 321354, 'sdfsdf', '41531'),
(22, 'asdasd', 123456, 'asdasd', '456123'),
(23, 'jesus', 28243491, 'jesusgmail.com', '04146172019'),
(24, 'jesus gutierrez', 28243491, 'jesusg.1301.jg@gmail.com', '04146172019'),
(25, 'jesus gutierrez', 28243491, 'jesus@gmail.com', '04146172019'),
(26, 'jesus', 28243491, 'jesus@gmail.com', '04146172019'),
(27, 'Rome', 461254, 'adlkld@gmail.com', '4645'),
(28, 'Luis', 1241551, 'zanahora@gmail.com', '646464646'),
(29, 'Romeran', 1324, 'sgdsg', '46464646'),
(30, 'Jose', 465288, 'sdgsgew', '46461358');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idfactura` varchar(40) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idProd` int(11) NOT NULL,
  `cantidadProd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idfactura`, `idCliente`, `fecha`, `idProd`, `cantidadProd`) VALUES
('3d8b974a-c597-4a79-b7e6-b8ee1d0601bb', 1, '2022-10-18 0:2:15', 3, 1),
('3d8b974a-c597-4a79-b7e6-b8ee1d0601bb', 1, '2022-10-18 0:2:15', 4, 2),
('3d8b974a-c597-4a79-b7e6-b8ee1d0601bb', 1, '2022-10-18 0:2:15', 5, 3),
('ae200f59-6456-4a4e-bfc3-a2ccf5c660ab', 1, '2022-10-18 0:5:50', 1, 1),
('ae200f59-6456-4a4e-bfc3-a2ccf5c660ab', 1, '2022-10-18 0:5:50', 2, 2),
('ae200f59-6456-4a4e-bfc3-a2ccf5c660ab', 1, '2022-10-18 0:5:50', 3, 3),
('ae200f59-6456-4a4e-bfc3-a2ccf5c660ab', 1, '2022-10-18 0:5:50', 4, 5),
('ae200f59-6456-4a4e-bfc3-a2ccf5c660ab', 1, '2022-10-18 0:5:50', 5, 6),
('71c5e3d1-d549-4ad9-8390-ba92ff6a13d1', 1, '2022-10-18 0:43:52', 3, 1),
('71c5e3d1-d549-4ad9-8390-ba92ff6a13d1', 1, '2022-10-18 0:43:52', 4, 1),
('71c5e3d1-d549-4ad9-8390-ba92ff6a13d1', 1, '2022-10-18 0:43:52', 5, 1),
('9f9f9a0c-41e6-4b74-8601-4f707edc8186', 1, '2022-10-20 20:0:25', 2, 1),
('9f9f9a0c-41e6-4b74-8601-4f707edc8186', 1, '2022-10-20 20:0:25', 3, 2),
('9f9f9a0c-41e6-4b74-8601-4f707edc8186', 1, '2022-10-20 20:0:25', 4, 3),
('9f9f9a0c-41e6-4b74-8601-4f707edc8186', 1, '2022-10-20 20:0:25', 5, 4),
('d46a3c6b-cb14-4009-ada2-84a20df86bde', 1, '2022-10-20 20:55:7', 1, 1),
('d46a3c6b-cb14-4009-ada2-84a20df86bde', 1, '2022-10-20 20:55:7', 2, 2),
('d46a3c6b-cb14-4009-ada2-84a20df86bde', 1, '2022-10-20 20:55:7', 3, 3),
('d46a3c6b-cb14-4009-ada2-84a20df86bde', 1, '2022-10-20 20:55:7', 4, 5),
('d46a3c6b-cb14-4009-ada2-84a20df86bde', 1, '2022-10-20 20:55:7', 5, 5),
('c0ba0d45-636a-46ea-a7a4-aa07743bfa91', 1, '2022-10-22 10:44:12', 2, 1),
('c0ba0d45-636a-46ea-a7a4-aa07743bfa91', 1, '2022-10-22 10:44:12', 3, 2),
('c0ba0d45-636a-46ea-a7a4-aa07743bfa91', 1, '2022-10-22 10:44:12', 4, 3),
('ee22cc27-76a6-4cf2-84ad-3c829296a52c', 1, '2022-10-22 11:43:34', 6, 1),
('ee22cc27-76a6-4cf2-84ad-3c829296a52c', 1, '2022-10-22 11:43:34', 7, 1),
('ee22cc27-76a6-4cf2-84ad-3c829296a52c', 1, '2022-10-22 11:43:34', 8, 1),
('f9567d11-e907-479f-aba0-39aae6c14a41', 1, '2022-10-22 11:47:59', 13, 1),
('f9567d11-e907-479f-aba0-39aae6c14a41', 1, '2022-10-22 11:47:59', 14, 1),
('f9567d11-e907-479f-aba0-39aae6c14a41', 1, '2022-10-22 11:47:59', 12, 2),
('352e566f-f671-43eb-a0d9-6ec165753fef', 1, '2022-10-22 11:55:59', 3, 1),
('8ac15c15-5b15-43c6-b6f1-33124b321b73', 1, '2022-11-24 19:41:34', 4, 2),
('8ac15c15-5b15-43c6-b6f1-33124b321b73', 1, '2022-11-24 19:41:34', 3, 1),
('8ac15c15-5b15-43c6-b6f1-33124b321b73', 1, '2022-11-24 19:41:34', 2, 1),
('4716b569-7b76-4dbd-ac68-7ea2fd9b7fd9', 1, '2022-11-24 21:5:44', 3, 2),
('4716b569-7b76-4dbd-ac68-7ea2fd9b7fd9', 1, '2022-11-24 21:5:44', 8, 1),
('4716b569-7b76-4dbd-ac68-7ea2fd9b7fd9', 1, '2022-11-24 21:5:44', 7, 1),
('4716b569-7b76-4dbd-ac68-7ea2fd9b7fd9', 1, '2022-11-24 21:5:44', 9, 1),
('3ba66f48-4fce-492c-8218-85e1df70eeb1', 1, '2022-11-25 18:37:28', 5, 1),
('3ba66f48-4fce-492c-8218-85e1df70eeb1', 1, '2022-11-25 18:37:28', 2, 1),
('21bacb1f-90b1-40a3-ad7e-3cf3b43ec4f7', 1, '2022-11-25 19:18:52', 2, 2),
('21bacb1f-90b1-40a3-ad7e-3cf3b43ec4f7', 1, '2022-11-25 19:18:52', 4, 1),
('21bacb1f-90b1-40a3-ad7e-3cf3b43ec4f7', 1, '2022-11-25 19:18:52', 6, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `imgProducto` text NOT NULL,
  `precioProducto` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombreProducto`, `imgProducto`, `precioProducto`, `descripcion`) VALUES
(1, 'Omeprazol', 'https://lh3.googleusercontent.com/dRvmql8Xy04sl4uspecpXSrFsTf0iySNcdSOXWuUjPXJvSDCIfSQIAGnQf2zMjrItAZOJp06WQ4qefNdL8K5HBjlerUVrQDho65KSx37snBAKhY', 2, 'El omeprazol se utiliza en el tratamiento de la dispepsia, úlcera péptica, enfermedades por reflujo gastroesofágico y el síndrome de Zollinger-Ellison.'),
(2, 'Acetaminofen', 'https://lh3.googleusercontent.com/3s_LQ9_J9eJMXbgkBvAAVYnkyj_H_gZKy0cYzDJ9xb7C3zFv_TpjkO3Fa7gi6j1Q18JynkAKP0wWt3r_pWH4TidkzRTN7V2I-TeX', 8, 'El acetaminofeno se usa para aliviar el dolor leve o moderado de las cefaleas, dolores musculares, períodos menstruales, resfriados, y los dolores de garganta, , muelas, espalda, así como de las reacciones a las vacunas (inyecciones) y para reducir la fiebre.'),
(3, 'Ibuprofeno', 'https://lh3.googleusercontent.com/o8hWXdddC4vJhYYaUkbYmRVrqeJzzkM0v46Oa7Dbgo7X-_Ti8kBgu26SBhtk3-9Xj6qfgTe6ezB3PVGyoEhXfcFfwa04_8x8g1d1ONDwjKXK420Q', 12, 'se utiliza para reducir la fiebre y aliviar los dolores menores por de cefalea, dolor muscular, artritis, periodos menstruales, resfriado común, dolor de muelas y dolor de espalda.'),
(4, 'Metformina', 'https://calox.com/storage/products//29-metformina-clorhidrato/gmyUbCHgQz-md.png', 15, 'ayuda a controlar el nivel de azúcar en la sangre de varias maneras, entre ellas ayudando al cuerpo a responder mejor a la insulina que produce de manera natural, y reduciendo la cantidad de azúcar que el hígado produce y la que los intestinos absorben de los alimentos.'),
(5, 'Lorazepam', 'https://quefarmacia.com/wp-content/uploads/2018/05/IMG_1012.png', 12, 'El lorazepam se usa para aliviar el ansiedad. El lorazepam pertenece a una clase de medicamentos llamados benzodiacepinas. Funciona al ralentizar la actividad del cerebro para permitir la relajación.'),
(6, 'alprazolam', 'https://farmastore.com.ve/238-large_default/alprazolam-05-mg-30-comprimidos-genfar.jpg', 18, 'se utiliza para el tratamiento de los estados de ansiedad, especialmente en las crisis de angustia, agorafobia, ataques de pánico y estrés intenso.'),
(7, 'Simvastina', 'https://lh3.googleusercontent.com/-Ryi323AGp_8IEP_WBvGCUqk9OGmgWtXkwHymdmMBZuWpf8n22TgwCx0OMWxesiZvaWw82dF-iqYs6fMdKCjocyYq7L5arNxYUpS', 22, 'utilizado para disminuir los niveles de colesterol en sangre.'),
(8, 'Amoxicilina', 'https://farmastore.com.ve/745-large_default/amoxicilina-500-mg-x-10-tabletas.jpg', 16, 'se usa para tratar ciertas infecciones causadas por bacterias, como la neumonía, la bronquitis (infección de las vías respiratorias que van a los pulmones) y las infecciones de los oídos, la nariz, la garganta, las vías urinarias y la piel.'),
(9, 'Aciclovir', 'https://lh3.googleusercontent.com/vQiL7e5UuKeTapbjyyD5PImvC8WsqKsQyfS2G88a3xzBVHwzTGbgyIuQJGNgWG6nFq-icQyFXR3Ke95TG3xn6YhM240Frm2zfg', 10, 'se usa en el tratamiento de las infecciones producidas por el virus varicela-zóster y el virus del herpes simple'),
(10, 'Ampicilina', 'https://moltomedical.vtexassets.com/arquivos/ids/156244/7703763060214-ampicilina-drogueria-san-jorge-cali.jpg?v=637720360819400000', 7, 'se usa para tratar determinadas infecciones que son ocasionadas por una bacteria como la meningitis (infección de las membranas que rodean el cerebro y la columna vertebral) e infecciones de la garganta, senos nasales, pulmones, órganos reproductivos, tracto urinario y tracto gastrointestinal.'),
(11, 'Azitromicina', 'https://calox.com/storage/products//18-azitromicina/DNKyyB7ScC-md.png', 8, 'La azitromicina se usa para tratar ciertas infecciones bacterianas, como la bronquitis, neumonía, enfermedades de transmisión sexual (ETS) e infecciones de los oídos, pulmones, senos nasales, piel, garganta y órganos reproductivos.'),
(12, 'Benzodiazol', 'https://farmanorte.shop/imgs_prods/7592601301509.jpg', 4, 'es un anestésico local, empleado como calmante del dolor'),
(13, 'Diclofenat potasico', 'https://lh3.googleusercontent.com/RfxUXhdvp0sgM_oi0vdOO3kE-W-bZfyGLexcft4YUBHNNRjv8I55cpUjOBZL2bDkT7JsGsQ5CNUYZzKW1ovCbttKWeE53_qyHDOBKlw6dDiUAin-Rw', 13, 'Funciona al detener la producción del cuerpo de una sustancia que causa dolor, fiebre e inflamación.'),
(14, 'Cetirizina', 'https://lh3.googleusercontent.com/sUZnzR8hWyl1MtDjdTQiUtN-E-HeGLL7Cbm2cIe2HZvq3BTChDv3X245NFJlKvPKemjVA1GJ531ZyflEN_jyV3n8BaHpxEXUEg\r\n', 8, 'es utilizado para el tratamiento de la alergia. Es un antihistamínico considerado de segunda generación por no provocar somnolencia.'),
(15, 'Levofloxacina', 'https://lh3.googleusercontent.com/hCSfEZnusodzDor3Noieup2DPQYddrIhOsV-ieRN-GL-PWhEPD_3csuM3GhOD_DplaUJo0pNXtUugOfRkkM9S5Q-upEIHs9iQOpd', 15, 'La levofloxacina se usa para tratar ciertas infecciones, como neumonía e infecciones del riñón, próstata (una glándula reproductiva masculina) e infecciones de la piel. \r\n\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD KEY `id-cliente` (`idCliente`),
  ADD KEY `facturas_ibfk_2` (`idProd`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE,
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`idProd`) REFERENCES `productos` (`idProducto`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
